Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold7flatten28_$u7b$$u7b$closure$u7d$$u7d$17hea54116f4dcf80a7E":bb.a
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
  %.sroa.012.0.i.i35.i.prol = load ptr, ptr %i.i, align 8, !noalias !3262, !nonnull !53, !noundef !53 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i32.i.prol.loopexit, label %.lr.ph.i.i32.i.prol, !llvm.loop !3201

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
  %.sroa.012.0.i.i35.i = load ptr, ptr %i.l, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i, i64 456
  %.sroa.012.0.i.i35.i.1 = load ptr, ptr %i.m, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.1, i64 456
  %.sroa.012.0.i.i35.i.2 = load ptr, ptr %i.n, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.2, i64 456
  %.sroa.012.0.i.i35.i.3 = load ptr, ptr %i.o, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.3, i64 456
  %.sroa.012.0.i.i35.i.4 = load ptr, ptr %i.p, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.4, i64 456
  %.sroa.012.0.i.i35.i.5 = load ptr, ptr %i.q, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.5, i64 456
  %.sroa.012.0.i.i35.i.6 = load ptr, ptr %i.r, align 8, !noalias !3262, !nonnull !53, !noundef !53
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i35.i.6, i64 456
  %i.t = add i64 %.sroa.011.014.i.i34.i, -8       ; 2 uses
  %.sroa.012.0.i.i35.i.7 = load ptr, ptr %i.s, align 8, !noalias !3262, !nonnull !53, !noundef !53 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", label %.lr.ph.i.i32.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i": ; preds = %.lr.ph.i.i32.i.prol.loopexit, %.lr.ph.i.i32.i, %bb.d, %bb.c
  %.sroa.37.0.copyload.i.i8.i = phi i64 [ %.sroa.21.0.copyload.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i32.i ], [ 0, %.lr.ph.i.i32.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i9.i = phi i64 [ %.sroa.13.0.copyload.i, %bb.c ], [ 0, %bb.d ], [ 0, %.lr.ph.i.i32.i ], [ 0, %.lr.ph.i.i32.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i10.i = phi ptr [ %.sroa.7.0.copyload.i, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.012.0.i.i35.i.lcssa.unr, %.lr.ph.i.i32.i.prol.loopexit ], [ %.sroa.012.0.i.i35.i.7, %.lr.ph.i.i32.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i10.i, i64 450
  %i.w = load i16, ptr %i.v, align 2, !noalias !3263, !noundef !53
  %i.x = zext i16 %i.w to i64
  %i.y = icmp ult i64 %.sroa.37.0.copyload.i.i8.i, %i.x
  br i1 %i.y, label %bb.f, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i", %bb.e
  %.sroa.0.038.i.i.i.i14.i = phi ptr [ %i.aa, %bb.e ], [ %.sroa.05.0.copyload.i.i10.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i15.i = phi i64 [ %i.ac, %bb.e ], [ %.sroa.26.0.copyload.i.i9.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i7.i" ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i14.i, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3264, !noundef !53 ; 4 uses
  %.not.i.i.i.i.i16.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i16.i, label %bb.h, label %bb.e

._crit_edge.loopexit.i.i.i.i17.i:                 ; preds = %bb.e
  %i.ab = zext i16 %i.ae to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.ac = add i64 %.sroa.5.037.i.i.i.i15.i, 1     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i14.i, i64 448
  %i.ae = load i16, ptr %i.ad, align 8, !noalias !3264 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 450
  %i.ag = load i16, ptr %i.af, align 2, !noalias !3263, !noundef !53
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
  tail call void @llvm.assume(i1 %i.al), !noalias !3265
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  %xtraiter57 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i19.i, 7 ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %.pn30.in.i.i.i.i21.i.prol = phi ptr [ %i.an, %.prol.preheader ], [ %i.am, %bb.g ]
  %.pn28.in.i.i.i.i22.i.prol = phi i64 [ %.pn28.i.i.i.i23.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i19.i, %bb.g ]
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.prol.preheader ], [ 0, %bb.g ]
  %.pn28.i.i.i.i23.i.prol = add i64 %.pn28.in.i.i.i.i22.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i24.i.prol = load ptr, ptr %.pn30.in.i.i.i.i21.i.prol, align 8, !noalias !3266, !nonnull !53, !noundef !53 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.prol, i64 456 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !3215

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.pn30.i.i.i.i24.i.lcssa.unr = phi ptr [ poison, %bb.g ], [ %.pn30.i.i.i.i24.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i21.i.unr = phi ptr [ %i.am, %bb.g ], [ %i.an, %.prol.preheader ]
  %.pn28.in.i.i.i.i22.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i19.i, %bb.g ], [ %.pn28.i.i.i.i23.i.prol, %.prol.preheader ]
  %i.ao = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i19.i, 8
  br i1 %i.ao, label %.lr.ph.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i21.i = phi ptr [ %i.ax, %.new ], [ %.pn30.in.i.i.i.i21.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i22.i = phi i64 [ %.pn28.i.i.i.i23.i.7, %.new ], [ %.pn28.in.i.i.i.i22.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i24.i = load ptr, ptr %.pn30.in.i.i.i.i21.i, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i, i64 456
  %.pn30.i.i.i.i24.i.1 = load ptr, ptr %i.ap, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.1, i64 456
  %.pn30.i.i.i.i24.i.2 = load ptr, ptr %i.aq, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.2, i64 456
  %.pn30.i.i.i.i24.i.3 = load ptr, ptr %i.ar, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.as = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.3, i64 456
  %.pn30.i.i.i.i24.i.4 = load ptr, ptr %i.as, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.at = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.4, i64 456
  %.pn30.i.i.i.i24.i.5 = load ptr, ptr %i.at, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.au = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.5, i64 456
  %.pn30.i.i.i.i24.i.6 = load ptr, ptr %i.au, align 8, !noalias !3266, !nonnull !53, !noundef !53
  %i.av = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.6, i64 456
  %.pn28.i.i.i.i23.i.7 = add i64 %.pn28.in.i.i.i.i22.i, -8 ; 2 uses
  %.pn30.i.i.i.i24.i.7 = load ptr, ptr %i.av, align 8, !noalias !3266, !nonnull !53, !noundef !53 ; 2 uses
  %i.aw = icmp eq i64 %.pn28.i.i.i.i23.i.7, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i24.i.7, i64 456
  br i1 %i.aw, label %.lr.ph.i.i, label %.new

bb.h:                                             ; preds = %.lr.ph.i.i.i.i13.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #70
          to label %.noexc.i.i30.i unwind label %bb.i, !noalias !3267

.noexc.i.i30.i:                                   ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !3265
  unreachable

.critedge.i1.i:                                   ; preds = %bb.b
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #70, !noalias !3268
  unreachable

.lr.ph.i.i:                                       ; preds = %.prol.loopexit, %.new, %bb.f
  %.sroa.7.0.i.i.i26.i = phi i64 [ %i.aj, %bb.f ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i27.i = phi ptr [ %.sroa.0.0.ph.i.i.i20.i, %bb.f ], [ %.pn30.i.i.i.i24.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i24.i.7, %.new ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i20.i, i64 184
  %i.ba = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i18.i, 11
  tail call void @llvm.assume(i1 %i.ba), !noalias !3265
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
  call void @llvm.experimental.noalias.scope.decl(metadata !3269)
  %i.bj = call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi), !noalias !3270
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi), !noalias !3270 ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  br label %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.bi, align 8, !alias.scope !3271, !noalias !3272, !nonnull !53, !noundef !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !3271, !noalias !3272, !noundef !53
  br label %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"

"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i": ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.bn, %bb.l ] ; 3 uses
  %.merged.i.i.i.i.i = phi i64 [ %i.bm, %bb.k ], [ %i.bp, %bb.l ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3273
  %i.bq = icmp ugt i64 %.merged.i.i.i.i.i, 23
  br i1 %i.bq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"
  call void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i, i64 noundef %.merged.i.i.i.i.i), !noalias !3274
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"

bb.n:                                             ; preds = %"_ZN4rhai6module6Module8iter_var28_$u7b$$u7b$closure$u7d$$u7d$17h740a34ea64060362E.exit.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3275
  %i.br = icmp slt i64 %.merged.i.i.i.i.i, 0
  br i1 %i.br, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !3276
  %i.bs = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.merged.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #71, !noalias !3276 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.merged.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70, !noalias !3277
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i.i, i64 %.merged.i.i.i.i.i, i1 false), !noalias !3278
  store i64 %.merged.i.i.i.i.i, ptr %i.a, align 8, !noalias !3275
  store ptr %i.bs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3275
  store i64 %.merged.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3275
  call void @"_ZN100_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..convert..From$LT$alloc..string..String$GT$$GT$4from17hfc4d082b05fc8cb7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3275
  br label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"

"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i.i.i.i.i.i.i", %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3273
  store i64 1, ptr %i.c, align 8, !noalias !3273
  store i64 1, ptr %i.bd, align 8, !noalias !3273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3273
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !3280
  %i.bu = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !3280 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i", !prof !56

bb.p:                                             ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc.i.i.i.i.i.i unwind label %bb.q, !noalias !3274

.noexc.i.i.i.i.i.i:                               ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.be)
          to label %.noexc6.i.i.i.i.i.i unwind label %bb.s, !noalias !3274

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.q
  br i1 %i.bx, label %common.resume.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %.noexc6.i.i.i.i.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.s, !noalias !3274

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !3274
  unreachable

common.resume.i.i.i.i.i.i:                        ; preds = %bb.u, %bb.r, %.noexc6.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %i.bw, %.noexc6.i.i.i.i.i.i ], [ %i.cc, %bb.u ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3273
  store ptr %i.bu, ptr %i.b, align 8, !noalias !3273
  store i8 12, ptr %i.bf, align 8, !noalias !3273
  store ptr %.pn33.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !3273
  call void @llvm.experimental.noalias.scope.decl(metadata !3281)
  %i.bz = load i64, ptr %i.bg, align 8, !alias.scope !3281, !noalias !3282, !noundef !53 ; 3 uses
  %i.ca = load i64, ptr %.0.val, align 8, !range !63, !alias.scope !3281, !noalias !3282, !noundef !53
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.t, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i"

bb.t:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h1228270c1d7168edE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2247)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i" unwind label %bb.u, !noalias !3283

bb.u:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$$LP$rhai..types..immutable_string..ImmutableString$C$core..option..Option$LT$alloc..borrow..Cow$LT$rhai..types..dynamic..Dynamic$GT$$GT$$RP$$GT$17h0496a42422e4ef6cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.b) #72
          to label %common.resume.i.i.i.i.i.i unwind label %bb.v, !noalias !3284

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !3285
  unreachable

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i": ; preds = %bb.t, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h74e6f5e4e7cd39d3E.exit.i.i.i.i.i.i"
  %i.ce = load ptr, ptr %i.bh, align 8, !alias.scope !3281, !noalias !3282, !nonnull !53, !noundef !53
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3284
  %i.cg = add i64 %i.bz, 1
  store i64 %i.cg, ptr %i.bg, align 8, !alias.scope !3281, !noalias !3282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3273
  %i.ch = icmp eq i64 %.sroa.274.1.i, 0
  br i1 %i.ch, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h3bfcb163c77c30beE.exit", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h997842cfa547a5d6E.exit.i.i": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h51a34829a8378511E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i) ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i, i64 450
  %i.cj = load i16, ptr %i.ci, align 2, !noalias !3286, !noundef !53
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
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !3287, !noundef !53 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cp = add i64 %.sroa.5.037.i.i.i.i.i, 1       ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i, i64 448
  %i.cr = load i16, ptr %i.cq, align 8, !noalias !3287 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 450
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !3286, !noundef !53
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
  call void @llvm.assume(i1 %i.cz), !noalias !3265
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx ; 2 uses
  %xtraiter64 = and i64 %i.cp, 7                  ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.prol.loopexit61, label %.prol.preheader60

.prol.preheader60:                                ; preds = %bb.y, %.prol.preheader60
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.db, %.prol.preheader60 ], [ %i.da, %bb.y ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader60 ], [ %i.cp, %bb.y ]
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.prol.preheader60 ], [ 0, %bb.y ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !3288, !nonnull !53, !noundef !53 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 456 ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.prol.loopexit61, label %.prol.preheader60, !llvm.loop !3260

.prol.loopexit61:                                 ; preds = %.prol.preheader60, %bb.y
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.y ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader60 ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.da, %bb.y ], [ %i.db, %.prol.preheader60 ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %i.cp, %bb.y ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader60 ]
  %i.dc = icmp ult i64 %.sroa.5.037.i.i.i.i.i, 7
  br i1 %i.dc, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", label %.new62

.new62:                                           ; preds = %.prol.loopexit61, %.new62
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.dl, %.new62 ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit61 ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new62 ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit61 ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 456
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.dd, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 456
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.de, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.df = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 456
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.df, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 456
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.dg, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.dh = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 456
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.dh, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.di = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 456
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.di, align 8, !noalias !3288, !nonnull !53, !noundef !53
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 456
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.dj, align 8, !noalias !3288, !nonnull !53, !noundef !53 ; 2 uses
  %i.dk = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 456
  br i1 %i.dk, label %"_ZN108_$LT$alloc..collections..btree..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdeb00d8de84ecd53E.exit.i", label %.new62

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #70
end_hunk_0
begin_hunk_1_@"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u64$GT$3fmt17h14a8daad5d2c4a1aE":bb.a
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h3277f427d6075caeE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u64$GT$3fmt17h46cb53dc08ca4d34E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Debug$u20$for$u20$i128$GT$3fmt17h3a5177ec21a7a06aE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !53 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i128$GT$3fmt17he96bf865d92c9babE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$i128$GT$3fmt17h5198bb067eb04a3bE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i128$GT$3fmt17hc60a6959adb9c6daE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u128$GT$3fmt17h8b0589def7dd9865E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !53 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u128$GT$3fmt17he2724c6d2910d461E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..Display$u20$for$u20$u128$GT$3fmt17h524b24809b20f83cE"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num54_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u128$GT$3fmt17h34272bb5e55c9754E"(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !53 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17h720e1bfee2ecdbcaE(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.c, label %bb.d

.thread.i:                                        ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !7267
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.c:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !7267
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !7267
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !7267
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !7267
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !7267
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.f:                                             ; preds = %bb.d
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !7267
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !7267
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !7267
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !7267
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %.thread.i, %bb.c, %bb.e, %bb.f
  %.sroa.0.069.i = phi i64 [ 1, %.thread.i ], [ 2, %bb.c ], [ 3, %bb.e ], [ 4, %bb.f ]
  call fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$8push_str17he2803cb6aef450faE"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.069.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h310ccc914fba8b70E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #8 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd313d4c275f22b99E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !7272
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2856, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !7273, !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7271
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h62a86a71b5bc325cE(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #8 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17hd6467b16ac06b77fE.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7277
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !7278
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @379, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !7279, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7277
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E(ptr %.0.val, ptr nofree readonly captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = add i32 %3, -37
  %or.cond = icmp ult i32 %i.a, -35
  br i1 %or.cond, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core3num22from_ascii_radix_panic17hbd13ec38c0e6ecfbE(i32 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #70
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.y, %bb.z, %.split.us, %.split131.us, %bb.t, %bb.s, %bb.q, %.loopexit, %bb.g, %bb.d
  %.sink = phi i8 [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %.split.us ], [ 1, %.split131.us ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.q ], [ 0, %.loopexit ], [ 1, %bb.g ], [ 1, %bb.d ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.c
  %i.c = load i8, ptr %1, align 1, !noundef !53   ; 2 uses
  switch i8 %i.c, label %bb.j [
    i8 43, label %bb.g
    i8 45, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.d, align 1
  br label %bb.e

bb.h:                                             ; preds = %bb.j
  %i.e = icmp samesign ult i32 %3, 17
  %i.f = icmp ult i64 %2, 16
  %or.cond94 = and i1 %i.f, %i.e
  br i1 %or.cond94, label %.lr.ph126, label %.preheader104

.preheader104:                                    ; preds = %bb.k, %bb.h
  %.sroa.27.0.ph = phi i64 [ %i.v, %bb.k ], [ %2, %bb.h ] ; 2 uses
  %.sroa.01.0.ph = phi ptr [ %i.u, %bb.k ], [ %1, %bb.h ]
  %i.g = zext nneg i32 %3 to i64
  %i.h = icmp samesign ugt i32 %3, 10
  %.not90200 = icmp eq i64 %.sroa.27.0.ph, 0
  br i1 %.not90200, label %.loopexit, label %.lr.ph204

.preheader:                                       ; preds = %bb.k
  %.not91122 = icmp eq i64 %i.v, 0
  br i1 %.not91122, label %.loopexit, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.h, %.preheader
  %.sroa.01.1.ph162 = phi ptr [ %i.u, %.preheader ], [ %1, %bb.h ] ; 2 uses
  %.sroa.27.1.ph161 = phi i64 [ %i.v, %.preheader ], [ %2, %bb.h ] ; 2 uses
  %i.i = icmp samesign ugt i32 %3, 10
  %i.j = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %i.i, label %.lr.ph126.split, label %.lr.ph126.split.us

.lr.ph126.split.us:                               ; preds = %.lr.ph126, %bb.i
  %.sroa.01.1125.us = phi ptr [ %i.q, %bb.i ], [ %.sroa.01.1.ph162, %.lr.ph126 ] ; 2 uses
  %.sroa.27.1124.us = phi i64 [ %i.p, %bb.i ], [ %.sroa.27.1.ph161, %.lr.ph126 ]
  %.sroa.031.1123.us = phi i64 [ %i.s, %bb.i ], [ 0, %.lr.ph126 ]
  %i.k = load i8, ptr %.sroa.01.1125.us, align 1, !noundef !53
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = icmp ult i32 %i.m, %3
  br i1 %i.n, label %bb.i, label %.split131.us

bb.i:                                             ; preds = %.lr.ph126.split.us
  %i.o = mul i64 %.sroa.031.1123.us, %i.j
  %i.p = add nsw i64 %.sroa.27.1124.us, -1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.1125.us, i64 1
  %i.r = zext nneg i32 %i.m to i64
  %i.s = add i64 %i.o, %i.r                       ; 2 uses
  %.not91.us = icmp eq i64 %i.p, 0
  br i1 %.not91.us, label %.loopexit, label %.lr.ph126.split.us

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i8, ptr %1, align 1
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %bb.f
  %i.t = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.f ]
  switch i8 %i.t, label %bb.h [
    i8 43, label %bb.k
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.v = add i64 %2, -1                           ; 3 uses
  %i.w = icmp samesign ult i32 %3, 17
  %i.x = icmp ult i64 %2, 17
  %or.cond92 = and i1 %i.x, %i.w
  br i1 %or.cond92, label %.preheader, label %.preheader104

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.z = add i64 %2, -1                           ; 5 uses
  %i.aa = icmp samesign ult i32 %3, 17
  %i.ab = icmp ult i64 %2, 17
  %or.cond93 = and i1 %i.ab, %i.aa
  br i1 %or.cond93, label %.preheader106, label %.preheader108

.preheader108:                                    ; preds = %bb.l
  %i.ac = zext nneg i32 %3 to i64
  %i.ad = icmp samesign ugt i32 %3, 10
  %.not195 = icmp eq i64 %i.z, 0
  br i1 %.not195, label %.loopexit, label %.lr.ph199

.preheader106:                                    ; preds = %bb.l
  %.not89118 = icmp eq i64 %i.z, 0
  br i1 %.not89118, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader106
  %i.ae = icmp samesign ugt i32 %3, 10
  %i.af = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.ae, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.sroa.01.3121.us = phi ptr [ %i.am, %bb.m ], [ %i.y, %.lr.ph ] ; 2 uses
  %.sroa.27.3120.us = phi i64 [ %i.al, %bb.m ], [ %i.z, %.lr.ph ]
  %.sroa.031.4119.us = phi i64 [ %i.ao, %bb.m ], [ 0, %.lr.ph ]
  %i.ag = load i8, ptr %.sroa.01.3121.us, align 1, !noundef !53
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %3
  br i1 %i.aj, label %bb.m, label %.split.us

bb.m:                                             ; preds = %.lr.ph.split.us
  %i.ak = mul i64 %.sroa.031.4119.us, %i.af
  %i.al = add nsw i64 %.sroa.27.3120.us, -1       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.01.3121.us, i64 1
  %i.an = zext nneg i32 %i.ai to i64
  %i.ao = sub i64 %i.ak, %i.an                    ; 2 uses
  %.not89.us = icmp eq i64 %i.al, 0
  br i1 %.not89.us, label %.loopexit, label %.lr.ph.split.us

bb.n:                                             ; preds = %bb.x
  %i.ap = extractvalue { i64, i1 } %i.co, 0       ; 2 uses
  %.not90 = icmp eq i64 %i.ca, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph204

bb.o:                                             ; preds = %bb.r
  %i.aq = extractvalue { i64, i1 } %i.bh, 0       ; 2 uses
  %.not = icmp eq i64 %i.at, 0
  br i1 %.not, label %.loopexit, label %.lr.ph199

.loopexit:                                        ; preds = %bb.o, %bb.m, %bb.u, %bb.n, %bb.i, %bb.aa, %.preheader108, %.preheader104, %.preheader106, %.preheader
  %.sroa.031.3 = phi i64 [ %i.ao, %bb.m ], [ %i.de, %bb.aa ], [ %i.ap, %bb.n ], [ 0, %.preheader ], [ %i.bx, %bb.u ], [ 0, %.preheader106 ], [ %i.s, %bb.i ], [ 0, %.preheader104 ], [ 0, %.preheader108 ], [ %i.aq, %bb.o ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.031.3, ptr %i.ar, align 8
  br label %bb.e

.lr.ph199:                                        ; preds = %.preheader108, %bb.o
  %.sroa.01.2198 = phi ptr [ %i.as, %bb.o ], [ %i.y, %.preheader108 ] ; 2 uses
  %.sroa.27.2197 = phi i64 [ %i.at, %bb.o ], [ %i.z, %.preheader108 ]
  %.sroa.031.2196 = phi i64 [ %i.aq, %bb.o ], [ 0, %.preheader108 ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.01.2198, i64 1
  %i.at = add i64 %.sroa.27.2197, -1              ; 2 uses
  %i.au = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2196, i64 %i.ac) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 0
  %i.aw = load i8, ptr %.sroa.01.2198, align 1, !noundef !53 ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = icmp ugt i8 %i.aw, 57
  %or.cond1.i = and i1 %i.ad, %i.ay
  %i.az = add nsw i32 %i.ax, -65
  %i.ba = and i32 %i.az, -33
  %i.bb = add nuw nsw i32 %i.ba, 10
  %i.bc = add nsw i32 %i.ax, -48
  %.sroa.02.0.i = select i1 %or.cond1.i, i32 %i.bb, i32 %i.bc ; 2 uses
  %i.bd = icmp ult i32 %.sroa.02.0.i, %3
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph199
  %i.be = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.be, label %bb.s, label %bb.r

bb.q:                                             ; preds = %.lr.ph199
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bf, align 1
  br label %bb.e

bb.r:                                             ; preds = %bb.p
  %i.bg = zext i32 %.sroa.02.0.i to i64
  %i.bh = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.av, i64 %i.bg) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1
end_hunk_1
begin_hunk_2_@_ZN4core4iter6traits8iterator8Iterator7collect17h050f54234a296a0dE:bb.a
.lr.ph:                                           ; preds = %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.d

._crit_edge:                                      ; preds = %bb.l, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i
  %.sroa.7.0.lcssa = phi i64 [ %i.u, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ], [ %.sink.i.i, %bb.l ]
  %.sroa.0.0.lcssa = phi ptr [ %1, %_ZN8smallvec10infallible17hd7e1cfe47d8fef1dE.exit.i ], [ %i.y, %bb.l ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink9.i.i, align 8, !noalias !15180
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.727)
  %i.w = icmp eq ptr %.sroa.0.0.lcssa, %2
  br i1 %i.w, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i.thread", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit.lr.ph"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit.lr.ph": ; preds = %._crit_edge
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.727.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit"

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.0.055 = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.l ] ; 3 uses
  %.sroa.7.054 = phi i64 [ %i.u, %.lr.ph ], [ %i.ap, %bb.l ] ; 4 uses
  %i.x = icmp eq ptr %.sroa.0.055, %2
  br i1 %i.x, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i.thread", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15184
  invoke fastcc void @"_ZN60_$LT$rhai..ast..expr..Expr$u20$as$u20$core..clone..Clone$GT$5clone17hb3047c2d897119c0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.055)
          to label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i" unwind label %bb.k, !noalias !15180, !inline_history !15170

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i": ; preds = %bb.e
  %.sroa.017.0.copyload = load i8, ptr %i.b, align 8, !noalias !15185 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.719, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.719.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15184
  %.not2.i = icmp eq i8 %.sroa.017.0.copyload, 21
  br i1 %.not2.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i.thread", label %bb.l

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit.lr.ph", %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i"
  %.sroa.023.057 = phi ptr [ %.sroa.0.0.lcssa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit.lr.ph" ], [ %i.z, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i" ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.023.057, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15186
  invoke fastcc void @"_ZN60_$LT$rhai..ast..expr..Expr$u20$as$u20$core..clone..Clone$GT$5clone17hb3047c2d897119c0E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.023.057)
          to label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !15164

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit"
  %.sroa.025.0.copyload = load i8, ptr %i.a, align 8, !noalias !15187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727.0..sroa_idx, i64 15, i1 false), !noalias !15187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15186
  %.not.i = icmp eq i8 %.sroa.025.0.copyload, 21
  br i1 %.not.i, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i.thread", label %bb.f

bb.f:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i"
  store i8 %.sroa.025.0.copyload, ptr %i.c, align 8, !noalias !15188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727.0..sroa_idx28, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.727, i64 15, i1 false), !noalias !15188
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15189), !noalias !15180
  %i.aa = load i64, ptr %i.e, align 8, !alias.scope !15190, !noalias !15180, !noundef !53 ; 2 uses
  %i.ab = icmp ugt i64 %i.aa, 3                   ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8, !alias.scope !15190, !noalias !15180, !nonnull !53
  %.sink10.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.d
  %.sink9.i.i.i = select i1 %i.ab, ptr %i.i, ptr %i.e ; 2 uses
  %.sink.i.i14.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 3)
  %i.ad = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !15191, !noalias !15180, !noundef !53 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %.sink.i.i14.i
  br i1 %i.ae, label %bb.h, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i", !prof !64

bb.g:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.c) #72
          to label %.body unwind label %bb.j, !noalias !15192, !inline_history !15164

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h222a56b6511546bcE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %bb.i unwind label %bb.g, !noalias !15193, !inline_history !15164

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.d, align 8, !alias.scope !15191, !noalias !15180, !nonnull !53, !noundef !53
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !15191, !noalias !15180
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i"

bb.j:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !15194, !inline_history !15164
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i": ; preds = %bb.i, %bb.f
  %i.ai = phi i64 [ %.pre.i.i, %bb.i ], [ %i.ad, %bb.f ]
  %.sroa.01.0.i.i = phi ptr [ %i.i, %bb.i ], [ %.sink9.i.i.i, %bb.f ] ; 2 uses
  %.sroa.0.0.i15.i = phi ptr [ %i.ag, %bb.i ], [ %.sink10.i.i.i, %bb.f ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i15.i, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !15180
  %i.ak = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !15191, !noalias !15180, !noundef !53
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %.sroa.01.0.i.i, align 8, !alias.scope !15191, !noalias !15180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.727)
  %i.am = icmp eq ptr %i.z, %2
  br i1 %i.am, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i.thread", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit"

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i.thread": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i", %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he5d3b6cc349ee6ceE.exit.i", %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.727)
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h884dfb2e56c28369E.exit"

bb.k:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.054, ptr %.sink9.i.i, align 8, !noalias !15180
  br label %.body

bb.l:                                             ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i"
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sink10.i.i, i64 %.sroa.7.054 ; 2 uses
  store i8 %.sroa.017.0.copyload, ptr %i.ao, align 8, !noalias !15180
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.422.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.719, i64 15, i1 false)
  %i.ap = add i64 %.sroa.7.054, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.sink.i.i
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i.thread": ; preds = %bb.d, %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i"
  store i64 %.sroa.7.054, ptr %.sink9.i.i, align 8, !noalias !15180
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h884dfb2e56c28369E.exit"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb9824a8ef1f958a4E.exit", %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h927e0680705d74bbE.exit.i.thread31", %bb.c, %bb.b
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.an, %bb.k ], [ %lpad.loopexit.split-lp75, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..expr..Expr$u3b$$u20$3$u5d$$GT$$GT$17h332fc57e2068d22fE"(ptr noalias noundef align 8 dereferenceable(56) %i.d) #72
          to label %bb.n unwind label %bb.m, !noalias !15180, !inline_history !15179

bb.m:                                             ; preds = %.body
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !15180, !inline_history !15179
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h884dfb2e56c28369E.exit": ; preds = %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit.i.thread", %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hda4a9d8c79c9e623E.exit13.i.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15180
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h160b8cf4f0da24c6E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15201
  store i64 0, ptr %i.a, align 8, !noalias !15201
  invoke fastcc void @"_ZN133_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$6extend17hebc17f47f4f846f6E"(ptr noalias noundef align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h68a3228582104fb8E.exit" unwind label %bb.b, !noalias !15201

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !15202, !noalias !15201, !noundef !53 ; 2 uses
  %i.c = icmp ugt i64 %.val.i, 5
  br i1 %i.c, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i", label %"_ZN4core3ptr109drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17h2c9e766560f32d4cE.exit.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i": ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val3.i = load ptr, ptr %i.d, align 8, !noalias !15201, !nonnull !53, !noundef !53
  %i.e = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !15203
  br label %"_ZN4core3ptr109drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17h2c9e766560f32d4cE.exit.i"

"_ZN4core3ptr109drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$RF$mut$u20$rhai..types..dynamic..Dynamic$u3b$$u20$5$u5d$$GT$$GT$17h2c9e766560f32d4cE.exit.i": ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$$RF$mut$u20$rhai..types..dynamic..Dynamic$GT$$GT$17h09683d22981074a9E.exit.i.i.i", %bb.b
  resume { ptr, i32 } %i.b

"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h68a3228582104fb8E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15201
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h1b726ce898687063E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15233
  store i64 0, ptr %i.a, align 8, !noalias !15233
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15233
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15234)
  %i.b = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h93503156d692cdbcE.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h93503156d692cdbcE.exit.i.i": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %.not.i = icmp eq ptr %.sroa.4.0.copyload, %.sroa.0.0.copyload
  br i1 %.not.i, label %.noexc.i, label %bb.b, !prof !122

bb.b:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h93503156d692cdbcE.exit.i.i"
  %i.c = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.e = sub nuw i64 %i.d, %i.c                   ; 2 uses
  %i.f = lshr i64 %i.e, 2
  %i.g = and i64 %i.e, 3
  %.not.i.i.i.i = icmp ne i64 %i.g, 0
  %i.h = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.f, %i.h
  %.sroa.0.0.i8.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload, i64 %.sroa.0.0.i.i.i.i)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.0.0.i8.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15233

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15236)
  br label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h137dc8899fa0a4f0E.exit"

.noexc.i:                                         ; preds = %bb.b, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h93503156d692cdbcE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15237)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i", %.noexc.i
  %i.i = phi ptr [ %.sroa.0.0.copyload, %.noexc.i ], [ %i.az, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i" ] ; 6 uses
  %.sroa.01.0.i.in.i.i.i.i = phi i64 [ %.sroa.5.0.copyload, %.noexc.i ], [ %.sroa.01.0.i.i.i.i.i, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i" ]
  %.sroa.01.0.i.i.i.i.i = add i64 %.sroa.01.0.i.in.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %.sroa.4.0.copyload
  br i1 %.not.i.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h137dc8899fa0a4f0E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.i, align 1, !noalias !15238, !noundef !53 ; 5 uses
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.m = and i8 %i.k, 31
  %i.n = zext nneg i8 %i.m to i32                 ; 3 uses
  %i.o = icmp ne ptr %i.j, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 3 uses
  %i.q = load i8, ptr %i.j, align 1, !noalias !15238, !noundef !53
  %i.r = shl nuw nsw i32 %i.n, 6
  %i.s = and i8 %i.q, 63
  %i.t = zext nneg i8 %i.s to i32                 ; 2 uses
  %i.u = or disjoint i32 %i.r, %i.t
  %i.v = icmp samesign ugt i8 %i.k, -33
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i": ; preds = %bb.d
  %i.w = zext nneg i8 %i.k to i32
  %i.x = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15239, !noalias !15233, !noundef !53 ; 2 uses
  %i.y = icmp sgt i64 %i.x, -1
  tail call void @llvm.assume(i1 %i.y)
  br label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.z = icmp ne ptr %i.p, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 3 uses
  %i.ab = load i8, ptr %i.p, align 1, !noalias !15238, !noundef !53
  %i.ac = shl nuw nsw i32 %i.t, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae            ; 2 uses
  %i.ag = shl nuw nsw i32 %i.n, 12
  %i.ah = or disjoint i32 %i.af, %i.ag
  %i.ai = icmp samesign ugt i8 %i.k, -17
  br i1 %i.ai, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i"
  %i.aj = icmp ne ptr %i.aa, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.al = load i8, ptr %i.aa, align 1, !noalias !15238, !noundef !53
  %i.am = shl nuw nsw i32 %i.n, 18
  %i.an = and i32 %i.am, 1835008
  %i.ao = shl nuw nsw i32 %i.af, 6
  %i.ap = and i8 %i.al, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.an            ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.as, 1114112
  br i1 %.not.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h137dc8899fa0a4f0E.exit", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i"
  %i.at = phi ptr [ %i.ak, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 3 uses
  %spec.select.i11.i.i.i.i.i = phi i32 [ %i.as, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i" ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i" ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15240)
  %i.au = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15241, !noalias !15233, !noundef !53 ; 4 uses
  %i.av = icmp sgt i64 %i.au, -1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i, 128
  br i1 %i.aw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i"
  %i.ax = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i, 2048
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i = select i1 %i.ay, i64 3, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i"
  %i.az = phi ptr [ %i.at, %bb.e ], [ %i.at, %bb.f ], [ %i.at, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ], [ %i.j, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ]
  %i.ba = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ]
  %i.bb = phi i64 [ %i.au, %bb.e ], [ %i.au, %bb.f ], [ %i.au, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ], [ %i.x, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ] ; 4 uses
  %spec.select.i1116.i.i.i.i.i = phi i32 [ %spec.select.i11.i.i.i.i.i, %bb.e ], [ %spec.select.i11.i.i.i.i.i, %bb.f ], [ %spec.select.i11.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ], [ %i.w, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.e ], [ %..i.i.i.i.i.i.i.i, %bb.f ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i" ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i" ] ; 3 uses
  %i.bc = load i64, ptr %i.a, align 8, !range !63, !alias.scope !15242, !noalias !15233, !noundef !53
  %i.bd = sub nsw i64 %i.bc, %i.bb
  %i.be = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.bd
  br i1 %i.be, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i", !prof !64

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bb, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15233

.noexc3.i:                                        ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15241, !noalias !15233
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc3.i, %bb.g
  %i.bf = phi i64 [ %i.bb, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc3.i ] ; 2 uses
  %i.bg = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15241, !noalias !15233, !nonnull !53, !noundef !53
  %i.bh = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf ; 10 uses
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"
  %i.bj = icmp samesign ult i32 %spec.select.i1116.i.i.i.i.i, 2048
  %i.bk = trunc i32 %spec.select.i1116.i.i.i.i.i to i8
  %i.bl = and i8 %i.bk, 63
  %i.bm = or disjoint i8 %i.bl, -128              ; 3 uses
  %i.bn = lshr i32 %spec.select.i1116.i.i.i.i.i, 6
  %i.bo = trunc i32 %i.bn to i8                   ; 2 uses
  %i.bp = and i8 %i.bo, 63
  %i.bq = or disjoint i8 %i.bp, -128              ; 2 uses
  %i.br = lshr i32 %spec.select.i1116.i.i.i.i.i, 12
  %i.bs = trunc i32 %i.br to i8                   ; 2 uses
  %i.bt = and i8 %i.bs, 63
  %i.bu = or disjoint i8 %i.bt, -128
  %i.bv = lshr i32 %spec.select.i1116.i.i.i.i.i, 18
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = or disjoint i8 %i.bw, -16
  br i1 %i.bj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"
  %i.by = trunc nuw nsw i32 %spec.select.i1116.i.i.i.i.i to i8
  store i8 %i.by, ptr %i.bi, align 1, !noalias !15243
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i"

bb.k:                                             ; preds = %bb.i
  %i.bz = or disjoint i8 %i.bo, -64
  store i8 %i.bz, ptr %i.bi, align 1, !noalias !15243
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.bm, ptr %i.ca, align 1, !noalias !15243
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i"

bb.l:                                             ; preds = %bb.i
  %i.cb = icmp samesign ult i32 %spec.select.i1116.i.i.i.i.i, 65536
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cc = or disjoint i8 %i.bs, -32
  store i8 %i.cc, ptr %i.bi, align 1, !noalias !15243
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.bq, ptr %i.cd, align 1, !noalias !15243
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.bm, ptr %i.ce, align 1, !noalias !15243
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  store i8 %i.bx, ptr %i.bi, align 1, !noalias !15243
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store i8 %i.bu, ptr %i.cf, align 1, !noalias !15243
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 %i.bq, ptr %i.cg, align 1, !noalias !15243
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  store i8 %i.bm, ptr %i.ch, align 1, !noalias !15243
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i"

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h6242f10d1b0e9342E.exit.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.ci = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.bb
  store i64 %i.ci, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15241, !noalias !15233
  %i.cj = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.cj, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h137dc8899fa0a4f0E.exit", label %bb.c

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.b
  %lpad.loopexit.split-lp7 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15245)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !range !63, !alias.scope !15246, !noalias !15233, !noundef !53 ; 2 uses
  %i.ck = icmp eq i64 %.val.i.i.i, 0
end_hunk_2
begin_hunk_3_@_ZN4core4iter6traits8iterator8Iterator7collect17hbcd5fc15115f7978E:bb.a

_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i: ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 16 ; 2 uses
  %.sroa.0.0.copyload3.i.i38.i.i = load i8, ptr %.sroa.11.0.i.i, align 8, !noalias !16010 ; 2 uses
  %.sroa.9.0..sroa_idx4.i.i39.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i.i11.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.0..sroa_idx4.i.i39.i.i, i64 15, i1 false), !noalias !16010
  store i8 0, ptr %.sroa.11.0.i.i, align 8, !alias.scope !16011, !noalias !16012
  %.sroa.41.0..sroa_idx.i.i.i.i.i2.i.i.i.i40.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 2
  store i16 0, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i2.i.i.i.i40.i.i, align 2, !alias.scope !16011, !noalias !16012
  %.sroa.5.0..sroa_idx.i.i.i.i.i3.i.i.i.i41.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i.i, i64 4
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i3.i.i.i.i41.i.i, align 4, !alias.scope !16011, !noalias !16012
  %.not.i.i42.i.i = icmp eq i8 %.sroa.0.0.copyload3.i.i38.i.i, 15
  br i1 %.not.i.i42.i.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h40a5e4484653cf5cE.exit.thread.i13.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i": ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.thread9.i.i31.i.i
  %.sroa.591.2.i.i = phi ptr [ null, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i ], [ %i.bw, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.thread9.i.i31.i.i ]
  %.sroa.11.2.i.i = phi ptr [ %i.by, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i ], [ %.sroa.11.0.i.i, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.thread9.i.i31.i.i ]
  %.sroa.0.07.i.ph.i32.i.i = phi i8 [ %.sroa.0.0.copyload3.i.i38.i.i, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i ], [ %.sroa.0.0.copyload3.i.i.i.i.i26.i.i, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.thread9.i.i31.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.998.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i.i11.i.i, i64 15, i1 false), !noalias !16013
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i11.i.i)
  br label %bb.ac

_ZN4core4iter8adapters5chain17and_then_or_clear17h40a5e4484653cf5cE.exit.thread.i13.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i, %bb.y, %_ZN4core4iter8adapters5chain17and_then_or_clear17h705fda479f1abf21E.exit.thread.i.i.i.i35.i.i, %bb.v
  %.sroa.591.1.i.i = phi ptr [ %.sroa.591.0.i.i, %bb.v ], [ null, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i ], [ null, %bb.y ], [ null, %_ZN4core4iter8adapters5chain17and_then_or_clear17h705fda479f1abf21E.exit.thread.i.i.i.i35.i.i ]
  %.sroa.11.1.i.i = phi ptr [ %.sroa.11.0.i.i, %bb.v ], [ %i.by, %_ZN4core3ops8function6FnOnce9call_once17hd91bec46d346ffc3E.exit.i.i37.i.i ], [ %.sroa.11.0.i.i, %bb.y ], [ null, %_ZN4core4iter8adapters5chain17and_then_or_clear17h705fda479f1abf21E.exit.thread.i.i.i.i35.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i11.i.i)
  %.not.i.i.i14.i.i = icmp eq ptr %.sroa.1693.0.i.i, null
  br i1 %.not.i.i.i14.i.i, label %.loopexit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN4core4iter8adapters5chain17and_then_or_clear17h40a5e4484653cf5cE.exit.thread.i13.i.i
  %.not.i.i.i.i2.i15.i.i = icmp eq i64 %.sroa.23.0.i.i, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br i1 %.not.i.i.i.i2.i15.i.i, label %bb.aa, label %bb.ab, !prof !72

bb.aa:                                            ; preds = %bb.z
  %i.bz = icmp eq ptr %.sroa.1693.0.i.i, %.sroa.9.0.copyload
  br i1 %i.bz, label %.loopexit.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i"

bb.ab:                                            ; preds = %bb.z
  %i.ca = ptrtoint ptr %.sroa.1693.0.i.i to i64
  %i.cb = sub nuw i64 %i.bh, %i.ca
  %i.cc = lshr exact i64 %i.cb, 4
  %.not.i.i.i.i.i3.i16.i.i = icmp ult i64 %.sroa.23.0.i.i, %i.cc
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.1693.0.i.i, i64 %.sroa.23.0.i.i
  br i1 %.not.i.i.i.i.i3.i16.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i", label %.loopexit.i.i

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i": ; preds = %bb.ab, %bb.aa
  %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i = phi ptr [ %i.cd, %bb.ab ], [ %.sroa.1693.0.i.i, %bb.aa ] ; 6 uses
  %.sink.i.ph.i.i.i.i21.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, i64 16
  %.sroa.096.0.copyload97.i.i = load i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, align 8, !noalias !16014 ; 2 uses
  %.sroa.998.0..sroa.0.0.ph.i.ph.i.i.i.i20.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.998.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.998.0..sroa.0.0.ph.i.ph.i.i.i.i20.sroa_idx.i.i, i64 15, i1 false), !noalias !16014
  store i8 0, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, align 8, !alias.scope !16015, !noalias !16016
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i22.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, i64 2
  store i16 0, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i22.i.i, align 2, !alias.scope !16015, !noalias !16016
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i23.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i20.i.i, i64 4
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i23.i.i, align 4, !alias.scope !16015, !noalias !16016
  %.not.i.i = icmp eq i8 %.sroa.096.0.copyload97.i.i, 15
  br i1 %.not.i.i, label %.loopexit.i.i, label %bb.ac

bb.ac:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i", %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i"
  %.sroa.096.0124.i.i = phi i8 [ %.sroa.0.07.i.ph.i32.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ %.sroa.096.0.copyload97.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  %.sroa.23.3123.i.i = phi i64 [ %.sroa.23.0.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ 0, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  %.sroa.1693.2122.i.i = phi ptr [ %.sroa.1693.0.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ %.sink.i.ph.i.i.i.i21.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  %.sroa.11.4121.i.i = phi ptr [ %.sroa.11.2.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ %.sroa.11.1.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  %.sroa.591.4120.i.i = phi ptr [ %.sroa.591.2.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ %.sroa.591.1.i.i, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  %.sroa.090.2119.i.i = phi i64 [ 1, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.thread111.i.i" ], [ 0, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i" ]
  store i8 %.sroa.096.0124.i.i, ptr %i.a, align 8, !noalias !16005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.998.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.998.i.i, i64 15, i1 false), !noalias !16005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16017)
  %i.ce = load i64, ptr %i.c, align 8, !alias.scope !16018, !noalias !15995, !noundef !53 ; 2 uses
  %i.cf = icmp ugt i64 %i.ce, 8                   ; 2 uses
  %i.cg = load ptr, ptr %i.b, align 8, !alias.scope !16018, !noalias !15995, !nonnull !53
  %.sink10.i.i.i.i = select i1 %i.cf, ptr %i.cg, ptr %i.b
  %.sink9.i.i.i.i = select i1 %i.cf, ptr %i.bj, ptr %i.c ; 2 uses
  %.sink.i.i45.i.i = tail call i64 @llvm.umax.i64(i64 %i.ce, i64 8)
  %i.ch = load i64, ptr %.sink9.i.i.i.i, align 8, !alias.scope !16019, !noalias !15995, !noundef !53 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %.sink.i.i45.i.i
  br i1 %i.ci, label %bb.ae, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h9f073ae78a165526E.exit.i.i", !prof !64

bb.ad:                                            ; preds = %bb.ae
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.a) #72
          to label %.body.i unwind label %bb.ag, !noalias !16020

bb.ae:                                            ; preds = %bb.ac
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hf62baccad7dc5550E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.b)
          to label %bb.af unwind label %bb.ad, !noalias !16021

bb.af:                                            ; preds = %bb.ae
  %i.ck = load ptr, ptr %i.b, align 8, !alias.scope !16019, !noalias !15995, !nonnull !53, !noundef !53
  %.pre.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !16019, !noalias !15995
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17h9f073ae78a165526E.exit.i.i"

bb.ag:                                            ; preds = %bb.ad
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !16022
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17h9f073ae78a165526E.exit.i.i": ; preds = %bb.af, %bb.ac
  %i.cm = phi i64 [ %.pre.i.i.i, %bb.af ], [ %i.ch, %bb.ac ]
  %.sroa.01.0.i.i.i = phi ptr [ %i.bj, %bb.af ], [ %.sink9.i.i.i.i, %bb.ac ] ; 2 uses
  %.sroa.0.0.i46.i.i = phi ptr [ %i.ck, %bb.af ], [ %.sink10.i.i.i.i, %bb.ac ]
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i46.i.i, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !16023
  %i.co = load i64, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !16019, !noalias !15995, !noundef !53
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %.sroa.01.0.i.i.i, align 8, !alias.scope !16019, !noalias !15995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.998.i.i)
  br label %bb.v

.loopexit.i.i:                                    ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74afebc7468a27bbE.exit44.i.i", %bb.ab, %bb.aa, %_ZN4core4iter8adapters5chain17and_then_or_clear17h40a5e4484653cf5cE.exit.thread.i13.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.998.i.i)
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h2130270a34133f1aE.exit"

bb.ah:                                            ; preds = %bb.u, %bb.t
  %.sroa.0.0.ph.i.ph.i.i.i.i.i.i = phi ptr [ %i.bt, %bb.u ], [ %.sroa.25.0164.i.i, %bb.t ] ; 6 uses
  %.sink.i.ph.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, i64 16
  %.sroa.080.0.copyload81.i.i = load i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, align 8, !noalias !16024 ; 2 uses
  %.sroa.9.0..sroa.0.0.ph.i.ph.i.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.0..sroa.0.0.ph.i.ph.i.i.i.i.sroa_idx.i.i, i64 15, i1 false), !noalias !16005
  store i8 0, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, align 8, !alias.scope !16025, !noalias !16026
  %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, i64 2
  store i16 0, ptr %.sroa.41.0..sroa_idx.i.i.i.i.i.i.i.i, align 2, !alias.scope !16025, !noalias !16026
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.ph.i.i.i.i.i.i, i64 4
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !alias.scope !16025, !noalias !16026
  %.not2.i.i = icmp eq i8 %.sroa.080.0.copyload81.i.i, 15
  br i1 %.not2.i.i, label %.loopexit146.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread132.i.i
  %.sroa.0.2145.i.i = phi i64 [ 1, %.thread132.i.i ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.8.4144.i.i = phi ptr [ %.sroa.8.2.i.i, %.thread132.i.i ], [ %.sroa.8.1.i.i, %bb.ah ] ; 2 uses
  %.sroa.16.4143.i.i = phi ptr [ %.sroa.16.2.i.i, %.thread132.i.i ], [ %.sroa.16.1.i.i, %bb.ah ] ; 2 uses
  %.sroa.25.2142.i.i = phi ptr [ %.sroa.25.0164.i.i, %.thread132.i.i ], [ %.sink.i.ph.i.i.i.i.i.i, %bb.ah ] ; 2 uses
  %.sroa.33.3141.i.i = phi i64 [ %.sroa.33.0162.i.i, %.thread132.i.i ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.080.0140.i.i = phi i8 [ %.sroa.0.07.i.ph.i.i.i, %.thread132.i.i ], [ %.sroa.080.0.copyload81.i.i, %bb.ah ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %.sroa.7.0160.i.i ; 2 uses
  store i8 %.sroa.080.0140.i.i, ptr %i.cq, align 8, !noalias !16023
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.9.i.i, i64 15, i1 false), !noalias !16023
  %i.cr = add i64 %.sroa.7.0160.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cr, %.sink.i.pre-phi.i1418.i7
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.loopexit146.i.i:                                 ; preds = %bb.ah, %bb.u, %bb.t, %_ZN4core4iter8adapters5chain17and_then_or_clear17h40a5e4484653cf5cE.exit.thread.i.i.i
  store i64 %.sroa.7.0160.i.i, ptr %i.bd, align 8, !alias.scope !15996, !noalias !15995
  br label %"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h2130270a34133f1aE.exit"

bb.aj:                                            ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hffedecc06b288ec9E.exit.thread.i.i", %bb.o, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hffedecc06b288ec9E.exit.i.i"
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aj, %bb.ad
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cs, %bb.aj ], [ %i.cj, %bb.ad ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..stmt..Stmt$u3b$$u20$8$u5d$$GT$$GT$17h7bbf7398c10ffaa8E"(ptr noalias noundef align 8 dereferenceable(136) %i.b) #72
          to label %bb.al unwind label %bb.ak, !noalias !15995

bb.ak:                                            ; preds = %.body.i
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !15995
  unreachable

bb.al:                                            ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN139_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LT$A$u20$as$u20$smallvec..Array$GT$..Item$GT$$GT$9from_iter17h2130270a34133f1aE.exit": ; preds = %.loopexit.i.i, %.loopexit146.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15995
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !16027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15995
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hc1e1986d1ac8b27aE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16068
  store i64 0, ptr %i.b, align 8, !noalias !16068
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16068
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16068
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16069)
  %i.c = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %i.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b16d6c3a8e1ca62E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b16d6c3a8e1ca62E.exit.i.i": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.d = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e                   ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = and i64 %i.f, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.h, 0
  %i.i = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.g, %i.i ; 2 uses
  %.not.not.i = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, %.sroa.5.0.copyload
  br i1 %.not.not.i, label %bb.b, label %.noexc.i, !prof !56

bb.b:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b16d6c3a8e1ca62E.exit.i.i"
  %i.j = sub nuw nsw i64 %.sroa.0.0.i.i.i.i.i, %.sroa.5.0.copyload
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.6.0.copyload, i64 %i.j)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16068

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i": ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16074)
  br label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit"

.noexc.i:                                         ; preds = %bb.b, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h2b16d6c3a8e1ca62E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16070
  store ptr %.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !16070
  %.sroa.5.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !noalias !16070
  %.sroa.6.0..sroa_idx14.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.6.0.copyload, ptr %.sroa.7.0..sroa_idx15.i.i, align 8, !noalias !16070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16076)
  store i64 0, ptr %.sroa.6.0..sroa_idx14.i.i, align 8, !alias.scope !16077, !noalias !16070
  %.not.i.i.i2.i.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i.i.i2.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i, label %bb.o

_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i", %bb.q, %.noexc.i
  %.promoted.i.i.i.i.i.i = phi ptr [ %i.di, %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i ], [ %i.cr, %bb.q ], [ %i.cz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i" ], [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i" ], [ %.sroa.0.0.copyload, %.noexc.i ]
  %i.k = phi ptr [ %i.cq, %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i ], [ %i.cq, %bb.q ], [ %i.cq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i" ], [ %i.cq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i" ], [ %.sroa.4.0.copyload, %.noexc.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16078)
  br label %bb.c

bb.c:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i", %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i
  %i.l = phi ptr [ %.promoted.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i ], [ %i.bc, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i" ] ; 6 uses
  %.sroa.01.0.i.i.in.i.i.i.i = phi i64 [ %.sroa.6.0.copyload, %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i ], [ %.sroa.01.0.i.i.i.i.i.i, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i" ]
  %.sroa.01.0.i.i.i.i.i.i = add i64 %.sroa.01.0.i.i.in.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  %i.n = load i8, ptr %i.l, align 1, !noalias !16079, !noundef !53 ; 5 uses
  %i.o = icmp sgt i8 %i.n, -1
  br i1 %i.o, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.d
  %i.p = and i8 %i.n, 31
  %i.q = zext nneg i8 %i.p to i32                 ; 3 uses
  %i.r = icmp ne ptr %i.m, %i.k
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.t = load i8, ptr %i.m, align 1, !noalias !16079, !noundef !53
  %i.u = shl nuw nsw i32 %i.q, 6
  %i.v = and i8 %i.t, 63
  %i.w = zext nneg i8 %i.v to i32                 ; 2 uses
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = icmp samesign ugt i8 %i.n, -33
  br i1 %i.y, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i": ; preds = %bb.d
  %i.z = zext nneg i8 %i.n to i32
  %i.aa = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16080, !noalias !16068, !noundef !53 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  br label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %i.ac = icmp ne ptr %i.s, %i.k
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 3 uses
  %i.ae = load i8, ptr %i.s, align 1, !noalias !16079, !noundef !53
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ae, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah            ; 2 uses
  %i.aj = shl nuw nsw i32 %i.q, 12
  %i.ak = or disjoint i32 %i.ai, %i.aj
  %i.al = icmp samesign ugt i8 %i.n, -17
  br i1 %i.al, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i"
  %i.am = icmp ne ptr %i.ad, %i.k
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ao = load i8, ptr %i.ad, align 1, !noalias !16079, !noundef !53
  %i.ap = shl nuw nsw i32 %i.q, 18
  %i.aq = and i32 %i.ap, 1835008
  %i.ar = shl nuw nsw i32 %i.ai, 6
  %i.as = and i8 %i.ao, 63
  %i.at = zext nneg i8 %i.as to i32
  %i.au = or disjoint i32 %i.ar, %i.at
  %i.av = or disjoint i32 %i.au, %i.aq            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.av, 1114112
  br i1 %.not.i.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %i.aw = phi ptr [ %i.an, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.ad, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.s, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ] ; 3 uses
  %spec.select.i11.i.i.i.i.i.i = phi i32 [ %i.av, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.ak, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16081)
  %i.ax = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16082, !noalias !16068, !noundef !53 ; 4 uses
  %i.ay = icmp sgt i64 %i.ax, -1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i.i, 128
  br i1 %i.az, label %bb.g, label %bb.e

bb.e:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i"
  %i.ba = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i.i, 2048
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = icmp samesign ult i32 %spec.select.i11.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i = select i1 %i.bb, i64 3, i64 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i"
  %i.bc = phi ptr [ %i.aw, %bb.e ], [ %i.aw, %bb.f ], [ %i.aw, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ], [ %i.m, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i" ]
  %i.bd = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ], [ true, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i" ]
  %i.be = phi i64 [ %i.ax, %bb.e ], [ %i.ax, %bb.f ], [ %i.ax, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ], [ %i.aa, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i" ] ; 4 uses
  %spec.select.i1116.i.i.i.i.i.i = phi i32 [ %spec.select.i11.i.i.i.i.i.i, %bb.e ], [ %spec.select.i11.i.i.i.i.i.i, %bb.f ], [ %spec.select.i11.i.i.i.i.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ], [ %i.z, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i" ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.e ], [ %..i.i.i.i.i.i.i.i.i, %bb.f ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i.i.i.i.i" ], [ 1, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.thread.i.i.i.i.i.i" ] ; 3 uses
  %i.bf = load i64, ptr %i.b, align 8, !range !63, !alias.scope !16083, !noalias !16068, !noundef !53
  %i.bg = sub nsw i64 %i.bf, %i.be
  %i.bh = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.bg
  br i1 %i.bh, label %bb.h, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i", !prof !64

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.be, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16068

.noexc3.i:                                        ; preds = %bb.h
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16082, !noalias !16068
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc3.i, %bb.g
  %i.bi = phi i64 [ %i.be, %bb.g ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc3.i ] ; 2 uses
  %i.bj = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16082, !noalias !16068, !nonnull !53, !noundef !53
  %i.bk = icmp sgt i64 %i.bi, -1
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 10 uses
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i"
  %i.bm = icmp samesign ult i32 %spec.select.i1116.i.i.i.i.i.i, 2048
  %i.bn = trunc i32 %spec.select.i1116.i.i.i.i.i.i to i8
  %i.bo = and i8 %i.bn, 63
  %i.bp = or disjoint i8 %i.bo, -128              ; 3 uses
  %i.bq = lshr i32 %spec.select.i1116.i.i.i.i.i.i, 6
  %i.br = trunc i32 %i.bq to i8                   ; 2 uses
  %i.bs = and i8 %i.br, 63
  %i.bt = or disjoint i8 %i.bs, -128              ; 2 uses
  %i.bu = lshr i32 %spec.select.i1116.i.i.i.i.i.i, 12
  %i.bv = trunc i32 %i.bu to i8                   ; 2 uses
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  %i.by = lshr i32 %spec.select.i1116.i.i.i.i.i.i, 18
  %i.bz = trunc nuw nsw i32 %i.by to i8
  %i.ca = or disjoint i8 %i.bz, -16
  br i1 %i.bm, label %bb.k, label %bb.l

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i.i"
  %i.cb = trunc nuw nsw i32 %spec.select.i1116.i.i.i.i.i.i to i8
  store i8 %i.cb, ptr %i.bl, align 1, !noalias !16084
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i"

bb.k:                                             ; preds = %bb.i
  %i.cc = or disjoint i8 %i.br, -64
  store i8 %i.cc, ptr %i.bl, align 1, !noalias !16084
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bp, ptr %i.cd, align 1, !noalias !16084
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i"

bb.l:                                             ; preds = %bb.i
  %i.ce = icmp samesign ult i32 %spec.select.i1116.i.i.i.i.i.i, 65536
  br i1 %i.ce, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cf = or disjoint i8 %i.bv, -32
  store i8 %i.cf, ptr %i.bl, align 1, !noalias !16084
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bt, ptr %i.cg, align 1, !noalias !16084
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bp, ptr %i.ch, align 1, !noalias !16084
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.l
  store i8 %i.ca, ptr %i.bl, align 1, !noalias !16084
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bx, ptr %i.ci, align 1, !noalias !16084
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bt, ptr %i.cj, align 1, !noalias !16084
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  store i8 %i.bp, ptr %i.ck, align 1, !noalias !16084
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i"

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %i.cl = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.be
  store i64 %i.cl, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16082, !noalias !16068
  %i.cm = icmp eq i64 %.sroa.01.0.i.i.i.i.i.i, 0
  br i1 %i.cm, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit", label %bb.c

bb.o:                                             ; preds = %.noexc.i
  %i.cn = add i64 %.sroa.5.0.copyload, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16085)
  %i.co = call fastcc noundef i64 @"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$10advance_by17h9ae2092a4256276dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.cn), !noalias !16086
  %.not.i6.i.i.i.i.i = icmp eq i64 %i.co, 0
  br i1 %.not.i6.i.i.i.i.i, label %bb.p, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit"

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16088)
  %i.cp = load ptr, ptr %i.a, align 8, !alias.scope !16089, !noalias !16070, !nonnull !53, !noundef !53 ; 6 uses
  %i.cq = load ptr, ptr %.sroa.5.0..sroa_idx13.i.i, align 8, !alias.scope !16089, !noalias !16070, !nonnull !53, !noundef !53 ; 8 uses
  %.not.i.i9.i.i.i.i.i = icmp eq ptr %i.cp, %i.cq
  br i1 %.not.i.i9.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1 ; 3 uses
  %i.cs = load i8, ptr %i.cp, align 1, !noalias !16090, !noundef !53 ; 4 uses
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i": ; preds = %bb.q
  %i.cu = zext i8 %i.cs to i32
  %i.cv = icmp ne ptr %i.cr, %i.cq
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 2 ; 3 uses
  %i.cx = icmp samesign ugt i8 %i.cs, -33
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i", label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i10.i.i.i.i.i"
  %i.cy = icmp ne ptr %i.cw, %i.cq
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 3 ; 3 uses
  %i.da = icmp samesign ugt i8 %i.cs, -17
  br i1 %i.da, label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i11.i.i.i.i.i"
  %i.db = load i8, ptr %i.cr, align 1, !noalias !16090, !noundef !53
  %i.dc = and i8 %i.db, 63
  %i.dd = zext nneg i8 %i.dc to i32
  %i.de = load i8, ptr %i.cw, align 1, !noalias !16090, !noundef !53
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = icmp ne ptr %i.cz, %i.cq
  tail call void @llvm.assume(i1 %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.dj = load i8, ptr %i.cz, align 1, !noalias !16090, !noundef !53
  %i.dk = shl nuw nsw i32 %i.cu, 18
  %i.dl = and i32 %i.dk, 1835008
  %i.dm = shl nuw nsw i32 %i.dd, 12
  %i.dn = shl nuw nsw i32 %i.dg, 6
  %i.do = or disjoint i32 %i.dn, %i.dm
  %i.dp = and i8 %i.dj, 63
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.do, %i.dq
  %i.ds = or disjoint i32 %i.dr, %i.dl
  %.not5.i.i.i.i.i = icmp eq i32 %i.ds, 1114112
  br i1 %.not5.i.i.i.i.i, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit", label %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.thread.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.b
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16092)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !63, !alias.scope !16093, !noalias !16068, !noundef !53 ; 2 uses
  %i.dt = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dt, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i", label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16093, !noalias !16068, !nonnull !53, !noundef !53
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !16094
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i": ; preds = %bb.r, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp8

"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17hb8e4b832c35bb597E.exit": ; preds = %bb.c, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h75f8a0af558ec94eE.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i", %bb.o, %bb.p, %_ZN4core4iter6traits8iterator8Iterator3nth17hcfdb37a9d0b00ea8E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !16095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16068
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hc7d75cb4def48aa2E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16121
  store i64 0, ptr %i.a, align 8, !noalias !16121
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16121
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16121
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16122)
  %i.b = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h204eb17dfcfc9d66E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h204eb17dfcfc9d66E.exit.i.i": ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.not.i = icmp eq ptr %.sroa.6.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !122

bb.b:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h204eb17dfcfc9d66E.exit.i.i"
  %i.c = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.6.0.copyload to i64
  %i.e = sub nuw i64 %i.d, %i.c
  %i.f = lshr exact i64 %i.e, 2
  %.sroa.0.0.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.7.0.copyload, i64 %i.f)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.0.0.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %bb.c unwind label %bb.r, !noalias !16123

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i": ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16125)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i"

bb.c:                                             ; preds = %bb.b, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h204eb17dfcfc9d66E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16126)
  br label %bb.d

bb.d:                                             ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i", %bb.c
  %i.g = phi ptr [ %.sroa.4.0.copyload, %bb.c ], [ %i.i, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.in.i.i.i.i = phi i64 [ %.sroa.7.0.copyload, %bb.c ], [ %.sroa.0.0.i.i.i.i.i, %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i" ]
  %.sroa.0.0.i.i.i.i.i = add i64 %.sroa.0.0.i.in.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %.sroa.6.0.copyload
  br i1 %.not.i.i.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %i.g, align 4, !range !60, !noalias !16127, !noundef !53 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16128)
  %i.j = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16129, !noalias !16121, !noundef !53 ; 5 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i32 %i.h, 128          ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp samesign ult i32 %i.h, 2048
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i32 %i.h, 65536
  %..i.i.i.i.i.i.i.i = select i1 %i.n, i64 3, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.f ], [ %..i.i.i.i.i.i.i.i, %bb.g ], [ 1, %bb.e ] ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !range !63, !alias.scope !16130, !noalias !16121, !noundef !53
  %i.p = sub nsw i64 %i.o, %i.j
  %i.q = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.p
  br i1 %i.q, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i", !prof !64

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i unwind label %bb.q, !noalias !16131

.noexc.i.i.i.i:                                   ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16129, !noalias !16121
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i, %bb.h
  %i.r = phi i64 [ %i.j, %bb.h ], [ %.pre.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i ] ; 2 uses
  %i.s = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16129, !noalias !16121, !nonnull !53, !noundef !53
  %i.t = icmp sgt i64 %i.r, -1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r ; 10 uses
  br i1 %i.l, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"
  %i.v = icmp samesign ult i32 %i.h, 2048
  %i.w = trunc i32 %i.h to i8
  %i.x = and i8 %i.w, 63
  %i.y = or disjoint i8 %i.x, -128                ; 3 uses
  %i.z = lshr i32 %i.h, 6
  %i.aa = trunc i32 %i.z to i8                    ; 2 uses
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, -128              ; 2 uses
  %i.ad = lshr i32 %i.h, 12
  %i.ae = trunc i32 %i.ad to i8                   ; 2 uses
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  %i.ah = lshr i32 %i.h, 18
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = or disjoint i8 %i.ai, -16
  br i1 %i.v, label %bb.l, label %bb.m

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i.i.i.i.i.i.i"
  %i.ak = trunc nuw nsw i32 %i.h to i8
  store i8 %i.ak, ptr %i.u, align 1, !noalias !16132
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i"

bb.l:                                             ; preds = %bb.j
  %i.al = or disjoint i8 %i.aa, -64
  store i8 %i.al, ptr %i.u, align 1, !noalias !16132
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.y, ptr %i.am, align 1, !noalias !16132
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i"

bb.m:                                             ; preds = %bb.j
  %i.an = icmp samesign ult i32 %i.h, 65536
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = or disjoint i8 %i.ae, -32
  store i8 %i.ao, ptr %i.u, align 1, !noalias !16132
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.ac, ptr %i.ap, align 1, !noalias !16132
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.y, ptr %i.aq, align 1, !noalias !16132
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i"

bb.o:                                             ; preds = %bb.m
  store i8 %i.aj, ptr %i.u, align 1, !noalias !16132
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 %i.ag, ptr %i.ar, align 1, !noalias !16132
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 %i.ac, ptr %i.as, align 1, !noalias !16132
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 %i.y, ptr %i.at, align 1, !noalias !16132
  br label %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i"

"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %i.au = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.j
  store i64 %i.au, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !16129, !noalias !16121
  %i.av = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i", label %bb.d

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i": ; preds = %"_ZN98_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..adapters..take..SpecTake$GT$13spec_for_each5check28_$u7b$$u7b$closure$u7d$$u7d$17h3ef7648e4eb1526fE.exit.i.i.i.i.i", %bb.d, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6bb2605d69bea1efE.exit.i.i"
  %i.aw = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.aw, label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h405b34b2d9c8607fE.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ax = shl nuw i64 %.sroa.5.0.copyload, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !16133
  br label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h405b34b2d9c8607fE.exit"

bb.q:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.az, label %.body.i, label %.body.sink.split.i.i

.body.sink.split.i.i:                             ; preds = %bb.r, %bb.q
  %eh.lpad-body20.ph.i.i = phi { ptr, i32 } [ %i.bb, %bb.r ], [ %i.ay, %bb.q ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ba = shl nuw i64 %.sroa.5.0.copyload, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !16134
  br label %.body.i

bb.r:                                             ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.bc, label %.body.i, label %.body.sink.split.i.i

.body.i:                                          ; preds = %bb.r, %.body.sink.split.i.i, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %eh.lpad-body20.ph.i.i, %.body.sink.split.i.i ], [ %i.bb, %bb.r ], [ %i.ay, %bb.q ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16136)
  %.val.i.i.i = load i64, ptr %i.a, align 8, !range !63, !alias.scope !16137, !noalias !16121, !noundef !53 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i", label %bb.s

bb.s:                                             ; preds = %.body.i
  %.val1.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !16137, !noalias !16121, !nonnull !53, !noundef !53
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !16138
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h53c488635f438ba2E.exit.i": ; preds = %bb.s, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h405b34b2d9c8607fE.exit": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h105bfefc6ef0e4b8E.exit.i.i.i.i", %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !16139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16121
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17hc874b7df0e845d62E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16158
  store i64 0, ptr %i.b, align 8, !noalias !16158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16159)
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.not.i.i.i = icmp ugt i64 %i.e, 24
  br i1 %.not.i.i.i, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h278aa51714782f2eE.exit.i.i", label %.split.i.thread

.split.i.thread:                                  ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %.lr.ph.i.i.preheader

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17h278aa51714782f2eE.exit.i.i": ; preds = %bb.a
end_hunk_3
begin_hunk_4_@"_ZN4core6option15Option$LT$T$GT$6map_or17h2cca40479d5462dbE":bb.a
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i", label %bb.e

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i": ; preds = %bb.f, %bb.l, %bb.p, %bb.t, %bb.w
  %i.j = getelementptr inbounds nuw i8, ptr %.val5, i64 24
  %i.k = load atomic i8, ptr %i.j monotonic, align 4, !noalias !23519
  %.not.i.not.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.not.i.i, label %bb.ac, label %bb.aa

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.d, align 8, !alias.scope !23518
  store i64 1, ptr %i.a, align 8, !alias.scope !23518
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.h unwind label %bb.y

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23520)
  %i.l = load atomic i32, ptr %i.c monotonic, align 4, !noalias !23520
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %.sroa.01.0.i.i.1.i.i = phi i32 [ %i.l, %bb.h ], [ %i.q, %bb.l ] ; 3 uses
  %or.cond11.i.i.i.1.i.i = icmp ult i32 %.sroa.01.0.i.i.1.i.i, 1073741822
  br i1 %or.cond11.i.i.i.1.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.d, align 8, !alias.scope !23520
  store i64 1, ptr %i.a, align 8, !alias.scope !23520
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23521)
  %i.m = load atomic i32, ptr %i.c monotonic, align 4, !noalias !23521
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.n = add nuw nsw i32 %.sroa.01.0.i.i.1.i.i, 1
  %i.o = cmpxchg weak ptr %i.c, i32 %.sroa.01.0.i.i.1.i.i, i32 %i.n acquire monotonic, align 4, !noalias !23520 ; 2 uses
  %i.p = extractvalue { i32, i1 } %i.o, 1
  %i.q = extractvalue { i32, i1 } %i.o, 0
  br i1 %i.p, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i", label %bb.i

bb.m:                                             ; preds = %bb.p, %bb.k
  %.sroa.01.0.i.i.2.i.i = phi i32 [ %i.m, %bb.k ], [ %i.v, %bb.p ] ; 3 uses
  %or.cond11.i.i.i.2.i.i = icmp ult i32 %.sroa.01.0.i.i.2.i.i, 1073741822
  br i1 %or.cond11.i.i.i.2.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.d, align 8, !alias.scope !23521
  store i64 1, ptr %i.a, align 8, !alias.scope !23521
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.o unwind label %bb.y

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23522)
  %i.r = load atomic i32, ptr %i.c monotonic, align 4, !noalias !23522
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.s = add nuw nsw i32 %.sroa.01.0.i.i.2.i.i, 1
  %i.t = cmpxchg weak ptr %i.c, i32 %.sroa.01.0.i.i.2.i.i, i32 %i.s acquire monotonic, align 4, !noalias !23521 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  %i.v = extractvalue { i32, i1 } %i.t, 0
  br i1 %i.u, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i", label %bb.m

bb.q:                                             ; preds = %bb.t, %bb.o
  %.sroa.01.0.i.i.3.i.i = phi i32 [ %i.r, %bb.o ], [ %i.aa, %bb.t ] ; 3 uses
  %or.cond11.i.i.i.3.i.i = icmp ult i32 %.sroa.01.0.i.i.3.i.i, 1073741822
  br i1 %or.cond11.i.i.i.3.i.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr null, ptr %i.d, align 8, !alias.scope !23522
  store i64 1, ptr %i.a, align 8, !alias.scope !23522
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.s unwind label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23523)
  %i.w = load atomic i32, ptr %i.c monotonic, align 4, !noalias !23523
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %i.x = add nuw nsw i32 %.sroa.01.0.i.i.3.i.i, 1
  %i.y = cmpxchg weak ptr %i.c, i32 %.sroa.01.0.i.i.3.i.i, i32 %i.x acquire monotonic, align 4, !noalias !23522 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i", label %bb.q

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.01.0.i.i.4.i.i = phi i32 [ %i.w, %bb.s ], [ %i.ae, %bb.w ] ; 3 uses
  %or.cond11.i.i.i.4.i.i = icmp ult i32 %.sroa.01.0.i.i.4.i.i, 1073741822
  br i1 %or.cond11.i.i.i.4.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.d, align 8, !alias.scope !23523
  store i64 1, ptr %i.a, align 8, !alias.scope !23523
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %"_ZN4core6option15Option$LT$T$GT$6map_or17hf199a88e530c8152E.exit.loopexit.i.i" unwind label %bb.y

"_ZN4core6option15Option$LT$T$GT$6map_or17hf199a88e530c8152E.exit.loopexit.i.i": ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core3ops8function6FnOnce9call_once17h4d59fad0d0740d13E.exit

bb.w:                                             ; preds = %bb.u
  %i.ab = add nuw nsw i32 %.sroa.01.0.i.i.4.i.i, 1
  %i.ac = cmpxchg weak ptr %i.c, i32 %.sroa.01.0.i.i.4.i.i, i32 %i.ab acquire monotonic, align 4, !noalias !23523 ; 2 uses
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  %i.ae = extractvalue { i32, i1 } %i.ac, 0
  br i1 %i.ad, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i", label %bb.u

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.af

bb.y:                                             ; preds = %bb.v, %bb.r, %bb.n, %bb.j, %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr249drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$$GT$17hd1bfb04d4feeb4d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #72
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.aa:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i"
  %i.ah = atomicrmw add ptr %i.c, i32 -1 release, align 4, !noalias !23524
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  %i.aj = and i32 %i.ai, -1073741825
  %or.cond.not.i.i.i.i.i4.i.i = icmp eq i32 %i.aj, -2147483648
  br i1 %or.cond.not.i.i.i.i.i4.i.i, label %bb.ab, label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread12.i.i, !prof !66

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.ai), !noalias !23524
  br label %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread12.i.i

_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread12.i.i: ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4core3ops8function6FnOnce9call_once17h4d59fad0d0740d13E.exit

bb.ac:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit.i.i"
  %.sink.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = load i8, ptr %.sink.i.i.i.i.i, align 8, !range !65, !noundef !53
  %i.al = atomicrmw add ptr %i.c, i32 -1 release, align 4
  %i.am = add i32 %i.al, -1                       ; 2 uses
  %i.an = and i32 %i.am, -1073741825
  %or.cond.not.i.i.i.i.i.i = icmp eq i32 %i.an, -2147483648
  br i1 %or.cond.not.i.i.i.i.i.i, label %bb.ad, label %"_ZN4rhai5types7dynamic7Dynamic6is_map28_$u7b$$u7b$closure$u7d$$u7d$17h9d5dd137d2c4fe78E.exit.i.i.i", !prof !66

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.c, i32 noundef %i.am)
  br label %"_ZN4rhai5types7dynamic7Dynamic6is_map28_$u7b$$u7b$closure$u7d$$u7d$17h9d5dd137d2c4fe78E.exit.i.i.i"

"_ZN4rhai5types7dynamic7Dynamic6is_map28_$u7b$$u7b$closure$u7d$$u7d$17h9d5dd137d2c4fe78E.exit.i.i.i": ; preds = %bb.ad, %bb.ac
  %i.ao = icmp eq i8 %i.ak, 8
  br label %_ZN4core3ops8function6FnOnce9call_once17h4d59fad0d0740d13E.exit

_ZN4core3ops8function6FnOnce9call_once17h4d59fad0d0740d13E.exit: ; preds = %"_ZN4rhai5types7dynamic7Dynamic6is_map28_$u7b$$u7b$closure$u7d$$u7d$17h9d5dd137d2c4fe78E.exit.i.i.i", %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread12.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf199a88e530c8152E.exit.loopexit.i.i", %bb.c, %bb.b, %bb.a
  %.sroa.02.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ %i.ao, %"_ZN4rhai5types7dynamic7Dynamic6is_map28_$u7b$$u7b$closure$u7d$$u7d$17h9d5dd137d2c4fe78E.exit.i.i.i" ], [ false, %_ZN4rhai4func6native11locked_read17hc8171d013f35699cE.exit.thread12.i.i ], [ false, %"_ZN4core6option15Option$LT$T$GT$6map_or17hf199a88e530c8152E.exit.loopexit.i.i" ]
  ret i1 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17h365c883899fbad05E"(ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(24) %0, ptr captures(address, read_provenance) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary28_$u7b$$u7b$closure$u7d$$u7d$17h8a37fe22c228b08fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8            ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.0.val)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.0.val) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i"

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.0.val, align 8, !nonnull !53, !noundef !53
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i": ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %.merged.i.i = phi i64 [ %i.e, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 2 uses
  %i.j = load i64, ptr %.val5, align 8, !noundef !53 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary28_$u7b$$u7b$closure$u7d$$u7d$17h8a37fe22c228b08fE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i", %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i"
  %i.l = phi ptr [ %i.m, %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i" ], [ %i.i, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i" ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.val4.i.i = load ptr, ptr %i.l, align 8, !alias.scope !23533, !noalias !23534, !nonnull !53, !noundef !53 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16 ; 3 uses
  %i.o = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !23535
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.p = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !23535
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.q = load ptr, ptr %i.n, align 8, !noalias !23535, !nonnull !53, !noundef !53
  %i.r = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 32
  %i.s = load i64, ptr %i.r, align 8, !noalias !23535, !noundef !53
  %i.t = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %i.u = insertvalue { ptr, i64 } %i.t, i64 %i.s, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i": ; preds = %bb.f, %bb.e
  %.merged.i.i.i.i = phi { ptr, i64 } [ %i.p, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.v = extractvalue { ptr, i64 } %.merged.i.i.i.i, 1
  %.not.i.i.i.i = icmp eq i64 %.merged.i.i, %i.v
  br i1 %.not.i.i.i.i, label %.split.i.i, label %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i"

.split.i.i:                                       ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i"
  %i.w = extractvalue { ptr, i64 } %.merged.i.i.i.i, 0
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.0.0.i.i, ptr %i.w, i64 %.merged.i.i), !noalias !23536
  %i.x = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary28_$u7b$$u7b$closure$u7d$$u7d$17h8a37fe22c228b08fE.exit", label %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i"

"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i": ; preds = %.split.i.i, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i"
  %.not11.i.i = icmp eq ptr %i.m, %i.k
  br i1 %.not11.i.i, label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary28_$u7b$$u7b$closure$u7d$$u7d$17h8a37fe22c228b08fE.exit", label %.lr.ph.i.i

"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary28_$u7b$$u7b$closure$u7d$$u7d$17h8a37fe22c228b08fE.exit": ; preds = %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i", %.split.i.i, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i", %bb.a
  %.sroa.02.0 = phi i1 [ false, %bb.a ], [ false, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i" ], [ true, %.split.i.i ], [ false, %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i" ]
  ret i1 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6option15Option$LT$T$GT$6map_or17h36efb71722f9e912E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8, !nonnull !53, !noundef !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !53, !noundef !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !53, !noundef !53
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !53, !noundef !53
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.a = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !23546, !nonnull !53, !align !54, !noundef !53
  %i.b = load ptr, ptr %.sroa.4.0.copyload, align 8, !noalias !23546, !nonnull !53, !align !54, !noundef !53
  %i.c = load ptr, ptr %.sroa.5.0.copyload, align 8, !noalias !23546, !nonnull !53, !align !54, !noundef !53
  %i.d = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !23546, !nonnull !53, !align !54, !noundef !53
  invoke fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_expr17haed8650a3eaf3411E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0, ptr noundef nonnull align 8 %i.a, ptr noalias noundef align 8 dereferenceable(88) %i.b, ptr noalias noundef align 8 dereferenceable(200) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.d, ptr noalias noundef align 8 dereferenceable_or_null(16) %.sroa.7.0.copyload, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17hdb8888cde75420abE.exit" unwind label %bb.d, !inline_history !23541

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"

"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit": ; preds = %"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit.i", %bb.e, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE"(ptr noalias noundef align 8 dereferenceable(16) %2) #72
          to label %common.resume unwind label %bb.h

"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17hdb8888cde75420abE.exit": ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23547)
  %i.f = load i8, ptr %2, align 8, !range !68, !alias.scope !23547, !noundef !53
  %.not.i = icmp eq i8 %i.f, 12
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17hdb8888cde75420abE.exit"
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %2), !inline_history !71
  br label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"

bb.f:                                             ; preds = %"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17hdb8888cde75420abE.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23548)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !23549, !nonnull !53, !noundef !53 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %i.h)
          to label %"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit.i" unwind label %bb.g, !noalias !23549, !inline_history !79

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.e, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 64, i64 noundef 8) #71, !noalias !23549, !inline_history !79
  br label %common.resume

"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 64, i64 noundef 8) #71, !noalias !23549, !inline_history !79
  br label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit"

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN4core6option15Option$LT$T$GT$6map_or17h72b09bc3ff7cc219E"(ptr noalias noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %0, i64 noundef %1, i64 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val5 = load ptr, ptr %0, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h738cd0fea917283dE.exit"

bb.d:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.a, align 8, !nonnull !53, !noundef !53
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !53
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h738cd0fea917283dE.exit"

"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h738cd0fea917283dE.exit": ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.d, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %.merged.i.i = phi i64 [ %i.e, %bb.c ], [ %i.h, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %i.i = tail call fastcc noundef i64 @_ZN4rhai4func7hashing22calc_typed_method_hash17h5f12c83dcdfb60f7E(i64 noundef %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.merged.i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h738cd0fea917283dE.exit"
  %.sroa.02.0 = phi i64 [ %i.i, %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h738cd0fea917283dE.exit" ], [ %1, %bb.a ]
  ret i64 %.sroa.02.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4core6option15Option$LT$T$GT$6map_or17h9d7ce1ae970338bbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, i64 noundef range(i64 0, 2) %1, i64 %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(144) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = trunc nuw i64 %1 to i1
  br i1 %i.d, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23563
  %i.e = load ptr, ptr %4, align 8, !alias.scope !23561, !nonnull !53, !align !54, !noundef !53 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !23564, !noundef !53 ; 2 uses
  %i.h = icmp ugt i64 %i.g, 5                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !23565
  %i.j = select i1 %i.h, i64 %.val.i, i64 %i.g    ; 2 uses
  %i.k = icmp ult i64 %2, %i.j
  br i1 %i.k, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %2, i64 noundef %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2231) #70
          to label %.noexc7 unwind label %bb.l

.noexc7:                                          ; preds = %bb.c
  unreachable

.noexc:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !23564, !nonnull !53
  %.sink10.i.i = select i1 %i.h, ptr %i.l, ptr %i.e
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  store i8 9, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  store i16 0, ptr %.sroa.42.0..sroa_idx.i, align 2
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 4
end_hunk_4
begin_hunk_5_@"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$13throw_on_size17hcfdbe303d39ce1a5E":bb.a
  br i1 %i.ag, label %bb.k, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit1", !prof !56

bb.k:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit11"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc12 unwind label %bb.l

.noexc12:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #72
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit1": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit11"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26313
  %i.aj = tail call noundef dereferenceable_or_null(18) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 18, i64 noundef range(i64 1, 9) 1) #71, !noalias !26313 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit16"

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 18, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70, !noalias !26314
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit16": ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.aj, ptr noundef nonnull align 1 dereferenceable(18) @565, i64 18, i1 false), !noalias !26315
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 18, ptr %i.al, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aj, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 18, ptr %.sroa.536.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.an, align 4
  store i8 28, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26316
  %i.ao = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !26316 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !56

bb.p:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit16"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc17 unwind label %bb.q

.noexc17:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit16"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit2", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit1", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", %bb.h
  %.sroa.0.0 = phi ptr [ null, %bb.h ], [ %i.t, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit2" ], [ %i.af, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit1" ], [ %i.ao, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15check_data_size17he6eaf01852088fc8E"(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i16 noundef %2, i16 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.c = load i64, ptr %i.b, align 8, !noundef !53
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load i64, ptr %i.d, align 8, !noundef !53
  %.not7 = icmp eq i64 %i.e, 0
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.g = load i64, ptr %i.f, align 8, !noundef !53
  %.not8 = icmp eq i64 %i.g, 0
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  call fastcc void @_ZN4rhai4eval10data_check15calc_data_sizes17h0206cec8add315a4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.h = call noundef align 8 ptr @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$13throw_on_size17hcfdbe303d39ce1a5E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a) ; 3 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.e, label %bb.f, !prof !72

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.4.0 = phi ptr [ %i.h, %bb.f ], [ %1, %bb.c ], [ %1, %bb.d ]
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.i = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.j = insertvalue { i64, ptr } %i.i, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.j

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noundef nonnull align 8 ptr @_ZN4rhai5types5error13EvalAltResult13fill_position17h75101b1c5096b6b4E(ptr noalias noundef nonnull align 8 %i.h, i16 noundef %2, i16 noundef %3) ; 0 uses
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15check_data_size17he7434cf3a70ab4d6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(16) %2, i16 noundef %3, i16 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.c = load i64, ptr %i.b, align 8, !noundef !53
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load i64, ptr %i.d, align 8, !noundef !53
  %.not5 = icmp eq i64 %i.e, 0
  br i1 %.not5, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.g = load i64, ptr %i.f, align 8, !noundef !53
  %.not6 = icmp eq i64 %i.g, 0
  br i1 %.not6, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.k, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g, %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %2)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.l, !inline_history !71

bb.g:                                             ; preds = %bb.c, %bb.a, %bb.b
  invoke fastcc void @_ZN4rhai4eval10data_check15calc_data_sizes17h0206cec8add315a4E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.i = invoke noundef align 8 ptr @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$13throw_on_size17hcfdbe303d39ce1a5E"(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.f       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.k, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.j = tail call noundef nonnull align 8 ptr @_ZN4rhai5types5error13EvalAltResult13fill_position17h75101b1c5096b6b4E(ptr noalias noundef nonnull align 8 %i.i, i16 noundef %3, i16 noundef %4) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8
  store i8 12, ptr %0, align 8
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %2), !inline_history !71
  br label %bb.e

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %bb.e

bb.l:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation28_$u7b$$u7b$closure$u7d$$u7d$17h6b26ef127d032d71E"(ptr nofree readonly captures(none) %.0.val, i16 %.0.val1, i16 %.2.val, ptr %.0.val3, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !53
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val3) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !53, !nonnull !53
  call void %i.f(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 1 %.0.val3, i64 noundef %i.d)
  %i.g = load i8, ptr %i.b, align 8, !range !68, !noundef !53
  %.not = icmp eq i8 %i.g, 12
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.0.val1, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %.2.val, ptr %i.j, align 4
  store i8 29, ptr %i.a, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !26319
  %i.k = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !26319 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !56

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.m

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit"
  %.sroa.3.0 = phi ptr [ %i.k, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit" ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.p = insertvalue { i64, ptr } %i.o, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai4eval12eval_context21EvalContextFrameGuard22with_new_caching_layer17h71eed7a8928d1debE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) initializes((0, 16)) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !53, !align !54, !noundef !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !26327, !noundef !53 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 3                     ; 3 uses
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !26327, !nonnull !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !26327
  %.sink10.i = select i1 %i.h, i64 %i.k, i64 %i.g ; 3 uses
  store i64 1, ptr %1, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sink10.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false), !alias.scope !26328
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @513, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26329)
  %.sink10.i.i = select i1 %i.h, ptr %i.i, ptr %i.e
  %.sink9.i.i = select i1 %i.h, ptr %i.j, ptr %i.f
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 3)
  %i.n = icmp eq i64 %.sink10.i, %.sink.i.i
  br i1 %i.n, label %bb.c, label %bb.f, !prof !64

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$rhai..eval..eval_context..EvalContextFrameGuard$GT$17h10523501f7c5bd9bE"(ptr noalias noundef align 8 dereferenceable(72) %1) #72
          to label %bb.h unwind label %bb.g

bb.b:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr185drop_in_place$LT$std..collections..hash..map..HashMap$LT$u64$C$core..option..Option$LT$rhai..eval..cache..FnResolutionCacheEntry$GT$$C$rhai..func..hashing..StraightHasherBuilder$GT$$GT$17h6eb79e15c6701183E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.a)
          to label %.body unwind label %bb.e, !noalias !26329

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hbffb1b3369b2802dE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.d unwind label %bb.b, !noalias !26330

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.e, align 8, !alias.scope !26329, !nonnull !53, !noundef !53
  %.pre.i = load i64, ptr %i.j, align 8, !alias.scope !26329
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !26331
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  %i.r = phi i64 [ %.pre.i, %bb.d ], [ %.sink10.i, %bb.a ]
  %.sroa.01.0.i = phi ptr [ %i.j, %bb.d ], [ %.sink9.i.i, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.p, %bb.d ], [ %.sink10.i.i, %bb.a ]
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.i, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.t = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !26329, !noundef !53
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %.sroa.01.0.i, align 8, !alias.scope !26329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void

bb.g:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai4eval4expr38_$LT$impl$u20$rhai..engine..Engine$GT$16search_namespace17hc445850bc647336dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(88) %2, ptr noalias noundef nonnull align 8 dereferenceable(200) %3, ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noalias noundef align 8 dereferenceable_or_null(16) %5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %6) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.427.i = alloca [23 x i8], align 1        ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 10 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [216 x i8], align 8               ; 23 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %6, ptr %i.o, align 8
  %i.p = load i8, ptr %6, align 8, !range !97, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.b, label %bb.bq, !prof !72

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26528)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !55, !alias.scope !26526, !noundef !53
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.thread245.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !26528, !noundef !53 ; 2 uses
  %.not.i = icmp eq i8 %i.v, 0
  br i1 %.not.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !26529
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.w, ptr %i.l, align 8, !noalias !26529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26529
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !26530, !noundef !53 ; 2 uses
  %i.z = icmp ugt i64 %i.y, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !26530, !nonnull !53
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !26530
  %.sink11.i.i = select i1 %i.z, ptr %i.ab, ptr %i.aa ; 3 uses
  %.sink10.i.i = select i1 %i.z, i64 %i.ad, i64 %i.y ; 2 uses
  %.idx228.i = shl nuw nsw i64 %.sink10.i.i, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink11.i.i, i64 %.idx228.i ; 2 uses
  %.sroa.06.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 3 uses
  store i64 2, ptr %.sroa.06.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !26529
  %.sroa.06.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 3 uses
  store ptr %.sink11.i.i, ptr %.sroa.06.sroa.4.0..sroa_idx.i, align 8, !noalias !26529
  %.sroa.06.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  store ptr %i.ae, ptr %.sroa.06.sroa.5.0..sroa_idx.i, align 8, !noalias !26529
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !26529
  call void @llvm.experimental.noalias.scope.decl(metadata !26531)
end_hunk_5
begin_hunk_6_@"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt17hc4f55d8807f04873E":bb.a
          to label %bb.fu unwind label %.body872.thread1516

bb.ft:                                            ; preds = %.body839
  br i1 %.sroa.0467.2, label %.body872.thread, label %common.resume

.body872.thread1516:                              ; preds = %bb.fs, %bb.fv
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body872.thread

bb.fu:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.yh = load ptr, ptr %i.yg, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.yj = load i64, ptr %i.yi, align 8, !noundef !53
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yj
  store ptr %i.yh, ptr %i.cd, align 8
  %i.yl = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.yk, ptr %i.yl, align 8
  %i.ym = call fastcc { ptr, ptr } @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hea13401619784b34E"(ptr noalias noundef align 8 dereferenceable(16) %i.cd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce) ; 2 uses
  %i.yn = extractvalue { ptr, ptr } %i.ym, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.not699.not = icmp eq ptr %i.yn, null
  br i1 %.not699.not, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  %i.yo = invoke fastcc { i16, i16 } @_ZN4rhai3ast4expr4Expr14start_position17h6e2b0253b346af39E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gy)
          to label %bb.fw unwind label %.body872.thread1516 ; 2 uses

bb.fw:                                            ; preds = %bb.fv
  %i.yp = extractvalue { i16, i16 } %i.yo, 0
  %i.yq = extractvalue { i16, i16 } %i.yo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i8 18, ptr %i.ae, align 8
  %.sroa.2327.sroa.2.0..sroa.2327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  store i16 %i.yp, ptr %.sroa.2327.sroa.2.0..sroa.2327.0..sroa_idx.sroa_idx, align 2
  %.sroa.2327.sroa.3.0..sroa.2327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 %i.yq, ptr %.sroa.2327.sroa.3.0..sroa.2327.0..sroa_idx.sroa_idx, align 4
  %.sroa.3328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr null, ptr %.sroa.3328.0..sroa_idx, align 8
  %i.yr = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 64, i64 noundef 8)
          to label %bb.jh unwind label %bb.fx, !noalias !27078 ; 2 uses

bb.fx:                                            ; preds = %bb.fw
  %i.ys = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ae) #72
          to label %.body872.thread unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.yt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.fz:                                            ; preds = %bb.fu
  %i.yu = extractvalue { ptr, ptr } %i.ym, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yu) ]
  %i.yv = load ptr, ptr %4, align 8, !nonnull !53, !noundef !53
  %i.yw = load i64, ptr %i.yv, align 8, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.yx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %4, ptr %i.yx, align 8
  store i64 1, ptr %i.cc, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.yw, ptr %i.yy, align 8
  %i.yz = load ptr, ptr %i.hd, align 8, !noundef !53 ; 2 uses
  %.not701 = icmp eq ptr %i.yz, null              ; 2 uses
  br i1 %.not701, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.za = invoke fastcc noundef i64 @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h79a1a328d943a8dfE"(ptr nonnull %4, ptr nonnull %i.yz)
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.sroa.6332.0 = phi i64 [ undef, %bb.fz ], [ %i.za, %bb.ga ] ; 3 uses
  %i.zb = load ptr, ptr %i.gx, align 8, !nonnull !53, !noundef !53
  %i.zc = atomicrmw add ptr %i.zb, i64 1 monotonic, align 8
  %i.zd = icmp slt i64 %i.zc, 0
  br i1 %i.zd, label %bb.gj, label %bb.gd

.body839:                                         ; preds = %bb.gk, %bb.gf, %.noexc1117, %bb.gi, %bb.gc
  %.sroa.0467.2 = phi i1 [ true, %bb.gf ], [ true, %bb.gi ], [ %.sroa.0467.3, %bb.gc ], [ true, %.noexc1117 ], [ false, %bb.gk ]
  %.pn725 = phi { ptr, i32 } [ %i.zj, %bb.gf ], [ %i.zn, %bb.gi ], [ %i.ze, %bb.gc ], [ %i.zj, %.noexc1117 ], [ %.pn723, %bb.gk ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr173drop_in_place$LT$rhai..defer..Deferred$LT$rhai..types..scope..Scope$C$rhai..eval..stmt..$LT$impl$u20$rhai..engine..Engine$GT$..eval_stmt..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2b4f61d13eeefc45E"(ptr noalias noundef align 8 dereferenceable(24) %i.cc) #72
          to label %bb.ft unwind label %bb.as

bb.gc:                                            ; preds = %bb.he, %bb.ga, %bb.gd
  %.sroa.0467.3 = phi i1 [ false, %bb.he ], [ true, %bb.gd ], [ true, %bb.ga ]
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %.body839

bb.gd:                                            ; preds = %bb.gb
  %i.zf = load ptr, ptr %i.gx, align 8, !nonnull !53, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !27079
  invoke fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h08c594d0c244b78dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.zf)
          to label %.noexc837 unwind label %bb.gc

.noexc837:                                        ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27079
  store i64 1, ptr %i.i, align 8, !noalias !27079
  %i.zg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.zg, align 8, !noalias !27079
  %i.zh = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zh, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !27079
  %i.zi = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 40, i64 noundef 8)
          to label %bb.gh unwind label %bb.ge, !noalias !27080 ; 2 uses

bb.ge:                                            ; preds = %.noexc837
  %i.zj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zk = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zh)
          to label %.noexc1117 unwind label %bb.gg

.noexc1117:                                       ; preds = %bb.ge
  br i1 %i.zk, label %.body839, label %bb.gf

bb.gf:                                            ; preds = %.noexc1117
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.zh)
          to label %.body839 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.gh:                                            ; preds = %.noexc837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.zi, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !27079
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !27079
  store i8 0, ptr %i.j, align 8, !alias.scope !27081, !noalias !27079
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %.sroa.440.0..sroa_idx.i, align 1, !alias.scope !27081, !noalias !27079
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %.sroa.542.0..sroa_idx.i, align 4, !alias.scope !27081, !noalias !27079
  %i.zm = invoke fastcc noundef align 8 dereferenceable(24) ptr @_ZN4rhai5types5scope5Scope10push_entry17h5e3d67a8058d4099E(ptr noalias noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.zi, i1 noundef zeroext false, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.j)
          to label %bb.gm unwind label %bb.gi     ; 0 uses

bb.gi:                                            ; preds = %bb.gh
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %.body839

bb.gj:                                            ; preds = %bb.gb
  call void @llvm.trap()
  unreachable

bb.gk:                                            ; preds = %.loopexit.split-lp1780, %.thread1537, %bb.gl
  %.pn723 = phi { ptr, i32 } [ %i.zo, %bb.gl ], [ %.pn721, %.loopexit.split-lp1780 ], [ %.pn716, %.thread1537 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cb)
          to label %.body839 unwind label %bb.as, !inline_history !71

bb.gl:                                            ; preds = %bb.gz, %bb.hd, %.loopexit1790, %.thread1584, %bb.go, %bb.gn
  %i.zo = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.gm:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !27079
  %i.zp = load ptr, ptr %4, align 8, !nonnull !53, !noundef !53
  %i.zq = load i64, ptr %i.zp, align 8, !noundef !53 ; 2 uses
  %i.zr = add i64 %i.zq, -1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  %i.zs = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.gx, i64 176 ; 2 uses
  %i.zu = load i64, ptr %i.zt, align 8, !alias.scope !27082, !noundef !53 ; 2 uses
  %i.zv = icmp ugt i64 %i.zu, 8
  %i.zw = getelementptr inbounds nuw i8, ptr %i.gx, i64 56 ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !alias.scope !27082
  %.sink10.i1121 = select i1 %i.zv, i64 %i.zx, i64 %i.zu
  %i.zy = icmp eq i64 %.sink10.i1121, 0
  br i1 %i.zy, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %i.zz = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.aaa = load ptr, ptr %i.zz, align 8, !invariant.load !53, !nonnull !53
  %i.aab = invoke { ptr, ptr } %i.aaa(ptr noundef nonnull align 1 %i.yn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.ca)
          to label %bb.gp unwind label %bb.gl     ; 2 uses

bb.go:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  store i64 -1, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false)
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  %i.aad = load ptr, ptr %i.aac, align 8, !invariant.load !53, !nonnull !53
  %i.aae = invoke { ptr, ptr } %i.aad(ptr noundef nonnull align 1 %i.yn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.bx)
          to label %bb.hf unwind label %bb.gl     ; 2 uses

bb.gp:                                            ; preds = %bb.gn
  %i.aaf = extractvalue { ptr, ptr } %i.aab, 0    ; 5 uses
  %i.aag = extractvalue { ptr, ptr } %i.aab, 1    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aaf) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aag) ]
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %i.aai = load ptr, ptr %i.aah, align 8, !invariant.load !53, !nonnull !53
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.gx, i64 184
  %i.aak = getelementptr inbounds nuw i8, ptr %i.gx, i64 186
  %i.aal = getelementptr i8, ptr %1, i64 248
  br label %bb.gq

bb.gq:                                            ; preds = %bb.hc, %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  invoke void %i.aai(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bz, ptr noundef nonnull align 1 %i.aaf)
          to label %bb.gr unwind label %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp1780:                           ; preds = %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body842
  %.pn721 = phi { ptr, i32 } [ %eh.lpad-body843, %.body842 ], [ %lpad.loopexit.split-lp2961, %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17hc9de9efba20e6321E"(ptr nonnull %i.aaf, ptr nonnull %i.aag) #72
          to label %bb.gk unwind label %bb.as

.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread", %bb.gq, %.loopexit1784, %bb.gy
  %lpad.loopexit.split-lp2961 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1780

bb.gr:                                            ; preds = %bb.gq
  %i.aam = load i8, ptr %i.bz, align 8, !range !107, !noundef !53
  %.not718 = icmp eq i8 %i.aam, 13
  br i1 %.not718, label %bb.gy, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aan = load i16, ptr %i.aaj, align 8, !noundef !53 ; 2 uses
  %i.aao = load i16, ptr %i.aak, align 2, !noundef !53 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27083)
  %i.aap = load i64, ptr %i.ex, align 8, !alias.scope !27083, !noundef !53
  %i.aaq = add i64 %i.aap, 1                      ; 2 uses
  store i64 %i.aaq, ptr %i.ex, align 8, !alias.scope !27083
  %i.aar = load i64, ptr %i.fa, align 8, !noalias !27083, !noundef !53 ; 2 uses
  %.not.i805 = icmp ne i64 %i.aar, 0
  %i.aas = icmp ugt i64 %i.aaq, %i.aar
  %or.cond1746 = and i1 %.not.i805, %i.aas
  br i1 %or.cond1746, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aat = load ptr, ptr %i.fd, align 8, !noalias !27083, !align !59, !noundef !53 ; 2 uses
  %.not8.i807 = icmp eq ptr %i.aat, null
  br i1 %.not8.i807, label %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread", label %bb.gx

bb.gu:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !27083
  %i.aau = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %i.aan, ptr %i.aau, align 2, !noalias !27083
  %i.aav = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.aao, ptr %i.aav, align 4, !noalias !27083
  store i8 24, ptr %i.q, align 8, !noalias !27083
  %i.aaw = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 64, i64 noundef 8)
          to label %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread1533" unwind label %bb.gv, !noalias !27084 ; 2 uses

bb.gv:                                            ; preds = %bb.gu
  %i.aax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.q) #72
          to label %.body842 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread1533": ; preds = %bb.gu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aaw, ptr noundef nonnull align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !27083
  br label %.loopexit1784

bb.gx:                                            ; preds = %bb.gt
  %.val924 = load ptr, ptr %i.aal, align 8, !nonnull !53, !align !54, !noundef !53
  %i.aaz = invoke fastcc { i64, ptr } @"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation28_$u7b$$u7b$closure$u7d$$u7d$17h6b26ef127d032d71E"(ptr nonnull %2, i16 %i.aan, i16 %i.aao, ptr nonnull %i.aat, ptr nonnull %.val924)
          to label %.noexc811 unwind label %bb.hb ; 2 uses

.noexc811:                                        ; preds = %bb.gx
  %i.aba = extractvalue { i64, ptr } %i.aaz, 0
  %i.abb = trunc nuw i64 %i.aba to i1
  %i.abc = extractvalue { i64, ptr } %i.aaz, 1    ; 2 uses
  %.not719 = icmp ne ptr %i.abc, null
  %or.cond2277.not = select i1 %i.abb, i1 %.not719, i1 false
  br i1 %or.cond2277.not, label %.loopexit1784, label %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread"

bb.gy:                                            ; preds = %bb.gr
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17h935ecee6c6f7b4a2E"(ptr noalias noundef align 8 dereferenceable(16) %i.bz)
          to label %bb.gz unwind label %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17hc9de9efba20e6321E"(ptr nonnull %i.aaf, ptr nonnull %i.aag)
          to label %bb.ha unwind label %bb.gl

bb.ha:                                            ; preds = %bb.gz, %bb.ja
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call fastcc void @"_ZN4core3ptr173drop_in_place$LT$rhai..defer..Deferred$LT$rhai..types..scope..Scope$C$rhai..eval..stmt..$LT$impl$u20$rhai..engine..Engine$GT$..eval_stmt..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h2b4f61d13eeefc45E"(ptr noalias noundef align 8 dereferenceable(24) %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  br label %bb.ab

bb.hb:                                            ; preds = %bb.gx
  %i.abd = landingpad { ptr, i32 }
          cleanup
  br label %.body842

.body842:                                         ; preds = %bb.gv, %bb.hb
  %eh.lpad-body843 = phi { ptr, i32 } [ %i.abd, %bb.hb ], [ %i.aax, %bb.gv ]
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17h935ecee6c6f7b4a2E"(ptr noalias noundef align 8 dereferenceable(16) %i.bz) #72
          to label %.loopexit.split-lp1780 unwind label %bb.as

.loopexit1784:                                    ; preds = %.noexc811, %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread1533"
  %.sroa.0.1.i8091536 = phi ptr [ %i.aaw, %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread1533" ], [ %i.abc, %.noexc811 ]
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i8091536, ptr %i.abe, align 8
  store i8 12, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17h935ecee6c6f7b4a2E"(ptr noalias noundef align 8 dereferenceable(16) %i.bz)
          to label %bb.hd unwind label %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread": ; preds = %bb.gt, %.noexc811
  invoke fastcc void @"_ZN4core3ptr167drop_in_place$LT$core..option..Option$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17h935ecee6c6f7b4a2E"(ptr noalias noundef align 8 dereferenceable(16) %i.bz)
          to label %bb.hc unwind label %.loopexit.split-lp1780.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hc:                                            ; preds = %"_ZN4rhai4eval10data_check38_$LT$impl$u20$rhai..engine..Engine$GT$15track_operation17h01a2b932b738e4eeE.exit813.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %bb.gq

bb.hd:                                            ; preds = %.loopexit1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17hc9de9efba20e6321E"(ptr nonnull %i.aaf, ptr nonnull %i.aag)
          to label %bb.he unwind label %bb.gl

bb.he:                                            ; preds = %bb.hd, %bb.jf
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.cb)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1126" unwind label %bb.gc, !inline_history !71

bb.hf:                                            ; preds = %bb.go
  %i.abf = extractvalue { ptr, ptr } %i.aae, 0    ; 5 uses
  %i.abg = extractvalue { ptr, ptr } %i.aae, 1    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abf) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abg) ]
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24
  %i.abi = load ptr, ptr %i.abh, align 8, !invariant.load !53, !nonnull !53
  %.sroa.6351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.6353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.8356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.4579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  %.sroa.5581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %.sroa.6582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.7367.0..sroa_idx368 = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %.sroa.7369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %.sroa.63031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  br label %bb.hg

bb.hg:                                            ; preds = %bb.iu, %bb.hf
  %i.abn = phi i64 [ %.sroa.6353.01559.ph, %bb.iu ], [ -1, %bb.hf ]
  invoke void %i.abi(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.bu, ptr noundef nonnull align 1 %i.abf)
          to label %bb.hh unwind label %.loopexit.split-lp1786.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread1537:                                      ; preds = %.loopexit.split-lp1786.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.iy, %bb.jb, %.loopexit.split-lp1797.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1148", %.thread1546
  %.pn716 = phi { ptr, i32 } [ %i.adr, %bb.iy ], [ %.pn7141545, %.thread1546 ], [ %i.adm, %bb.jb ], [ %lpad.loopexit.split-lp2976, %.loopexit.split-lp1797.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.acq, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1148" ], [ %lpad.loopexit.split-lp2971, %.loopexit.split-lp1786.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17hc9de9efba20e6321E"(ptr nonnull %i.abf, ptr nonnull %i.abg) #72
          to label %bb.gk unwind label %bb.as

bb.hh:                                            ; preds = %bb.hg
  %i.abo = load i8, ptr %i.bu, align 8, !range !107, !noundef !53
  %.not703 = icmp eq i8 %i.abo, 13
  br i1 %.not703, label %.loopexit1790, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %.sroa.0.0.copyload = load i8, ptr %i.bu, align 8 ; 2 uses
  %.sroa.63031.0.copyload = load ptr, ptr %.sroa.63031.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6351)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8356)
  %i.abp = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.abn, i64 1) ; 2 uses
  %i.abq = extractvalue { i64, i1 } %i.abp, 1
  br i1 %i.abq, label %bb.hj, label %.thread1555

.thread1555:                                      ; preds = %bb.hi
  %i.abr = extractvalue { i64, i1 } %i.abp, 0
  br label %bb.hp

.loopexit1790:                                    ; preds = %bb.hh, %bb.iz
  invoke fastcc void @"_ZN4core3ptr234drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$$GT$17hc9de9efba20e6321E"(ptr nonnull %i.abf, ptr nonnull %i.abg)
          to label %bb.ja unwind label %bb.gl

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke fastcc void @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17ha750aa7c58a5ac04E"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.by, ptr nonnull %i.gx)
          to label %bb.hl unwind label %bb.hk

bb.hk:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1132", %bb.hj
  %lpad.thr_comm.split-lp1551 = landingpad { ptr, i32 }
          cleanup
  br label %.thread1546

bb.hl:                                            ; preds = %bb.hj
  %.sroa.0349.0.copyload = load i8, ptr %i.ad, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6351, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6351.0..sroa_idx, i64 7, i1 false)
  %.sroa.6353.0.copyload = load i64, ptr %.sroa.6353.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8356, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8356.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not704 = icmp eq i8 %.sroa.0349.0.copyload, 35
  br i1 %.not704, label %bb.hp, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %.sroa.2362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.2362.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6351, i64 7, i1 false)
  %.sroa.4364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4364.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8356, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6351)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8356)
  store i8 %.sroa.0349.0.copyload, ptr %i.ac, align 8
  %.sroa.3363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %.sroa.6353.0.copyload, ptr %.sroa.3363.0..sroa_idx, align 8
  %i.abs = invoke fastcc noundef ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef 64, i64 noundef 8)
          to label %bb.je unwind label %bb.hn, !noalias !27085 ; 2 uses

bb.hn:                                            ; preds = %bb.hm
  %i.abt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ac) #72
          to label %.thread1546 unwind label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.abu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.hp:                                            ; preds = %bb.hl, %.thread1555
  %.sroa.6353.01559.ph = phi i64 [ %i.abr, %.thread1555 ], [ %.sroa.6353.0.copyload, %bb.hl ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6351)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8356)
  store i64 %.sroa.6353.01559.ph, ptr %i.by, align 8
  br i1 %.not701, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1132", %bb.hp
  %i.abv = icmp eq i8 %.sroa.0.0.copyload, 12
  br i1 %i.abv, label %bb.hy, label %bb.id

.loopexit.split-lp1792.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hs, %bb.hw, %bb.ht
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.bw)
          to label %.thread1546 unwind label %bb.as, !inline_history !71

bb.hr:                                            ; preds = %bb.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  store i8 4, ptr %i.bw, align 8
  store i8 0, ptr %.sroa.4579.0..sroa_idx, align 1
  store i32 0, ptr %.sroa.5581.0..sroa_idx, align 4
  store i64 %.sroa.6353.01559.ph, ptr %.sroa.6582.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  %.val902 = load ptr, ptr %4, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.abw = load i64, ptr %.val902, align 8, !noundef !53 ; 2 uses
  %i.abx = icmp ult i64 %.sroa.6332.0, %i.abw
  br i1 %i.abx, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aby = getelementptr inbounds nuw i8, ptr %.val902, i64 16
  %i.abz = getelementptr inbounds nuw [16 x i8], ptr %i.aby, i64 %.sroa.6332.0
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic10write_lock17hb1def5c597f0314dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.bv, ptr noalias noundef align 8 dereferenceable(16) %i.abz)
          to label %bb.hv unwind label %.loopexit.split-lp1792.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ht:                                            ; preds = %bb.hr
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.6332.0, i64 noundef %i.abw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #70
          to label %bb.hu unwind label %.loopexit.split-lp1792.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.hu:                                            ; preds = %bb.kw, %bb.kq, %bb.ii, %bb.ig, %bb.hw, %bb.ht
  unreachable

bb.hv:                                            ; preds = %bb.hs
  %i.aca = load i8, ptr %i.abj, align 8, !range !73, !noundef !53 ; 4 uses
  %.not706 = icmp eq i8 %i.aca, 3
  br i1 %.not706, label %bb.hw, label %bb.hx, !prof !64

bb.hw:                                            ; preds = %bb.hv
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @593) #70
          to label %bb.hu unwind label %.loopexit.split-lp1792.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1134": ; preds = %bb.hx
  %i.acb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i1130, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false)
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hb2c7b24389e2fbe1E"(ptr nonnull %.sroa.01305.0.copyload, i8 %i.aca) #72
          to label %.thread1546 unwind label %bb.as

bb.hx:                                            ; preds = %bb.hv
  %.sroa.01305.0.copyload = load ptr, ptr %i.bv, align 8, !nonnull !53, !noundef !53 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %.not.i1129 = icmp eq i8 %i.aca, 2
  %.sroa.0.0.idx.i = select i1 %.not.i1129, i64 0, i64 16
  %.sroa.0.0.i1130 = getelementptr inbounds nuw i8, ptr %.sroa.01305.0.copyload, i64 %.sroa.0.0.idx.i ; 3 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %.sroa.0.0.i1130)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1132" unwind label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1134", !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit1132": ; preds = %bb.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i1130, ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hb2c7b24389e2fbe1E"(ptr nonnull %.sroa.01305.0.copyload, i8 %i.aca)
          to label %bb.hq unwind label %bb.hk

bb.hy:                                            ; preds = %bb.hq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63031.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !27086)
  %i.acc = load i8, ptr %i.gy, align 8, !range !97, !alias.scope !27087, !noalias !27086, !noundef !53
  switch i8 %i.acc, label %default.unreachable [
    i8 0, label %bb.ib
    i8 1, label %bb.ib
    i8 2, label %bb.ib
    i8 3, label %bb.hz
    i8 4, label %bb.ib
    i8 5, label %bb.ib
    i8 6, label %bb.ib
    i8 7, label %bb.ib
    i8 8, label %bb.ib
    i8 9, label %bb.ib
    i8 10, label %bb.ib
    i8 11, label %bb.ib
    i8 12, label %bb.ib
    i8 13, label %bb.ib
    i8 14, label %bb.ia
    i8 15, label %bb.ib
    i8 16, label %bb.ib
    i8 17, label %bb.ib
    i8 18, label %bb.ib
    i8 19, label %bb.ib
    i8 20, label %bb.ib
  ]

bb.hz:                                            ; preds = %bb.hy
  %i.acd = getelementptr inbounds nuw i8, ptr %i.gx, i64 34
  %i.ace = getelementptr inbounds nuw i8, ptr %i.gx, i64 36
  br label %bb.ic

end_hunk_6
begin_hunk_7_@"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h3cb3674940584ffeE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27157)
  %i.y = load atomic i32, ptr %i.j monotonic, align 4, !noalias !27157
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.z = add nuw nsw i32 %.sroa.01.0.i.i.2, 1
  %i.aa = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.2, i32 %i.z acquire monotonic, align 4, !noalias !27156 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  br i1 %i.ab, label %.noexc, label %bb.l

bb.p:                                             ; preds = %bb.s, %bb.n
  %.sroa.01.0.i.i.3 = phi i32 [ %i.y, %bb.n ], [ %i.ah, %bb.s ] ; 3 uses
  %or.cond11.i.i.i.3 = icmp ult i32 %.sroa.01.0.i.i.3, 1073741822
  br i1 %or.cond11.i.i.i.3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.k, align 8, !alias.scope !27157
  store i64 1, ptr %i.a, align 8, !alias.scope !27157
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27158)
  %i.ad = load atomic i32, ptr %i.j monotonic, align 4, !noalias !27158
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.ae = add nuw nsw i32 %.sroa.01.0.i.i.3, 1
  %i.af = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.3, i32 %i.ae acquire monotonic, align 4, !noalias !27157 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  br i1 %i.ag, label %.noexc, label %bb.p

bb.t:                                             ; preds = %bb.v, %bb.r
  %.sroa.01.0.i.i.4 = phi i32 [ %i.ad, %bb.r ], [ %i.al, %bb.v ] ; 3 uses
  %or.cond11.i.i.i.4 = icmp ult i32 %.sroa.01.0.i.i.4, 1073741822
  br i1 %or.cond11.i.i.i.4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.k, align 8, !alias.scope !27158
  store i64 1, ptr %i.a, align 8, !alias.scope !27158
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread.sink.split" unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ai = add nuw nsw i32 %.sroa.01.0.i.i.4, 1
  %i.aj = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.4, i32 %i.ai acquire monotonic, align 4, !noalias !27158 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %.noexc, label %bb.t

bb.w:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i, %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr249drop_in_place$LT$core..result..Result$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$$GT$$GT$17hd1bfb04d4feeb4d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.y:                                             ; preds = %.noexc
  %i.ao = atomicrmw add ptr %i.j, i32 -1 release, align 4, !noalias !27159
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  %i.aq = and i32 %i.ap, -1073741825
  %or.cond.not.i.i.i.i.i18 = icmp eq i32 %i.aq, -2147483648
  br i1 %or.cond.not.i.i.i.i.i18, label %bb.z, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread.sink.split", !prof !66

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.j, i32 noundef %i.ap)
          to label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread.sink.split" unwind label %bb.ab

bb.aa:                                            ; preds = %bb.b, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !noundef !53
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = load i16, ptr %i.at, align 4, !noundef !53
  %i.av = tail call noundef align 8 dereferenceable(64) ptr @_ZN4rhai5types5error13EvalAltResult12set_position17h763994184fcd4f7dE(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i16 noundef %i.as, i16 noundef %i.au) ; 0 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28" unwind label %bb.ab, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.ab, %bb.w
  %.sroa.01.1.lpad-body = phi i1 [ %.sroa.01.1, %bb.ab ], [ true, %bb.w ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ay, %bb.ab ], [ %i.am, %bb.w ] ; 3 uses
  %i.aw = load i8, ptr %1, align 8, !range !77, !noundef !53
  %i.ax = icmp eq i8 %i.aw, 31
  br i1 %i.ax, label %bb.ag, label %bb.ah

bb.ab:                                            ; preds = %bb.aa, %bb.ad, %bb.z
  %.sroa.01.1 = phi i1 [ false, %bb.aa ], [ true, %bb.ad ], [ true, %bb.z ]
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.ac:                                            ; preds = %.noexc
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.az = load i8, ptr %.sink.i.i.i, align 8, !range !65, !noundef !53
  %i.ba = atomicrmw add ptr %i.j, i32 -1 release, align 4
  %i.bb = add i32 %i.ba, -1                       ; 2 uses
  %i.bc = and i32 %i.bb, -1073741825
  %or.cond.not.i.i.i.i = icmp eq i32 %i.bc, -2147483648
  br i1 %or.cond.not.i.i.i.i, label %bb.ad, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit", !prof !66

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.j, i32 noundef %i.bb)
          to label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit" unwind label %bb.ab

"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit": ; preds = %bb.ac, %bb.ad
  %i.bd = icmp eq i8 %i.az, 0
  br i1 %i.bd, label %bb.aa, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread", !prof !27160

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28": ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.be = load i8, ptr %1, align 8, !range !77, !noundef !53
  %i.bf = icmp eq i8 %i.be, 31
  br i1 %i.bf, label %"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28"
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %1)
          to label %"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit" unwind label %.thread57

.thread57:                                        ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.af:                                            ; preds = %bb.ai, %bb.aj, %bb.ah
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30": ; preds = %bb.ah
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #71
  br i1 %.sroa.01.1.lpad-body, label %bb.aj, label %common.resume

bb.ag:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"
  br i1 %.sroa.01.1.lpad-body, label %bb.ai, label %common.resume.sink.split

bb.ah:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %1) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30" unwind label %bb.af

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.f)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30.thread" unwind label %bb.af, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30.thread": ; preds = %bb.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 64, i64 noundef 8) #71
  br label %bb.aj

common.resume.sink.split:                         ; preds = %bb.ag, %bb.ak, %.thread57
  %.sink = phi ptr [ %0, %bb.ak ], [ %1, %.thread57 ], [ %1, %bb.ag ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bi, %bb.ak ], [ %i.bg, %.thread57 ], [ %eh.lpad-body, %bb.ag ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 64, i64 noundef 8) #71
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30", %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.aj ], [ %eh.lpad-body, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30" ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.aj:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30.thread", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit30"
  invoke void @"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #72
          to label %common.resume unwind label %bb.af

"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28", %bb.ae, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread"
  %.sink90 = phi ptr [ %0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread" ], [ %1, %bb.ae ], [ %1, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28" ]
  %.sroa.0.055 = phi ptr [ %1, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread" ], [ %0, %bb.ae ], [ %0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit28" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink90, i64 noundef 64, i64 noundef 8) #71
  ret ptr %.sroa.0.055

"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread.sink.split": ; preds = %bb.z, %bb.y, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread": ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread.sink.split", %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit", %bb.b, %bb.a
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %0)
          to label %"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$17h39d2298468906f99E.exit" unwind label %bb.ak, !noalias !27161, !inline_history !79

bb.ak:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd0e64c201c6261fcE.exit.thread"
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17h79a1a328d943a8dfE"(ptr nofree captures(none) %.0.val, ptr %.0.val1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  %i.c = atomicrmw add ptr %.0.val1, i64 1 monotonic, align 8
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27168
  call fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h08c594d0c244b78dE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %.0.val1)
  store i64 1, ptr %i.a, align 8, !noalias !27168
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !27168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27169
  %i.g = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27169 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN4rhai5types5scope5Scope4push17h0431b509b81c2031E.exit, !prof !56

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.d
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.noexc1
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !27168
  unreachable

common.resume:                                    ; preds = %bb.e, %.noexc1
  resume { ptr, i32 } %i.i

_ZN4rhai5types5scope5Scope4push17h0431b509b81c2031E.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !27168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27168
  store i8 4, ptr %i.b, align 8, !alias.scope !27170, !noalias !27168
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %.sroa.44.0..sroa_idx.i, align 1, !alias.scope !27170, !noalias !27168
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %.sroa.56.0..sroa_idx.i, align 4, !alias.scope !27170, !noalias !27168
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.sroa.67.0..sroa_idx.i, align 8, !alias.scope !27170, !noalias !27168
  %i.l = call fastcc noundef align 8 dereferenceable(24) ptr @_ZN4rhai5types5scope5Scope10push_entry17h5e3d67a8058d4099E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val, ptr noundef nonnull %i.g, i1 noundef zeroext false, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27168
  %i.m = load ptr, ptr %.0.val, align 8, !nonnull !53, !noundef !53
  %i.n = load i64, ptr %i.m, align 8, !noundef !53
  %i.o = add i64 %i.n, -1
  ret i64 %i.o

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4rhai4eval4stmt38_$LT$impl$u20$rhai..engine..Engine$GT$9eval_stmt28_$u7b$$u7b$closure$u7d$$u7d$17ha750aa7c58a5ac04E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr nofree readonly captures(none) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17h3d3282282be62894E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27177
  store ptr @613, ptr %i.a, align 8, !noalias !27178
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !27178
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !27178
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !27178
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !27178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load <2 x i16>, ptr %i.d, align 8
  store <2 x i16> %i.f, ptr %i.e, align 2
  store i8 23, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4rhai4eval6target10calc_index17h231c7d53dc0f2a1dE(i64 noundef %0, i64 noundef range(i64 -9223372036854775808, 0) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = sub i64 0, %1
  %.not = icmp ult i64 %0, %i.b
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !53, !noundef !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !53, !noundef !53
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !53, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27183
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !27183, !noundef !53
  %i.d = load i64, ptr %.sroa.4.0.copyload, align 8, !noalias !27183, !noundef !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.e, align 8, !noalias !27183
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %i.f, align 8, !noalias !27183
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load <2 x i16>, ptr %.sroa.5.0.copyload, align 2, !noalias !27183
  store <2 x i16> %i.h, ptr %i.g, align 2, !noalias !27183
  store i8 16, ptr %i.a, align 8, !noalias !27183
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27184
  %i.i = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27184 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hd426b8d32901365cE.exit", !prof !56

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc.i unwind label %bb.d, !noalias !27183

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %bb.f unwind label %bb.e, !noalias !27183

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !27183
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hd426b8d32901365cE.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !27183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27183
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.m = add i64 %1, %0
  %i.n = inttoptr i64 %i.m to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hd426b8d32901365cE.exit"
  %.sroa.4.0 = phi ptr [ %i.i, %"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hd426b8d32901365cE.exit" ], [ %i.n, %bb.g ]
  %.sroa.0.0 = phi i64 [ 1, %"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hd426b8d32901365cE.exit" ], [ 0, %bb.g ]
  %i.o = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.p = insertvalue { i64, ptr } %i.o, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4rhai4eval6target10calc_index17h27ea48cffaf1a58fE(i64 noundef %0, i64 %.0.val, i16 %.0.val1, i16 %.2.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = icmp ult i64 %0, 64
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 64, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.0.val, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.0.val1, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 %.2.val, ptr %i.f, align 4
  store i8 17, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27187
  %i.g = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27187 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %"_ZN4rhai4eval8chaining38_$LT$impl$u20$rhai..engine..Engine$GT$15get_indexed_mut28_$u7b$$u7b$closure$u7d$$u7d$17hb2590c4bc29e099fE.exit", !prof !56

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

end_hunk_7
begin_hunk_8_@_ZN4rhai4eval6target6Target23propagate_changed_value17h748f58dffc4658d3E:bb.a
  br i1 %i.fv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fw = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.fx = and i64 %i.fw, 9223372036854775807
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155, label %bb.bu, !prof !72

bb.bu:                                            ; preds = %bb.bt
  %i.fz = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.fz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store atomic i8 1, ptr %i.fu monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %i.ga = atomicrmw add ptr %.sroa.0235.0.copyload, i32 -1073741823 release, align 4
  %i.gb = add i32 %i.ga, -1073741823              ; 2 uses
  %or.cond.i.i.i.i156 = icmp ult i32 %i.gb, 1073741824
  br i1 %or.cond.i.i.i.i156, label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit", label %bb.bw, !prof !74

bb.bw:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i155
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.0235.0.copyload, i32 noundef %i.gb)
  br label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit"

bb.bx:                                            ; preds = %.thread271, %bb.bq
  %i.gc = phi i64 [ %i.fk, %.thread271 ], [ %i.ff, %bb.bq ]
  %i.gd = phi i64 [ %i.fi, %.thread271 ], [ %i.fd, %bb.bq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.gd, i64 noundef %i.gc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @619) #70
          to label %bb.by unwind label %bb.bp

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.e
  %i.ge = load i64, ptr %i.ao, align 8, !noundef !53 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !27450
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27451
  %i.gf = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #71, !noalias !27451 ; 4 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ca, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i157"

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70, !noalias !27452
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i157": ; preds = %bb.bz
  store i32 1918986339, ptr %i.gf, align 1, !noalias !27453
  %i.gh = icmp slt i64 %i.ge, 0
  br i1 %i.gh, label %bb.cc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i158, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i158: ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i157"
  %i.gi = icmp eq i64 %i.ge, 0
  br i1 %i.gi, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i158
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27454
  %i.gj = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ge, i64 noundef range(i64 1, 9) 1) #71, !noalias !27454 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i157"
  %.sroa.4.0.ph.i.i.i167 = phi i64 [ 1, %bb.cb ], [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit.i157" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i167, i64 %i.ge, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70
          to label %.noexc.i168 unwind label %bb.ch, !noalias !27450

.noexc.i168:                                      ; preds = %bb.cc
  unreachable

bb.cd:                                            ; preds = %bb.cb, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i158
  %.sroa.10.0.i.i.i159 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i158 ], [ %i.gj, %bb.cb ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i159, ptr nonnull readonly align 1 %i.an, i64 %i.ge, i1 false), !noalias !27455
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 4, ptr %i.gl, align 8, !noalias !27450
  %.sroa.5.0..sroa_idx2.i160 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.gf, ptr %.sroa.5.0..sroa_idx2.i160, align 8, !noalias !27450
  %.sroa.6.0..sroa_idx4.i161 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4.i161, align 8, !noalias !27450
  %i.gm = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.ge, ptr %i.gm, align 8, !noalias !27450
  %.sroa.412.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.10.0.i.i.i159, ptr %.sroa.412.0..sroa_idx.i162, align 8, !noalias !27450
  %.sroa.513.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i64 %i.ge, ptr %.sroa.513.0..sroa_idx.i163, align 8, !noalias !27450
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %1, ptr %i.gn, align 2, !noalias !27450
  %i.go = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i16 %2, ptr %i.go, align 4, !noalias !27450
  store i8 12, ptr %i.i, align 8, !noalias !27450
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27456
  %i.gp = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27456 ; 3 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ce, label %bb.ci, !prof !56

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc4.i166 unwind label %bb.cf, !noalias !27450

.noexc4.i166:                                     ; preds = %bb.ce
  unreachable

bb.cf:                                            ; preds = %bb.ce
  %i.gr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i) #72
          to label %common.resume unwind label %bb.cg, !noalias !27450

bb.cg:                                            ; preds = %bb.cf
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !27450
  unreachable

bb.ch:                                            ; preds = %bb.cc
  %i.gt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gf, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !27457
  br label %common.resume

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gp, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !27450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !27450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit"

bb.cj:                                            ; preds = %bb.e
  %i.gu = load i32, ptr %i.ao, align 8, !range !60, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !nonnull !53, !align !54, !noundef !53
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic10write_lock17h88a757b02572d992E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.n, ptr noalias noundef align 8 dereferenceable(16) %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.gy = load i8, ptr %i.gx, align 8, !range !73, !noundef !53 ; 4 uses
  %.not42 = icmp eq i8 %i.gy, 3
  br i1 %.not42, label %bb.cn, label %bb.ck, !prof !64

bb.ck:                                            ; preds = %bb.cj
  %.sroa.0238.0.copyload = load ptr, ptr %i.n, align 8, !nonnull !53, !noundef !53 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not.i169 = icmp eq i8 %i.gy, 2                ; 2 uses
  br i1 %.not.i169, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9d293189fa8963acE.exit", label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload, i64 16
  %i.ha = load i8, ptr %i.gz, align 8, !range !65, !alias.scope !27458, !noundef !53
  %.not1.i170 = icmp eq i8 %i.ha, 2
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload, i64 24
  br i1 %.not1.i170, label %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9d293189fa8963acE.exit", label %bb.cm, !prof !72

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3316) #70
          to label %.noexc172 unwind label %bb.co

.noexc172:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cj
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @620) #70
  unreachable

.body:                                            ; preds = %.noexc.i.i.i.i, %bb.cw, %.noexc2.i.i, %bb.da, %bb.co, %bb.de
  %.pn43 = phi { ptr, i32 } [ %i.jk, %bb.de ], [ %i.hc, %bb.co ], [ %i.ix, %.noexc.i.i.i.i ], [ %i.ix, %bb.cw ], [ %i.je, %.noexc2.i.i ], [ %i.je, %bb.da ]
  invoke fastcc void @"_ZN4core3ptr113drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$rhai..types..immutable_string..ImmutableString$GT$$GT$17h3c77e77eaf68d447E"(ptr nonnull %.sroa.0238.0.copyload, i8 %i.gy) #72
          to label %common.resume unwind label %bb.ae

bb.co:                                            ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9d293189fa8963acE.exit", %bb.cm, %bb.cp
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9d293189fa8963acE.exit": ; preds = %bb.cl, %bb.ck
  %.sroa.0.0.i171 = phi ptr [ %i.hb, %bb.cl ], [ %.sroa.0238.0.copyload, %bb.ck ] ; 5 uses
  %i.hd = load ptr, ptr %.sroa.0.0.i171, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 3 uses
  %i.hf = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.he)
          to label %.noexc76 unwind label %bb.co

.noexc76:                                         ; preds = %"_ZN94_$LT$rhai..types..dynamic..DynamicWriteLock$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9d293189fa8963acE.exit"
  br i1 %i.hf, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.noexc76
  %i.hg = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.he)
          to label %.noexc77 unwind label %bb.co  ; 2 uses

.noexc77:                                         ; preds = %bb.cp
  %i.hh = extractvalue { ptr, i64 } %i.hg, 0
  %i.hi = extractvalue { ptr, i64 } %i.hg, 1
  br label %bb.cr

bb.cq:                                            ; preds = %.noexc76
  %i.hj = load ptr, ptr %i.he, align 8, !nonnull !53, !noundef !53
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hl = load i64, ptr %i.hk, align 8, !noundef !53
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.noexc77
  %.pre-phi = phi ptr [ %i.hj, %bb.cq ], [ %i.hh, %.noexc77 ] ; 3 uses
  %.merged.i75 = phi i64 [ %i.hl, %bb.cq ], [ %i.hi, %.noexc77 ]
  %3 = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 %.merged.i75 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27459
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa_idx.i.i.i.i, i8 0, i64 23, i1 false), !noalias !27459
  store i8 1, ptr %i.g, align 8, !noalias !27459
  br label %bb.cs

bb.cs:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i", %bb.cr
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.cr ], [ %i.iu, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.pre-phi, %bb.cr ], [ %.sroa.0.1.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i" ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, %3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1 ; 3 uses
  %i.hn = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !noalias !27460, !noundef !53 ; 5 uses
  %i.ho = icmp sgt i8 %i.hn, -1
  br i1 %i.ho, label %bb.cu, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.ct
  %i.hp = and i8 %i.hn, 31
  %i.hq = zext nneg i8 %i.hp to i32               ; 3 uses
  %i.hr = icmp ne ptr %i.hm, %3
  call void @llvm.assume(i1 %i.hr)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 2 ; 3 uses
  %i.ht = load i8, ptr %i.hm, align 1, !noalias !27460, !noundef !53
  %i.hu = shl nuw nsw i32 %i.hq, 6
  %i.hv = and i8 %i.ht, 63
  %i.hw = zext nneg i8 %i.hv to i32               ; 2 uses
  %i.hx = or disjoint i32 %i.hu, %i.hw
  %i.hy = icmp samesign ugt i8 %i.hn, -33
  br i1 %i.hy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

bb.cu:                                            ; preds = %bb.ct
  %i.hz = zext nneg i8 %i.hn to i32
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %i.ia = icmp ne ptr %i.hs, %3
  call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 3 ; 3 uses
  %i.ic = load i8, ptr %i.hs, align 1, !noalias !27460, !noundef !53
  %i.id = shl nuw nsw i32 %i.hw, 6
  %i.ie = and i8 %i.ic, 63
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.id, %i.if            ; 2 uses
  %i.ih = shl nuw nsw i32 %i.hq, 12
  %i.ii = or disjoint i32 %i.ig, %i.ih
  %i.ij = icmp samesign ugt i8 %i.hn, -17
  br i1 %i.ij, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i"
  %i.ik = icmp ne ptr %i.ib, %3
  call void @llvm.assume(i1 %i.ik)
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 4
  %i.im = load i8, ptr %i.ib, align 1, !noalias !27460, !noundef !53
  %i.in = shl nuw nsw i32 %i.hq, 18
  %i.io = and i32 %i.in, 1835008
  %i.ip = shl nuw nsw i32 %i.ig, 6
  %i.iq = and i8 %i.im, 63
  %i.ir = zext nneg i8 %i.iq to i32
  %i.is = or disjoint i32 %i.ip, %i.ir
  %i.it = or disjoint i32 %i.is, %i.io            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.it, 1114112
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", %bb.cu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.hm, %bb.cu ], [ %i.il, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.ib, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.hs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ]
  %spec.select.i6.i13.i.i.i.i.i = phi i32 [ %i.hz, %bb.cu ], [ %i.it, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.ii, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.hx, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.iu = add i64 %.sroa.9.0.i.i.i.i, 1
  %i.iv = load i64, ptr %i.al, align 8, !noalias !27461, !noundef !53
  %i.iw = icmp eq i64 %.sroa.9.0.i.i.i.i, %i.iv
  br i1 %i.iw, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.i.i.i.i"

bb.cv:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i"
  %i.ix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iy = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %.noexc.i.i.i.i unwind label %bb.cx, !noalias !27459

.noexc.i.i.i.i:                                   ; preds = %bb.cv
  br i1 %i.iy, label %.body, label %bb.cw

bb.cw:                                            ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.cx, !noalias !27459

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"
  %.not.i.i.i.i = icmp eq i32 %spec.select.i6.i13.i.i.i.i.i, 1114112
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.thread16.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.i.i.i.i"
  %.sroa.0.0.i23.i.i.i.i = phi i32 [ %spec.select.i6.i13.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.i.i.i.i" ], [ %i.gu, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i" ]
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.g, i32 noundef %.sroa.0.0.i23.i.i.i.i)
          to label %bb.cs unwind label %bb.cv, !noalias !27459

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !27459
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h056862207e30ddefE.exit.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %bb.cs
  %i.ja = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !27462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27459
  store i64 1, ptr %i.h, align 8, !noalias !27462
  %i.jb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.jb, align 8, !noalias !27462
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !27463
  %i.jc = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !27463 ; 4 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.cy, label %bb.dc, !prof !56

bb.cy:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc.i.i unwind label %bb.cz, !noalias !27462

.noexc.i.i:                                       ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ja)
          to label %.noexc2.i.i unwind label %bb.db, !noalias !27462

.noexc2.i.i:                                      ; preds = %bb.cz
  br i1 %i.jf, label %.body, label %bb.da

bb.da:                                            ; preds = %.noexc2.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %.body unwind label %bb.db, !noalias !27462

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !27462
  unreachable

bb.dc:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h1cddb7a437d58101E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jc, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !27462
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27462
  call void @llvm.experimental.noalias.scope.decl(metadata !27464)
  call void @llvm.experimental.noalias.scope.decl(metadata !27465)
  call void @llvm.experimental.noalias.scope.decl(metadata !27466)
  %i.jh = load ptr, ptr %.sroa.0.0.i171, align 8, !alias.scope !27467, !nonnull !53, !noundef !53
  %i.ji = atomicrmw add ptr %i.jh, i64 -1 release, align 8, !noalias !27467
  %i.jj = icmp eq i64 %i.ji, 1
  br i1 %i.jj, label %bb.dd, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit"

bb.dd:                                            ; preds = %bb.dc
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %.sroa.0.0.i171)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit" unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jc, ptr %.sroa.0.0.i171, align 8
  br label %.body

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit": ; preds = %bb.dc, %bb.dd
  store ptr %i.jc, ptr %.sroa.0.0.i171, align 8
  br i1 %.not.i169, label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit", label %bb.df

bb.df:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit"
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0238.0.copyload, i64 8
  %i.jm = trunc nuw i8 %i.gy to i1
  br i1 %i.jm, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.jn = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.jo = and i64 %i.jn, 9223372036854775807
  %i.jp = icmp eq i64 %i.jo, 0
  br i1 %i.jp, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175, label %bb.dh, !prof !72

bb.dh:                                            ; preds = %bb.dg
  %i.jq = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.jq, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store atomic i8 1, ptr %i.jl monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175: ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
  %i.jr = atomicrmw add ptr %.sroa.0238.0.copyload, i32 -1073741823 release, align 4
  %i.js = add i32 %i.jr, -1073741823              ; 2 uses
  %or.cond.i.i.i.i176 = icmp ult i32 %i.js, 1073741824
  br i1 %or.cond.i.i.i.i176, label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit", label %bb.dj, !prof !74

bb.dj:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i175
  call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.sroa.0238.0.copyload, i32 noundef %i.js)
  br label %"_ZN4core3ptr70drop_in_place$LT$rhai..types..dynamic..DynamicWriteLock$LT$i64$GT$$GT$17h75ebc13fe81e866dE.exit"

bb.dk:                                            ; preds = %bb.f
  %.sroa.0243.0.copyload = load ptr, ptr %i.m, align 8, !nonnull !53, !noundef !53 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not.i177 = icmp eq i8 %i.at, 2                ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN4rhai5types7dynamic7Dynamic4cast17h818023030ef7c358E:bb.a
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.r) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.o, !noalias !32903

bb.r:                                             ; preds = %bb.b
  %i.at = extractvalue { ptr, i64 } %i.m, 0
  %i.au = extractvalue { ptr, i64 } %i.m, 1
  br label %.noexc

bb.s:                                             ; preds = %bb.j
  %i.av = load i64, ptr %i.af, align 16, !noalias !32903
  %.sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aw = load i64, ptr %.sroa_idx31.i, align 8, !noalias !32903
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ay = load i128, ptr %i.ax, align 16, !noalias !32903, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 32, i64 noundef 16) #71, !noalias !32903
  %.sroa.037.0.insert.ext.i = zext i64 %i.av to i128
  %.sroa.037.8.insert.ext.i = zext i64 %i.aw to i128
  %.sroa.037.8.insert.shift.i = shl nuw i128 %.sroa.037.8.insert.ext.i, 64
  %.sroa.037.8.insert.insert.i = or disjoint i128 %.sroa.037.8.insert.shift.i, %.sroa.037.0.insert.ext.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 16, i64 noundef 8) #71, !noalias !32903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i128 %.sroa.037.8.insert.insert.i, ptr %0, align 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.ay, ptr %i.az, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

"_ZN4core3ptr116drop_in_place$LT$core..result..Result$LT$core..ops..range..Range$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h18ad8434283f79e3E.exit": ; preds = %bb.d, %.noexc
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !32903
  store i64 1, ptr %i.h, align 16, !alias.scope !32901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @1075, ptr %i.f, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 29, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.bc, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @1055, ptr %i.g, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bg, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.p, %bb.q, %bb.t
  %eh.lpad-body18 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.as, %bb.q ], [ %eh.lpad-body.i, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body18

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %1)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.u, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4rhai5types7dynamic7Dynamic4cast17h81930a999edebf60E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10.i = alloca [7 x i8], align 1          ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = load i8, ptr %1, align 8, !range !65, !noundef !53
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.u       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.s
  %.sink36 = phi ptr [ %i.au, %bb.s ], [ @1052, %bb.a ]
  %.sink = phi i64 [ %i.av, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink36, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %1)
  %i.o = load i8, ptr %i.i, align 8, !range !65, !alias.scope !32917, !noundef !53
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h9112b291e8f40e61E.exit26"

bb.c:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !32917, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !32918, !nonnull !53, !align !59, !noundef !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !32918, !nonnull !53, !align !54, !noundef !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !53, !noalias !32918, !nonnull !53
  invoke void %i.w(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.s)
          to label %bb.d unwind label %bb.r, !noalias !32918

bb.d:                                             ; preds = %bb.c
  %i.x = load i128, ptr %i.d, align 16, !noalias !32918, !noundef !53
  %i.y = icmp eq i128 %i.x, -155665897932629991761817536134852449801
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h9112b291e8f40e61E.exit26"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.z = load ptr, ptr %i.r, align 8, !noalias !32918, !nonnull !53, !align !59, !noundef !53
  %i.aa = load ptr, ptr %i.t, align 8, !noalias !32918, !nonnull !53, !align !54, !noundef !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !53, !noalias !32918, !nonnull !53
  %i.ad = invoke { ptr, ptr } %i.ac(ptr noundef nonnull %i.z)
          to label %bb.g unwind label %bb.f, !noalias !32918 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.af = extractvalue { ptr, ptr } %i.ad, 0      ; 8 uses
  %i.ag = extractvalue { ptr, ptr } %i.ad, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32919)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32918
  store ptr %i.af, ptr %i.b, align 8, !noalias !32920
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !32920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32920
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !53, !alias.scope !32919, !noalias !32918, !nonnull !53
  invoke void %i.aj(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.af)
          to label %bb.j unwind label %bb.h, !noalias !32921

bb.h:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !32921

bb.i:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !32921
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.am = load i128, ptr %i.a, align 16, !noalias !32920, !noundef !53
  %i.an = icmp eq i128 %i.am, -155665897932629991761817536134852449801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32918
  br i1 %i.an, label %bb.k, label %.thread54.i

.thread54.i:                                      ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.042.0.copyload.i = load ptr, ptr %i.af, align 8, !noalias !32918 ; 2 uses
  %.sroa.443.0..sroa.440.8.41.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.443.0.copyload.i = load ptr, ptr %.sroa.443.0..sroa.440.8.41.sroa_idx.i, align 8, !noalias !32918 ; 2 uses
  %.sroa.544.0..sroa.440.8.41.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.544.0.copyload.i = load i8, ptr %.sroa.544.0..sroa.440.8.41.sroa_idx.i, align 8, !noalias !32918 ; 2 uses
  %.sroa.645.0..sroa.440.8.41.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.645.0..sroa.440.8.41.sroa_idx.i, i64 7, i1 false), !noalias !32918
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 24, i64 noundef 8) #71, !noalias !32918
  %i.ao = icmp eq i8 %.sroa.544.0.copyload.i, 2
  br i1 %i.ao, label %bb.l, label %bb.t, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread54.i
  %.sroa.030.059.i = phi ptr [ %i.af, %.thread54.i ], [ %.sroa.042.0.copyload.i, %bb.k ] ; 2 uses
  %.sroa.6.058.i = phi ptr [ %i.ag, %.thread54.i ], [ %.sroa.443.0.copyload.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32922
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.059.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.058.i) ]
  store ptr %.sroa.030.059.i, ptr %i.c, align 8, !noalias !32922
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.058.i, ptr %i.ap, align 8, !noalias !32922
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !32922

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !32922

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !32922
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !32918
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.h ], [ %i.ae, %bb.f ], [ %i.aq, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 16, i64 noundef 8) #71, !noalias !32918
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

bb.r:                                             ; preds = %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.r) #72
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.p, !noalias !32918

bb.s:                                             ; preds = %bb.b
  %i.au = extractvalue { ptr, i64 } %i.m, 0
  %i.av = extractvalue { ptr, i64 } %i.m, 1
  br label %.noexc

bb.t:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.638.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store ptr %.sroa.042.0.copyload.i, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.443.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef 16, i64 noundef 8) #71, !noalias !32918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.544.0.copyload.i, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %i.aw, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h9112b291e8f40e61E.exit26": ; preds = %bb.d, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 2, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @482, ptr %i.f, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 37, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.415.0..sroa_idx, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.419.0..sroa_idx, align 8
  store ptr @1055, ptr %i.g, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70
  unreachable

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %bb.q, %bb.r, %bb.u
  %eh.lpad-body30 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.u ], [ %i.at, %bb.r ], [ %eh.lpad-body.i, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body30

bb.u:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %1)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.v, !inline_history !71

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i32, i32 } @_ZN4rhai5types7dynamic7Dynamic4cast17h83ef05eea26afb0cE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = load i8, ptr %0, align 8, !range !65, !noundef !53
  %i.k = icmp eq i8 %i.j, 11
  br i1 %i.k, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.r unwind label %bb.t       ; 2 uses

.noexc:                                           ; preds = %bb.a, %bb.r
  %.sink28 = phi ptr [ %i.av, %bb.r ], [ @1052, %bb.a ]
  %.sink = phi i64 [ %i.aw, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink28, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32932)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %0)
  %i.n = load i8, ptr %i.h, align 8, !range !65, !alias.scope !32932, !noundef !53
  %i.o = icmp eq i8 %i.n, 10
  br i1 %i.o, label %bb.c, label %bb.s

bb.c:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !32932, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !noalias !32933, !nonnull !53, !align !59, !noundef !53
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !32933, !nonnull !53, !align !54, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !53, !noalias !32933, !nonnull !53
  invoke void %i.v(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.r)
          to label %bb.d unwind label %bb.q, !noalias !32933

bb.d:                                             ; preds = %bb.c
  %i.w = load i128, ptr %i.d, align 16, !noalias !32933, !noundef !53
  %i.x = icmp eq i128 %i.w, -70020362557244145144961238724817039817
  br i1 %i.x, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.q, align 8, !noalias !32933, !nonnull !53, !align !59, !noundef !53
  %i.z = load ptr, ptr %i.s, align 8, !noalias !32933, !nonnull !53, !align !54, !noundef !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !53, !noalias !32933, !nonnull !53
  %i.ac = invoke { ptr, ptr } %i.ab(ptr noundef nonnull %i.y)
          to label %bb.g unwind label %bb.f, !noalias !32933 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ae = extractvalue { ptr, ptr } %i.ac, 0      ; 6 uses
  %i.af = extractvalue { ptr, ptr } %i.ac, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32934)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32933
  store ptr %i.ae, ptr %i.b, align 8, !noalias !32935
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !32935
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32935
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !53, !alias.scope !32934, !noalias !32933, !nonnull !53
  invoke void %i.ai(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ae)
          to label %bb.j unwind label %bb.h, !noalias !32936

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.p unwind label %bb.i, !noalias !32936

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_9
begin_hunk_10_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h04267afae3d49612E":bb.a
  store i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !35189, !noalias !35187
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !35189, !noalias !35187
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35190
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35190 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17h135c751f26b5b0b5E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #70
          to label %.noexc.i unwind label %bb.c, !noalias !35187

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hac7b6c6823adc3b8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %common.resume unwind label %bb.d, !noalias !35187

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35187
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17h135c751f26b5b0b5E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !35187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8, !noalias !35191
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @1149, ptr %i.j, align 8, !noalias !35191
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.k = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.e:                                             ; preds = %"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17h135c751f26b5b0b5E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17h135c751f26b5b0b5E.exit"
  store ptr %i.f, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1149, ptr %i.o, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr @1221, 1
  ret { ptr, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h08d7773d2dbbe836E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.42.i = alloca [32 x i8], align 8         ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35210)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35211)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35212
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35213, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35214 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink34.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink34.i.i, ptr %i.j, align 8, !noalias !35212
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35212
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35214
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35216, !noalias !35212, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hc3a44c524b94b1c5E.exit24.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35216, !noalias !35212, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35217, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35217, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35217, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35217

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35217, !noundef !53
  %i.z = icmp eq i128 %i.y, -9560289054898577245336102597853799442
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hc3a44c524b94b1c5E.exit24.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35217, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35217, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35217, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35217 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 8 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35217
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35219
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35219
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35218, !noalias !35217, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35220

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35220

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35220
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35219, !noundef !53
  %i.ao = icmp eq i128 %i.an, -9560289054898577245336102597853799442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35217
  br i1 %i.ao, label %bb.k, label %.thread54.i.i.i

.thread54.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.042.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35217 ; 2 uses
  %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.443.0.copyload.i.i.i = load ptr, ptr %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35217 ; 2 uses
  %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.544.0.copyload.i.i.i = load ptr, ptr %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35217 ; 2 uses
  %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i, i64 16, i1 false), !noalias !35217
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 40, i64 noundef 8) #71, !noalias !35217
  %i.ap = icmp eq ptr %.sroa.042.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17hc481954955f09ba4E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread54.i.i.i
  %.sroa.6.059.i.i.i = phi ptr [ %i.ag, %.thread54.i.i.i ], [ %.sroa.443.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.058.i.i.i = phi ptr [ %i.ah, %.thread54.i.i.i ], [ %.sroa.544.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35221
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.059.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.058.i.i.i) ]
  store ptr %.sroa.6.059.i.i.i, ptr %i.c, align 8, !noalias !35221
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.058.i.i.i, ptr %i.aq, align 8, !noalias !35221
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35221

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35221

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35221
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35217
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35217
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35217

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hc3a44c524b94b1c5E.exit24.i.i": ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35222, !noalias !35212
  store ptr null, ptr %i.h, align 8, !alias.scope !35215, !noalias !35212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35212
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax), !noalias !35212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35212
  store ptr @1088, ptr %i.f, align 8, !noalias !35212
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 42, ptr %i.ay, align 8, !noalias !35212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35212
  store ptr %i.j, ptr %i.e, align 8, !noalias !35212
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35212
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35212
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35212
  store ptr @1055, ptr %i.g, align 8, !noalias !35212
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35212
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35212
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35212
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35212
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35212
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35214, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35212
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17hc481954955f09ba4E.exit.i: ; preds = %bb.k
  %.sroa.638.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, i64 16, i1 false), !noalias !35223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.443.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35215, !noalias !35212
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.544.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35215, !noalias !35212
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !35210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35212
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35224
  %i.bf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35224 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h6498c7e411b3d828E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hc481954955f09ba4E.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70, !noalias !35224
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h6498c7e411b3d828E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hc481954955f09ba4E.exit.i
  store ptr %.sroa.042.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !35210
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, i64 32, i1 false), !noalias !35210
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35225
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1161, ptr %i.bh, align 8, !noalias !35225
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h6498c7e411b3d828E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h6498c7e411b3d828E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1161, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h099cc6dcd76f4e3aE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35242
  %i.k = load i8, ptr %1, align 8, !range !65, !alias.scope !35242, !noundef !53
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.r unwind label %bb.u       ; 2 uses

.noexc.i.i:                                       ; preds = %bb.r, %bb.a
  %.sink41.i.i = phi ptr [ %i.at, %bb.r ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.au, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink41.i.i, ptr %i.i, align 8, !noalias !35242
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink.i.i, ptr %i.n, align 8, !noalias !35242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35242
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  %i.o = load i8, ptr %i.h, align 8, !range !65, !alias.scope !35243, !noalias !35242, !noundef !53
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i8$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hab5370f292ac2e7bE.exit.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !35243, !noalias !35242, !nonnull !53, !align !54, !noundef !53 ; 6 uses
end_hunk_10
begin_hunk_11_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h2b7acf003b0017c9E":bb.a
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.p, %bb.q, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.p ], [ %lpad.thr_comm.split-lp.i.i, %bb.u ], [ %i.as, %bb.q ], [ %i.bl, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.v, !noalias !35440, !inline_history !71

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35438
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17hb5af6dd8edbea33fE.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35438
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35447
  %i.be = call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !35447 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc4c2ff5691f14089E.exit", !prof !56

bb.w:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hb5af6dd8edbea33fE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 12) #70, !noalias !35447
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc4c2ff5691f14089E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hb5af6dd8edbea33fE.exit.i
  %.sroa.0.sroa.4.0.insert.ext.i = shl i64 %i.av, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.sroa.038.0.copyload.i.i.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.ext.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.be, align 4, !noalias !35436
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = lshr i64 %i.av, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  store i32 %i.bh, ptr %.sroa.42.0..sroa_idx.i, align 4, !noalias !35436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.be, ptr %i.j, align 8, !noalias !35448
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @1176, ptr %i.bi, align 8, !noalias !35448
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.x, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.x:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc4c2ff5691f14089E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #72
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc4c2ff5691f14089E.exit"
  store ptr %i.be, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @1176, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bo = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %i.bp = insertvalue { ptr, ptr } %i.bo, ptr @1221, 1
  ret { ptr, ptr } %i.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h2b8f2d6d8594d7e6E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35473)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35475
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35476, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.u, !noalias !35477 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink31.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink31.i.i, ptr %i.j, align 8, !noalias !35475
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35479)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35475
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35477
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35479, !noalias !35475, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %bb.t

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35479, !noalias !35475, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35480, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35480, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35480, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35480

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35480, !noundef !53
  %i.z = icmp eq i128 %i.y, 24169241308353339330380879539488027379
  br i1 %i.z, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35480, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35480, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35480, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35480 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 8 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35480
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35482
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35482
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35481, !noalias !35480, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35483

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35483

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35483
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35482, !noundef !53
  %i.ao = icmp eq i128 %i.an, 24169241308353339330380879539488027379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35480
  br i1 %i.ao, label %bb.k, label %.thread55.i.i.i

.thread55.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.043.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35480 ; 3 uses
  %.sroa.444.0..sroa.441.8.42.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.444.0.copyload.i.i.i = load ptr, ptr %.sroa.444.0..sroa.441.8.42.sroa_idx.i.i.i, align 8, !noalias !35480 ; 2 uses
  %.sroa.545.0..sroa.441.8.42.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.545.0.copyload.i.i.i = load ptr, ptr %.sroa.545.0..sroa.441.8.42.sroa_idx.i.i.i, align 8, !noalias !35480 ; 3 uses
  %.sroa.646.0..sroa.441.8.42.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.646.0.copyload.i.i.i = load i64, ptr %.sroa.646.0..sroa.441.8.42.sroa_idx.i.i.i, align 8, !noalias !35480
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 32, i64 noundef 8) #71, !noalias !35480
  %i.ap = icmp eq ptr %.sroa.043.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17ha09fa3623623b815E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread55.i.i.i
  %.sroa.6.061.i.i.i = phi ptr [ %i.ag, %.thread55.i.i.i ], [ %.sroa.444.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.060.i.i.i = phi ptr [ %i.ah, %.thread55.i.i.i ], [ %.sroa.545.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35484
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.061.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.060.i.i.i) ]
  store ptr %.sroa.6.061.i.i.i, ptr %i.c, align 8, !noalias !35484
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.060.i.i.i, ptr %i.aq, align 8, !noalias !35484
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35484

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35484

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35484
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35480
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35480
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35480

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

bb.t:                                             ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35485, !noalias !35475
  store ptr null, ptr %i.h, align 8, !alias.scope !35478, !noalias !35475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35475
  call fastcc void @"_ZN4core3ptr120drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..CharsStream$C$rhai..types..dynamic..Dynamic$GT$$GT$17h5cd9769c72be07f1E"(ptr noalias noundef align 8 dereferenceable(32) %i.h), !noalias !35475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35475
  store ptr @488, ptr %i.f, align 8, !noalias !35475
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 39, ptr %i.ay, align 8, !noalias !35475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35475
  store ptr %i.j, ptr %i.e, align 8, !noalias !35475
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35475
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35475
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35475
  store ptr @1055, ptr %i.g, align 8, !noalias !35475
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35475
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35475
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35475
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35475
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35475
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.q, %bb.r, %bb.u, %bb.x, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.u ], [ %i.au, %bb.r ], [ %i.bi, %bb.y ], [ %i.bp, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.v, !noalias !35477, !inline_history !71

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35475
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17ha09fa3623623b815E.exit.i: ; preds = %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35475
  %i.bf = ptrtoint ptr %.sroa.545.0.copyload.i.i.i to i64 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35475
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35486
  %i.bg = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35486 ; 7 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.w, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc04039cec5aafc99E.exit", !prof !56

bb.w:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17ha09fa3623623b815E.exit.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #70
          to label %.noexc.i unwind label %bb.x, !noalias !35473

.noexc.i:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.545.0.copyload.i.i.i, null
  br i1 %i.bj, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = shl nuw i64 %i.bf, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.0.copyload.i.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !35487
  br label %common.resume

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc04039cec5aafc99E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17ha09fa3623623b815E.exit.i
  %i.bl = ptrtoint ptr %.sroa.444.0.copyload.i.i.i to i64
  store ptr %.sroa.043.0.copyload.i.i.i, ptr %i.bg, align 8, !noalias !35473
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !35473
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %i.bf, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !35473
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %.sroa.646.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !35473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bg, ptr %i.k, align 8, !noalias !35488
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1175, ptr %i.bm, align 8, !noalias !35488
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bn = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.z, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.z:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc04039cec5aafc99E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hc04039cec5aafc99E.exit"
  store ptr %i.bg, ptr %i.bn, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr @1175, ptr %i.br, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bs = insertvalue { ptr, ptr } poison, ptr %i.bn, 0
  %i.bt = insertvalue { ptr, ptr } %i.bs, ptr @1221, 1
  ret { ptr, ptr } %i.bt
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h2de203f6e95281a6E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35501
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic4cast17ha4d17fc825279adeE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !alias.scope !35502, !noalias !35501 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !35502, !noalias !35501, !nonnull !53, !noundef !53 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !35502, !noalias !35501 ; 2 uses
  %i.c = icmp sgt i64 %.sroa.5.0.copyload.i.i, -1
  tail call void @llvm.assume(i1 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35501
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35503
  %i.d = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35503 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17hd4e151d2fd0aec6cE.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #70
          to label %.noexc.i unwind label %bb.c, !noalias !35501

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
end_hunk_11
begin_hunk_12_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h2de203f6e95281a6E":bb.a
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterable28_$u7b$$u7b$closure$u7d$$u7d$17hd4e151d2fd0aec6cE.exit"
  store ptr %i.d, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @1150, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.q = insertvalue { ptr, ptr } poison, ptr %i.l, 0
  %i.r = insertvalue { ptr, ptr } %i.q, ptr @1221, 1
  ret { ptr, ptr } %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h35b8777095d99f1dE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { i32, i32 } @_ZN4rhai5types7dynamic7Dynamic4cast17h83ef05eea26afb0cE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35510
  %i.c = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !35510 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf37ea512e25c2166E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 8) #70, !noalias !35510
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf37ea512e25c2166E.exit": ; preds = %bb.a
  %i.e = extractvalue { i32, i32 } %i.b, 1
  %i.f = extractvalue { i32, i32 } %i.b, 0
  store i32 %i.f, ptr %i.c, align 4, !noalias !35510
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.e, ptr %i.g, align 4, !noalias !35510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !35511
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @1180, ptr %i.h, align 8, !noalias !35511
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf37ea512e25c2166E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf37ea512e25c2166E.exit"
  store ptr %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1180, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @1221, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3621a7ea7da1aa82E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.42.i = alloca [16 x i8], align 8         ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35530)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35531)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35532
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35533, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35534 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink34.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink34.i.i, ptr %i.j, align 8, !noalias !35532
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35532
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35536)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35532
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35534
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35536, !noalias !35532, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha12a43545de9cd90E.exit24.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35536, !noalias !35532, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35537, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35537, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35537, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35537

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35537, !noundef !53
  %i.z = icmp eq i128 %i.y, -92907861852088632251931407641601588175
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha12a43545de9cd90E.exit24.i.i"

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35537, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35537, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35537, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35537 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 7 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35537
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35539
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35539
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35538, !noalias !35537, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35540

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35540

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35540
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35539, !noundef !53
  %i.ao = icmp eq i128 %i.an, -92907861852088632251931407641601588175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35537
  br i1 %i.ao, label %bb.k, label %.thread51.i.i.i

.thread51.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.040.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35537 ; 2 uses
  %.sroa.441.0..sroa.438.8.39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.441.0.copyload.i.i.i = load ptr, ptr %.sroa.441.0..sroa.438.8.39.sroa_idx.i.i.i, align 8, !noalias !35537 ; 2 uses
  %.sroa.542.0..sroa.438.8.39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.542.0.copyload.i.i.i = load ptr, ptr %.sroa.542.0..sroa.438.8.39.sroa_idx.i.i.i, align 8, !noalias !35537 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 24, i64 noundef 8) #71, !noalias !35537
  %i.ap = icmp eq ptr %.sroa.040.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17h5f935d237b5f8999E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread51.i.i.i
  %.sroa.6.056.i.i.i = phi ptr [ %i.ag, %.thread51.i.i.i ], [ %.sroa.441.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.055.i.i.i = phi ptr [ %i.ah, %.thread51.i.i.i ], [ %.sroa.542.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35541
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.056.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.055.i.i.i) ]
  store ptr %.sroa.6.056.i.i.i, ptr %i.c, align 8, !noalias !35541
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.055.i.i.i, ptr %i.aq, align 8, !noalias !35541
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35541

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35541

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35541
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35537
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35537
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35537

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha12a43545de9cd90E.exit24.i.i": ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35542, !noalias !35532
  store ptr null, ptr %i.h, align 8, !alias.scope !35535, !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35532
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax), !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35532
  store ptr @1068, ptr %i.f, align 8, !noalias !35532
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 42, ptr %i.ay, align 8, !noalias !35532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35532
  store ptr %i.j, ptr %i.e, align 8, !noalias !35532
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35532
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35532
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35532
  store ptr @1055, ptr %i.g, align 8, !noalias !35532
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35532
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35532
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35532
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35532
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35532
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35534, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35532
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17h5f935d237b5f8999E.exit.i: ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.441.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35535, !noalias !35532
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.542.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35535, !noalias !35532
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !35530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35532
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35543
  %i.bf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35543 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h19ade23e793174a2E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h5f935d237b5f8999E.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !35543
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h19ade23e793174a2E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h5f935d237b5f8999E.exit.i
  store ptr %.sroa.040.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !35530
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.i, i64 16, i1 false), !noalias !35530
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35544
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1152, ptr %i.bh, align 8, !noalias !35544
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h19ade23e793174a2E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h19ade23e793174a2E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1152, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h36eaa4e77895467bE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { i64, i64 } @_ZN4rhai5types7dynamic7Dynamic4cast17hd7d5ce38e471ca7eE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35549
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35549 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h84d0577c23144e99E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70, !noalias !35549
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h84d0577c23144e99E.exit": ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.f, ptr %i.c, align 8, !noalias !35549
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !35549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !35550
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @1164, ptr %i.h, align 8, !noalias !35550
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h84d0577c23144e99E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h84d0577c23144e99E.exit"
  store ptr %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1164, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @1221, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h3c7d2c9596a7bc32E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8.i.i.i = alloca [16 x i8], align 16     ; 4 uses
  %.sroa.10.i.i.i = alloca [15 x i8], align 1     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 16               ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35569)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35570)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35571
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35572, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35573 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink36.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink36.i.i, ptr %i.j, align 8, !noalias !35571
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35574)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35571
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35573
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35574, !noalias !35571, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hbfd4bf36fe7dc70dE.exit26.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35574, !noalias !35571, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35575, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35575, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35575, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35575

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35575, !noundef !53
  %i.z = icmp eq i128 %i.y, 96997308418422736349429461213246534989
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hbfd4bf36fe7dc70dE.exit26.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35575, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35575, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35575, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35575 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 9 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35576)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35575
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35577
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35577
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35576, !noalias !35575, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35578

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35578

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35578
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35577, !noundef !53
  %i.ao = icmp eq i128 %i.an, 96997308418422736349429461213246534989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35575
  br i1 %i.ao, label %bb.k, label %.thread57.i.i.i

.thread57.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.044.0.copyload.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !35575 ; 2 uses
  %.sroa.445.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.445.0.copyload.i.i.i = load ptr, ptr %.sroa.445.0..sroa.442.8.43.sroa_idx.i.i.i, align 8, !noalias !35575 ; 2 uses
  %.sroa.546.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.546.0..sroa.442.8.43.sroa_idx.i.i.i, i64 16, i1 false), !noalias !35575
  %.sroa.647.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.647.0.copyload.i.i.i = load i8, ptr %.sroa.647.0..sroa.442.8.43.sroa_idx.i.i.i, align 16, !noalias !35575 ; 2 uses
  %.sroa.748.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.748.0..sroa.442.8.43.sroa_idx.i.i.i, i64 15, i1 false), !noalias !35575
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 16) #71, !noalias !35575
  %i.ap = icmp eq i8 %.sroa.647.0.copyload.i.i.i, 2
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17had14d19971cb68e7E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread57.i.i.i
  %.sroa.030.062.i.i.i = phi ptr [ %i.ag, %.thread57.i.i.i ], [ %.sroa.044.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.6.061.i.i.i = phi ptr [ %i.ah, %.thread57.i.i.i ], [ %.sroa.445.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35579
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.062.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.061.i.i.i) ]
  store ptr %.sroa.030.062.i.i.i, ptr %i.c, align 8, !noalias !35579
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.061.i.i.i, ptr %i.aq, align 8, !noalias !35579
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35579

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35579

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35579
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35575
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35575
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35575

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hbfd4bf36fe7dc70dE.exit26.i.i": ; preds = %bb.d, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !35569
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 2, ptr %i.ax, align 16, !noalias !35569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35571
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(48) %i.h), !noalias !35569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35571
  store ptr @1080, ptr %i.f, align 8, !noalias !35571
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 38, ptr %i.ay, align 8, !noalias !35571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35571
  store ptr %i.j, ptr %i.e, align 8, !noalias !35571
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !35571
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35571
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !35571
  store ptr @1055, ptr %i.g, align 8, !noalias !35571
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35571
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35571
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35571
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35571
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35571
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bl, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35573, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35571
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17had14d19971cb68e7E.exit.i: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 33 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !35569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bf, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.i.i, i64 15, i1 false), !noalias !35569
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  store ptr %.sroa.044.0.copyload.i.i.i, ptr %i.h, align 16, !noalias !35569
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.445.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !35569
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35571
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35580
  %i.bg = call noundef align 16 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !35580 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17ha2114d3886dd982aE.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17had14d19971cb68e7E.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 48) #70, !noalias !35580
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17ha2114d3886dd982aE.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17had14d19971cb68e7E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bg, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !35569
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i8 %.sroa.647.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 16, !noalias !35569
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.53.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %i.bf, i64 15, i1 false), !noalias !35569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bg, ptr %i.k, align 8, !noalias !35581
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1168, ptr %i.bi, align 8, !noalias !35581
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17ha2114d3886dd982aE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17ha2114d3886dd982aE.exit"
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @1168, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bo = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %i.bp = insertvalue { ptr, ptr } %i.bo, ptr @1221, 1
  ret { ptr, ptr } %i.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h61434dd8b4db9990E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35602
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35603, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.r unwind label %bb.u, !noalias !35604 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.r, %bb.a
  %.sink32.i.i = phi ptr [ %i.au, %bb.r ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.av, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink32.i.i, ptr %i.j, align 8, !noalias !35602
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35606)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35602
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35604
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35606, !noalias !35602, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr128drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i8$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h5dd29455b7927b39E.exit.i.i"
end_hunk_12
begin_hunk_13_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h71e3afb31ad85dc1E":bb.a
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.v, !noalias !35667, !inline_history !71

bb.v:                                             ; preds = %bb.u
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35665
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17hbfc63f8d422a663bE.exit.i: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35665
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35674
  %i.be = call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 12, i64 noundef range(i64 1, -9223372036854775807) 4) #71, !noalias !35674 ; 5 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.w, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hacd79ef2048d8f27E.exit", !prof !56

bb.w:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hbfc63f8d422a663bE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 4, i64 noundef 12) #70, !noalias !35674
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hacd79ef2048d8f27E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hbfc63f8d422a663bE.exit.i
  %.sroa.0.sroa.4.0.insert.ext.i = shl i64 %i.av, 32
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.sroa.038.0.copyload.i.i.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.ext.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.be, align 4, !noalias !35663
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = lshr i64 %i.av, 32
  %i.bh = trunc nuw i64 %i.bg to i32
  store i32 %i.bh, ptr %.sroa.42.0..sroa_idx.i, align 4, !noalias !35663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.be, ptr %i.j, align 8, !noalias !35675
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @1170, ptr %i.bi, align 8, !noalias !35675
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.x, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.x:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hacd79ef2048d8f27E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #72
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hacd79ef2048d8f27E.exit"
  store ptr %i.be, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @1170, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bo = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %i.bp = insertvalue { ptr, ptr } %i.bo, ptr @1221, 1
  ret { ptr, ptr } %i.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h7c241a671a841628E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.42.i = alloca [32 x i8], align 8         ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35694)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35696
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35697, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35698 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink34.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink34.i.i, ptr %i.j, align 8, !noalias !35696
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35699)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35696
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35698
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35700, !noalias !35696, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h567bac7feb3d28f3E.exit24.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35700, !noalias !35696, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35701, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35701, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35701, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35701

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35701, !noundef !53
  %i.z = icmp eq i128 %i.y, -43861266765413225943651622710599408335
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h567bac7feb3d28f3E.exit24.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35701, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35701, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35701, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35701 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 8 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35702)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35701
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35703
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35703
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35702, !noalias !35701, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35704

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35704

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35704
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35703, !noundef !53
  %i.ao = icmp eq i128 %i.an, -43861266765413225943651622710599408335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35701
  br i1 %i.ao, label %bb.k, label %.thread54.i.i.i

.thread54.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.042.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35701 ; 2 uses
  %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.443.0.copyload.i.i.i = load ptr, ptr %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35701 ; 2 uses
  %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.544.0.copyload.i.i.i = load ptr, ptr %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35701 ; 2 uses
  %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i, i64 16, i1 false), !noalias !35701
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 40, i64 noundef 8) #71, !noalias !35701
  %i.ap = icmp eq ptr %.sroa.042.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17ha67d3cbd6a2c38f2E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread54.i.i.i
  %.sroa.6.059.i.i.i = phi ptr [ %i.ag, %.thread54.i.i.i ], [ %.sroa.443.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.058.i.i.i = phi ptr [ %i.ah, %.thread54.i.i.i ], [ %.sroa.544.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35705
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.059.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.058.i.i.i) ]
  store ptr %.sroa.6.059.i.i.i, ptr %i.c, align 8, !noalias !35705
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.058.i.i.i, ptr %i.aq, align 8, !noalias !35705
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35705

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35705

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35705
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35701
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35701
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35701

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h567bac7feb3d28f3E.exit24.i.i": ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35706, !noalias !35696
  store ptr null, ptr %i.h, align 8, !alias.scope !35699, !noalias !35696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35696
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax), !noalias !35696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35696
  store ptr @1079, ptr %i.f, align 8, !noalias !35696
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 42, ptr %i.ay, align 8, !noalias !35696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35696
  store ptr %i.j, ptr %i.e, align 8, !noalias !35696
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35696
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35696
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35696
  store ptr @1055, ptr %i.g, align 8, !noalias !35696
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35696
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35696
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35696
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35696
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35696
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35698, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35696
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17ha67d3cbd6a2c38f2E.exit.i: ; preds = %bb.k
  %.sroa.638.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, i64 16, i1 false), !noalias !35707
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.443.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35699, !noalias !35696
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.544.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35699, !noalias !35696
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !35694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35696
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35708
  %i.bf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35708 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hd39dbc690915b730E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17ha67d3cbd6a2c38f2E.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70, !noalias !35708
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hd39dbc690915b730E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17ha67d3cbd6a2c38f2E.exit.i
  store ptr %.sroa.042.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !35694
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, i64 32, i1 false), !noalias !35694
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35709
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1177, ptr %i.bh, align 8, !noalias !35709
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hd39dbc690915b730E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hd39dbc690915b730E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1177, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h822c6d1796aa22baE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8.i.i.i = alloca [32 x i8], align 16     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 16               ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.01.i = alloca [48 x i8], align 16        ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35728)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35730
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35731, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35732 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink39.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink39.i.i, ptr %i.j, align 8, !noalias !35730
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35730
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35730
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35732
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35734, !noalias !35730, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha8b262dc2e654fb9E.exit27.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35734, !noalias !35730, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35735, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35735, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35735, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35735

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35735, !noundef !53
  %i.z = icmp eq i128 %i.y, 115072039929311529216474736791308391616
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha8b262dc2e654fb9E.exit27.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35735, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35735, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35735, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35735 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 9 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35735
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35737
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35737
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35736, !noalias !35735, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35738

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35738

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35738
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35737, !noundef !53
  %i.ao = icmp eq i128 %i.an, 115072039929311529216474736791308391616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35735
  br i1 %i.ao, label %bb.k, label %.thread58.i.i.i

.thread58.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.045.0.copyload.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !35735 ; 2 uses
  %.sroa.446.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.446.0.copyload.i.i.i = load ptr, ptr %.sroa.446.0..sroa.443.8.44.sroa_idx.i.i.i, align 8, !noalias !35735 ; 2 uses
  %.sroa.547.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.547.0..sroa.443.8.44.sroa_idx.i.i.i, i64 32, i1 false), !noalias !35735
  %.sroa.648.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.648.0.copyload.i.i.i = load ptr, ptr %.sroa.648.0..sroa.443.8.44.sroa_idx.i.i.i, align 16, !noalias !35735 ; 2 uses
  %.sroa.749.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.749.0.copyload.i.i.i = load i64, ptr %.sroa.749.0..sroa.443.8.44.sroa_idx.i.i.i, align 8, !noalias !35735
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 64, i64 noundef 16) #71, !noalias !35735
  %i.ap = icmp eq ptr %.sroa.648.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17h5661ef8c17050e5bE.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread58.i.i.i
  %.sroa.030.064.i.i.i = phi ptr [ %i.ag, %.thread58.i.i.i ], [ %.sroa.045.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.6.063.i.i.i = phi ptr [ %i.ah, %.thread58.i.i.i ], [ %.sroa.446.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35739
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.064.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.063.i.i.i) ]
  store ptr %.sroa.030.064.i.i.i, ptr %i.c, align 8, !noalias !35739
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.063.i.i.i, ptr %i.aq, align 8, !noalias !35739
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35739

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35739

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35739
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35735
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35735
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35735

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha8b262dc2e654fb9E.exit27.i.i": ; preds = %bb.d, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35740, !noalias !35730
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr null, ptr %i.ax, align 16, !alias.scope !35733, !noalias !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35730
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(64) %i.h), !noalias !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35730
  store ptr @1067, ptr %i.f, align 8, !noalias !35730
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 43, ptr %i.ay, align 8, !noalias !35730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35730
  store ptr %i.j, ptr %i.e, align 8, !noalias !35730
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !35730
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35730
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !35730
  store ptr @1055, ptr %i.g, align 8, !noalias !35730
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35730
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35730
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35730
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35730
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35730
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35732, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35730
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17h5661ef8c17050e5bE.exit.i: ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false), !noalias !35741
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  store ptr %.sroa.045.0.copyload.i.i.i, ptr %i.h, align 16, !alias.scope !35733, !noalias !35730
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.446.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35733, !noalias !35730
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.i, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !35728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35730
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35742
  %i.bf = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !35742 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h79e7d90aec53dcb4E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h5661ef8c17050e5bE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 64) #70, !noalias !35742
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h79e7d90aec53dcb4E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h5661ef8c17050e5bE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bf, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.i, i64 48, i1 false), !noalias !35728
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %.sroa.648.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 16, !noalias !35728
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i64 %.sroa.749.0.copyload.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !35728
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35743
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1163, ptr %i.bh, align 8, !noalias !35743
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h79e7d90aec53dcb4E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h79e7d90aec53dcb4E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1163, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h859d1b27107cb03aE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35748
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic4cast17h779c8b86154949a5E(ptr noalias noundef align 16 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  %i.c = load i128, ptr %i.a, align 16, !noalias !35748, !noundef !53
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i128, ptr %i.d, align 16, !noalias !35748, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35748
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35748
  %i.f = tail call noundef align 16 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !35748 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf90d63fcef28f780E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 32) #70, !noalias !35748
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf90d63fcef28f780E.exit": ; preds = %bb.a
  store i128 %i.c, ptr %i.f, align 16, !noalias !35748
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i128 %i.e, ptr %i.h, align 16, !noalias !35748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8, !noalias !35749
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1181, ptr %i.i, align 8, !noalias !35749
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.j = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf90d63fcef28f780E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
end_hunk_13
begin_hunk_14_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17h859d1b27107cb03aE":bb.a
  store ptr %i.f, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @1181, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr @1221, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17ha434c4d5608eba6dE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { i16, i16 } @_ZN4rhai5types7dynamic7Dynamic4cast17hb107d68d14fba198E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35754
  %i.c = tail call noundef align 2 dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 2) #71, !noalias !35754 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h9b0aa48a410725b6E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 2, i64 noundef 4) #70, !noalias !35754
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h9b0aa48a410725b6E.exit": ; preds = %bb.a
  %i.e = extractvalue { i16, i16 } %i.b, 1
  %i.f = extractvalue { i16, i16 } %i.b, 0
  store i16 %i.f, ptr %i.c, align 2, !noalias !35754
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.e, ptr %i.g, align 2, !noalias !35754
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !35755
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @1167, ptr %i.h, align 8, !noalias !35755
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h9b0aa48a410725b6E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h9b0aa48a410725b6E.exit"
  store ptr %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1167, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @1221, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17ha85668f9bf7792cfE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8.i.i.i = alloca [32 x i8], align 16     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 16               ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.01.i = alloca [48 x i8], align 16        ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35774)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35775)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35776
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35777, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35778 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink39.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink39.i.i, ptr %i.j, align 8, !noalias !35776
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35776
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35776
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35778
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35780, !noalias !35776, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha42761cff0f71d01E.exit27.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35780, !noalias !35776, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35781, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35781, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35781, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35781

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35781, !noundef !53
  %i.z = icmp eq i128 %i.y, -147398281095294785982089161481021014840
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha42761cff0f71d01E.exit27.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35781, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35781, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35781, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35781 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 9 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35781
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35783
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35783
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35782, !noalias !35781, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35784

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35784

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35784
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35783, !noundef !53
  %i.ao = icmp eq i128 %i.an, -147398281095294785982089161481021014840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35781
  br i1 %i.ao, label %bb.k, label %.thread58.i.i.i

.thread58.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.045.0.copyload.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !35781 ; 2 uses
  %.sroa.446.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.446.0.copyload.i.i.i = load ptr, ptr %.sroa.446.0..sroa.443.8.44.sroa_idx.i.i.i, align 8, !noalias !35781 ; 2 uses
  %.sroa.547.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.547.0..sroa.443.8.44.sroa_idx.i.i.i, i64 32, i1 false), !noalias !35781
  %.sroa.648.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.648.0.copyload.i.i.i = load ptr, ptr %.sroa.648.0..sroa.443.8.44.sroa_idx.i.i.i, align 16, !noalias !35781 ; 2 uses
  %.sroa.749.0..sroa.443.8.44.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.749.0.copyload.i.i.i = load i64, ptr %.sroa.749.0..sroa.443.8.44.sroa_idx.i.i.i, align 8, !noalias !35781
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 64, i64 noundef 16) #71, !noalias !35781
  %i.ap = icmp eq ptr %.sroa.648.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17h565fc26fda45af6dE.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread58.i.i.i
  %.sroa.030.064.i.i.i = phi ptr [ %i.ag, %.thread58.i.i.i ], [ %.sroa.045.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.6.063.i.i.i = phi ptr [ %i.ah, %.thread58.i.i.i ], [ %.sroa.446.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35785
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.064.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.063.i.i.i) ]
  store ptr %.sroa.030.064.i.i.i, ptr %i.c, align 8, !noalias !35785
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.063.i.i.i, ptr %i.aq, align 8, !noalias !35785
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35785

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35785

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35785
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35781
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35781
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35781

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17ha42761cff0f71d01E.exit27.i.i": ; preds = %bb.d, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35786, !noalias !35776
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr null, ptr %i.ax, align 16, !alias.scope !35779, !noalias !35776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35776
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(64) %i.h), !noalias !35776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35776
  store ptr @1066, ptr %i.f, align 8, !noalias !35776
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 43, ptr %i.ay, align 8, !noalias !35776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35776
  store ptr %i.j, ptr %i.e, align 8, !noalias !35776
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !35776
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35776
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !35776
  store ptr @1055, ptr %i.g, align 8, !noalias !35776
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35776
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35776
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35776
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35776
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35776
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35778, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35776
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17h565fc26fda45af6dE.exit.i: ; preds = %bb.k
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.i.i.i, i64 32, i1 false), !noalias !35787
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  store ptr %.sroa.045.0.copyload.i.i.i, ptr %i.h, align 16, !alias.scope !35779, !noalias !35776
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.446.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35779, !noalias !35776
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.i, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !35774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35776
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35788
  %i.bf = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !35788 ; 6 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hee67b2b2092c9889E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h565fc26fda45af6dE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 64) #70, !noalias !35788
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hee67b2b2092c9889E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h565fc26fda45af6dE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bf, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.01.i, i64 48, i1 false), !noalias !35774
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %.sroa.648.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 16, !noalias !35774
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  store i64 %.sroa.749.0.copyload.i.i.i, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !35774
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35789
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1179, ptr %i.bh, align 8, !noalias !35789
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hee67b2b2092c9889E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hee67b2b2092c9889E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1179, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17haf75ecfb0e2dc56aE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8.i.i.i = alloca [16 x i8], align 16     ; 4 uses
  %.sroa.10.i.i.i = alloca [15 x i8], align 1     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 16               ; 10 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35809)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35810
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35811, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35812 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink36.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink36.i.i, ptr %i.j, align 8, !noalias !35810
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35810
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35812
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35813)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35810
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35812
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35813, !noalias !35810, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h11296451e52dad0cE.exit26.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35813, !noalias !35810, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35814, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35814, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35814, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35814

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35814, !noundef !53
  %i.z = icmp eq i128 %i.y, 104072121103231912852747277403030994605
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h11296451e52dad0cE.exit26.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35814, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35814, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35814, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35814 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 9 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35815)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35814
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35816
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35816
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35815, !noalias !35814, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35817

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35817

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35817
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35816, !noundef !53
  %i.ao = icmp eq i128 %i.an, 104072121103231912852747277403030994605
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35814
  br i1 %i.ao, label %bb.k, label %.thread57.i.i.i

.thread57.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.044.0.copyload.i.i.i = load ptr, ptr %i.ag, align 16, !noalias !35814 ; 2 uses
  %.sroa.445.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.445.0.copyload.i.i.i = load ptr, ptr %.sroa.445.0..sroa.442.8.43.sroa_idx.i.i.i, align 8, !noalias !35814 ; 2 uses
  %.sroa.546.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.546.0..sroa.442.8.43.sroa_idx.i.i.i, i64 16, i1 false), !noalias !35814
  %.sroa.647.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.647.0.copyload.i.i.i = load i8, ptr %.sroa.647.0..sroa.442.8.43.sroa_idx.i.i.i, align 16, !noalias !35814 ; 2 uses
  %.sroa.748.0..sroa.442.8.43.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.748.0..sroa.442.8.43.sroa_idx.i.i.i, i64 15, i1 false), !noalias !35814
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 48, i64 noundef 16) #71, !noalias !35814
  %i.ap = icmp eq i8 %.sroa.647.0.copyload.i.i.i, 2
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17hbc49a97daf6cb89eE.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread57.i.i.i
  %.sroa.030.062.i.i.i = phi ptr [ %i.ag, %.thread57.i.i.i ], [ %.sroa.044.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.6.061.i.i.i = phi ptr [ %i.ah, %.thread57.i.i.i ], [ %.sroa.445.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35818
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.062.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.061.i.i.i) ]
  store ptr %.sroa.030.062.i.i.i, ptr %i.c, align 8, !noalias !35818
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.061.i.i.i, ptr %i.aq, align 8, !noalias !35818
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35818

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35818

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35818
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35814
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35814
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35814

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr125drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u128$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h11296451e52dad0cE.exit26.i.i": ; preds = %bb.d, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !35808
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 2, ptr %i.ax, align 16, !noalias !35808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35810
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 16 dereferenceable(48) %i.h), !noalias !35808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35810
  store ptr @1085, ptr %i.f, align 8, !noalias !35810
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 38, ptr %i.ay, align 8, !noalias !35810
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35810
  store ptr %i.j, ptr %i.e, align 8, !noalias !35810
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !35810
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35810
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !35810
  store ptr @1055, ptr %i.g, align 8, !noalias !35810
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35810
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35810
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35810
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35810
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35810
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bl, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35812, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35810
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17hbc49a97daf6cb89eE.exit.i: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 33 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.i.i.i, i64 16, i1 false), !noalias !35808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.bf, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.10.i.i.i, i64 15, i1 false), !noalias !35808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  store ptr %.sroa.044.0.copyload.i.i.i, ptr %i.h, align 16, !noalias !35808
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.445.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !35808
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35810
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35819
  %i.bg = call noundef align 16 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !35819 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h93ee83304c492360E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hbc49a97daf6cb89eE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 16, i64 noundef 48) #70, !noalias !35819
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h93ee83304c492360E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hbc49a97daf6cb89eE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bg, ptr noundef nonnull align 16 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !35808
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store i8 %.sroa.647.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 16, !noalias !35808
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.53.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %i.bf, i64 15, i1 false), !noalias !35808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bg, ptr %i.k, align 8, !noalias !35820
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1166, ptr %i.bi, align 8, !noalias !35820
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h93ee83304c492360E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h93ee83304c492360E.exit"
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @1166, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bo = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %i.bp = insertvalue { ptr, ptr } %i.bo, ptr @1221, 1
  ret { ptr, ptr } %i.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hcc56e4ee7f1b4965E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35836)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35837
  %i.k = load i8, ptr %1, align 8, !range !65, !alias.scope !35837, !noundef !53
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.r unwind label %bb.u       ; 2 uses

.noexc.i.i:                                       ; preds = %bb.r, %bb.a
  %.sink44.i.i = phi ptr [ %i.at, %bb.r ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.au, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink44.i.i, ptr %i.i, align 8, !noalias !35837
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink.i.i, ptr %i.n, align 8, !noalias !35837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35838)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35837
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  %i.o = load i8, ptr %i.h, align 8, !range !65, !alias.scope !35838, !noalias !35837, !noundef !53
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u16$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h54dcb2a300123378E.exit.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_14
begin_hunk_15_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hcc56e4ee7f1b4965E":bb.a

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hbd97f4e681c0e987E.exit"
  store ptr %i.bd, ptr %i.bg, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @1174, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bl = insertvalue { ptr, ptr } poison, ptr %i.bg, 0
  %i.bm = insertvalue { ptr, ptr } %i.bl, ptr @1221, 1
  ret { ptr, ptr } %i.bm
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hcf8cdb3dd426bc7bE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { i64, i64 } @_ZN4rhai5types7dynamic7Dynamic4cast17h52258e97fdf7b3f4E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35849
  %i.c = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35849 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hb99fe4eca0e65987E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70, !noalias !35849
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hb99fe4eca0e65987E.exit": ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.f, ptr %i.c, align 8, !noalias !35849
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.e, ptr %i.g, align 8, !noalias !35849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !35850
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @1173, ptr %i.h, align 8, !noalias !35850
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hb99fe4eca0e65987E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hb99fe4eca0e65987E.exit"
  store ptr %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1173, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @1221, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hd201fae0951cb5d4E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.42.i = alloca [32 x i8], align 8         ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35869)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35870)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35871
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35872, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35873 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink34.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink34.i.i, ptr %i.j, align 8, !noalias !35871
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35871
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35873
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35875, !noalias !35871, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$f64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he457a6db22ca883fE.exit24.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35875, !noalias !35871, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35876, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35876, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35876, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35876

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35876, !noundef !53
  %i.z = icmp eq i128 %i.y, -89490998289207511426298809201562101348
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$f64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he457a6db22ca883fE.exit24.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35876, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35876, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35876, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35876 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 8 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35876
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35878
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35878
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35877, !noalias !35876, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35879

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35879

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35879
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35878, !noundef !53
  %i.ao = icmp eq i128 %i.an, -89490998289207511426298809201562101348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35876
  br i1 %i.ao, label %bb.k, label %.thread54.i.i.i

.thread54.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.042.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35876 ; 2 uses
  %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.443.0.copyload.i.i.i = load ptr, ptr %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35876 ; 2 uses
  %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.544.0.copyload.i.i.i = load ptr, ptr %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35876 ; 2 uses
  %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i, i64 16, i1 false), !noalias !35876
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 40, i64 noundef 8) #71, !noalias !35876
  %i.ap = icmp eq ptr %.sroa.042.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17h9b181119b4065472E.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread54.i.i.i
  %.sroa.6.059.i.i.i = phi ptr [ %i.ag, %.thread54.i.i.i ], [ %.sroa.443.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.058.i.i.i = phi ptr [ %i.ah, %.thread54.i.i.i ], [ %.sroa.544.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35880
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.059.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.058.i.i.i) ]
  store ptr %.sroa.6.059.i.i.i, ptr %i.c, align 8, !noalias !35880
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.058.i.i.i, ptr %i.aq, align 8, !noalias !35880
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35880

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35880

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35880
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35876
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35876
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35876

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$f64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he457a6db22ca883fE.exit24.i.i": ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35881, !noalias !35871
  store ptr null, ptr %i.h, align 8, !alias.scope !35874, !noalias !35871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35871
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax), !noalias !35871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35871
  store ptr @492, ptr %i.f, align 8, !noalias !35871
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 42, ptr %i.ay, align 8, !noalias !35871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35871
  store ptr %i.j, ptr %i.e, align 8, !noalias !35871
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35871
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35871
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35871
  store ptr @1055, ptr %i.g, align 8, !noalias !35871
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35871
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35871
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35871
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35871
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35871
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35873, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35871
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17h9b181119b4065472E.exit.i: ; preds = %bb.k
  %.sroa.638.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.638.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i.i.i, i64 16, i1 false), !noalias !35882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.443.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35874, !noalias !35871
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.544.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35874, !noalias !35871
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35871
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !35869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35871
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35883
  %i.bf = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35883 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h32c643d7f87c99b7E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h9b181119b4065472E.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70, !noalias !35883
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h32c643d7f87c99b7E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h9b181119b4065472E.exit.i
  store ptr %.sroa.042.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !35869
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.42.i, i64 32, i1 false), !noalias !35869
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35884
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1155, ptr %i.bh, align 8, !noalias !35884
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h32c643d7f87c99b7E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h32c643d7f87c99b7E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1155, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hea29541b268d2401E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.10.i.i.i = alloca [7 x i8], align 1      ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35903)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35905
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35906, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35907 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink36.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink36.i.i, ptr %i.j, align 8, !noalias !35905
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35908)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35905
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35907
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35908, !noalias !35905, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h5d0fa3b05670a29eE.exit26.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35908, !noalias !35905, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35909, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35909, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35909, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35909

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35909, !noundef !53
  %i.z = icmp eq i128 %i.y, 121724666095504680941711943214767115666
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h5d0fa3b05670a29eE.exit26.i.i"

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i.i)
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35909, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35909, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35909, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35909 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 8 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35909
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35911
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35911
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35910, !noalias !35909, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35912

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35912

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35912
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35911, !noundef !53
  %i.ao = icmp eq i128 %i.an, 121724666095504680941711943214767115666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35909
  br i1 %i.ao, label %bb.k, label %.thread54.i.i.i

.thread54.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.042.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35909 ; 2 uses
  %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.443.0.copyload.i.i.i = load ptr, ptr %.sroa.443.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35909 ; 2 uses
  %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.544.0.copyload.i.i.i = load i8, ptr %.sroa.544.0..sroa.440.8.41.sroa_idx.i.i.i, align 8, !noalias !35909 ; 2 uses
  %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.645.0..sroa.440.8.41.sroa_idx.i.i.i, i64 7, i1 false), !noalias !35909
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 24, i64 noundef 8) #71, !noalias !35909
  %i.ap = icmp eq i8 %.sroa.544.0.copyload.i.i.i, 2
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17h304fdd2243a9837bE.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread54.i.i.i
  %.sroa.030.059.i.i.i = phi ptr [ %i.ag, %.thread54.i.i.i ], [ %.sroa.042.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.6.058.i.i.i = phi ptr [ %i.ah, %.thread54.i.i.i ], [ %.sroa.443.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35913
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.059.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.058.i.i.i) ]
  store ptr %.sroa.030.059.i.i.i, ptr %i.c, align 8, !noalias !35913
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.6.058.i.i.i, ptr %i.aq, align 8, !noalias !35913
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35913

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35913

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35913
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35909
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35909
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35909

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr124drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u64$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h5d0fa3b05670a29eE.exit26.i.i": ; preds = %bb.d, %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !35903
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i8 2, ptr %i.ax, align 8, !noalias !35903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35905
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.h), !noalias !35903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35905
  store ptr @1059, ptr %i.f, align 8, !noalias !35905
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 37, ptr %i.ay, align 8, !noalias !35905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35905
  store ptr %i.j, ptr %i.e, align 8, !noalias !35905
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !35905
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35905
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !35905
  store ptr @1055, ptr %i.g, align 8, !noalias !35905
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35905
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35905
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35905
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35905
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35905
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bl, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35907, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35905
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17h304fdd2243a9837bE.exit.i: ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bf, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.i.i.i, i64 7, i1 false), !noalias !35903
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i.i)
  store ptr %.sroa.042.0.copyload.i.i.i, ptr %i.h, align 8, !noalias !35903
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.443.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !35903
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35905
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35914
  %i.bg = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35914 ; 6 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h34ca065d63b232daE.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h304fdd2243a9837bE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !35914
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h34ca065d63b232daE.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17h304fdd2243a9837bE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !35903
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 %.sroa.544.0.copyload.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !35903
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.53.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bf, i64 7, i1 false), !noalias !35903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bg, ptr %i.k, align 8, !noalias !35915
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1156, ptr %i.bi, align 8, !noalias !35915
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bj = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h34ca065d63b232daE.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h34ca065d63b232daE.exit"
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @1156, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bo = insertvalue { ptr, ptr } poison, ptr %i.bj, 0
  %i.bp = insertvalue { ptr, ptr } %i.bo, ptr @1221, 1
  ret { ptr, ptr } %i.bp
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hee9821ba21794772E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35922
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic4cast17h81930a999edebf60E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35923
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35923 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h5e9d81f4c3283139E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !35923
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h5e9d81f4c3283139E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !35922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8, !noalias !35924
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1160, ptr %i.e, align 8, !noalias !35924
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.f = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h5e9d81f4c3283139E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_15
begin_hunk_16_@"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hee9821ba21794772E":bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h5e9d81f4c3283139E.exit"
  store ptr %i.c, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @1160, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1221, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hf2fee24e56141fa1E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call fastcc { i8, i8 } @_ZN4rhai5types7dynamic7Dynamic4cast17h35ba305f0e91c901E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35929
  %i.c = tail call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !35929 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h29fb4af171968de2E.exit", !prof !56

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 2) #70, !noalias !35929
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h29fb4af171968de2E.exit": ; preds = %bb.a
  %i.e = extractvalue { i8, i8 } %i.b, 1
  %i.f = extractvalue { i8, i8 } %i.b, 0
  store i8 %i.f, ptr %i.c, align 1, !noalias !35929
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.e, ptr %i.g, align 1, !noalias !35929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8, !noalias !35930
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @1154, ptr %i.h, align 8, !noalias !35930
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.i = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.c:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h29fb4af171968de2E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #72
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17h29fb4af171968de2E.exit"
  store ptr %i.c, ptr %i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @1154, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr @1221, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hf5eb833087b1b2beE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.42.i = alloca [16 x i8], align 8         ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35949)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.42.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !35951
  %i.l = load i8, ptr %1, align 8, !range !65, !alias.scope !35952, !noundef !53
  %i.m = icmp eq i8 %i.l, 11
  br i1 %i.m, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.s unwind label %bb.t, !noalias !35953 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.s, %bb.a
  %.sink34.i.i = phi ptr [ %i.av, %bb.s ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.aw, %bb.s ], [ 8, %bb.a ]
  store ptr %.sink34.i.i, ptr %i.j, align 8, !noalias !35951
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %.sink.i.i, ptr %i.o, align 8, !noalias !35951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !35953
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35951
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35954)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35955)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35951
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1), !noalias !35953
  %i.p = load i8, ptr %i.i, align 8, !range !65, !alias.scope !35955, !noalias !35951, !noundef !53
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %bb.c, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hea0c8f245508728aE.exit24.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !35955, !noalias !35951, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !noalias !35956, !nonnull !53, !align !59, !noundef !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noalias !35956, !nonnull !53, !align !54, !noundef !53
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !53, !noalias !35956, !nonnull !53
  invoke void %i.x(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull align 1 %i.t)
          to label %bb.d unwind label %bb.r, !noalias !35956

bb.d:                                             ; preds = %bb.c
  %i.y = load i128, ptr %i.d, align 16, !noalias !35956, !noundef !53
  %i.z = icmp eq i128 %i.y, 23334935232945466823329085559161670712
  br i1 %i.z, label %bb.e, label %"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hea0c8f245508728aE.exit24.i.i"

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !35956, !nonnull !53, !align !59, !noundef !53
  %i.ab = load ptr, ptr %i.u, align 8, !noalias !35956, !nonnull !53, !align !54, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !53, !noalias !35956, !nonnull !53
  %i.ae = invoke { ptr, ptr } %i.ad(ptr noundef nonnull %i.aa)
          to label %bb.g unwind label %bb.f, !noalias !35956 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.ag = extractvalue { ptr, ptr } %i.ae, 0      ; 7 uses
  %i.ah = extractvalue { ptr, ptr } %i.ae, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35956
  store ptr %i.ag, ptr %i.b, align 8, !noalias !35958
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !35958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35958
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !53, !alias.scope !35957, !noalias !35956, !nonnull !53
  invoke void %i.ak(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull align 1 %i.ag)
          to label %bb.j unwind label %bb.h, !noalias !35959

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #72
          to label %bb.q unwind label %bb.i, !noalias !35959

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35959
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.an = load i128, ptr %i.a, align 16, !noalias !35958, !noundef !53
  %i.ao = icmp eq i128 %i.an, 23334935232945466823329085559161670712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35956
  br i1 %i.ao, label %bb.k, label %.thread51.i.i.i

.thread51.i.i.i:                                  ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.040.0.copyload.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !35956 ; 2 uses
  %.sroa.441.0..sroa.438.8.39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.441.0.copyload.i.i.i = load ptr, ptr %.sroa.441.0..sroa.438.8.39.sroa_idx.i.i.i, align 8, !noalias !35956 ; 2 uses
  %.sroa.542.0..sroa.438.8.39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.542.0.copyload.i.i.i = load ptr, ptr %.sroa.542.0..sroa.438.8.39.sroa_idx.i.i.i, align 8, !noalias !35956 ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 24, i64 noundef 8) #71, !noalias !35956
  %i.ap = icmp eq ptr %.sroa.040.0.copyload.i.i.i, null
  br i1 %i.ap, label %bb.l, label %_ZN4rhai5types7dynamic7Dynamic4cast17hf0e109db18cc88ebE.exit.i, !prof !124

bb.l:                                             ; preds = %bb.k, %.thread51.i.i.i
  %.sroa.6.056.i.i.i = phi ptr [ %i.ag, %.thread51.i.i.i ], [ %.sroa.441.0.copyload.i.i.i, %bb.k ] ; 2 uses
  %.sroa.8.055.i.i.i = phi ptr [ %i.ah, %.thread51.i.i.i ], [ %.sroa.542.0.copyload.i.i.i, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35960
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.056.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.055.i.i.i) ]
  store ptr %.sroa.6.056.i.i.i, ptr %i.c, align 8, !noalias !35960
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.055.i.i.i, ptr %i.aq, align 8, !noalias !35960
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 43, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @430, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #70
          to label %bb.n unwind label %bb.m, !noalias !35960

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..any..Any$GT$$GT$17h7839aa60cb7569f1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #72
          to label %bb.q unwind label %bb.o, !noalias !35960

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35960
  unreachable

bb.p:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35956
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.h, %bb.f
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.al, %bb.h ], [ %i.af, %bb.f ], [ %i.ar, %bb.m ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35956
  br label %common.resume

bb.r:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr108drop_in_place$LT$alloc..boxed..Box$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$$GT$17h21e9a0e7e334d6eaE"(ptr nonnull %i.s) #72
          to label %common.resume unwind label %bb.p, !noalias !35956

bb.s:                                             ; preds = %bb.b
  %i.av = extractvalue { ptr, i64 } %i.n, 0
  %i.aw = extractvalue { ptr, i64 } %i.n, 1
  br label %.noexc.i.i

"_ZN4core3ptr129drop_in_place$LT$core..result..Result$LT$rhai..packages..iter_basic..StepRange$LT$i32$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17hea0c8f245508728aE.exit24.i.i": ; preds = %bb.d, %.noexc.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !alias.scope !35961, !noalias !35951
  store ptr null, ptr %i.h, align 8, !alias.scope !35954, !noalias !35951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35951
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ax), !noalias !35951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35951
  store ptr @1091, ptr %i.f, align 8, !noalias !35951
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 42, ptr %i.ay, align 8, !noalias !35951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35951
  store ptr %i.j, ptr %i.e, align 8, !noalias !35951
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !35951
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.az, align 8, !noalias !35951
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h299f968109324349E", ptr %.sroa.417.0..sroa_idx.i.i, align 8, !noalias !35951
  store ptr @1055, ptr %i.g, align 8, !noalias !35951
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.ba, align 8, !noalias !35951
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !35951
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.e, ptr %i.bc, align 8, !noalias !35951
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.bd, align 8, !noalias !35951
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1056) #70, !noalias !35951
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.q, %bb.r, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %bb.q ], [ %lpad.thr_comm.split-lp.i.i, %bb.t ], [ %i.au, %bb.r ], [ %i.bk, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %1)
          to label %common.resume unwind label %bb.u, !noalias !35953, !inline_history !71

bb.u:                                             ; preds = %bb.t
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !35951
  unreachable

_ZN4rhai5types7dynamic7Dynamic4cast17hf0e109db18cc88ebE.exit.i: ; preds = %bb.k
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %.sroa.441.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !35954, !noalias !35951
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.542.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !35954, !noalias !35951
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 16, i64 noundef 8) #71, !noalias !35956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35951
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false), !noalias !35949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35951
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !35962
  %i.bf = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !35962 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.v, label %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf94b338eb1636175E.exit", !prof !56

bb.v:                                             ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hf0e109db18cc88ebE.exit.i
  call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70, !noalias !35962
  unreachable

"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf94b338eb1636175E.exit": ; preds = %_ZN4rhai5types7dynamic7Dynamic4cast17hf0e109db18cc88ebE.exit.i
  store ptr %.sroa.040.0.copyload.i.i.i, ptr %i.bf, align 8, !noalias !35949
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.i, i64 16, i1 false), !noalias !35949
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.42.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.bf, ptr %i.k, align 8, !noalias !35963
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @1182, ptr %i.bh, align 8, !noalias !35963
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.bi = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit", !prof !56

bb.w:                                             ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf94b338eb1636175E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.x

.noexc:                                           ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr308drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$rhai..types..dynamic..Dynamic$GT$$C$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$..Ok$GT$$GT$17hc73b37b58008ef92E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h668c96494d7a80b0E.exit": ; preds = %"_ZN4rhai6module6Module12set_iterator28_$u7b$$u7b$closure$u7d$$u7d$17hf94b338eb1636175E.exit"
  store ptr %i.bf, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @1182, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bn = insertvalue { ptr, ptr } poison, ptr %i.bi, 0
  %i.bo = insertvalue { ptr, ptr } %i.bn, ptr @1221, 1
  ret { ptr, ptr } %i.bo
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { ptr, ptr } @"_ZN4rhai6module6Module8set_iter28_$u7b$$u7b$closure$u7d$$u7d$17hf80316fb03464982E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35979)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35980
  %i.k = load i8, ptr %1, align 8, !range !65, !alias.scope !35980, !noundef !53
  %i.l = icmp eq i8 %i.k, 11
  br i1 %i.l, label %.noexc.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_ZN4rhai5types7dynamic7Dynamic9type_name17h29e53479f914ba95E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.r unwind label %bb.u       ; 2 uses

.noexc.i.i:                                       ; preds = %bb.r, %bb.a
  %.sink41.i.i = phi ptr [ %i.at, %bb.r ], [ @1052, %bb.a ]
  %.sink.i.i = phi i64 [ %i.au, %bb.r ], [ 8, %bb.a ]
  store ptr %.sink41.i.i, ptr %i.i, align 8, !noalias !35980
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %.sink.i.i, ptr %i.n, align 8, !noalias !35980
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35980
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35981)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35980
  call fastcc void @_ZN4rhai5types7dynamic7Dynamic7flatten17hab2556f42f1d3715E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1)
  %i.o = load i8, ptr %i.h, align 8, !range !65, !alias.scope !35981, !noalias !35980, !noundef !53
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.c, label %"_ZN4core3ptr123drop_in_place$LT$core..result..Result$LT$core..ops..range..RangeInclusive$LT$u8$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17h41bf74cdbc95da1cE.exit.i.i"

bb.c:                                             ; preds = %.noexc.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !35981, !noalias !35980, !nonnull !53, !align !54, !noundef !53 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !noalias !35982, !nonnull !53, !align !59, !noundef !53
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !35982, !nonnull !53, !align !54, !noundef !53
end_hunk_16
begin_hunk_17_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$13parse_primary17h6ac24a27b0335decE":bb.a
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !38238, !inline_history !37786
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit3881: ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h8b8c8ff93a3d71d4E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.brp, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i64 16, i1 false), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !38238
  %i.bru = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.brp, ptr %i.bru, align 8
  %i.brv = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 %.sroa.5.0.copyload, ptr %i.brv, align 2
  %i.brw = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i16 %.sroa.61199.0.copyload, ptr %i.brw, align 4
  store i8 0, ptr %i.cf, align 8
  %.val175.i = load ptr, ptr %i.cv, align 8, !noalias !38238, !nonnull !53, !noundef !53 ; 5 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %.val175.i, i64 16 ; 2 uses
  %i.bry = load i64, ptr %.val175.i, align 8, !noalias !38238, !noundef !53 ; 2 uses
  %.idx = shl nuw nsw i64 %i.bry, 4
  %i.brz = getelementptr inbounds nuw i8, ptr %i.brx, i64 %.idx
  %i.bsa = icmp eq i64 %i.bry, 0
  %i.bsb = ptrtoint ptr %.val175.i to i64
  br i1 %i.bsa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit3881
  %.sroa.0101.1.i2840 = getelementptr inbounds nuw i8, ptr %.val175.i, i64 32
  %i.bsc = and i8 %.sroa.8.0.copyload, 4
  %i.bsd = icmp ne i8 %i.bsc, 0
  %i.bse = and i16 %.sroa.7.0.copyload, 128
  %.not133.i = icmp eq i16 %i.bse, 0
  %invariant.op = or i1 %.not133.i, %i.bsd
  br label %bb.zu

bb.zu:                                            ; preds = %.lr.ph, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit"
  %.sroa.0101.1.i2842 = phi ptr [ %.sroa.0101.1.i2840, %.lr.ph ], [ %.sroa.0101.1.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit" ] ; 3 uses
  %.sroa.0101.0.i2841 = phi ptr [ %i.brx, %.lr.ph ], [ %.sroa.0101.1.i2842, %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit" ] ; 7 uses
  %i.bsf = load ptr, ptr %.sroa.0101.0.i2841, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 16 ; 3 uses
  %i.bsh = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bsg)
          to label %.noexc169.i unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169.i:                                      ; preds = %bb.zu
  br i1 %i.bsh, label %bb.zv, label %bb.zw

bb.zv:                                            ; preds = %.noexc169.i
  %i.bsi = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bsg)
          to label %.noexc170.i unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38238, !inline_history !37786 ; 2 uses

.noexc170.i:                                      ; preds = %bb.zv
  %i.bsj = extractvalue { ptr, i64 } %i.bsi, 0
  %i.bsk = extractvalue { ptr, i64 } %i.bsi, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit171.i"

bb.zw:                                            ; preds = %.noexc169.i
  %i.bsl = load ptr, ptr %i.bsg, align 8, !noalias !38238, !nonnull !53, !noundef !53
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsf, i64 32
  %i.bsn = load i64, ptr %i.bsm, align 8, !noalias !38238, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit171.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit171.i": ; preds = %bb.zw, %.noexc170.i
  %.pre-phi3263 = phi ptr [ %i.bsl, %bb.zw ], [ %i.bsj, %.noexc170.i ] ; 2 uses
  %.merged.i168.i = phi i64 [ %i.bsn, %bb.zw ], [ %i.bsk, %.noexc170.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi3263) ]
  %i.bso = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i2841, i64 8
  %i.bsp = load i16, ptr %i.bso, align 8, !noundef !53
  %i.bsq = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i2841, i64 10
  %i.bsr = load i16, ptr %i.bsq, align 2, !noundef !53
  %i.bss = invoke fastcc { i64, i1 } @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10access_var17h1fc68db17a55c8c6E"(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi3263, i64 noundef %.merged.i168.i, i16 noundef %i.bsp, i16 noundef %i.bsr)
          to label %bb.aah unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !38240, !inline_history !37786 ; 2 uses

._crit_edge:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit", %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit3881
  %i.bst = getelementptr inbounds nuw i8, ptr %i.brb, i64 16
  %i.bsu = load ptr, ptr %i.bst, align 8, !noalias !38238, !nonnull !53, !noundef !53 ; 2 uses
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 16 ; 3 uses
  %i.bsw = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bsv)
          to label %.noexc165.i unwind label %.loopexit.split-lp2472.loopexit.split-lp

.noexc165.i:                                      ; preds = %._crit_edge
  br i1 %i.bsw, label %bb.zx, label %bb.zy

bb.zx:                                            ; preds = %.noexc165.i
  %i.bsx = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bsv)
          to label %.noexc166.i unwind label %.loopexit.split-lp2472.loopexit.split-lp, !noalias !38238, !inline_history !37786 ; 2 uses

.noexc166.i:                                      ; preds = %bb.zx
  %i.bsy = extractvalue { ptr, i64 } %i.bsx, 0
  %i.bsz = extractvalue { ptr, i64 } %i.bsx, 1
  br label %bb.zz

bb.zy:                                            ; preds = %.noexc165.i
  %i.bta = load ptr, ptr %i.bsv, align 8, !noalias !38238, !nonnull !53, !noundef !53
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsu, i64 32
  %i.btc = load i64, ptr %i.btb, align 8, !noalias !38238, !noundef !53
  br label %bb.zz

bb.zz:                                            ; preds = %.noexc166.i, %bb.zy
  %.sroa.0.0.i164.i = phi ptr [ %i.bsy, %.noexc166.i ], [ %i.bta, %bb.zy ] ; 2 uses
  %.merged.i.i886 = phi i64 [ %i.bsz, %.noexc166.i ], [ %i.btc, %bb.zy ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i164.i) ]
  %i.btd = getelementptr inbounds nuw i8, ptr %i.brb, i64 176
  %i.bte = load i64, ptr %i.btd, align 8, !alias.scope !38314, !noalias !38238, !noundef !53 ; 2 uses
  %i.btf = icmp ugt i64 %i.bte, 5
  %i.btg = getelementptr inbounds nuw i8, ptr %i.brb, i64 192
  %i.bth = load i64, ptr %i.btg, align 8, !alias.scope !38314, !noalias !38238
  %.sink10.i1061 = select i1 %i.btf, i64 %i.bth, i64 %i.bte
  %i.bti = invoke fastcc noundef i64 @_ZN4rhai4func7hashing12calc_fn_hash17h7af6393a268c020cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i164.i, i64 noundef %.merged.i.i886, i64 noundef %.sink10.i1061)
          to label %bb.aaa unwind label %.loopexit.split-lp2472.loopexit.split-lp

bb.aaa:                                           ; preds = %bb.zz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !38238
  %i.btj = load ptr, ptr %i.azx, align 8, !alias.scope !38237, !nonnull !53, !align !54, !noundef !53
  %i.btk = invoke fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17ha65bcda06f32f92eE"(ptr noalias noundef align 8 dereferenceable(32) %i.btj, i64 noundef %i.bti, ptr noundef nonnull %i.brb)
          to label %bb.aab unwind label %.loopexit.split-lp2472.loopexit.split-lp, !noalias !38238, !inline_history !37786 ; 3 uses

bb.aab:                                           ; preds = %bb.aaa
  store ptr %i.btk, ptr %i.ch, align 8, !noalias !38238
  %i.btl = icmp eq ptr %i.btk, null
  br i1 %i.btl, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit", label %bb.aac

bb.aac:                                           ; preds = %bb.aab
  %i.btm = atomicrmw add ptr %i.btk, i64 -1 release, align 8, !noalias !38315
  %i.btn = icmp eq i64 %i.btm, 1
  br i1 %i.btn, label %bb.aad, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit"

bb.aad:                                           ; preds = %bb.aac
  fence acquire, !noalias !38238
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ch)
          to label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit" unwind label %.loopexit.split-lp2472.loopexit.split-lp

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit": ; preds = %bb.aac, %bb.aab, %bb.aad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !38238
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$25make_curry_from_externals17h682ec69e13dfd4d7E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.cg, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.cf, i64 %i.bsb, i16 noundef %.sroa.5.0.copyload, i16 noundef %.sroa.61199.0.copyload)
          to label %bb.aae unwind label %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aae:                                           ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit"
  %i.bto = load <2 x i64>, ptr %i.cg, align 16, !noalias !38246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !38238
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef align 8 dereferenceable(32) %i.ed)
          to label %bb.abi unwind label %bb.aag, !noalias !38240, !inline_history !37786

bb.aaf:                                           ; preds = %bb.aag, %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110"
  %.pn143.i = phi { ptr, i32 } [ %i.btp, %bb.aag ], [ %.pn139.pn.pn.i, %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110" ]
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$rhai..parser..ParseState$GT$17h9b407ea241413be0E"(ptr noalias noundef align 8 dereferenceable(96) %i.ee) #72
          to label %common.resume3979 unwind label %bb.vf, !noalias !38240, !inline_history !37786

bb.aag:                                           ; preds = %bb.aae, %.thread2165
  %i.btp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aaf

bb.aah:                                           ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit171.i"
  %i.btq = extractvalue { i64, i1 } %i.bss, 1
  %i.btr = extractvalue { i64, i1 } %i.bss, 0
  %i.bts = icmp ne i64 %i.btr, 0
  %or.cond2392.reass = or i1 %invariant.op, %i.bts
  %or.cond3716 = select i1 %i.btq, i1 true, i1 %or.cond2392.reass
  br i1 %or.cond3716, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit", label %bb.aai

"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit": ; preds = %.split.i.i.i, %bb.aah
  %i.btt = icmp eq ptr %.sroa.0101.1.i2842, %i.brz ; 2 uses
  %.sroa.0101.1.i.idx = select i1 %i.btt, i64 0, i64 16
  %.sroa.0101.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0101.1.i2842, i64 %.sroa.0101.1.i.idx
  br i1 %i.btt, label %._crit_edge, label %bb.zu

bb.aai:                                           ; preds = %bb.aah
  %i.btu = load ptr, ptr %i.azp, align 8, !alias.scope !38237, !align !54, !noundef !53 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38316)
  %.not.i1052 = icmp eq ptr %i.btu, null
  br i1 %.not.i1052, label %.loopexit2476, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.btv = getelementptr i8, ptr %i.btu, i64 8
  %.val5.i = load ptr, ptr %i.btv, align 8, !alias.scope !38316, !noalias !38238 ; 3 uses
  %i.btw = load ptr, ptr %.sroa.0101.0.i2841, align 8, !noalias !38317, !nonnull !53, !noundef !53 ; 2 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 16 ; 3 uses
  %i.bty = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.btx)
          to label %.noexc1055 unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1055:                                       ; preds = %bb.aaj
  br i1 %i.bty, label %bb.aak, label %bb.aal

bb.aak:                                           ; preds = %.noexc1055
  %i.btz = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.btx)
          to label %.noexc1056 unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc1056:                                       ; preds = %bb.aak
  %i.bua = extractvalue { ptr, i64 } %i.btz, 0
  %i.bub = extractvalue { ptr, i64 } %i.btz, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i"

bb.aal:                                           ; preds = %.noexc1055
  %i.buc = load ptr, ptr %i.btx, align 8, !noalias !38317, !nonnull !53, !noundef !53
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btw, i64 32
  %i.bue = load i64, ptr %i.bud, align 8, !noalias !38317, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i": ; preds = %bb.aal, %.noexc1056
  %.sroa.0.0.i.i.i1053 = phi ptr [ %i.bua, %.noexc1056 ], [ %i.buc, %bb.aal ] ; 2 uses
  %.merged.i.i.i = phi i64 [ %i.bub, %.noexc1056 ], [ %i.bue, %bb.aal ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i1053) ], !noalias !38238
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ], !noalias !38238
  %i.buf = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16 ; 2 uses
  %i.bug = load i64, ptr %.val5.i, align 8, !noalias !38317, !noundef !53 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.bug, 3
  %i.buh = getelementptr inbounds nuw i8, ptr %i.buf, i64 %.idx.i.i
  %.not.i.i.i = icmp eq i64 %i.bug, 0
  br i1 %.not.i.i.i, label %.loopexit2476, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i", %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i"
  %i.bui = phi ptr [ %i.buj, %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i" ], [ %i.buf, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i" ] ; 2 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 8 ; 2 uses
  %.val4.i.i.i = load ptr, ptr %i.bui, align 8, !alias.scope !38318, !noalias !38319, !nonnull !53, !noundef !53 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16 ; 3 uses
  %i.bul = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.buk)
          to label %.noexc1057 unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1057:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.bul, label %bb.aam, label %bb.aan

bb.aam:                                           ; preds = %.noexc1057
  %i.bum = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.buk)
          to label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i" unwind label %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aan:                                           ; preds = %.noexc1057
  %i.bun = load ptr, ptr %i.buk, align 8, !noalias !38320, !nonnull !53, !noundef !53
  %i.buo = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 32
  %i.bup = load i64, ptr %i.buo, align 8, !noalias !38320, !noundef !53
  %i.buq = insertvalue { ptr, i64 } poison, ptr %i.bun, 0
  %i.bur = insertvalue { ptr, i64 } %i.buq, i64 %i.bup, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i": ; preds = %bb.aam, %bb.aan
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ %i.bur, %bb.aan ], [ %i.bum, %bb.aam ] ; 2 uses
  %i.bus = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1
  %.not.i.i.i.i.i = icmp eq i64 %.merged.i.i.i, %i.bus
  br i1 %.not.i.i.i.i.i, label %.split.i.i.i, label %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i"

.split.i.i.i:                                     ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i"
  %i.but = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.0.0.i.i.i1053, ptr %i.but, i64 %.merged.i.i.i), !noalias !38321
  %i.buu = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.buu, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h0831e9892e55d1d6E.exit", label %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i"

"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i": ; preds = %.split.i.i.i, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i.i.i"
  %.not11.i.i.i = icmp eq ptr %i.buj, %i.buh
  br i1 %.not11.i.i.i, label %.loopexit2476, label %.lr.ph.i.i.i

.loopexit2476:                                    ; preds = %bb.aai, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i", %"_ZN4rhai5types5scope5Scope8contains28_$u7b$$u7b$closure$u7d$$u7d$17h53a5dbcb4e42fdadE.exit.backedge.i.i.i"
  %i.buv = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i2841, i64 8
  %i.buw = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.i2841, i64 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !38238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !38238
  %.sroa.018.0.val.i = load ptr, ptr %.sroa.0101.0.i2841, align 8, !alias.scope !38322, !nonnull !53, !noundef !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !38323
  store i64 0, ptr %i.g, align 8, !noalias !38323
  %.sroa.42.0..sroa_idx.i3882 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i3882, align 8, !noalias !38323
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !38323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !38323
  %i.bux = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 -536870880, ptr %i.bux, align 8, !noalias !38323
  %.sroa.4.0..sroa_idx.i3883 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i3883, align 4, !noalias !38323
  %.sroa.5.0..sroa_idx.i3884 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i3884, align 2, !noalias !38323
  store ptr %i.g, ptr %i.f, align 8, !noalias !38323
  %i.buy = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @379, ptr %i.buy, align 8, !noalias !38323
  %i.buz = getelementptr inbounds nuw i8, ptr %.sroa.018.0.val.i, i64 16 ; 3 uses
  %i.bva = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.buz)
          to label %.noexc.i3885 unwind label %bb.aaq, !noalias !38323

.noexc.i3885:                                     ; preds = %.loopexit2476
  br i1 %i.bva, label %bb.aao, label %bb.aap

bb.aao:                                           ; preds = %.noexc.i3885
  %i.bvb = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.buz)
          to label %.noexc6.i unwind label %bb.aaq, !noalias !38323 ; 2 uses

.noexc6.i:                                        ; preds = %bb.aao
  %i.bvc = extractvalue { ptr, i64 } %i.bvb, 0
  %i.bvd = extractvalue { ptr, i64 } %i.bvb, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i3886"

bb.aap:                                           ; preds = %.noexc.i3885
  %i.bve = load ptr, ptr %i.buz, align 8, !noalias !38324, !nonnull !53, !noundef !53
  %i.bvf = getelementptr inbounds nuw i8, ptr %.sroa.018.0.val.i, i64 32
  %i.bvg = load i64, ptr %i.bvf, align 8, !noalias !38324, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i3886"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i3886": ; preds = %bb.aap, %.noexc6.i
  %.pre-phi.i = phi ptr [ %i.bve, %bb.aap ], [ %i.bvc, %.noexc6.i ] ; 2 uses
  %.merged.i.i.i3887 = phi i64 [ %i.bvg, %bb.aap ], [ %i.bvd, %.noexc6.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.pre-phi.i) ], !noalias !38238
  %i.bvh = invoke noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.pre-phi.i, i64 noundef %.merged.i.i.i3887, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..fmt..Display$GT$3fmt17h8559b81e3afe464aE.exit.i" unwind label %bb.aaq, !noalias !38323

bb.aaq:                                           ; preds = %bb.aas, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i3886", %bb.aao, %.loopexit2476
  %i.bvi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38325), !noalias !38238
  call void @llvm.experimental.noalias.scope.decl(metadata !38326), !noalias !38238
  %.val.i.i.i = load i64, ptr %i.g, align 8, !range !63, !alias.scope !38327, !noalias !38323, !noundef !53 ; 2 uses
  %i.bvj = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bvj, label %.loopexit.split-lp2472, label %bb.aar

bb.aar:                                           ; preds = %bb.aaq
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i3882, align 8, !alias.scope !38327, !noalias !38323, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !38328
  br label %.loopexit.split-lp2472

"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..fmt..Display$GT$3fmt17h8559b81e3afe464aE.exit.i": ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit.i.i3886"
  br i1 %i.bvh, label %bb.aas, label %bb.aat, !prof !64

bb.aas:                                           ; preds = %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..fmt..Display$GT$3fmt17h8559b81e3afe464aE.exit.i"
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @380, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @427, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #70
          to label %.noexc9.i unwind label %bb.aaq, !noalias !38323

.noexc9.i:                                        ; preds = %bb.aas
  unreachable

bb.aat:                                           ; preds = %"_ZN85_$LT$rhai..types..immutable_string..ImmutableString$u20$as$u20$core..fmt..Display$GT$3fmt17h8559b81e3afe464aE.exit.i"
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bvk, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !38323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !38323
  store i64 32, ptr %i.ci, align 8, !noalias !38238
  %i.bvl = load i16, ptr %i.buv, align 8, !noundef !53
  %i.bvm = load i16, ptr %i.buw, align 2, !noundef !53
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ci, i16 noundef %i.bvl, i16 noundef %i.bvm)
          to label %bb.aau unwind label %.loopexit.split-lp2472.loopexit.split-lp, !noalias !38238, !inline_history !37786

bb.aau:                                           ; preds = %bb.aat
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !38238
  %i.bvn = load <2 x i64>, ptr %i.cj, align 16, !noalias !38246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !38238
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cf)
          to label %bb.aav unwind label %bb.zr, !inline_history !37786

bb.aav:                                           ; preds = %bb.aau
  %i.bvo = atomicrmw add ptr %i.brb, i64 -1 release, align 8, !noalias !38329
  %i.bvp = icmp eq i64 %i.bvo, 1
  br i1 %i.bvp, label %bb.aaw, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit1051"

bb.aaw:                                           ; preds = %bb.aav
  fence acquire, !noalias !38238
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cp)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit1051" unwind label %bb.zj, !inline_history !37957

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit1051": ; preds = %bb.aav, %bb.aaw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !38238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !38238
  %i.bvq = icmp eq ptr %.val175.i, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.bvq, label %"_ZN4core3ptr69drop_in_place$LT$thin_vec..ThinVec$LT$rhai..ast..ident..Ident$GT$$GT$17h731d1a42010e9163E.exit1049", label %bb.aax, !prof !72

bb.aax:                                           ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit1051"
  invoke void @"_ZN68_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop18drop_non_singleton17h76dfe6a826cd8f21E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cv)
          to label %"_ZN4core3ptr69drop_in_place$LT$thin_vec..ThinVec$LT$rhai..ast..ident..Ident$GT$$GT$17h731d1a42010e9163E.exit1049" unwind label %.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1042:                                       ; preds = %bb.abc, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread"
  br i1 %.sroa.029.0.i8772188, label %bb.abd, label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110"

.loopexit.split-lp2482.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vb, %bb.us, %bb.ua, %.invoke3718, %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit", %bb.tv, %bb.tw, %bb.wq, %bb.wo, %bb.wl, %bb.vs, %bb.vl, %bb.vd, %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1106", %bb.tq, %bb.vy, %bb.wg, %bb.aax
  %lpad.loopexit.split-lp7397 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr85drop_in_place$LT$$LP$rhai..tokenizer..Token$C$rhai..types..position..Position$RP$$GT$17h6080924dcc8505c6E.exit1110"

"_ZN4core3ptr69drop_in_place$LT$thin_vec..ThinVec$LT$rhai..ast..ident..Ident$GT$$GT$17h731d1a42010e9163E.exit1049": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$17h2607b6474408f1deE.exit1051", %bb.aax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !38238
  br label %.thread2165

.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aam, %.lr.ph.i.i.i, %bb.aaj, %bb.zu, %bb.aak, %bb.zv, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit171.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2472

.loopexit.split-lp2472.loopexit.split-lp:         ; preds = %bb.zz, %bb.aat, %bb.aad, %bb.aaa, %bb.zx, %._crit_edge
  %.sroa.026.1.i.ph.ph.ph = phi i1 [ true, %bb.aat ], [ true, %bb.zz ], [ false, %bb.aaa ], [ false, %bb.aad ], [ true, %._crit_edge ], [ true, %bb.zx ]
  %lpad.loopexit.split-lp2478 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp2472

.loopexit.split-lp2472:                           ; preds = %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp2472.loopexit.split-lp, %bb.aar, %bb.aaq
  %.sroa.026.1.i.ph = phi i1 [ true, %bb.aaq ], [ %.sroa.026.1.i.ph.ph.ph, %.loopexit.split-lp2472.loopexit.split-lp ], [ true, %bb.aar ], [ true, %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi2475 = phi { ptr, i32 } [ %i.bvi, %bb.aaq ], [ %lpad.loopexit.split-lp2478, %.loopexit.split-lp2472.loopexit.split-lp ], [ %i.bvi, %bb.aar ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp2472.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  invoke void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..expr..Expr$GT$17h95304b11a9a8ee5eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cf) #72
          to label %bb.zq unwind label %bb.vf, !inline_history !37786

.thread2204:                                      ; preds = %bb.zs, %bb.zm, %bb.zr, %bb.zq
  %.pn134.i2209 = phi { ptr, i32 } [ %lpad.phi2475, %bb.zq ], [ %i.brs, %bb.zs ], [ %i.brn, %bb.zm ], [ %i.brr, %bb.zr ] ; 2 uses
  %i.bvr = atomicrmw add ptr %i.brb, i64 -1 release, align 8, !noalias !38330
  %i.bvs = icmp eq i64 %i.bvr, 1
  br i1 %i.bvs, label %bb.aay, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread"

bb.aay:                                           ; preds = %.thread2204
  fence acquire, !noalias !38240
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.cp)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.thread" unwind label %bb.vf, !inline_history !37957

end_hunk_17
begin_hunk_18_@_ZN4rhai8packages11array_basic15array_functions13extract_range17h1d36c94220e33734E:bb.a
  store i64 0, ptr %i.g, align 8, !alias.scope !41717
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.b
  br i1 %.not.i.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.c
  %i.h = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 %i.b)
  %spec.select.i.i = sub nuw nsw i64 %i.h, %.sroa.0.0.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !41718, !nonnull !53, !noundef !53
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %.sroa.0.0.i
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hdd9f0a48cae959c4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %spec.select.i.i), !noalias !41718
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i: ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !41717
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !41717
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !41717
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit: ; preds = %bb.b, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4rhai8packages11array_basic15array_functions15index_of_filter17hdca923314cee2403E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !53 ; 3 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.c

_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !41725
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !41723
  %i.g = call fastcc { i64, ptr } @_ZN4rhai8packages11array_basic20index_of_start_inner17h10782a6c2801402fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr %.val.i, i64 %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, i64 noundef 0), !noalias !41726 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41724
  br label %bb.c

bb.c:                                             ; preds = %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit, %bb.b
  %.sroa.3.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.i, %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %i.h, %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer17h52b8b5fd5dc4c796E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !53 ; 7 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41735)
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !41735, !nonnull !53, !noundef !53 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.026.i = phi i64 [ 1, %bb.c ], [ %i.k, %bb.f ] ; 5 uses
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %.sroa.0.026.i ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  %i.j = invoke fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nonnull readonly align 8 dereferenceable(48) %2, ptr nonnull readonly align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(16) %i.i)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  %i.k = add nuw nsw i64 %.sroa.0.026.i, 1        ; 5 uses
  br i1 %i.j, label %bb.g, label %bb.f

.loopexit.i:                                      ; preds = %bb.j, %.lr.ph.i
  %.sroa.5.0.ph.i = phi i64 [ %.sroa.5.127.i, %.lr.ph.i ], [ %i.x, %bb.j ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.ph.i, %.loopexit.i ], [ %i.k, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.12.128.i, %.loopexit.i ], [ %.sroa.0.026.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.l = sub i64 %i.b, %.sroa.5.0.i               ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.12.0.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.5.0.i
  %i.o = shl i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.o, i1 false), !noalias !41736
  %i.p = add i64 %i.l, %.sroa.12.0.i
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !41735, !noalias !41737
  br label %.body

bb.f:                                             ; preds = %.noexc
  %.not.i = icmp eq i64 %i.k, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.d

bb.g:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" unwind label %.loopexit.split-lp.i, !noalias !41738, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i": ; preds = %bb.g
  %i.q = icmp samesign ult i64 %i.k, %i.b
  br i1 %i.q, label %.lr.ph.i, label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i"
  %.sroa.12.1.lcssa.i = phi i64 [ %.sroa.0.026.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ], [ %.sroa.12.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ]
  store i64 %.sroa.12.1.lcssa.i, ptr %i.a, align 8, !alias.scope !41735
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit"

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i"
  %.sroa.12.128.i = phi i64 [ %.sroa.12.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ], [ %.sroa.0.026.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ] ; 4 uses
  %.sroa.5.127.i = phi i64 [ %.sroa.5.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ], [ %i.k, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.5.127.i ; 3 uses
  %i.s = getelementptr [16 x i8], ptr %i.g, i64 %.sroa.12.128.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = invoke fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nonnull readonly align 8 dereferenceable(48) %2, ptr nonnull readonly align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(16) %i.r, ptr noalias noundef align 8 dereferenceable(16) %i.t)
          to label %bb.h unwind label %.loopexit.i, !noalias !41735

bb.h:                                             ; preds = %.lr.ph.i
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !41738
  %i.v = add i64 %.sroa.12.128.i, 1
  %i.w = add nuw nsw i64 %.sroa.5.127.i, 1
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i"

bb.j:                                             ; preds = %bb.h
  %i.x = add nuw nsw i64 %.sroa.5.127.i, 1        ; 2 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.r)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" unwind label %.loopexit.i, !noalias !41738, !inline_history !71

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i": ; preds = %bb.j, %bb.i
  %.sroa.5.2.i = phi i64 [ %i.w, %bb.i ], [ %i.x, %bb.j ] ; 2 uses
  %.sroa.12.2.i = phi i64 [ %i.v, %bb.i ], [ %.sroa.12.128.i, %bb.j ] ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.5.2.i, %i.b
  br i1 %i.y, label %.lr.ph.i, label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit": ; preds = %bb.f, %bb.a, %bb.b, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.k ], [ %lpad.phi.i, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2) #72
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.h, !inline_history !71

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4rhai5types6fn_ptr5FnPtr8call_raw17hfa5242f005dea6bfE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.8.val, ptr noalias noundef align 8 dereferenceable_or_null(16) null, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41749)
  %i.i = load i8, ptr %i.d, align 8, !range !68, !alias.scope !41748, !noundef !53
  %i.j = icmp eq i8 %i.i, 12
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.d, i64 16, i1 false), !alias.scope !41750
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @581), !noalias !41750, !inline_history !71
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h07c958ad38066668E.exit"

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) @581, i64 16, i1 false), !alias.scope !41751
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41752)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41753)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !41754, !nonnull !53, !noundef !53 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef align 8 dereferenceable(64) %i.l)
          to label %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit.i" unwind label %common.resume.i, !noalias !41755, !inline_history !79

common.resume:                                    ; preds = %bb.b, %bb.f, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %common.resume.i ], [ %i.g, %bb.b ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 64, i64 noundef 8) #71, !noalias !41755, !inline_history !79
  br label %common.resume

"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit.i": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 64, i64 noundef 8) #71, !noalias !41755, !inline_history !79
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h07c958ad38066668E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h07c958ad38066668E.exit": ; preds = %bb.d, %"_ZN4core3ptr139drop_in_place$LT$core..result..Result$LT$rhai..types..dynamic..Dynamic$C$alloc..boxed..Box$LT$rhai..types..error..EvalAltResult$GT$$GT$$GT$17h510cc7087b4ff53aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h07c958ad38066668E.exit"
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e)
          to label %common.resume unwind label %bb.h, !inline_history !71

bb.g:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$9unwrap_or17h07c958ad38066668E.exit"
  %i.o = load ptr, ptr %i.f, align 8, !noundef !53
  %.not = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load i8, ptr %i.p, align 8, !range !55
  %i.r = trunc nuw i8 %i.q to i1
  %.sroa.0.0 = select i1 %.not, i1 %i.r, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.e), !inline_history !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0

bb.h:                                             ; preds = %bb.f, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noalias noundef align 8 ptr @_ZN4rhai8packages11array_basic15array_functions17sort_with_builtin17h33ab3b7ae0d43a89E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  %i.g = alloca [16 x i8], align 16               ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [64 x i8], align 8                ; 10 uses
  %i.m = alloca [16 x i8], align 16               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !53 ; 18 uses
  %i.p = icmp ult i64 %i.o, 576460752303423488
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ult i64 %i.o, 2
  br i1 %i.q, label %bb.ab, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !53, !noundef !53 ; 22 uses
  call void @_ZN4rhai5types7dynamic7Dynamic7type_id17hea8bc8aaa12b2054E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
  %.idx = shl nuw nsw i64 %i.o, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !41788)
  %.sroa.0.0.copyload.i.i = load i128, ptr %i.m, align 16, !alias.scope !41788 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.not9.not.not.i.not = icmp eq ptr %i.u, %i.t
  br i1 %.not9.not.not.i.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h3d40703246e5ca7aE.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.v = phi ptr [ %i.s, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !41789
  call void @_ZN4rhai5types7dynamic7Dynamic7type_id17hea8bc8aaa12b2054E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.v), !noalias !41789
  %i.w = load i128, ptr %i.g, align 16, !noalias !41790, !noundef !53
  %.not.i = icmp eq i128 %i.w, %.sroa.0.0.copyload.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !41789
  br i1 %.not.i, label %bb.b, label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17h3d40703246e5ca7aE.exit": ; preds = %bb.b
  switch i128 %.sroa.0.0.copyload.i.i, label %bb.x [
    i128 -108434566712839367509788786707786360479, label %bb.i
    i128 81227397821202392580868386207259837707, label %bb.l
    i128 -79275222783358648677277462008593265796, label %bb.o
    i128 -43392817770272045398683791222687348098, label %bb.r
    i128 -15607121060179142519861403081325339266, label %bb.u
    i128 86577360055205003630662857375202502873, label %bb.ab
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41791
  %i.x = call noundef dereferenceable_or_null(44) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 44, i64 noundef range(i64 1, 9) 1) #71, !noalias !41791 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"

bb.e:                                             ; preds = %bb.d
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70, !noalias !41792
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.x, ptr noundef nonnull align 1 dereferenceable(44) @1766, i64 44, i1 false), !noalias !41793
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 44, ptr %i.z, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.x, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 44, ptr %.sroa.534.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 0, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i16 0, ptr %i.ab, align 4
  store i8 7, ptr %i.l, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !41794
  %i.ac = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !41794 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit6", !prof !56

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l) #72
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ay, %bb.z ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit6": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

end_hunk_18
begin_hunk_19_@_ZN4rhai8packages11string_more16string_functions3pad17h1ef1772135a0d19aE:bb.a

bb.n:                                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr %1, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah)
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.o, %bb.p
  %.merged.i = phi i64 [ %i.ak, %bb.o ], [ %i.am, %bb.p ]
  %i.an = load i64, ptr %i.e, align 8, !noundef !53
  %i.ao = icmp ugt i64 %.merged.i, %i.an
  br i1 %i.ao, label %bb.q, label %bb.c

bb.q:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43633
  %i.ap = tail call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 1) #71, !noalias !43633 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit22"

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3070) #70, !noalias !43634
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit22": ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ap, ptr noundef nonnull align 1 dereferenceable(16) @251, i64 16, i1 false), !noalias !43635
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.ar, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 16, ptr %.sroa.533.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.as, align 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.at, align 4
  store i8 28, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43636
  %i.au = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !43636 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.s, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !56

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit22"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit22"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11string_more16string_functions3pop17hc0b5084670939151E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2), (4, 12)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.e = extractvalue { ptr, i64 } %i.d, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.b, %bb.c
  %.merged.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %i.h = icmp eq i64 %.merged.i, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h42ece2242c96cb5bE.exit"

bb.e:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  %i.i = tail call fastcc noundef align 8 dereferenceable(24) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hbebdc65590243689E"(ptr noalias noundef align 8 dereferenceable(8) %1)
  %i.j = tail call fastcc noundef i32 @"_ZN11smartstring23SmartString$LT$Mode$GT$3pop17h0f7c9be8c3ca0904E"(ptr noalias noundef align 8 dereferenceable(24) %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43645)
  %.not.i = icmp eq i32 %i.j, 1114112
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h42ece2242c96cb5bE.exit"

bb.g:                                             ; preds = %bb.e
  store i8 3, ptr %0, align 8, !alias.scope !43646
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !alias.scope !43646
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.51.0..sroa_idx.i.i.i.i, align 4, !alias.scope !43646
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43646
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) @2), !noalias !43645, !inline_history !71
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h42ece2242c96cb5bE.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h42ece2242c96cb5bE.exit": ; preds = %bb.g, %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11string_more16string_functions3set17hb9492acccfaee1e4E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = icmp sgt i64 %1, -1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 0, %1
  %i.g = load ptr, ptr %0, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 6 uses
  %i.i = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit12"

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !nonnull !53, !noundef !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit12"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit12": ; preds = %bb.c, %bb.d
  %.sroa.0.0.i10 = phi ptr [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 3 uses
  %.merged.i11 = phi i64 [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i10) ]
  %i.p = icmp ult i64 %.merged.i11, 32
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit12"
  %i.q = tail call noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i10, i64 noundef %.merged.i11)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

bb.f:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit12"
  %i.r = tail call noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i10, i64 noundef %.merged.i11)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit": ; preds = %bb.e, %bb.f
  %.sroa.01.0.i = phi i64 [ %i.r, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %.not = icmp ult i64 %.sroa.01.0.i, %i.f
  br i1 %.not, label %bb.aj, label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0
  %i.x = extractvalue { ptr, i64 } %i.v, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15"

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.t, align 8, !nonnull !53, !noundef !53
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15": ; preds = %bb.h, %bb.i
  %.sroa.0.0.i13 = phi ptr [ %i.w, %bb.h ], [ %i.y, %bb.i ] ; 3 uses
  %.merged.i14 = phi i64 [ %i.x, %bb.h ], [ %i.aa, %bb.i ]
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i13, i64 %.merged.i14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i13) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43699
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa_idx.i.i.i.i, i8 0, i64 23, i1 false), !noalias !43699
  store i8 1, ptr %i.c, align 8, !noalias !43699
  br label %bb.j

bb.j:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15"
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15" ], [ %i.bj, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.0.i13, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit15" ], [ %.sroa.0.1.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i" ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i) ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i, %3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1 ; 3 uses
  %i.ac = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !noalias !43700, !noundef !53 ; 5 uses
  %i.ad = icmp sgt i8 %i.ac, -1
  br i1 %i.ad, label %bb.l, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.k
  %i.ae = and i8 %i.ac, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = icmp ne ptr %i.ab, %3
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 2 ; 3 uses
  %i.ai = load i8, ptr %i.ab, align 1, !noalias !43700, !noundef !53
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ac, -33
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i8 %i.ac to i32
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %i.ap = icmp ne ptr %i.ah, %3
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 3 ; 3 uses
  %i.ar = load i8, ptr %i.ah, align 1, !noalias !43700, !noundef !53
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.af, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ac, -17
  br i1 %i.ay, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i"
  %i.az = icmp ne ptr %i.aq, %3
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 4
  %i.bb = load i8, ptr %i.aq, align 1, !noalias !43700, !noundef !53
  %i.bc = shl nuw nsw i32 %i.af, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.av, 6
  %i.bf = and i8 %i.bb, 63
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = or disjoint i32 %i.bh, %i.bd            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bi, 1114112
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i", %bb.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ab, %bb.l ], [ %i.ba, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.ah, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ]
  %spec.select.i6.i13.i.i.i.i.i = phi i32 [ %i.ao, %bb.l ], [ %i.bi, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i" ], [ %i.ax, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i" ], [ %i.am, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bj = add i64 %.sroa.9.0.i.i.i.i, 1
  %i.bk = icmp eq i64 %.sroa.9.0.i.i.i.i, %1
  br i1 %i.bk, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.i.i.i.i"

bb.m:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i"
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.o, !noalias !43699

.noexc.i.i.i.i:                                   ; preds = %bb.m
  br i1 %i.bm, label %common.resume, label %bb.n

bb.n:                                             ; preds = %.noexc.i.i.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.o, !noalias !43699

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i"
  %.not.i.i.i.i = icmp eq i32 %spec.select.i6.i13.i.i.i.i.i, 1114112
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.thread16.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.i.i.i.i"
  %.sroa.0.0.i23.i.i.i.i = phi i32 [ %spec.select.i6.i13.i.i.i.i.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.i.i.i.i" ], [ %2, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i" ]
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.c, i32 noundef %.sroa.0.0.i23.i.i.i.i)
          to label %bb.j unwind label %bb.m, !noalias !43699

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !43699
  unreachable

common.resume:                                    ; preds = %.noexc.i.i.i.i37, %bb.ab, %.noexc2.i.i40, %bb.af, %.noexc.i.i.i.i, %bb.n, %.noexc2.i.i, %bb.r, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.bs, %bb.r ], [ %i.bl, %.noexc.i.i.i.i ], [ %i.bl, %bb.n ], [ %i.bs, %.noexc2.i.i ], [ %i.dp, %.noexc.i.i.i.i37 ], [ %i.dp, %bb.ab ], [ %i.dw, %.noexc2.i.i40 ], [ %i.dw, %bb.af ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h72a89fd842928ba3E.exit.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i", %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43701
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !43701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43699
  store i64 1, ptr %i.d, align 8, !noalias !43701
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bp, align 8, !noalias !43701
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43702
  %i.bq = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !43702 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.p, label %_ZN4core4iter6traits8iterator8Iterator7collect17h157127a285e813e6E.exit, !prof !56

bb.p:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc.i.i unwind label %bb.q, !noalias !43701

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bo)
          to label %.noexc2.i.i unwind label %bb.s, !noalias !43701

.noexc2.i.i:                                      ; preds = %bb.q
  br i1 %i.bt, label %common.resume, label %bb.r

bb.r:                                             ; preds = %.noexc2.i.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %common.resume unwind label %bb.s, !noalias !43701

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !43701
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h157127a285e813e6E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hfc8b6527e3431490E.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !43701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43701
  %i.bv = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !43703
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.t, label %.sink.split

bb.t:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h157127a285e813e6E.exit
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %.sink.split unwind label %bb.al

bb.u:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.bx = add i64 %.sroa.01.0.i, %1
  %i.by = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h) ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.w:                                             ; preds = %bb.u
  %i.cc = load ptr, ptr %i.h, align 8, !nonnull !53, !noundef !53
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = phi ptr [ %i.ca, %bb.v ], [ %i.cc, %bb.w ] ; 3 uses
  %.merged.i = phi i64 [ %i.cb, %bb.v ], [ %i.ce, %bb.w ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.merged.i ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43704
  %.sroa.46.0..sroa_idx.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.0..sroa_idx.i.i.i.i27, i8 0, i64 23, i1 false), !noalias !43704
  store i8 1, ptr %i.a, align 8, !noalias !43704
  br label %bb.x

bb.x:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i", %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  %.sroa.9.0.i.i.i.i28 = phi i64 [ 0, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit" ], [ %i.dn, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i" ] ; 2 uses
  %.sroa.0.0.i.i.i.i29 = phi ptr [ %.sroa.0.0.i, %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit" ], [ %.sroa.0.1.i.i.i.i33, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i" ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i29) ]
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %.sroa.0.0.i.i.i.i29, %4
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i29, i64 1 ; 3 uses
  %i.cg = load i8, ptr %.sroa.0.0.i.i.i.i29, align 1, !noalias !43705, !noundef !53 ; 5 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31": ; preds = %bb.y
  %i.ci = and i8 %i.cg, 31
  %i.cj = zext nneg i8 %i.ci to i32               ; 3 uses
  %i.ck = icmp ne ptr %i.cf, %4
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i29, i64 2 ; 3 uses
  %i.cm = load i8, ptr %i.cf, align 1, !noalias !43705, !noundef !53
  %i.cn = shl nuw nsw i32 %i.cj, 6
  %i.co = and i8 %i.cm, 63
  %i.cp = zext nneg i8 %i.co to i32               ; 2 uses
  %i.cq = or disjoint i32 %i.cn, %i.cp
  %i.cr = icmp samesign ugt i8 %i.cg, -33
  br i1 %i.cr, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32"

bb.z:                                             ; preds = %bb.y
  %i.cs = zext nneg i8 %i.cg to i32
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31"
  %i.ct = icmp ne ptr %i.cl, %4
  call void @llvm.assume(i1 %i.ct)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i29, i64 3 ; 3 uses
  %i.cv = load i8, ptr %i.cl, align 1, !noalias !43705, !noundef !53
  %i.cw = shl nuw nsw i32 %i.cp, 6
  %i.cx = and i8 %i.cv, 63
  %i.cy = zext nneg i8 %i.cx to i32
  %i.cz = or disjoint i32 %i.cw, %i.cy            ; 2 uses
  %i.da = shl nuw nsw i32 %i.cj, 12
  %i.db = or disjoint i32 %i.cz, %i.da
  %i.dc = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.dc, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42"
  %i.dd = icmp ne ptr %i.cu, %4
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i29, i64 4
  %i.df = load i8, ptr %i.cu, align 1, !noalias !43705, !noundef !53
  %i.dg = shl nuw nsw i32 %i.cj, 18
  %i.dh = and i32 %i.dg, 1835008
  %i.di = shl nuw nsw i32 %i.cz, 6
  %i.dj = and i8 %i.df, 63
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dh            ; 2 uses
  %.not.i.i.i.i.i.i44 = icmp eq i32 %i.dm, 1114112
  br i1 %.not.i.i.i.i.i.i44, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42", %bb.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31"
  %.sroa.0.1.i.i.i.i33 = phi ptr [ %i.cf, %bb.z ], [ %i.de, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43" ], [ %i.cu, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31" ]
  %spec.select.i6.i13.i.i.i.i.i34 = phi i32 [ %i.cs, %bb.z ], [ %i.dm, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43" ], [ %i.db, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i.i.i.i.i42" ], [ %i.cq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i.i.i.i.i31" ] ; 2 uses
  %i.dn = add i64 %.sroa.9.0.i.i.i.i28, 1
  %i.do = icmp eq i64 %.sroa.9.0.i.i.i.i28, %i.bx
  br i1 %i.do, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.i.i.i.i"

bb.aa:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i"
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dq = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc.i.i.i.i37 unwind label %bb.ac, !noalias !43704

.noexc.i.i.i.i37:                                 ; preds = %bb.aa
  br i1 %i.dq, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %.noexc.i.i.i.i37
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.ac, !noalias !43704

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32"
  %.not.i.i.i.i35 = icmp eq i32 %spec.select.i6.i13.i.i.i.i.i34, 1114112
  br i1 %.not.i.i.i.i35, label %_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.thread16.i.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.i.i.i.i"
  %.sroa.0.0.i23.i.i.i.i36 = phi i32 [ %spec.select.i6.i13.i.i.i.i.i34, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.i.i.i.i" ], [ %2, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h21d02eebffcc5a1eE.exit.thread10.i.i.i.i.i32" ]
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.a, i32 noundef %.sroa.0.0.i23.i.i.i.i36)
          to label %bb.x unwind label %bb.aa, !noalias !43704

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !43704
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i: ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h49e91322c747798bE.exit.i.i.i.i", %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i.i.i.i.i43", %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !43706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43704
  store i64 1, ptr %i.b, align 8, !noalias !43706
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dt, align 8, !noalias !43706
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !43707
  %i.du = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !43707 ; 5 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ad, label %_ZN4core4iter6traits8iterator8Iterator7collect17h18f03b25f2e6ed71E.exit, !prof !56

bb.ad:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc.i.i41 unwind label %bb.ae, !noalias !43706

.noexc.i.i41:                                     ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds)
          to label %.noexc2.i.i40 unwind label %bb.ag, !noalias !43706

.noexc2.i.i40:                                    ; preds = %bb.ae
  br i1 %i.dx, label %common.resume, label %bb.af

bb.af:                                            ; preds = %.noexc2.i.i40
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %common.resume unwind label %bb.ag, !noalias !43706

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !43706
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h18f03b25f2e6ed71E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h6c0099ab84a87dbeE.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.du, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !43706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43706
  %i.dz = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !43708
  %i.ea = icmp eq i64 %i.dz, 1
  br i1 %i.ea, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h18f03b25f2e6ed71E.exit
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
          to label %.sink.split unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.sink.split:                                      ; preds = %bb.ah, %_ZN4core4iter6traits8iterator8Iterator7collect17h18f03b25f2e6ed71E.exit, %bb.t, %_ZN4core4iter6traits8iterator8Iterator7collect17h157127a285e813e6E.exit
  %.sink = phi ptr [ %i.bq, %bb.t ], [ %i.bq, %_ZN4core4iter6traits8iterator8Iterator7collect17h157127a285e813e6E.exit ], [ %i.du, %_ZN4core4iter6traits8iterator8Iterator7collect17h18f03b25f2e6ed71E.exit ], [ %i.du, %bb.ah ]
  store ptr %.sink, ptr %0, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  ret void

bb.ak:                                            ; preds = %bb.al, %bb.ai
  %storemerge = phi ptr [ %i.du, %bb.ai ], [ %i.bq, %bb.al ]
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ai ], [ %i.ec, %bb.al ]
  store ptr %storemerge, ptr %0, align 8
  br label %common.resume

bb.al:                                            ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11string_more16string_functions4crop17he197ff15e58c828aE(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !53, !noundef !53 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 15 uses
  %i.d = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
  %i.f = extractvalue { ptr, i64 } %i.e, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit31"

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i64, ptr %i.g, align 8, !noundef !53
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit31"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit31": ; preds = %bb.b, %bb.c
  %.merged.i30 = phi i64 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i64 %.merged.i30, 0
  br i1 %i.i, label %bb.e, label %bb.d
end_hunk_19
begin_hunk_20_@"_ZN4rhai8packages9lang_core20reflection_functions7collect28_$u7b$$u7b$closure$u7d$$u7d$17h090ca2cf1b4be871E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123"

bb.cf:                                            ; preds = %bb.cb, %bb.ca
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body196

.body196:                                         ; preds = %.noexc17.i187, %bb.ce, %bb.cf
  %eh.lpad-body197 = phi { ptr, i32 } [ %i.ff, %bb.cf ], [ %i.fc, %bb.ce ], [ %i.fc, %.noexc17.i187 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.t)
          to label %.thread unwind label %bb.cg, !noalias !46439, !inline_history !71

bb.cg:                                            ; preds = %.body196
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46440
  unreachable

bb.ch:                                            ; preds = %bb.cb, %.noexc194
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1289.32.copyload) ]
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.1289.32.copyload, i64 %.sroa.1184.8.copyload ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false), !noalias !46441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !46442
  %.pr162 = load i8, ptr %i.v, align 8, !alias.scope !46443
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1590)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fi = icmp eq i8 %.pr162, 12
  br i1 %i.fi, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123", label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.v)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123" unwind label %.body

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123": ; preds = %bb.ch, %.thread163, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !46444
  %i.fj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46444 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.cj, label %bb.cm, !prof !56

bb.cj:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70
          to label %.noexc124 unwind label %bb.ck

.noexc124:                                        ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.cj
  %i.fl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #72
          to label %bb.b unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.cm:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit123"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 8, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.442.0..sroa_idx, align 1
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.644.0..sroa_idx, align 4
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fj, ptr %.sroa.745.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  switch i64 %.sroa.0.0.copyload, label %bb.cn [
    i64 -9223372036854775808, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit126"
    i64 0, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit126"
  ]

bb.cn:                                            ; preds = %bb.cm
  %i.fn = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.fn, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46445
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit126"

.body.thread:                                     ; preds = %bb.bt, %.body.i.i.i.i, %.body.thread152
  %eh.lpad-body147 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread152 ], [ %i.ej, %.body.i.i.i.i ], [ %i.eq, %bb.bt ] ; 2 uses
  %i.fo = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %.noexc127 unwind label %bb.bm

.noexc127:                                        ; preds = %.body.thread
  br i1 %i.fo, label %.thread, label %bb.co

bb.co:                                            ; preds = %.noexc127
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread unwind label %bb.bm

bb.cp:                                            ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit63"
  %i.fp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fq = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %.noexc133 unwind label %bb.bm

.noexc133:                                        ; preds = %bb.cp
  br i1 %i.fq, label %.thread, label %bb.cq

bb.cq:                                            ; preds = %.noexc133
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread unwind label %bb.bm

bb.cr:                                            ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc136 unwind label %bb.bm

.noexc136:                                        ; preds = %bb.cr
  br i1 %i.fs, label %.thread, label %bb.cs

bb.cs:                                            ; preds = %.noexc136
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread unwind label %bb.bm

.thread:                                          ; preds = %.body170, %.noexc136, %bb.cs, %.noexc133, %bb.cq, %.noexc127, %bb.co, %.body196, %.body, %.noexc100, %bb.bl, %.body183, %.body157, %.body145
  %.pn93 = phi { ptr, i32 } [ %eh.lpad-body171, %.body170 ], [ %i.fp, %bb.cq ], [ %i.fp, %.noexc133 ], [ %i.fr, %bb.cs ], [ %eh.lpad-body147, %bb.co ], [ %i.fr, %.noexc136 ], [ %eh.lpad-body147, %.noexc127 ], [ %i.dt, %.noexc100 ], [ %eh.lpad-body184, %.body183 ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body197, %.body196 ], [ %eh.lpad-body146, %.body145 ], [ %eh.lpad-body158, %.body157 ], [ %i.dt, %bb.bl ]
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #72
          to label %bb.b unwind label %bb.bm

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit58": ; preds = %bb.c, %bb.b, %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4rhai8packages9lang_core20reflection_functions7collect28_$u7b$$u7b$closure$u7d$$u7d$17h90b120b842bae353E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1592 = alloca [16 x i8], align 8         ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1576 = alloca [16 x i8], align 8         ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 3 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1560 = alloca [16 x i8], align 8         ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 3 uses
  %i.n = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1543 = alloca [16 x i8], align 8         ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 3 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.15 = alloca [16 x i8], align 8           ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 15 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 15 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 15 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 10 uses
  %i.ag = alloca [24 x i8], align 8               ; 15 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 21 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 8 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 4 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 12, ptr %0, align 8
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.aj = icmp ult i64 %.sroa.12.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.aj)
  %.val = load ptr, ptr %.0.val, align 8, !nonnull !53, !align !54, !noundef !53 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !46561, !noundef !53
  %.not.i = icmp eq i64 %.sroa.17.0.copyload, %i.al
  br i1 %.not.i, label %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit", label %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit.thread"

"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit.thread": ; preds = %bb.b, %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit"
  store i8 12, ptr %0, align 8
  %cond = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %cond, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.am = shl nuw i64 %.sroa.0.0.copyload, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46562
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"

bb.d:                                             ; preds = %bb.cm, %.thread94
  %.pn.pn = phi { ptr, i32 } [ %.pn97, %.thread94 ], [ %i.fq, %bb.cm ]
  switch i64 %.sroa.0.0.copyload, label %bb.e [
    i64 -9223372036854775808, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit59"
    i64 0, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit59"
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.an = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46563
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit59"

"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit": ; preds = %bb.b
  %i.ao = load ptr, ptr %.val, align 8, !noalias !46561, !nonnull !53, !align !59, !noundef !53
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.14.0.copyload, ptr nonnull %i.ao, i64 %.sroa.17.0.copyload)
  %i.ap = icmp eq i32 %bcmp.i, 0
  br i1 %i.ap, label %bb.f, label %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit.thread"

bb.f:                                             ; preds = %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr null, ptr %i.ai, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2089, i64 noundef 4)
          to label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit" unwind label %.body

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit": ; preds = %bb.cp, %bb.co, %bb.co, %bb.c, %.thread, %"_ZN4rhai8packages9lang_core20reflection_functions15get_fn_metadata28_$u7b$$u7b$closure$u7d$$u7d$17hec37895f63a93590E.exit.thread"
  ret void

"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ar = load ptr, ptr %.8.val, align 8, !nonnull !53, !align !54, !noundef !53
  %i.as = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.14.0.copyload, i64 noundef %.sroa.17.0.copyload)
          to label %bb.g unwind label %bb.ct

bb.g:                                             ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  store i8 2, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %.sroa.514.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.as, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.experimental.noalias.scope.decl(metadata !46564)
  call void @llvm.experimental.noalias.scope.decl(metadata !46565)
  call void @llvm.experimental.noalias.scope.decl(metadata !46566)
  %i.at = load ptr, ptr %i.ai, align 8, !alias.scope !46565, !noalias !46567, !noundef !53 ; 2 uses
  %.not.i141 = icmp eq ptr %i.at, null
  br i1 %.not.i141, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46568
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !46565, !noalias !46567, !noundef !53
  invoke fastcc void @"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h9aedfd64e3253208E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.at, i64 noundef %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.k unwind label %bb.o, !noalias !46569

bb.i:                                             ; preds = %bb.g
  %.sroa.7.8.copyload17 = load ptr, ptr %i.ag, align 8, !alias.scope !46570, !noalias !46567
  %.sroa.11.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aw = load <2 x i64>, ptr %.sroa.11.8..sroa_idx20, align 8, !alias.scope !46570, !noalias !46567
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"

bb.j:                                             ; preds = %bb.p, %bb.o
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46569
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.e, align 8, !range !61, !noalias !46568, !noundef !53
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1227.32.copyload = load ptr, ptr %i.ba, align 8, !noalias !46571 ; 3 uses
  br i1 %i.az, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.1122.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.1122.8.copyload = load i64, ptr %.sroa.1122.8..sroa_idx, align 8, !noalias !46571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46568
  %i.bb = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc145 unwind label %bb.q

.noexc145:                                        ; preds = %bb.l
  br i1 %i.bb, label %bb.s, label %bb.m

bb.m:                                             ; preds = %.noexc145
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.s unwind label %bb.q

bb.n:                                             ; preds = %bb.k
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.32..sroa_idx, i64 16, i1 false), !noalias !46571
  %.sroa.7.8.copyload16 = load ptr, ptr %i.ag, align 8, !alias.scope !46570, !noalias !46567
  %.sroa.11.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bc = load <2 x i64>, ptr %.sroa.11.8..sroa_idx18, align 8, !alias.scope !46570, !noalias !46567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46568
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"

bb.o:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc17.i unwind label %bb.j, !noalias !46569

.noexc17.i:                                       ; preds = %bb.o
  br i1 %i.be, label %.body147, label %bb.p

bb.p:                                             ; preds = %.noexc17.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body147 unwind label %bb.j, !noalias !46569

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit": ; preds = %bb.i, %bb.n
  %.sroa.1227.0 = phi ptr [ null, %bb.i ], [ %.sroa.1227.32.copyload, %bb.n ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.8.copyload17, %bb.i ], [ %.sroa.7.8.copyload16, %bb.n ]
  %i.bf = phi <2 x i64> [ %i.aw, %bb.i ], [ %i.bc, %bb.n ]
  store ptr %i.ai, ptr %i.p, align 8, !noalias !46572
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !46572
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %i.bf, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !46572
  %.sroa.1227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.1227.0, ptr %.sroa.1227.0..sroa_idx, align 8, !noalias !46572
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, i64 16, i1 false), !noalias !46572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46572
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h939de8bf816d7c30E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.af)
          to label %.thread112 unwind label %.body

.thread112:                                       ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46572
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit"

bb.q:                                             ; preds = %bb.m, %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body147

.body147:                                         ; preds = %.noexc17.i, %bb.p, %bb.q
  %eh.lpad-body148 = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.bd, %bb.p ], [ %i.bd, %.noexc17.i ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.af)
          to label %.thread94 unwind label %bb.r, !noalias !46573, !inline_history !71

bb.r:                                             ; preds = %.body147
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46574
  unreachable

bb.s:                                             ; preds = %bb.m, %.noexc145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1227.32.copyload) ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.1227.32.copyload, i64 %.sroa.1122.8.copyload ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !noalias !46575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !46576
  %.pr = load i8, ptr %i.ah, align 8, !alias.scope !46577
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.bj = icmp eq i8 %.pr, 12
  br i1 %i.bj, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ah)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit" unwind label %.body

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit": ; preds = %bb.s, %.thread112, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2136, i64 noundef 6)
end_hunk_20
begin_hunk_21_@"_ZN4rhai8packages9lang_core20reflection_functions7collect28_$u7b$$u7b$closure$u7d$$u7d$17h90b120b842bae353E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125"

bb.ch:                                            ; preds = %bb.cd, %bb.cc
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %.body198

.body198:                                         ; preds = %.noexc17.i189, %bb.cg, %bb.ch
  %eh.lpad-body199 = phi { ptr, i32 } [ %i.fk, %bb.ch ], [ %i.fh, %bb.cg ], [ %i.fh, %.noexc17.i189 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.t)
          to label %.thread94 unwind label %bb.ci, !noalias !46639, !inline_history !71

bb.ci:                                            ; preds = %.body198
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46640
  unreachable

bb.cj:                                            ; preds = %bb.cd, %.noexc196
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1291.32.copyload) ]
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.1291.32.copyload, i64 %.sroa.1186.8.copyload ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !noalias !46641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !46642
  %.pr165 = load i8, ptr %i.v, align 8, !alias.scope !46643
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1592)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fn = icmp eq i8 %.pr165, 12
  br i1 %i.fn, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.v)
          to label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125" unwind label %.body

"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125": ; preds = %bb.cj, %.thread166, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !46644
  %i.fo = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46644 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.cl, label %bb.co, !prof !56

bb.cl:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #70
          to label %.noexc126 unwind label %bb.cm

.noexc126:                                        ; preds = %bb.cl
  unreachable

bb.cm:                                            ; preds = %bb.cl
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #72
          to label %bb.d unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.co:                                            ; preds = %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit125"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 8, ptr %0, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.442.0..sroa_idx, align 1
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.644.0..sroa_idx, align 4
  %.sroa.745.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fo, ptr %.sroa.745.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  switch i64 %.sroa.0.0.copyload, label %bb.cp [
    i64 -9223372036854775808, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"
    i64 0, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"
  ]

bb.cp:                                            ; preds = %bb.co
  %i.fs = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.fs, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46645
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"

.body.thread:                                     ; preds = %bb.bv, %.body.i.i.i.i, %.body.thread155
  %eh.lpad-body150 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread155 ], [ %i.eo, %.body.i.i.i.i ], [ %i.ev, %bb.bv ] ; 2 uses
  %i.ft = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u)
          to label %.noexc129 unwind label %bb.bo

.noexc129:                                        ; preds = %.body.thread
  br i1 %i.ft, label %.thread94, label %bb.cq

bb.cq:                                            ; preds = %.noexc129
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread94 unwind label %bb.bo

bb.cr:                                            ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit64"
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %.noexc135 unwind label %bb.bo

.noexc135:                                        ; preds = %bb.cr
  br i1 %i.fv, label %.thread94, label %bb.cs

bb.cs:                                            ; preds = %.noexc135
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread94 unwind label %bb.bo

bb.ct:                                            ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  %i.fw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fx = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc138 unwind label %bb.bo

.noexc138:                                        ; preds = %bb.ct
  br i1 %i.fx, label %.thread94, label %bb.cu

bb.cu:                                            ; preds = %.noexc138
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.thread94 unwind label %bb.bo

.thread94:                                        ; preds = %.body172, %.noexc138, %bb.cu, %.noexc135, %bb.cs, %.noexc129, %bb.cq, %.body198, %.body, %.noexc102, %bb.bn, %.body185, %.body159, %.body147
  %.pn97 = phi { ptr, i32 } [ %eh.lpad-body173, %.body172 ], [ %i.fu, %bb.cs ], [ %i.fu, %.noexc135 ], [ %i.fw, %bb.cu ], [ %eh.lpad-body150, %bb.cq ], [ %i.fw, %.noexc138 ], [ %eh.lpad-body150, %.noexc129 ], [ %i.dy, %.noexc102 ], [ %eh.lpad-body186, %.body185 ], [ %lpad.thr_comm.split-lp, %.body ], [ %eh.lpad-body199, %.body198 ], [ %eh.lpad-body148, %.body147 ], [ %eh.lpad-body160, %.body159 ], [ %i.dy, %bb.bn ]
  invoke void @"_ZN4core3ptr165drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$smartstring..SmartString$LT$smartstring..config..LazyCompact$GT$$C$rhai..types..dynamic..Dynamic$GT$$GT$17he2bc0935439e1204E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #72
          to label %bb.d unwind label %bb.bo

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit59": ; preds = %bb.e, %bb.d, %bb.d
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4rhai8packages9lang_core20reflection_functions7collect28_$u7b$$u7b$closure$u7d$$u7d$17hcab034097a6c4794E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 3 uses
  %i.g = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1592 = alloca [16 x i8], align 8         ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1576 = alloca [16 x i8], align 8         ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 3 uses
  %i.l = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1560 = alloca [16 x i8], align 8         ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 3 uses
  %i.n = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.1543 = alloca [16 x i8], align 8         ; 5 uses
  %i.o = alloca [32 x i8], align 8                ; 3 uses
  %i.p = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.15 = alloca [16 x i8], align 8           ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 15 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 15 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 13 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 10 uses
  %i.ad = alloca [24 x i8], align 8               ; 15 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 10 uses
  %i.ag = alloca [24 x i8], align 8               ; 15 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 21 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 7 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 7 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8 ; 9 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 4 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8 ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -9223372036854775808
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store i8 12, ptr %0, align 8
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload) ]
  %i.aj = icmp ult i64 %.sroa.12.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.aj)
  %.val58 = load ptr, ptr %.0.val, align 8, !nonnull !53, !align !54, !noundef !53
  %i.ak = getelementptr i8, ptr %.0.val, i64 8
  %.val59 = load ptr, ptr %i.ak, align 8          ; 3 uses
  %i.al = load i64, ptr %.val58, align 8, !noalias !46761, !noundef !53
  %i.am = icmp eq i64 %.sroa.12.0.copyload, %i.al
  br i1 %i.am, label %bb.c, label %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val59) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.val59, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !46761, !noundef !53
  %.not.i = icmp eq i64 %.sroa.17.0.copyload, %i.ao
  br i1 %.not.i, label %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit", label %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread"

"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread": ; preds = %bb.c, %bb.b, %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit"
  store i8 12, ptr %0, align 8
  %cond = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %cond, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.ap = shl nuw i64 %.sroa.0.0.copyload, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46762
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit"

bb.e:                                             ; preds = %bb.cn, %.thread94
  %.pn.pn = phi { ptr, i32 } [ %.pn97, %.thread94 ], [ %i.ft, %bb.cn ]
  switch i64 %.sroa.0.0.copyload, label %bb.f [
    i64 -9223372036854775808, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit60"
    i64 0, label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit60"
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.aq = shl nuw i64 %.sroa.0.0.copyload, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !46763
  br label %"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit60"

"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit": ; preds = %bb.c
  %i.ar = load ptr, ptr %.val59, align 8, !noalias !46761, !nonnull !53, !align !59, !noundef !53
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.14.0.copyload, ptr nonnull %i.ar, i64 %.sroa.17.0.copyload)
  %i.as = icmp eq i32 %bcmp.i, 0
  br i1 %i.as, label %bb.g, label %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread"

bb.g:                                             ; preds = %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr null, ptr %i.ai, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 0, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @"_ZN88_$LT$smartstring..inline..InlineString$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hc409ab0473dd43fdE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2089, i64 noundef 4)
          to label %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit" unwind label %.body

"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$rhai..ast..script_fn..ScriptFnMetadata$GT$$GT$17h45d3f137e81e73c9E.exit": ; preds = %bb.cq, %bb.cp, %bb.cp, %bb.d, %.thread, %"_ZN4rhai8packages9lang_core20reflection_functions16get_fn_metadata228_$u7b$$u7b$closure$u7d$$u7d$17h5c58c6dbd59c20b6E.exit.thread"
  ret void

"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit": ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.au = load ptr, ptr %.8.val, align 8, !nonnull !53, !align !54, !noundef !53
  %i.av = invoke fastcc noundef nonnull ptr @_ZN4rhai6engine6Engine19get_interned_string17heaefd3ff7337519aE(ptr noundef nonnull align 8 %i.au, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.14.0.copyload, i64 noundef %.sroa.17.0.copyload)
          to label %bb.h unwind label %bb.cu

bb.h:                                             ; preds = %"_ZN91_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h921c26b7ed299d00E.exit"
  store i8 2, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 0, ptr %.sroa.514.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.av, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.experimental.noalias.scope.decl(metadata !46764)
  call void @llvm.experimental.noalias.scope.decl(metadata !46765)
  call void @llvm.experimental.noalias.scope.decl(metadata !46766)
  %i.aw = load ptr, ptr %i.ai, align 8, !alias.scope !46765, !noalias !46767, !noundef !53 ; 2 uses
  %.not.i142 = icmp eq ptr %i.aw, null
  br i1 %.not.i142, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46768
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !46765, !noalias !46767, !noundef !53
  invoke fastcc void @"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h9aedfd64e3253208E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.aw, i64 noundef %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.l unwind label %bb.p, !noalias !46769

bb.j:                                             ; preds = %bb.h
  %.sroa.7.8.copyload17 = load ptr, ptr %i.ag, align 8, !alias.scope !46770, !noalias !46767
  %.sroa.11.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.az = load <2 x i64>, ptr %.sroa.11.8..sroa_idx20, align 8, !alias.scope !46770, !noalias !46767
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"

bb.k:                                             ; preds = %bb.q, %bb.p
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46769
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.bb = load i64, ptr %i.e, align 8, !range !61, !noalias !46768, !noundef !53
  %i.bc = trunc nuw i64 %i.bb to i1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.1227.32.copyload = load ptr, ptr %i.bd, align 8, !noalias !46771 ; 3 uses
  br i1 %i.bc, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.1122.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.1122.8.copyload = load i64, ptr %.sroa.1122.8..sroa_idx, align 8, !noalias !46771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46768
  %i.be = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc146 unwind label %bb.r

.noexc146:                                        ; preds = %bb.m
  br i1 %i.be, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.noexc146
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %bb.t unwind label %bb.r

bb.o:                                             ; preds = %bb.l
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.32..sroa_idx, i64 16, i1 false), !noalias !46771
  %.sroa.7.8.copyload16 = load ptr, ptr %i.ag, align 8, !alias.scope !46770, !noalias !46767
  %.sroa.11.8..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bf = load <2 x i64>, ptr %.sroa.11.8..sroa_idx18, align 8, !alias.scope !46770, !noalias !46767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46768
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"

bb.p:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %.noexc17.i unwind label %bb.k, !noalias !46769

.noexc17.i:                                       ; preds = %bb.p
  br i1 %i.bh, label %.body148, label %bb.q

bb.q:                                             ; preds = %.noexc17.i
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body148 unwind label %bb.k, !noalias !46769

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit": ; preds = %bb.j, %bb.o
  %.sroa.1227.0 = phi ptr [ null, %bb.j ], [ %.sroa.1227.32.copyload, %bb.o ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.8.copyload17, %bb.j ], [ %.sroa.7.8.copyload16, %bb.o ]
  %i.bi = phi <2 x i64> [ %i.az, %bb.j ], [ %i.bf, %bb.o ]
  store ptr %i.ai, ptr %i.p, align 8, !noalias !46772
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !46772
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x i64> %i.bi, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !46772
  %.sroa.1227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.1227.0, ptr %.sroa.1227.0..sroa_idx, align 8, !noalias !46772
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15, i64 16, i1 false), !noalias !46772
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !46772
  invoke fastcc void @"_ZN5alloc11collections5btree3map5entry28VacantEntry$LT$K$C$V$C$A$GT$12insert_entry17h939de8bf816d7c30E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.af)
          to label %.thread112 unwind label %.body

.thread112:                                       ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h3b20e58b09d55f01E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !46772
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit"

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body148

.body148:                                         ; preds = %.noexc17.i, %bb.q, %bb.r
  %eh.lpad-body149 = phi { ptr, i32 } [ %i.bj, %bb.r ], [ %i.bg, %bb.q ], [ %i.bg, %.noexc17.i ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.af)
          to label %.thread94 unwind label %bb.s, !noalias !46773, !inline_history !71

bb.s:                                             ; preds = %.body148
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !46774
  unreachable

bb.t:                                             ; preds = %bb.n, %.noexc146
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1227.32.copyload) ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.1227.32.copyload, i64 %.sroa.1122.8.copyload ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !noalias !46775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !46776
  %.pr = load i8, ptr %i.ah, align 8, !alias.scope !46777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.bm = icmp eq i8 %.pr, 12
  br i1 %i.bm, label %"_ZN4core3ptr78drop_in_place$LT$core..option..Option$LT$rhai..types..dynamic..Dynamic$GT$$GT$17hdf0e05376a644c8bE.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
end_hunk_21
begin_hunk_22_@"_ZN57_$LT$rhai..module..Module$u20$as$u20$core..fmt..Debug$GT$3fmt17he6d73d56cf18962eE":bb.a
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [96 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2440, i64 noundef 6)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2441, i64 noundef 2, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.o = load ptr, ptr %i.n, align 8, !noundef !53 ; 4 uses
  %.not = icmp ne ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = load i64, ptr %i.p, align 8              ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50666)
  call void @llvm.experimental.noalias.scope.decl(metadata !50667)
  call void @llvm.experimental.noalias.scope.decl(metadata !50668)
  call void @llvm.experimental.noalias.scope.decl(metadata !50669)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !50670
  %i.t = icmp ne i64 %i.s, 0
  %.not230.a = select i1 %.not, i1 %i.t, i1 false
  br i1 %.not230.a, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.u = add i64 %i.s, -1                         ; 3 uses
  %i.v = icmp eq i64 %i.q, 0
  br i1 %i.v, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.b
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.012.015.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i.prol = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i.prol, i64 368
  %i.x = add i64 %.sroa.011.014.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.prol = load ptr, ptr %i.w, align 8, !noalias !50671, !nonnull !53, !noundef !53 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !50426

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i.unr = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.y = icmp ult i64 %i.q, 8
  br i1 %i.y, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.012.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.012.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.1 = load ptr, ptr %i.aa, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.1, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ab, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.2, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ac, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.3, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ad, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.4, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.5 = load ptr, ptr %i.ae, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.5, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i.6 = load ptr, ptr %i.af, align 8, !noalias !50671, !nonnull !53, !noundef !53
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i.6, i64 368
  %i.ah = add i64 %.sroa.011.014.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ag, align 8, !noalias !50671, !nonnull !53, !noundef !53 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.05.0.copyload.i.i.i.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %.sroa.012.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i, i64 362
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !50672, !noundef !53
  %.not231 = icmp eq i16 %i.ak, 0
  br i1 %.not231, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", %bb.c
  %.sroa.0.038.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.c ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i = phi i64 [ %i.am, %bb.c ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, align 8, !noalias !50673, !noundef !53 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.am = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i, i64 360
  %i.ao = load i16, ptr %i.an, align 8, !noalias !50673 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 362
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !50672, !noundef !53
  %i.ar = icmp ult i16 %i.ao, %i.aq
  br i1 %i.ar, label %bb.d, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.as = zext i16 %i.ao to i64                   ; 4 uses
  %i.at = icmp eq i64 %i.am, 0
  %i.au = add nuw nsw i64 %i.as, 1                ; 2 uses
  br i1 %i.at, label %.loopexit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  %i.aw = icmp ult i16 %i.ao, 11
  call void @llvm.assume(i1 %i.aw), !noalias !50669
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %xtraiter418 = and i64 %i.am, 7                 ; 2 uses
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.e, %.prol.preheader
  %.pn30.in.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.prol.preheader ], [ %i.ax, %bb.e ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.am, %bb.e ]
  %prol.iter420 = phi i64 [ %prol.iter420.next, %.prol.preheader ], [ 0, %bb.e ]
  %.pn28.i.i.i.i.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !50674, !nonnull !53, !noundef !53 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter420.next = add i64 %prol.iter420, 1   ; 2 uses
  %prol.iter420.cmp.not = icmp eq i64 %prol.iter420.next, %xtraiter418
  br i1 %prol.iter420.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !50440

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.e
  %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.e ], [ %.pn30.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ax, %bb.e ], [ %i.ay, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.am, %bb.e ], [ %.pn28.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.az = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.az, label %.loopexit.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bi, %.new ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ba, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bb, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bc, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bd, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.be = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.be, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bf, align 8, !noalias !50674, !nonnull !53, !noundef !53
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bg, align 8, !noalias !50674, !nonnull !53, !noundef !53 ; 2 uses
  %i.bh = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.7, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.7, i64 368
  br i1 %i.bh, label %.loopexit.i.i.i.i.i, label %.new

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #70
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.g, !noalias !50675

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !50669
  unreachable

.loopexit.i.i.i.i.i:                              ; preds = %.prol.loopexit, %.new, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i", %bb.d
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i222 = phi ptr [ %i.al, %bb.d ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %i.al, %.new ], [ %i.al, %.prol.loopexit ]
  %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i221 = phi i64 [ %i.as, %bb.d ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %i.as, %.new ], [ %i.as, %.prol.loopexit ] ; 2 uses
  %.sroa.17.0.copyload.i.i.i.i = phi i64 [ %i.au, %bb.d ], [ 1, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ 0, %.new ], [ 0, %.prol.loopexit ] ; 3 uses
  %.sroa.7.0.copyload.i.i.i.i = phi ptr [ %i.al, %bb.d ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i" ], [ %.pn30.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.i.i.i.i.7, %.new ] ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i.i.i222, i64 8
  %i.bl = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i221, 11
  call void @llvm.assume(i1 %i.bl), !noalias !50669
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %.sroa.6.sroa.4.0.ph.i.i.i.i.i.i.i.i221 ; 4 uses
  %i.bn = call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !noalias !50676
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.bo = call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm), !noalias !50676 ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bo, 0
  %i.bq = extractvalue { ptr, i64 } %i.bo, 1
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.br = load ptr, ptr %i.bm, align 8, !alias.scope !50677, !noalias !50678, !nonnull !53, !noundef !53
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !50677, !noalias !50678, !noundef !53
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.merged.i.i.i.i.i.i.i = phi i64 [ %i.bq, %bb.h ], [ %i.bt, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.i.i.i) ], !noalias !50669
  %i.bu = call i64 @llvm.uadd.sat.i64(i64 %i.u, i64 1) ; 2 uses
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 4) ; 3 uses
  %i.bv = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 4 uses
  %i.bw = icmp ugt i64 %i.bu, 1152921504606846975
  %i.bx = icmp ugt i64 %i.bv, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bw, %i.bx
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !50679
  %i.by = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bv, i64 noundef range(i64 1, 9) 8) #71, !noalias !50679 ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"

bb.k:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.j
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %bb.j ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @414) #70, !noalias !50670
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.by, align 8, !noalias !50670
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %.merged.i.i.i.i.i.i.i, ptr %i.ca, align 8, !noalias !50670
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !50670
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !50670
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !50670
  call void @llvm.experimental.noalias.scope.decl(metadata !50680)
  call void @llvm.experimental.noalias.scope.decl(metadata !50681)
  %i.cb = icmp eq i64 %i.u, 0
  br i1 %i.cb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload.i.i.i.i, i64 362
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !50682, !noundef !53
  %i.ce = zext i16 %i.cd to i64
  %i.cf = icmp samesign ult i64 %.sroa.17.0.copyload.i.i.i.i, %i.ce
  br i1 %i.cf, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i27.i.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i"
  %i.cg = add nuw nsw i64 %.sroa.17.0.copyload.i.i.i.i, 1
  br label %.loopexit.i.i39.i.i.i.i

.lr.ph.i.i.i.i.i.i27.i.i.i.i:                     ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i", %bb.l
  %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i = phi ptr [ %i.ch, %bb.l ], [ %.sroa.7.0.copyload.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i = phi i64 [ %i.ci, %bb.l ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i22.i.i.i.i" ] ; 2 uses
  %i.ch = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i, align 8, !noalias !50683, !noundef !53 ; 8 uses
  %.not.i.i.i.i.i.i.i30.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i30.i.i.i.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i.i27.i.i.i.i
  %i.ci = add i64 %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i, 1 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i28.i.i.i.i, i64 360
  %i.ck = load i16, ptr %i.cj, align 8, !noalias !50683 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 362
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !50682, !noundef !53
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
  %.pn30.i.i.i.i.i.i38.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i35.i.i.i.i.prol, align 8, !noalias !50684, !nonnull !53, !noundef !53 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter427.next = add i64 %prol.iter427, 1   ; 2 uses
  %prol.iter427.cmp.not = icmp eq i64 %prol.iter427.next, %xtraiter425
  br i1 %prol.iter427.cmp.not, label %.prol.loopexit422, label %.prol.preheader421, !llvm.loop !50472

.prol.loopexit422:                                ; preds = %.prol.preheader421, %bb.n
  %.pn30.i.i.i.i.i.i38.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.n ], [ %.pn30.i.i.i.i.i.i38.i.i.i.i.prol, %.prol.preheader421 ]
  %.pn30.in.i.i.i.i.i.i35.i.i.i.i.unr = phi ptr [ %i.ct, %bb.n ], [ %i.cu, %.prol.preheader421 ]
  %.pn28.in.i.i.i.i.i.i36.i.i.i.i.unr = phi i64 [ %i.ci, %bb.n ], [ %.pn28.i.i.i.i.i.i37.i.i.i.i.prol, %.prol.preheader421 ]
  %i.cv = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i29.i.i.i.i, 7
  br i1 %i.cv, label %.loopexit.i.i39.i.i.i.i, label %.new423

.new423:                                          ; preds = %.prol.loopexit422, %.new423
  %.pn30.in.i.i.i.i.i.i35.i.i.i.i = phi ptr [ %i.de, %.new423 ], [ %.pn30.in.i.i.i.i.i.i35.i.i.i.i.unr, %.prol.loopexit422 ]
  %.pn28.in.i.i.i.i.i.i36.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i37.i.i.i.i.7, %.new423 ], [ %.pn28.in.i.i.i.i.i.i36.i.i.i.i.unr, %.prol.loopexit422 ]
  %.pn30.i.i.i.i.i.i38.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i35.i.i.i.i, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.cw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.1 = load ptr, ptr %i.cw, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.cx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.2 = load ptr, ptr %i.cx, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.3 = load ptr, ptr %i.cy, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.cz = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.4 = load ptr, ptr %i.cz, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.da = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.5 = load ptr, ptr %i.da, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.db = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i38.i.i.i.i.6 = load ptr, ptr %i.db, align 8, !noalias !50684, !nonnull !53, !noundef !53
  %i.dc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i37.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i36.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i38.i.i.i.i.7 = load ptr, ptr %i.dc, align 8, !noalias !50684, !nonnull !53, !noundef !53 ; 2 uses
  %i.dd = icmp eq i64 %.pn28.i.i.i.i.i.i37.i.i.i.i.7, 0
  %i.de = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i38.i.i.i.i.7, i64 368
  br i1 %i.dd, label %.loopexit.i.i39.i.i.i.i, label %.new423

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i27.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #70
          to label %.noexc.i.i.i.i47.i.i.i.i unwind label %bb.p, !noalias !50685

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
          to label %.noexc56.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i, !noalias !50670

.noexc56.i.i.i.i:                                 ; preds = %.loopexit.i.i39.i.i.i.i
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc56.i.i.i.i
  %i.dk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di)
          to label %.noexc57.i.i.i.i unwind label %.loopexit.split-lp.thread.i.i.i.i, !noalias !50670 ; 2 uses

.noexc57.i.i.i.i:                                 ; preds = %bb.q
  %i.dl = extractvalue { ptr, i64 } %i.dk, 0
  %i.dm = extractvalue { ptr, i64 } %i.dk, 1
  br label %.lr.ph.i.i.i.i.i.i.preheader

bb.r:                                             ; preds = %.noexc56.i.i.i.i
  %i.dn = load ptr, ptr %i.di, align 8, !alias.scope !50686, !noalias !50687, !nonnull !53, !noundef !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !50686, !noalias !50687, !noundef !53
  br label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.r, %.noexc57.i.i.i.i
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i.ph.a = phi ptr [ %i.dl, %.noexc57.i.i.i.i ], [ %i.dn, %bb.r ]
  %.pn.i.i.i.i.i.i.ph = phi i64 [ %i.dm, %.noexc57.i.i.i.i ], [ %i.dp, %bb.r ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.backedge, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i.a = phi ptr [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i.ph.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.0.0.i.i.i.i.sink.i.i.i.i.be.a, %.lr.ph.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.dq = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.backedge ]
  %.sroa.7.1.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i41.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ] ; 5 uses
  %.sroa.17.1.i.i.i.i = phi i64 [ %.sroa.7.0.i.i.i.i.i40.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.7.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.235.1.in.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.sroa.235.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.backedge ]
  %i.dr = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.backedge ] ; 3 uses
  %i.ds = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.backedge ] ; 4 uses
  %.pn.i.i.i.i.i.i = phi i64 [ %.pn.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.pn.i.i.i.i.i.i.be, %.lr.ph.i.i.i.i.i.i.backedge ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i.a) ]
  %.sroa.235.1.i.i.i.i = add i64 %.sroa.235.1.in.i.i.i.i, -1 ; 3 uses
  %i.dt = icmp samesign ult i64 %i.ds, 576460752303423488
  call void @llvm.assume(i1 %i.dt)
  %i.du = icmp eq i64 %i.ds, %i.dr
  br i1 %i.du, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i", label %bb.s

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dv = call i64 @llvm.uadd.sat.i64(i64 %.sroa.235.1.i.i.i.i, i64 1)
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h25b6962618db29e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.dr, i64 noundef %i.dv, i64 noundef 8, i64 noundef 16)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !50670

.noexc9.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i"
  %.pre2.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !range !63, !alias.scope !50688, !noalias !50670
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !50688, !noalias !50670
  br label %bb.s

bb.s:                                             ; preds = %.noexc9.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dw = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %.noexc9.i.i.i.i ] ; 2 uses
  %i.dx = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %.noexc9.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ds ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.sink.i.i.i.i.a, ptr %i.dy, align 8, !noalias !50689
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 %.pn.i.i.i.i.i.i, ptr %i.dz, align 8, !noalias !50689
  %i.ea = add nuw nsw i64 %i.ds, 1                ; 2 uses
  store i64 %i.ea, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !50688, !noalias !50670
  %i.eb = icmp eq i64 %.sroa.235.1.i.i.i.i, 0
  br i1 %i.eb, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i", label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i"

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i": ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i) ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.7.1.i.i.i.i, i64 362
  %i.ed = load i16, ptr %i.ec, align 2, !noalias !50690, !noundef !53
  %i.ee = zext i16 %i.ed to i64
  %i.ef = icmp ult i64 %.sroa.17.1.i.i.i.i, %i.ee
  br i1 %i.ef, label %.thread.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i"
  %i.eg = add nuw nsw i64 %.sroa.17.1.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i", %bb.t
  %.sroa.0.038.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eh, %bb.t ], [ %.sroa.7.1.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ei, %bb.t ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h867c7b97b9d5fddeE.exit.i.i.i.i.i.i.i" ] ; 2 uses
  %i.eh = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !50691, !noundef !53 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ei = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i.i, i64 360
  %i.ek = load i16, ptr %i.ej, align 8, !noalias !50691 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 362
  %i.em = load i16, ptr %i.el, align 2, !noalias !50690, !noundef !53
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
  %.pn30.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !50692, !nonnull !53, !noundef !53 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.prol, i64 368 ; 2 uses
  %prol.iter434.next = add i64 %prol.iter434, 1   ; 2 uses
  %prol.iter434.cmp.not = icmp eq i64 %prol.iter434.next, %xtraiter432
  br i1 %prol.iter434.cmp.not, label %.prol.loopexit429, label %.prol.preheader428, !llvm.loop !50497

.prol.loopexit429:                                ; preds = %.prol.preheader428, %bb.v
  %.pn30.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.v ], [ %.pn30.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader428 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.et, %bb.v ], [ %i.eu, %.prol.preheader428 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.ei, %bb.v ], [ %.pn28.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader428 ]
  %i.ev = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ev, label %.loopexit.i.i.i.i.i.i, label %.new430

.new430:                                          ; preds = %.prol.loopexit429, %.new430
  %.pn30.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %.new430 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit429 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i.i.7, %.new430 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit429 ]
  %.pn30.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ew, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ex, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.2, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ey, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.ez = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.3, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.ez, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.fa = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.4, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fa, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.5, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fb, align 8, !noalias !50692, !nonnull !53, !noundef !53
  %i.fc = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.6, i64 368
  %.pn28.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fc, align 8, !noalias !50692, !nonnull !53, !noundef !53 ; 2 uses
  %i.fd = icmp eq i64 %.pn28.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.fe = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i.i.7, i64 368
  br i1 %i.fd, label %.loopexit.i.i.i.i.i.i, label %.new430

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2615) #70
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !50693

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
          to label %.noexc14.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !50670

.noexc14.i.i.i.i:                                 ; preds = %.loopexit.i.i.i.i.i.i
  br i1 %i.fj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc14.i.i.i.i
  %i.fk = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi)
          to label %.noexc15.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !50670 ; 2 uses

.noexc15.i.i.i.i:                                 ; preds = %bb.y
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0
  %i.fm = extractvalue { ptr, i64 } %i.fk, 1
  br label %.lr.ph.i.i.i.i.i.i.backedge

bb.z:                                             ; preds = %.noexc14.i.i.i.i
  %i.fn = load ptr, ptr %i.fi, align 8, !alias.scope !50694, !noalias !50695, !nonnull !53, !noundef !53
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !50694, !noalias !50695, !noundef !53
  br label %.lr.ph.i.i.i.i.i.i.backedge

.lr.ph.i.i.i.i.i.i.backedge:                      ; preds = %bb.z, %.noexc15.i.i.i.i
  %.sroa.0.0.i.i.i.i.sink.i.i.i.i.be.a = phi ptr [ %i.fl, %.noexc15.i.i.i.i ], [ %i.fn, %bb.z ]
  %.pn.i.i.i.i.i.i.be = phi i64 [ %i.fm, %.noexc15.i.i.i.i ], [ %i.fp, %bb.z ]
  br label %.lr.ph.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.a
  store i64 0, ptr %i.j, align 8, !alias.scope !50696
  %i.fq = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.fq, align 8, !alias.scope !50696
  %i.fr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.fr, align 8, !alias.scope !50696
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit

.loopexit.split-lp.thread.i.i.i.i:                ; preds = %bb.q, %.loopexit.i.i39.i.i.i.i
  %lpad.loopexit.split-lp35.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.y, %.loopexit.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb2c74c5dfcae70e9E.exit.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.pre.i.i.i.i = load i64, ptr %i.g, align 8, !range !63, !alias.scope !50697, !noalias !50670 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50697)
  %i.fs = icmp eq i64 %.val.i.pre.i.i.i.i, 0
  br i1 %i.fs, label %common.resume, label %.loopexit.split-lp.i._crit_edge.i.i.i

.loopexit.split-lp.i._crit_edge.i.i.i:            ; preds = %.loopexit.split-lp.i.i.i.i
  %.val1.i.i.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !50697, !noalias !50670
  %.pre.i.i.i = shl nuw i64 %.val.i.pre.i.i.i.i, 4
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.i._crit_edge.i.i.i, %.loopexit.split-lp.thread.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %i.bv, %.loopexit.split-lp.thread.i.i.i.i ]
  %.val1.i.i.i.i.i = phi ptr [ %.val1.i.i.pre.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %i.by, %.loopexit.split-lp.thread.i.i.i.i ]
  %lpad.phi54.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i._crit_edge.i.i.i ], [ %lpad.loopexit.split-lp35.i.i.i.i, %.loopexit.split-lp.thread.i.i.i.i ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.pre-phi.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !50698
  br label %common.resume

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i": ; preds = %bb.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hd84698b22ed413ffE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !50699
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit

common.resume:                                    ; preds = %.body, %bb.ac, %.loopexit.split-lp.i.i.i.i, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %lpad.phi54.i.i.i.i, %bb.ab ], [ %.pn88, %bb.ac ], [ %.pn88, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit: ; preds = %bb.aa, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h87fb45964da21e3aE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !50670
  %i.ft = invoke noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders11DebugStruct5field17h8524cd7e0e847b26E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2443, i64 noundef 12, ptr noundef nonnull align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2442)
          to label %bb.ae unwind label %bb.ad

.body:                                            ; preds = %bb.bh, %.body193, %.loopexit.split-lp.i.i.i.i154, %bb.bf, %bb.ad
  %.pn88 = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i155, %.loopexit.split-lp.i.i.i.i154 ], [ %i.fx, %bb.ad ], [ %lpad.phi54.i.i.i.i130, %bb.bf ], [ %.pn, %.body193 ], [ %.pn, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50700)
  %.val.i = load i64, ptr %i.j, align 8, !range !63, !alias.scope !50700, !noundef !53 ; 2 uses
  %i.fu = icmp eq i64 %.val.i, 0
  br i1 %i.fu, label %common.resume, label %bb.ac

bb.ac:                                            ; preds = %.body
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val1.i = load ptr, ptr %i.fv, align 8, !alias.scope !50700, !nonnull !53, !noundef !53
  %i.fw = shl nuw i64 %.val.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.fw, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !50700
  br label %common.resume

bb.ad:                                            ; preds = %bb.ao, %bb.al, %.loopexit.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h28aa6edbdf19db1dE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fz = load ptr, ptr %i.fy, align 8, !noundef !53 ; 4 uses
  %.not85 = icmp ne ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.gb = load i64, ptr %i.ga, align 8            ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gd = load i64, ptr %i.gc, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50701)
  call void @llvm.experimental.noalias.scope.decl(metadata !50702)
  call void @llvm.experimental.noalias.scope.decl(metadata !50703)
  call void @llvm.experimental.noalias.scope.decl(metadata !50704)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50705
  %i.ge = icmp ne i64 %i.gd, 0
  %.not233.a = select i1 %.not85, i1 %i.ge, i1 false
  br i1 %.not233.a, label %bb.af, label %bb.be

bb.af:                                            ; preds = %bb.ae
  %i.gf = add i64 %i.gd, -1                       ; 3 uses
  %i.gg = icmp eq i64 %i.gb, 0
  br i1 %i.gg, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i174.preheader

.lr.ph.i.i.i.i.i.i.i174.preheader:                ; preds = %bb.af
  %xtraiter435 = and i64 %i.gb, 7                 ; 2 uses
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i174.prol

.lr.ph.i.i.i.i.i.i.i174.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i174.preheader, %.lr.ph.i.i.i.i.i.i.i174.prol
  %.sroa.012.015.i.i.i.i.i.i.i175.prol = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i177.prol, %.lr.ph.i.i.i.i.i.i.i174.prol ], [ %i.fz, %.lr.ph.i.i.i.i.i.i.i174.preheader ]
  %.sroa.011.014.i.i.i.i.i.i.i176.prol = phi i64 [ %i.gi, %.lr.ph.i.i.i.i.i.i.i174.prol ], [ %i.gb, %.lr.ph.i.i.i.i.i.i.i174.preheader ]
  %prol.iter437 = phi i64 [ %prol.iter437.next, %.lr.ph.i.i.i.i.i.i.i174.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i174.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i175.prol, i64 368
  %i.gi = add i64 %.sroa.011.014.i.i.i.i.i.i.i176.prol, -1 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i177.prol = load ptr, ptr %i.gh, align 8, !noalias !50706, !nonnull !53, !noundef !53 ; 3 uses
  %prol.iter437.next = add i64 %prol.iter437, 1   ; 2 uses
  %prol.iter437.cmp.not = icmp eq i64 %prol.iter437.next, %xtraiter435
  br i1 %prol.iter437.cmp.not, label %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i174.prol, !llvm.loop !50524

.lr.ph.i.i.i.i.i.i.i174.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i174.prol, %.lr.ph.i.i.i.i.i.i.i174.preheader
  %.sroa.012.0.i.i.i.i.i.i.i177.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i177.prol, %.lr.ph.i.i.i.i.i.i.i174.prol ]
  %.sroa.012.015.i.i.i.i.i.i.i175.unr = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %.sroa.012.0.i.i.i.i.i.i.i177.prol, %.lr.ph.i.i.i.i.i.i.i174.prol ]
  %.sroa.011.014.i.i.i.i.i.i.i176.unr = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i.i.i174.preheader ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i174.prol ]
  %i.gj = icmp ult i64 %i.gb, 8
  br i1 %i.gj, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i174

.lr.ph.i.i.i.i.i.i.i174:                          ; preds = %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i174
  %.sroa.012.015.i.i.i.i.i.i.i175 = phi ptr [ %.sroa.012.0.i.i.i.i.i.i.i177.7, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.sroa.012.015.i.i.i.i.i.i.i175.unr, %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit ]
  %.sroa.011.014.i.i.i.i.i.i.i176 = phi i64 [ %i.gs, %.lr.ph.i.i.i.i.i.i.i174 ], [ %.sroa.011.014.i.i.i.i.i.i.i176.unr, %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.i.i.i.i.i175, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177 = load ptr, ptr %i.gk, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.1 = load ptr, ptr %i.gl, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.1, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.2 = load ptr, ptr %i.gm, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.2, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.3 = load ptr, ptr %i.gn, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.3, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.4 = load ptr, ptr %i.go, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.4, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.5 = load ptr, ptr %i.gp, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.5, i64 368
  %.sroa.012.0.i.i.i.i.i.i.i177.6 = load ptr, ptr %i.gq, align 8, !noalias !50706, !nonnull !53, !noundef !53
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i.i.i.i177.6, i64 368
  %i.gs = add i64 %.sroa.011.014.i.i.i.i.i.i.i176, -8 ; 2 uses
  %.sroa.012.0.i.i.i.i.i.i.i177.7 = load ptr, ptr %i.gr, align 8, !noalias !50706, !nonnull !53, !noundef !53 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i174

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i174, %bb.af
  %.sroa.05.0.copyload.i.i.i.i.i.i.i103 = phi ptr [ %i.fz, %bb.af ], [ %.sroa.012.0.i.i.i.i.i.i.i177.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i174.prol.loopexit ], [ %.sroa.012.0.i.i.i.i.i.i.i177.7, %.lr.ph.i.i.i.i.i.i.i174 ] ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i.i.i.i.i.i103, i64 362
  %i.gv = load i16, ptr %i.gu, align 2, !noalias !50707, !noundef !53
  %.not234 = icmp eq i16 %i.gv, 0
  br i1 %.not234, label %.lr.ph.i.i.i.i.i.i.i.i.i104, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i104:                      ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i", %bb.ag
  %.sroa.0.038.i.i.i.i.i.i.i.i.i105 = phi ptr [ %i.gw, %bb.ag ], [ %.sroa.05.0.copyload.i.i.i.i.i.i.i103, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i.i.i.i.i.i106 = phi i64 [ %i.gx, %bb.ag ], [ 0, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h88b82f522d9a3a18E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.gw = load ptr, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i105, align 8, !noalias !50708, !noundef !53 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i107 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i107, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i104
  %i.gx = add i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i106, 1 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i.i.i.i.i.i105, i64 360
  %i.gz = load i16, ptr %i.gy, align 8, !noalias !50708 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 362
  %i.hb = load i16, ptr %i.ha, align 2, !noalias !50707, !noundef !53
  %i.hc = icmp ult i16 %i.gz, %i.hb
  br i1 %i.hc, label %bb.ah, label %.lr.ph.i.i.i.i.i.i.i.i.i104

bb.ah:                                            ; preds = %bb.ag
  %i.hd = zext i16 %i.gz to i64                   ; 4 uses
  %i.he = icmp eq i64 %i.gx, 0
  %i.hf = add nuw nsw i64 %i.hd, 1                ; 2 uses
  br i1 %i.he, label %.loopexit.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 368
  %i.hh = icmp ult i16 %i.gz, 11
  call void @llvm.assume(i1 %i.hh), !noalias !50704
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.hf ; 2 uses
  %xtraiter442 = and i64 %i.gx, 7                 ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.prol.loopexit439, label %.prol.preheader438

.prol.preheader438:                               ; preds = %bb.ai, %.prol.preheader438
  %.pn30.in.i.i.i.i.i.i.i.i.i112.prol = phi ptr [ %i.hj, %.prol.preheader438 ], [ %i.hi, %bb.ai ]
  %.pn28.in.i.i.i.i.i.i.i.i.i113.prol = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i114.prol, %.prol.preheader438 ], [ %i.gx, %bb.ai ]
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.prol.preheader438 ], [ 0, %bb.ai ]
  %.pn28.i.i.i.i.i.i.i.i.i114.prol = add i64 %.pn28.in.i.i.i.i.i.i.i.i.i113.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.i.i.i.i115.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i112.prol, align 8, !noalias !50709, !nonnull !53, !noundef !53 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i115.prol, i64 368 ; 2 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.prol.loopexit439, label %.prol.preheader438, !llvm.loop !50538

.prol.loopexit439:                                ; preds = %.prol.preheader438, %bb.ai
  %.pn30.i.i.i.i.i.i.i.i.i115.lcssa.unr = phi ptr [ poison, %bb.ai ], [ %.pn30.i.i.i.i.i.i.i.i.i115.prol, %.prol.preheader438 ]
  %.pn30.in.i.i.i.i.i.i.i.i.i112.unr = phi ptr [ %i.hi, %bb.ai ], [ %i.hj, %.prol.preheader438 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i113.unr = phi i64 [ %i.gx, %bb.ai ], [ %.pn28.i.i.i.i.i.i.i.i.i114.prol, %.prol.preheader438 ]
  %i.hk = icmp ult i64 %.sroa.5.037.i.i.i.i.i.i.i.i.i106, 7
  br i1 %i.hk, label %.loopexit.i.i.i.i, label %.new440

.new440:                                          ; preds = %.prol.loopexit439, %.new440
  %.pn30.in.i.i.i.i.i.i.i.i.i112 = phi ptr [ %i.ht, %.new440 ], [ %.pn30.in.i.i.i.i.i.i.i.i.i112.unr, %.prol.loopexit439 ]
  %.pn28.in.i.i.i.i.i.i.i.i.i113 = phi i64 [ %.pn28.i.i.i.i.i.i.i.i.i114.7, %.new440 ], [ %.pn28.in.i.i.i.i.i.i.i.i.i113.unr, %.prol.loopexit439 ]
  %.pn30.i.i.i.i.i.i.i.i.i115 = load ptr, ptr %.pn30.in.i.i.i.i.i.i.i.i.i112, align 8, !noalias !50709, !nonnull !53, !noundef !53
  %i.hl = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i115, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i115.1 = load ptr, ptr %i.hl, align 8, !noalias !50709, !nonnull !53, !noundef !53
  %i.hm = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.i.i.i.i115.1, i64 368
  %.pn30.i.i.i.i.i.i.i.i.i115.2 = load ptr, ptr %i.hm, align 8, !noalias !50709, !nonnull !53, !noundef !53
end_hunk_22
begin_hunk_23_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h173abffcc460e0b1E":bb.a
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !51996, !nonnull !53, !noundef !53
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bh = add nsw i64 %.sroa.4.0.i.ph.i.i, -7
  br label %bb.p

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sroa.10.0.i.i.i = phi i64 [ %.sroa.4.0.i.ph.i.i, %bb.o ], [ %.sroa.9.1.i.i.i, %bb.p ] ; 6 uses
  %.sroa.021.0.i.i.i = phi ptr [ %i.be, %bb.o ], [ %i.bg, %bb.p ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 362 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !noalias !52003, !noundef !53 ; 2 uses
  %i.bk = zext i16 %i.bj to i64                   ; 2 uses
  %.not.i40.not.i.i.i = icmp ult i64 %.sroa.10.0.i.i.i, %i.bk
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.0.i.i.i, i64 %.sroa.10.0.i.i.i ; 3 uses
  br i1 %.not.i40.not.i.i.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bm = add nuw nsw i64 %.sroa.10.0.i.i.i, 1    ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.0.i.i.i, i64 %i.bm
  %i.bo = sub nuw nsw i64 %i.bk, %.sroa.10.0.i.i.i
  %i.bp = shl nuw nsw i64 %i.bo, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull align 8 %i.bl, i64 %i.bp, i1 false), !alias.scope !52004, !noalias !52003
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 176 ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.10.0.i.i.i
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.bm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.br, i64 %i.bp, i1 false), !alias.scope !52005, !noalias !52003
  br label %bb.w

bb.t:                                             ; preds = %bb.v
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !52002
  unreachable

.thread.i.i:                                      ; preds = %bb.j, %bb.k
  store ptr %.val.i, ptr %i.aw, align 8, !noalias !51998
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %i.m, ptr %i.bu, align 8, !noalias !51998
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.bw = add nuw nsw i16 %i.o, 1
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %.sroa.4.0.i.ph.i.i ; 2 uses
  store ptr %2, ptr %i.bx, align 8, !alias.scope !52001, !noalias !52000
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %3, ptr %i.by, align 8, !alias.scope !52001, !noalias !52000
  store i16 %i.bw, ptr %i.ak, align 2, !noalias !52006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51995
  br label %bb.y

bb.u:                                             ; preds = %bb.n, %bb.m, %.invoke.i.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !52007
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.v, label %.body

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb2a4c9a124f53af7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %.body unwind label %bb.t, !noalias !52002

bb.w:                                             ; preds = %bb.r, %bb.s
  store ptr %.val.i, ptr %i.bl, align 8, !noalias !51998
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.m, ptr %i.cc, align 8, !noalias !51998
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.021.0.i.i.i, i64 176
  %i.ce = add i16 %i.bj, 1
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.10.0.i.i.i ; 2 uses
  store ptr %2, ptr %i.cf, align 8, !alias.scope !52005, !noalias !52003
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %3, ptr %i.cg, align 8, !alias.scope !52005, !noalias !52003
  store i16 %i.ce, ptr %i.bi, align 2, !noalias !52008
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8, !noalias !52009 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !52009
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !52009 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !52009 ; 2 uses
  %.sroa.91.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91.0..sroa_idx.i.i, i64 16, i1 false), !noalias !52009
  %.sroa.91.sroa.5.0..sroa.91.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.91.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.91.sroa.5.0..sroa.91.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52009 ; 2 uses
  %.sroa.91.sroa.6.0..sroa.91.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.91.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.91.sroa.6.0..sroa.91.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52009 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !51996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !51995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !51995
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.91.sroa.0.i.i, i64 16, i1 false), !noalias !51995
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91.sroa.0.i.i)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 352
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !52010, !noundef !53 ; 2 uses
  %.not.i123.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i123.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.713.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.919.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.1022.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.1022.sroa.6.0..sroa.1022.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %.sroa.1022.sroa.7.0..sroa.1022.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  br label %bb.af

bb.y:                                             ; preds = %bb.w, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.91.sroa.0.i.i)
  br label %bb.be

._crit_edge.i.i:                                  ; preds = %bb.bc, %bb.x
  %.sroa.36.0.i.i = phi ptr [ %.sroa.91.sroa.6.0.copyload.i.i, %bb.x ], [ %.sroa.1022.sroa.7.0.i.i, %bb.bc ] ; 2 uses
  %.sroa.35.0.i.i = phi ptr [ %.sroa.91.sroa.5.0.copyload.i.i, %bb.x ], [ %.sroa.1022.sroa.6.0.i.i, %bb.bc ] ; 3 uses
  %.sroa.919.054118.lcssa.i.i = phi i64 [ %.sroa.8.0.copyload.i.i, %bb.x ], [ %.sroa.919.054.i.i, %bb.bc ]
  %.sroa.816.053113.lcssa.i.i = phi ptr [ %.sroa.7.0.copyload.i.i, %bb.x ], [ %.sroa.816.053.i.i, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52011)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !52012
  %i.cn = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 464, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !52012 ; 11 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.z, label %bb.ab, !prof !64

bb.z:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 464) #70
          to label %.noexc.i.i.i.i unwind label %bb.aa, !noalias !52012

.noexc.i.i.i.i:                                   ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %._crit_edge.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  store ptr null, ptr %i.cq, align 8, !noalias !52012
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 362 ; 2 uses
  store i16 0, ptr %i.cr, align 2, !noalias !52012
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 368
  store ptr %i.i, ptr %i.cs, align 8, !noalias !52012
  %i.ct = add i64 %i.k, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  store ptr %i.cn, ptr %i.cu, align 8, !noalias !52013
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  store i16 0, ptr %i.cv, align 8, !noalias !52014
  store ptr %i.cn, ptr %0, align 8, !alias.scope !52011, !noalias !52015
  store i64 %i.ct, ptr %i.j, align 8, !alias.scope !52011, !noalias !52015
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !52016
  store ptr %.sroa.35.0.i.i, ptr %i.d, align 8, !noalias !52017
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.36.0.i.i, ptr %i.cw, align 8, !noalias !52017
  %i.cx = icmp eq i64 %.sroa.919.054118.lcssa.i.i, %i.k
  br i1 %i.cx, label %bb.bd, label %.invoke.i.i.i.i, !prof !72

.invoke.i.i.i.i:                                  ; preds = %bb.ab
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2586, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2587) #70
          to label %.cont.i.i.i.i unwind label %bb.ac, !noalias !52018

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.ac:                                            ; preds = %.invoke.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = atomicrmw add ptr %.sroa.35.0.i.i, i64 -1 release, align 8, !noalias !52019
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ad, label %.body

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb2a4c9a124f53af7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.d)
          to label %.body unwind label %bb.ae, !noalias !52018

bb.ae:                                            ; preds = %bb.ad
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !52018
  unreachable

bb.af:                                            ; preds = %bb.bc, %.lr.ph.i.i
  %.sroa.36.1.i.i = phi ptr [ %.sroa.91.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1022.sroa.7.0.i.i, %bb.bc ] ; 8 uses
  %.sroa.35.1.i.i = phi ptr [ %.sroa.91.sroa.5.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.1022.sroa.6.0.i.i, %bb.bc ] ; 9 uses
  %i.dc = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %i.kx, %bb.bc ] ; 14 uses
  %i.dd = phi ptr [ %.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.011.051.i.i, %bb.bc ]
  %i.de = phi i64 [ %.sroa.6.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.713.052.i.i, %bb.bc ] ; 2 uses
  %i.df = phi ptr [ %.sroa.7.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.816.053.i.i, %bb.bc ] ; 3 uses
  %i.dg = phi i64 [ %.sroa.8.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.919.054.i.i, %bb.bc ]
  %i.dh = add i64 %i.de, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 360
  %i.dj = load i16, ptr %i.di, align 8, !noalias !52010 ; 5 uses
  %i.dk = zext i16 %i.dj to i64                   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1022.sroa.0.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.35.1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.36.1.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51995
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !51995
  store ptr %.sroa.35.1.i.i, ptr %i.c, align 8, !noalias !52020
  store ptr %.sroa.36.1.i.i, ptr %i.cj, align 8, !noalias !52020
  %i.dl = icmp eq i64 %i.dg, %i.de
  br i1 %i.dl, label %bb.ah, label %bb.ag, !prof !72

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2598, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2599) #70
          to label %bb.ai unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52021

bb.ah:                                            ; preds = %bb.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 362
  %i.dn = load i16, ptr %i.dm, align 2, !noalias !52021, !noundef !53 ; 4 uses
  %i.do = icmp ult i16 %i.dn, 11
  br i1 %i.do, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dp = icmp ult i16 %i.dj, 5
  store ptr %i.dc, ptr %i.b, align 8, !noalias !52020
  store i64 %i.dh, ptr %i.ck, align 8, !noalias !52020
  br i1 %i.dp, label %.invoke.i23.i.i, label %bb.ao

bb.ak:                                            ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 362
  %i.dr = zext nneg i16 %i.dn to i64              ; 4 uses
  %i.ds = add nuw nsw i16 %i.dn, 1
  %i.dt = add nuw nsw i64 %i.dk, 1                ; 7 uses
  %.not.i.i26.not.i.i = icmp ult i16 %i.dj, %i.dn
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dk ; 3 uses
  br i1 %.not.i.i26.not.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31.i.i, i64 16, i1 false), !noalias !52022
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dc, i64 176
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dk ; 2 uses
  store ptr %.sroa.35.1.i.i, ptr %i.dw, align 8, !alias.scope !52023, !noalias !52024
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %.sroa.36.1.i.i, ptr %i.dx, align 8, !alias.scope !52023, !noalias !52024
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dt
  %i.dz = sub nuw nsw i64 %i.dr, %i.dk            ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dz, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.du, i64 %i.ea, i1 false), !alias.scope !52025, !noalias !52024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31.i.i, i64 16, i1 false), !noalias !52022
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 176 ; 2 uses
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dk ; 3 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dt
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.ec, i64 %i.ea, i1 false), !alias.scope !52023, !noalias !52024
  store ptr %.sroa.35.1.i.i, ptr %i.ec, align 8, !alias.scope !52023, !noalias !52024
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %.sroa.36.1.i.i, ptr %i.ee, align 8, !alias.scope !52023, !noalias !52024
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 368 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dt
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dk
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = shl nuw nsw i64 %i.dz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eg, i64 %i.ej, i1 false), !alias.scope !52026, !noalias !52027
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dc, i64 368 ; 6 uses
  %i.el = add nuw nsw i64 %i.dr, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.dt
  store ptr %i.df, ptr %i.em, align 8, !alias.scope !52026, !noalias !52027
  store i16 %i.ds, ptr %i.dq, align 2, !noalias !52027
  %i.en = icmp samesign ult i64 %i.dt, %i.el
  br i1 %i.en, label %.lr.ph.i.i.i.i.i.preheader, label %.thread39.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.an
  %i.eo = add nuw nsw i64 %i.dr, 1
  %i.ep = sub nsw i64 %i.eo, %i.dk
  %i.eq = sub nsw i64 %i.dr, %i.dk
  %xtraiter288 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.er, %.lr.ph.i.i.i.i.i.prol ], [ %i.dt, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter290 = phi i64 [ %prol.iter290.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.er = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.es = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !52028, !nonnull !53, !noundef !53 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 352
  store ptr %i.dc, ptr %i.ev, align 8, !noalias !52029
  %i.ew = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 360
  store i16 %i.ew, ptr %i.ex, align 8, !noalias !52029
  %prol.iter290.next = add i64 %prol.iter290, 1   ; 2 uses
  %prol.iter290.cmp.not = icmp eq i64 %prol.iter290.next, %xtraiter288
  br i1 %prol.iter290.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !51942

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.eq, 3
  br i1 %i.ey, label %.thread39.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ez = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.sroa.0.06.i.i.i.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !52028, !nonnull !53, !noundef !53 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 352
  store ptr %i.dc, ptr %i.fc, align 8, !noalias !52029
  %i.fd = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 360
  store i16 %i.fd, ptr %i.fe, align 8, !noalias !52029
  %i.ff = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ez
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !52028, !nonnull !53, !noundef !53 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 352
  store ptr %i.dc, ptr %i.fi, align 8, !noalias !52029
  %i.fj = trunc nuw nsw i64 %i.ez to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 360
  store i16 %i.fj, ptr %i.fk, align 8, !noalias !52029
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ff
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !52028, !nonnull !53, !noundef !53 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 352
  store ptr %i.dc, ptr %i.fo, align 8, !noalias !52029
  %i.fp = trunc nuw nsw i64 %i.ff to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 360
  store i16 %i.fp, ptr %i.fq, align 8, !noalias !52029
  %i.fr = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.fs = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fl
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !52028, !nonnull !53, !noundef !53 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 352
  store ptr %i.dc, ptr %i.fv, align 8, !noalias !52029
  %i.fw = trunc nuw nsw i64 %i.fl to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 360
  store i16 %i.fw, ptr %i.fx, align 8, !noalias !52029
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fr, %i.el
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread39.i.i, label %.lr.ph.i.i.i.i.i

bb.ao:                                            ; preds = %bb.aj
  switch i16 %i.dj, label %bb.ap [
    i16 5, label %.invoke.i23.i.i
    i16 6, label %bb.aq
  ]

.invoke.i23.i.i:                                  ; preds = %bb.ao, %bb.aj
  %.sink.i24.i.i = phi i64 [ 5, %bb.ao ], [ 4, %bb.aj ]
  store i64 %.sink.i24.i.i, ptr %i.cl, align 8, !noalias !52020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52020
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha9d4e49826c922dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ar unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52021

bb.ap:                                            ; preds = %bb.ao
  store i64 6, ptr %i.cl, align 8, !noalias !52020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52020
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha9d4e49826c922dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.az unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52021

bb.aq:                                            ; preds = %bb.ao
  store i64 5, ptr %i.cl, align 8, !noalias !52020
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52020
  invoke fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17ha9d4e49826c922dcE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.av unwind label %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !52021

bb.ar:                                            ; preds = %.invoke.i23.i.i
  %i.fy = load ptr, ptr %i.a, align 8, !noalias !52020, !nonnull !53, !noundef !53 ; 13 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 362 ; 2 uses
  %i.ga = load i16, ptr %i.fz, align 2, !noalias !52030, !noundef !53 ; 3 uses
  %i.gb = zext i16 %i.ga to i64                   ; 4 uses
  %i.gc = add i16 %i.ga, 1
  %i.gd = add nuw nsw i64 %i.dk, 1                ; 7 uses
  %.not.i40.not.i25.i.i = icmp ult i16 %i.dj, %i.ga
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.dk ; 3 uses
  br i1 %.not.i40.not.i25.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31.i.i, i64 16, i1 false), !noalias !52022
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 176
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gf, i64 %i.dk ; 2 uses
  store ptr %.sroa.35.1.i.i, ptr %i.gg, align 8, !alias.scope !52031, !noalias !52030
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store ptr %.sroa.36.1.i.i, ptr %i.gh, align 8, !alias.scope !52031, !noalias !52030
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.fy, i64 %i.gd
  %i.gj = sub nuw nsw i64 %i.gb, %i.dk            ; 2 uses
  %i.gk = shl nuw nsw i64 %i.gj, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull align 8 %i.ge, i64 %i.gk, i1 false), !alias.scope !52032, !noalias !52030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.31.i.i, i64 16, i1 false), !noalias !52022
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fy, i64 176 ; 2 uses
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.dk ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gl, i64 %i.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull align 8 %i.gm, i64 %i.gk, i1 false), !alias.scope !52031, !noalias !52030
  store ptr %.sroa.35.1.i.i, ptr %i.gm, align 8, !alias.scope !52031, !noalias !52030
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
end_hunk_23
begin_hunk_24_@"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54773
  store i8 8, ptr %0, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.439.0..sroa_idx, align 1
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ay, ptr %.sroa.541.0..sroa_idx, align 4
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %.sroa.642.0..sroa_idx, align 8
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54777)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !54777
  %i.bn = tail call noalias noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !54777 ; 9 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.x, label %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit", !prof !64

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #70, !noalias !54777
  unreachable

"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit": ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !54777, !nonnull !53, !align !54, !noundef !53 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54778)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54779
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !54778, !nonnull !53, !noundef !53 ; 4 uses
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !54779
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit"
  store ptr %i.bs, ptr %i.a, align 8, !noalias !54779
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !54778, !nonnull !53, !noundef !53
  %i.bx = icmp eq ptr %i.bw, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.bx, label %bb.ad, label %bb.aa, !prof !72

bb.z:                                             ; preds = %"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h3add715f838b520aE.exit"
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.by = invoke i64 @"_ZN65_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone19clone_non_singleton17hfbfa8918faed19ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bv)
          to label %bb.ad unwind label %bb.ac, !noalias !54780, !inline_history !54753

bb.ab:                                            ; preds = %bb.ac
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.am, !noalias !54779, !inline_history !54753

bb.ac:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = atomicrmw add ptr %i.bs, i64 -1 release, align 8, !noalias !54781
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.ab, label %.body

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %storemerge.i = phi i64 [ %i.by, %bb.aa ], [ ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), %bb.y ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !54778, !noundef !53 ; 3 uses
  %.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = atomicrmw add ptr %i.cd, i64 1 monotonic, align 8, !noalias !54779
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54783)
  %i.cg = load i64, ptr %i.bq, align 8, !range !76, !alias.scope !54784, !noundef !53 ; 2 uses
  switch i64 %i.cg, label %default.unreachable [
    i64 0, label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit"
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !54784, !nonnull !53, !noundef !53 ; 2 uses
  %i.cj = atomicrmw add ptr %i.ci, i64 1 monotonic, align 8, !noalias !54785
  %i.ck = icmp slt i64 %i.cj, 0
  br i1 %i.ck, label %bb.ai, label %.sink.split.i.i

bb.ah:                                            ; preds = %bb.af
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !54784, !nonnull !53, !noundef !53 ; 2 uses
  %i.cn = atomicrmw add ptr %i.cm, i64 1 monotonic, align 8, !noalias !54785
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %bb.ak, label %bb.aj

.sink.split.i.i:                                  ; preds = %bb.aj, %bb.ag
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %bb.aj ], [ %.sroa.4.i, %bb.ag ]
  %.sink3.i.i = phi ptr [ %i.cq, %bb.aj ], [ %i.ci, %bb.ag ]
  store ptr %.sink3.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !54782, !noalias !54779
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i = load ptr, ptr %.sroa.4.i, align 8, !noalias !54779
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.i, align 8, !noalias !54779
  br label %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit"

bb.ai:                                            ; preds = %bb.ag
  tail call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !54784, !nonnull !53, !align !54, !noundef !53
  store ptr %i.cm, ptr %.sroa.4.i, align 8, !alias.scope !54782, !noalias !54779
  br label %.sink.split.i.i

bb.ak:                                            ; preds = %bb.ah
  tail call void @llvm.trap()
  unreachable

bb.al:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !54779, !inline_history !54753
  unreachable

.body:                                            ; preds = %bb.ab, %bb.ac
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef 48, i64 noundef 8) #71, !noalias !54777
  br label %common.resume

"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit": ; preds = %.sink.split.i.i, %bb.af
  %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = phi ptr [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.af ]
  %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = phi ptr [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54779
  store i64 %i.cg, ptr %i.bn, align 8, !noalias !54786
  %.sroa.4.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx79, align 8, !noalias !54786
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !54786
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.bs, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !54786
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i64 %storemerge.i, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !54786
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr %i.cd, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !54786
  store i8 9, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.444.0..sroa_idx, align 1
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bm, ptr %.sroa.546.0..sroa_idx, align 4
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %.sroa.647.0..sroa_idx, align 8
  br label %bb.as

bb.an:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !noundef !53
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !53, !noundef !53
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !53, !align !54, !noundef !53
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.da = load ptr, ptr %i.cz, align 8, !invariant.load !53, !nonnull !53
  %i.db = tail call { ptr, ptr } %i.da(ptr noundef nonnull align 1 %i.cw) ; 2 uses
  %i.dc = extractvalue { ptr, ptr } %i.db, 0      ; 3 uses
  %i.dd = extractvalue { ptr, ptr } %i.db, 1      ; 4 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.de = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #71 ; 4 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ao, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit", !prof !56

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 16) #70
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$rhai..types..variant..Variant$GT$$GT$17h303be192035c9e65E"(ptr %i.dc, ptr nonnull %i.dd) #72
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit": ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dd) ]
  store ptr %i.dc, ptr %i.de, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.di, align 8
  store i8 10, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.449.0..sroa_idx, align 1
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.ct, ptr %.sroa.551.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %.sroa.652.0..sroa_idx, align 8
  br label %bb.as

bb.ar:                                            ; preds = %bb.a
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !53
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !53, !noundef !53 ; 2 uses
  %i.dn = atomicrmw add ptr %i.dm, i64 1 monotonic, align 8
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %bb.aw, label %bb.av

bb.as:                                            ; preds = %bb.av, %bb.at, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha1c3fc47b201251dE.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h75d28f7df3b488d0E.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7aef8b7aec03f56E.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390b58054274cadcE.exit", %"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7046e4920c3c41eE.exit", %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  ret void

bb.at:                                            ; preds = %bb.d
  store i8 2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.48.0..sroa_idx, align 1
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.l, ptr %.sroa.510.0..sroa_idx, align 4
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.611.0..sroa_idx, align 8
  br label %bb.as

bb.au:                                            ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.ar
  store i8 11, ptr %0, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.454.0..sroa_idx, align 1
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dk, ptr %.sroa.556.0..sroa_idx, align 4
  %.sroa.657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %.sroa.657.0..sroa_idx, align 8
  br label %bb.as

bb.aw:                                            ; preds = %bb.ar
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..fmt..Display$GT$3fmt17display_fmt_print17h2f1aa8ddb6dc66a1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 18 uses
  %i.b = load i8, ptr %1, align 8, !range !65, !noundef !53
  switch i8 %i.b, label %bb.b [
    i8 6, label %bb.c
    i8 8, label %bb.d
    i8 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..fmt..Display$GT$3fmt17h8aedffd25056a1e7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71"

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h55d4d90519ce7541E"(ptr noalias noundef align 8 dereferenceable(48) %2, ptr noundef %1) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @504, i64 noundef 1)
  br i1 %i.e, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71", label %.peel.begin

bb.d:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h55d4d90519ce7541E"(ptr noalias noundef align 8 dereferenceable(48) %2, ptr noundef %1) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2022, i64 noundef 2)
  br i1 %i.g, label %"_ZN4core3ptr100drop_in_place$LT$std..sync..poison..rwlock..RwLockReadGuard$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h1d7000fb9f1b2340E.exit71", label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !53, !noundef !53 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 18 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54823)
  %i.l = load atomic i32, ptr %i.j monotonic, align 4, !noalias !54823
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i.i = phi i32 [ %i.l, %bb.e ], [ %i.p, %bb.g ] ; 3 uses
  %or.cond11.i.i.i = icmp ult i32 %.sroa.01.0.i.i, 1073741822
  br i1 %or.cond11.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = add nuw nsw i32 %.sroa.01.0.i.i, 1
  %i.n = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i, i32 %i.m acquire monotonic, align 4, !noalias !54823 ; 2 uses
  %i.o = extractvalue { i32, i1 } %i.n, 1
  %i.p = extractvalue { i32, i1 } %i.n, 0
  br i1 %i.o, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.f

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit": ; preds = %bb.g, %bb.m, %bb.q, %bb.u, %bb.x
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.r = load atomic i8, ptr %i.q monotonic, align 4, !noalias !54824
  %.not.i.not = icmp eq i8 %i.r, 0
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  br i1 %.not.i.not, label %bb.ax, label %bb.aa

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.k, align 8, !alias.scope !54823
  store i64 1, ptr %i.a, align 8, !alias.scope !54823
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.i unwind label %bb.y

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54825)
  %i.s = load atomic i32, ptr %i.j monotonic, align 4, !noalias !54825
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.sroa.01.0.i.i.1 = phi i32 [ %i.s, %bb.i ], [ %i.x, %bb.m ] ; 3 uses
  %or.cond11.i.i.i.1 = icmp ult i32 %.sroa.01.0.i.i.1, 1073741822
  br i1 %or.cond11.i.i.i.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.k, align 8, !alias.scope !54825
  store i64 1, ptr %i.a, align 8, !alias.scope !54825
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.l unwind label %bb.y

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54826)
  %i.t = load atomic i32, ptr %i.j monotonic, align 4, !noalias !54826
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.u = add nuw nsw i32 %.sroa.01.0.i.i.1, 1
  %i.v = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.1, i32 %i.u acquire monotonic, align 4, !noalias !54825 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  %i.x = extractvalue { i32, i1 } %i.v, 0
  br i1 %i.w, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.j

bb.n:                                             ; preds = %bb.q, %bb.l
  %.sroa.01.0.i.i.2 = phi i32 [ %i.t, %bb.l ], [ %i.ac, %bb.q ] ; 3 uses
  %or.cond11.i.i.i.2 = icmp ult i32 %.sroa.01.0.i.i.2, 1073741822
  br i1 %or.cond11.i.i.i.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.k, align 8, !alias.scope !54826
  store i64 1, ptr %i.a, align 8, !alias.scope !54826
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54827)
  %i.y = load atomic i32, ptr %i.j monotonic, align 4, !noalias !54827
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.z = add nuw nsw i32 %.sroa.01.0.i.i.2, 1
  %i.aa = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.2, i32 %i.z acquire monotonic, align 4, !noalias !54826 ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  %i.ac = extractvalue { i32, i1 } %i.aa, 0
  br i1 %i.ab, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.n

bb.r:                                             ; preds = %bb.u, %bb.p
  %.sroa.01.0.i.i.3 = phi i32 [ %i.y, %bb.p ], [ %i.ah, %bb.u ] ; 3 uses
  %or.cond11.i.i.i.3 = icmp ult i32 %.sroa.01.0.i.i.3, 1073741822
  br i1 %or.cond11.i.i.i.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr null, ptr %i.k, align 8, !alias.scope !54827
  store i64 1, ptr %i.a, align 8, !alias.scope !54827
  invoke void @_ZN3std6thread5sleep17h23a13308e0e87a0cE(i64 noundef 0, i32 noundef 10000000)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54828)
  %i.ad = load atomic i32, ptr %i.j monotonic, align 4, !noalias !54828
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.ae = add nuw nsw i32 %.sroa.01.0.i.i.3, 1
  %i.af = cmpxchg weak ptr %i.j, i32 %.sroa.01.0.i.i.3, i32 %i.ae acquire monotonic, align 4, !noalias !54827 ; 2 uses
  %i.ag = extractvalue { i32, i1 } %i.af, 1
  %i.ah = extractvalue { i32, i1 } %i.af, 0
  br i1 %i.ag, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$8try_read17h933364c4a7426beeE.exit", label %bb.r

bb.v:                                             ; preds = %bb.x, %bb.t
  %.sroa.01.0.i.i.4 = phi i32 [ %i.ad, %bb.t ], [ %i.al, %bb.x ] ; 3 uses
  %or.cond11.i.i.i.4 = icmp ult i32 %.sroa.01.0.i.i.4, 1073741822
  br i1 %or.cond11.i.i.i.4, label %bb.x, label %bb.w

end_hunk_24
