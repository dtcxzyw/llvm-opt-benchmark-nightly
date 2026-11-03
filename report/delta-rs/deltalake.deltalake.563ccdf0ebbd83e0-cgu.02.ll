Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.02?download=true
inline.NumInlined: 6368
inline.NumDeleted: 3022
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2pqxYH9ZEk8_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.n unwind label %bb.l, !noalias !14819

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #29
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ag = load ptr, ptr %i.q, align 8, !alias.scope !14818, !noalias !14815, !nonnull !13, !noundef !13
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.ai = add i64 %i.ab, 1
  store i64 %i.ai, ptr %i.r, align 8, !alias.scope !14818, !noalias !14815
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.4.0807.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !13, !nonnull !13
  %i.al = invoke { ptr, ptr } %i.ak(ptr noundef nonnull %.sroa.01.0808.i)
          to label %bb.o unwind label %.loopexit.split-lp212.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.am = extractvalue { ptr, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { ptr, ptr } %i.al, 1
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.p:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %i.g, align 8, !range !14, !noalias !14815, !noundef !13
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !20, !noalias !14815, !noundef !13 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.q, label %bb.r, !prof !17

bb.q:                                             ; preds = %bb.p
  %i.at = load i64, ptr %i.as, align 8, !noalias !14815
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #28
          to label %bb.dp unwind label %.loopexit.split-lp212.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.as, align 8, !noalias !14815, !nonnull !13, !noundef !13
  %i.av = icmp samesign ule i64 %i.y, %i.ar
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14815
  store i64 %i.ar, ptr %i.m, align 8, !noalias !14815
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  store ptr %i.au, ptr %i.aw, align 8, !noalias !14815
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 6 uses
  store i64 0, ptr %i.ax, align 8, !noalias !14815
  %i.ay = load ptr, ptr %i.q, align 8, !noalias !14815, !nonnull !13, !noundef !13 ; 2 uses
  %i.az = load i64, ptr %i.r, align 8, !noalias !14815, !noundef !13 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.az, 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %._crit_edge814.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %.sroa.016.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.016.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.016.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.016.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.016.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.016.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.016.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.016.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.016.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.8.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.8.i.sroa.12.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.8.i.sroa.13.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.8.i.sroa.14.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.8.i.sroa.15.0..sroa.8.0..sroa_idx31.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.thread.i.split, %.lr.ph.i
  %.sroa.04.0809.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.bd, %.thread.i.split ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.0809.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.0809.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !13, !noundef !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.0809.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !13 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14815
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i:                                    ; preds = %.thread.i.split
  %.pre.i = load ptr, ptr %i.aw, align 8, !noalias !14815 ; 3 uses
  %.pre1482.i = load i64, ptr %i.ax, align 8, !noalias !14815 ; 3 uses
  %.idx818.i = shl nuw nsw i64 %.pre1482.i, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx818.i
  %.not819.i = icmp eq i64 %.pre1482.i, 0
  br i1 %.not819.i, label %._crit_edge814.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !14815 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  %invariant.op.i = add nuw i64 %i.bk, 2
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.481.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14815
  store ptr %.pre.i, ptr %i.k, align 8, !noalias !14815
  %.sroa.461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14815
  store ptr %i.k, ptr %i.j, align 8, !noalias !14815
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.461.0..sroa_idx.i, align 8, !noalias !14815
  %i.bo = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @183, ptr noundef nonnull @116, ptr noundef nonnull %i.j)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14815
  br i1 %i.bo, label %bb.da, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14815
  %.not820.peel.i = icmp eq i64 %.pre1482.i, 1
  br i1 %.not820.peel.i, label %._crit_edge814.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.v
  call void @llvm.assume(i1 %i.bl)
  br label %bb.cy

.body118.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dk, %bb.dh, %bb.df
  %.pn.i = phi { ptr, i32 } [ %lpad.loopexit.i, %bb.df ], [ %i.nv, %bb.dh ], [ %lpad.loopexit1478.i, %bb.dk ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.m) #29
          to label %.body.i unwind label %bb.do

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %bb.cs, %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i122.i, %bb.cy, %.lr.ph736, %bb.s, %bb.t, %.loopexit.invoke.i, %.invoke.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body118.i

bb.w:                                             ; preds = %bb.s
  %.sroa.016.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !noalias !14815
  %.sroa.016.sroa.0.0.copyload.i.fr = freeze i64 %.sroa.016.sroa.0.0.copyload.i ; 2 uses
  %.sroa.016.sroa.4.0.copyload.i = load i64, ptr %.sroa.016.sroa.4.0..sroa_idx.i, align 8, !noalias !14815
  %.sroa.016.sroa.6.0.copyload.i = load i64, ptr %.sroa.016.sroa.6.0..sroa_idx.i, align 8, !noalias !14815 ; 3 uses
  %.sroa.016.sroa.7.0.copyload.i = load i64, ptr %.sroa.016.sroa.7.0..sroa_idx.i, align 8, !noalias !14815 ; 2 uses
  %.sroa.016.sroa.8.0.copyload.i = load i64, ptr %.sroa.016.sroa.8.0..sroa_idx.i, align 8, !noalias !14815
  %.sroa.016.sroa.10.0.copyload.i = load i64, ptr %.sroa.016.sroa.10.0..sroa_idx.i, align 8, !noalias !14815
  %.sroa.016.sroa.12.0.copyload.i = load ptr, ptr %.sroa.016.sroa.12.0..sroa_idx.i, align 8, !noalias !14815 ; 16 uses
  %.sroa.016.sroa.13.0.copyload.i = load i64, ptr %.sroa.016.sroa.13.0..sroa_idx.i, align 8, !noalias !14815 ; 40 uses
  %.sroa.016.sroa.14.0.copyload.i = load ptr, ptr %.sroa.016.sroa.14.0..sroa_idx.i, align 8, !noalias !14815 ; 5 uses
  %.sroa.016.sroa.15.0.copyload.i = load i64, ptr %.sroa.016.sroa.15.0..sroa_idx.i, align 8, !noalias !14815 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14815
  %.sroa.93.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.016.sroa.6.0.copyload.i to i8
  %.sroa.93.sroa.978.0.extract.shift.i = lshr i64 %.sroa.016.sroa.6.0.copyload.i, 16
  %.sroa.93.sroa.978.0.extract.trunc.i = trunc i64 %.sroa.93.sroa.978.0.extract.shift.i to i8
  %.not.i2.i.i = icmp eq i64 %.sroa.016.sroa.0.0.copyload.i.fr, 2
  %i.bp = trunc nuw i64 %.sroa.016.sroa.0.0.copyload.i.fr to i1
  %i.bq = add nsw i64 %.sroa.016.sroa.15.0.copyload.i, -1 ; 3 uses
  %i.br = and i64 %.sroa.016.sroa.6.0.copyload.i, -16711936 ; 2 uses
  br label %.loopexit197.i

.loopexit197.i:                                   ; preds = %.loopexit197.i.backedge, %bb.w
  %.sroa.93.sroa.978.0.i = phi i8 [ %.sroa.93.sroa.978.0.extract.trunc.i, %bb.w ], [ %.sroa.93.sroa.978.1.i.lcssa, %.loopexit197.i.backedge ] ; 10 uses
  %.sroa.93.sroa.0.0.i = phi i8 [ %.sroa.93.sroa.0.0.extract.trunc.i, %bb.w ], [ %.sroa.93.sroa.0.1.i.lcssa, %.loopexit197.i.backedge ] ; 11 uses
  %.sroa.6818.sroa.11.sroa.0.0.i = phi i40 [ undef, %bb.w ], [ %.sroa.6818.sroa.11.sroa.0.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.6818.sroa.961.0.i = phi i8 [ undef, %bb.w ], [ %.sroa.6818.sroa.961.6.i, %.loopexit197.i.backedge ]
  %.sroa.6818.sroa.9.0.i = phi i8 [ undef, %bb.w ], [ %.sroa.6818.sroa.9.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.6818.sroa.0.0.i = phi i8 [ undef, %bb.w ], [ %.sroa.6818.sroa.0.7.i, %.loopexit197.i.backedge ]
  %.sroa.110.0.i = phi i1 [ undef, %bb.w ], [ %.sroa.110.6.i, %.loopexit197.i.backedge ]
  %.sroa.107.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.107.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.103.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.103.3.i, %.loopexit197.i.backedge ]
  %.sroa.102.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.102.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.101.0.i = phi ptr [ undef, %bb.w ], [ %.sroa.101.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.99.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.99.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.9523.0.i = phi ptr [ undef, %bb.w ], [ %.sroa.9523.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.9022.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.9022.7.i, %.loopexit197.i.backedge ]
  %.sroa.78.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.78.7.i, %.loopexit197.i.backedge ]
  %.sroa.76.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.76.1.i.lcssa, %.loopexit197.i.backedge ]
  %.sroa.63.0.i = phi i64 [ undef, %bb.w ], [ %.sroa.63.7.i, %.loopexit197.i.backedge ]
  %.sroa.5815.0.i = phi i64 [ 2, %bb.w ], [ %.sroa.5815.11024.i, %.loopexit197.i.backedge ] ; 2 uses
  %.sroa.54.0.i = phi i1 [ false, %bb.w ], [ %.sroa.54.1.i.lcssa, %.loopexit197.i.backedge ] ; 2 uses
  %.sroa.44.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.44.1.i.lcssa, %.loopexit197.i.backedge ] ; 9 uses
  %.sroa.317.0.i = phi i64 [ %.sroa.016.sroa.10.0.copyload.i, %bb.w ], [ %.sroa.317.1.i.lcssa, %.loopexit197.i.backedge ] ; 13 uses
  %.sroa.19.0.i = phi i64 [ %.sroa.016.sroa.8.0.copyload.i, %bb.w ], [ %.sroa.19.1.i.lcssa, %.loopexit197.i.backedge ] ; 13 uses
  %.sroa.5.0.i = phi i64 [ %.sroa.016.sroa.4.0.copyload.i, %bb.w ], [ %.sroa.5.1.i.lcssa, %.loopexit197.i.backedge ] ; 35 uses
  %i.bs = icmp eq i64 %.sroa.5815.0.i, 2
  %i.bt = or i1 %.sroa.110.0.i, %i.bs
  br i1 %i.bt, label %_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph, label %bb.x

_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph: ; preds = %.loopexit197.i
  %brmerge = select i1 %.not.i2.i.i, i1 true, i1 %.sroa.54.0.i
  br i1 %brmerge, label %.thread.i.split, label %bb.bf

bb.x:                                             ; preds = %._crit_edge, %.loopexit197.i
  %.sroa.63.1.i.lcssa311 = phi i64 [ %.sroa.8.i.sroa.0.0.copyload.i, %._crit_edge ], [ %.sroa.63.0.i, %.loopexit197.i ] ; 39 uses
  %.sroa.93.sroa.978.1.i.lcssa = phi i8 [ %.sroa.93.sroa.978.3124.i, %._crit_edge ], [ %.sroa.93.sroa.978.0.i, %.loopexit197.i ]
  %.sroa.93.sroa.0.1.i.lcssa = phi i8 [ %.sroa.93.sroa.0.4126.i, %._crit_edge ], [ %.sroa.93.sroa.0.0.i, %.loopexit197.i ]
  %.sroa.6818.sroa.11.sroa.0.1.i.lcssa = phi i40 [ %.sroa.6818.sroa.11.0.extract.trunc.i.le, %._crit_edge ], [ %.sroa.6818.sroa.11.sroa.0.0.i, %.loopexit197.i ] ; 3 uses
  %.sroa.6818.sroa.961.1.i.lcssa = phi i8 [ %.sroa.6818.sroa.961.0.extract.trunc.i.le, %._crit_edge ], [ %.sroa.6818.sroa.961.0.i, %.loopexit197.i ] ; 9 uses
  %.sroa.6818.sroa.9.1.i.lcssa = phi i8 [ %.sroa.6818.sroa.9.0.extract.trunc.i.le, %._crit_edge ], [ %.sroa.6818.sroa.9.0.i, %.loopexit197.i ] ; 3 uses
  %.sroa.6818.sroa.0.1.i.lcssa = phi i8 [ %.sroa.6818.sroa.0.0.extract.trunc.i.le, %._crit_edge ], [ %.sroa.6818.sroa.0.0.i, %.loopexit197.i ] ; 10 uses
  %.sroa.107.1.i.lcssa = phi i64 [ %.sroa.4.0.i.i.i.i6.i.i, %._crit_edge ], [ %.sroa.107.0.i, %.loopexit197.i ] ; 7 uses
  %.sroa.103.1.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.sroa.103.0.i, %.loopexit197.i ] ; 9 uses
  %.sroa.102.1.i.lcssa = phi i64 [ %.sroa.8.i.sroa.15.0.copyload.i, %._crit_edge ], [ %.sroa.102.0.i, %.loopexit197.i ] ; 15 uses
  %.sroa.101.1.i.lcssa = phi ptr [ %.sroa.8.i.sroa.14.0.copyload.i, %._crit_edge ], [ %.sroa.101.0.i, %.loopexit197.i ] ; 6 uses
  %.sroa.99.1.i.lcssa = phi i64 [ %.sroa.8.i.sroa.13.0.copyload.i, %._crit_edge ], [ %.sroa.99.0.i, %.loopexit197.i ] ; 37 uses
  %.sroa.9523.1.i.lcssa = phi ptr [ %.sroa.8.i.sroa.12.0.copyload.i, %._crit_edge ], [ %.sroa.9523.0.i, %.loopexit197.i ] ; 17 uses
  %.sroa.9022.1.i.lcssa = phi i64 [ %.sroa.8.i.sroa.10.0.copyload.i, %._crit_edge ], [ %.sroa.9022.0.i, %.loopexit197.i ] ; 12 uses
  %.sroa.78.1.i.lcssa = phi i64 [ %.sroa.8.i.sroa.8.0.copyload.i, %._crit_edge ], [ %.sroa.78.0.i, %.loopexit197.i ] ; 12 uses
  %.sroa.76.1.i.lcssa = phi i64 [ %.sroa.8.i.sroa.7.0.copyload.i, %._crit_edge ], [ %.sroa.76.0.i, %.loopexit197.i ] ; 3 uses
  %.sroa.5815.1.i.lcssa = phi i64 [ %.sroa.0.0.copyload30.i.i, %._crit_edge ], [ %.sroa.5815.0.i, %.loopexit197.i ]
  %.sroa.54.1.i.lcssa = phi i1 [ %.sroa.54.3.i, %._crit_edge ], [ %.sroa.54.0.i, %.loopexit197.i ]
  %.sroa.44.1.i.lcssa = phi i64 [ %.sroa.44.2.i, %._crit_edge ], [ %.sroa.44.0.i, %.loopexit197.i ]
  %.sroa.317.1.i.lcssa = phi i64 [ %.sroa.317.4128.i, %._crit_edge ], [ %.sroa.317.0.i, %.loopexit197.i ]
  %.sroa.19.1.i.lcssa = phi i64 [ %.sroa.19.4130.i, %._crit_edge ], [ %.sroa.19.0.i, %.loopexit197.i ]
  %.sroa.5.1.i.lcssa = phi i64 [ %.sroa.5.4132.i, %._crit_edge ], [ %.sroa.5.0.i, %.loopexit197.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9523.1.i.lcssa) ]
  %i.bu = trunc nuw i64 %.sroa.5815.1.i.lcssa to i1
  br i1 %i.bu, label %bb.ah, label %.preheader.i154.i

.preheader.i154.i:                                ; preds = %bb.x
  %i.bv = trunc nuw i8 %.sroa.6818.sroa.961.1.i.lcssa to i1
  br i1 %i.bv, label %.noexc.i, label %.lr.ph.i155.preheader.i

.lr.ph.i155.preheader.i:                          ; preds = %.preheader.i154.i
  %i.bw = trunc nuw i8 %.sroa.6818.sroa.0.1.i.lcssa to i1 ; 2 uses
  %i.bx = icmp eq i64 %.sroa.63.1.i.lcssa311, 0
  br i1 %i.bx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i155.preheader.i
  %.not.i.i.i158.peel.i = icmp ult i64 %.sroa.63.1.i.lcssa311, %.sroa.99.1.i.lcssa
  br i1 %.not.i.i.i158.peel.i, label %bb.z, label %.split.i.i.i159.peel.i

.split.i.i.i159.peel.i:                           ; preds = %bb.y
  %i.by = icmp eq i64 %.sroa.63.1.i.lcssa311, %.sroa.99.1.i.lcssa
  br i1 %i.by, label %bb.aa, label %.loopexit.invoke.i

bb.z:                                             ; preds = %bb.y
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %.sroa.63.1.i.lcssa311
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !14820, !noalias !14821, !noundef !13
  %i.cb = icmp sgt i8 %i.ca, -65
  br i1 %i.cb, label %bb.aa, label %.loopexit.invoke.i

bb.aa:                                            ; preds = %bb.z, %.split.i.i.i159.peel.i, %.lr.ph.i155.preheader.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %.sroa.63.1.i.lcssa311 ; 4 uses
  %i.cd = icmp samesign eq i64 %.sroa.63.1.i.lcssa311, %.sroa.99.1.i.lcssa
  br i1 %i.cd, label %.loopexit1431.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i8, ptr %i.cc, align 1, !noalias !14822, !noundef !13 ; 5 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.ac, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.peel.i: ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ch = and i8 %i.ce, 31
  %i.ci = zext nneg i8 %i.ch to i32               ; 3 uses
  %i.cj = add nuw nsw i64 %.sroa.63.1.i.lcssa311, 1
  %i.ck = icmp samesign ne i64 %i.cj, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.ck)
  %i.cl = load i8, ptr %i.cg, align 1, !noalias !14822, !noundef !13
  %i.cm = shl nuw nsw i32 %i.ci, 6
  %i.cn = and i8 %i.cl, 63
  %i.co = zext nneg i8 %i.cn to i32               ; 2 uses
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = icmp samesign ugt i8 %i.ce, -33
  br i1 %i.cq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.peel.i, label %bb.ad

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.peel.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cs = add nuw nsw i64 %.sroa.63.1.i.lcssa311, 2
  %i.ct = icmp samesign ne i64 %i.cs, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i8, ptr %i.cr, align 1, !noalias !14822, !noundef !13
  %i.cv = shl nuw nsw i32 %i.co, 6
  %i.cw = and i8 %i.cu, 63
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx            ; 2 uses
  %i.cz = shl nuw nsw i32 %i.ci, 12
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = icmp samesign ugt i8 %i.ce, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.peel.i, label %bb.ad

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.peel.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %i.dd = add nuw nsw i64 %.sroa.63.1.i.lcssa311, 3
  %i.de = icmp samesign ne i64 %i.dd, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.de)
  %i.df = load i8, ptr %i.dc, align 1, !noalias !14822, !noundef !13
  %i.dg = shl nuw nsw i32 %i.ci, 18
  %i.dh = and i32 %i.dg, 1835008
  %i.di = shl nuw nsw i32 %i.cy, 6
  %i.dj = and i8 %i.df, 63
  %i.dk = zext nneg i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.di, %i.dk
  %i.dm = or disjoint i32 %i.dl, %i.dh
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dn = zext nneg i8 %i.ce to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.peel.i
  %.sroa.4.0.i.ph.i.i161.peel.i = phi i32 [ %i.da, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.peel.i ], [ %i.dm, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.peel.i ], [ %i.cp, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.peel.i ], [ %i.dn, %bb.ac ] ; 4 uses
  %i.do = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i161.peel.i, 1114112
  call void @llvm.assume(i1 %i.do)
  br i1 %i.bw, label %.noexc.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i161.peel.i, 128
  br i1 %i.dp, label %.lr.ph.i155.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i161.peel.i, 2048
  br i1 %i.dq, label %.lr.ph.i155.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i161.peel.i, 65536
  %..i.i162.peel.i = select i1 %i.dr, i64 3, i64 4
  br label %.lr.ph.i155.i

bb.ah:                                            ; preds = %bb.x
  %i.ds = icmp eq i64 %.sroa.9022.1.i.lcssa, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.101.1.i.lcssa) ]
  %i.dt = add nsw i64 %.sroa.102.1.i.lcssa, -1    ; 3 uses
  %i.du = add i64 %.sroa.78.1.i.lcssa, %i.dt      ; 3 uses
  %i.dv = icmp ult i64 %i.du, %.sroa.99.1.i.lcssa ; 2 uses
  br i1 %i.ds, label %bb.am, label %bb.au

.lr.ph.i155.i:                                    ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.01.0.i.i164.peel.i = phi i64 [ 2, %bb.af ], [ %..i.i162.peel.i, %bb.ag ], [ 1, %bb.ae ]
  %i.dw = add i64 %.sroa.01.0.i.i164.peel.i, %.sroa.63.1.i.lcssa311 ; 23 uses
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i155.i
  %.not.i.i.i158.i = icmp ult i64 %i.dw, %.sroa.99.1.i.lcssa
  br i1 %.not.i.i.i158.i, label %bb.aj, label %.split.i.i.i159.i

.split.i.i.i159.i:                                ; preds = %bb.ai
  %i.dy = icmp eq i64 %i.dw, %.sroa.99.1.i.lcssa
  br i1 %i.dy, label %bb.ak, label %.loopexit.invoke.i

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.dw
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !14820, !noalias !14821, !noundef !13
  %i.eb = icmp sgt i8 %i.ea, -65
  br i1 %i.eb, label %bb.ak, label %.loopexit.invoke.i

bb.ak:                                            ; preds = %bb.aj, %.split.i.i.i159.i, %.lr.ph.i155.i
  %i.ec = icmp samesign eq i64 %i.dw, %.sroa.99.1.i.lcssa
  br i1 %i.ec, label %.noexc.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.dw
  %i.ee = load i8, ptr %i.ed, align 1, !noalias !14822, !noundef !13 ; 3 uses
  %i.ef = icmp sgt i8 %i.ee, -1
  br i1 %i.ef, label %.noexc.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i: ; preds = %bb.al
  %i.eg = add nuw nsw i64 %i.dw, 1
  %i.eh = icmp samesign ne i64 %i.eg, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.eh)
  %i.ei = icmp samesign ugt i8 %i.ee, -33
  br i1 %i.ei, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i, label %.noexc.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i
  %i.ej = add nuw nsw i64 %i.dw, 2
  %i.ek = icmp samesign ne i64 %i.ej, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.ek)
  %i.el = icmp samesign ugt i8 %i.ee, -17
  br i1 %i.el, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i, label %.noexc.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i
  %i.em = add nuw nsw i64 %i.dw, 3
  %i.en = icmp samesign ne i64 %i.em, %.sroa.99.1.i.lcssa
  call void @llvm.assume(i1 %i.en)
  br label %.noexc.i

.loopexit.invoke.i:                               ; preds = %bb.aj, %.split.i.i.i159.i, %bb.z, %.split.i.i.i159.peel.i, %bb.br, %.split.i.i.i139.i, %bb.bh, %.split.i.i.i139.peel.i
  %i.eo = phi ptr [ %.sroa.016.sroa.12.0.copyload.i, %bb.br ], [ %.sroa.016.sroa.12.0.copyload.i, %.split.i.i.i139.peel.i ], [ %.sroa.016.sroa.12.0.copyload.i, %bb.bh ], [ %.sroa.016.sroa.12.0.copyload.i, %.split.i.i.i139.i ], [ %.sroa.9523.1.i.lcssa, %.split.i.i.i159.peel.i ], [ %.sroa.9523.1.i.lcssa, %bb.z ], [ %.sroa.9523.1.i.lcssa, %.split.i.i.i159.i ], [ %.sroa.9523.1.i.lcssa, %bb.aj ]
  %i.ep = phi i64 [ %.sroa.016.sroa.13.0.copyload.i, %bb.br ], [ %.sroa.016.sroa.13.0.copyload.i, %.split.i.i.i139.peel.i ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bh ], [ %.sroa.016.sroa.13.0.copyload.i, %.split.i.i.i139.i ], [ %.sroa.99.1.i.lcssa, %.split.i.i.i159.peel.i ], [ %.sroa.99.1.i.lcssa, %bb.z ], [ %.sroa.99.1.i.lcssa, %.split.i.i.i159.i ], [ %.sroa.99.1.i.lcssa, %bb.aj ] ; 2 uses
  %i.eq = phi i64 [ %i.jj, %bb.br ], [ %.sroa.5.0.i, %.split.i.i.i139.peel.i ], [ %.sroa.5.0.i, %bb.bh ], [ %i.jj, %.split.i.i.i139.i ], [ %.sroa.63.1.i.lcssa311, %.split.i.i.i159.peel.i ], [ %.sroa.63.1.i.lcssa311, %bb.z ], [ %i.dw, %.split.i.i.i159.i ], [ %i.dw, %bb.aj ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.ep, i64 noundef %i.eq, i64 noundef %i.ep, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #27
          to label %.loopexit.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.cont.i:                                 ; preds = %.loopexit.invoke.i
  unreachable

.loopexit1431.i:                                  ; preds = %bb.aa
  br i1 %i.bw, label %.noexc.i, label %.loopexit192.i

bb.am:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !14823)
  call void @llvm.experimental.noalias.scope.decl(metadata !14824)
  br i1 %i.dv, label %.lr.ph.i258.i, label %.noexc.i

.lr.ph.i258.i:                                    ; preds = %bb.am
  %.sroa.6818.sroa.11.0.insert.ext66.i = zext i40 %.sroa.6818.sroa.11.sroa.0.1.i.lcssa to i64
  %.sroa.6818.sroa.11.0.insert.shift67.i = shl nuw i64 %.sroa.6818.sroa.11.0.insert.ext66.i, 24
  %.sroa.6818.sroa.961.0.insert.ext62.i = zext i8 %.sroa.6818.sroa.961.1.i.lcssa to i64
  %.sroa.6818.sroa.961.0.insert.shift63.i = shl nuw nsw i64 %.sroa.6818.sroa.961.0.insert.ext62.i, 16
  %.sroa.6818.sroa.961.0.insert.insert65.i = or disjoint i64 %.sroa.6818.sroa.961.0.insert.shift63.i, %.sroa.6818.sroa.11.0.insert.shift67.i
  %.sroa.6818.sroa.9.0.insert.ext57.i = zext i8 %.sroa.6818.sroa.9.1.i.lcssa to i64
  %.sroa.6818.sroa.9.0.insert.shift58.i = shl nuw nsw i64 %.sroa.6818.sroa.9.0.insert.ext57.i, 8
  %.sroa.6818.sroa.9.0.insert.insert60.i = or disjoint i64 %.sroa.6818.sroa.961.0.insert.insert65.i, %.sroa.6818.sroa.9.0.insert.shift58.i
  %.sroa.6818.sroa.0.0.insert.ext54.i = zext i8 %.sroa.6818.sroa.0.1.i.lcssa to i64
  %.sroa.6818.sroa.0.0.insert.insert56.i = or disjoint i64 %.sroa.6818.sroa.9.0.insert.insert60.i, %.sroa.6818.sroa.0.0.insert.ext54.i
  %umax49.i261.i = call i64 @llvm.umax.i64(i64 %.sroa.63.1.i.lcssa311, i64 range(i64 0, -9223372036854775808) %.sroa.102.1.i.lcssa)
  %i.er = add i64 %.sroa.63.1.i.lcssa311, -1      ; 2 uses
  %.first_iter.i = icmp ult i64 %i.er, %.sroa.102.1.i.lcssa
  %.first_iter.i.fr = freeze i1 %.first_iter.i
  %exitcond.not.i263.i726.not = icmp ult i64 %.sroa.63.1.i.lcssa311, %.sroa.102.1.i.lcssa
  %invariant.op928 = sub i64 1, %.sroa.63.1.i.lcssa311
  %.not185.i.us729 = icmp eq i64 %.sroa.63.1.i.lcssa311, 0 ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i258.i
  %i.es = phi i64 [ %i.du, %.lr.ph.i258.i ], [ %i.fd, %bb.ap ]
  %i.et = phi i64 [ %.sroa.78.1.i.lcssa, %.lr.ph.i258.i ], [ %i.fc, %bb.ap ] ; 8 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.es
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !14823, !noundef !13
  %i.ew = and i8 %i.ev, 63
  %i.ex = zext nneg i8 %i.ew to i64
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = and i64 %i.ey, %.sroa.76.1.i.lcssa
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.ao, label %.preheader823.i.preheader

.preheader823.i.preheader:                        ; preds = %bb.an
  br i1 %exitcond.not.i263.i726.not, label %.lr.ph728, label %.preheader188.i.preheader

bb.ao:                                            ; preds = %bb.an
  %i.fb = add i64 %i.et, %.sroa.102.1.i.lcssa
  br label %bb.ap

bb.ap:                                            ; preds = %bb.at, %.split354.us, %bb.ao
  %i.fc = phi i64 [ %i.fz, %bb.at ], [ %i.fb, %bb.ao ], [ %i.fn, %.split354.us ] ; 2 uses
  %i.fd = add i64 %i.fc, %i.dt                    ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %.sroa.99.1.i.lcssa
  br i1 %i.fe, label %bb.an, label %.noexc.i

.preheader823.i:                                  ; preds = %bb.ar
  %i.ff = add nuw i64 %.sroa.02.0.i262.i727, 1    ; 2 uses
  %exitcond.not.i263.i = icmp eq i64 %i.ff, %umax49.i261.i
  br i1 %exitcond.not.i263.i, label %.preheader188.i.preheader, label %.lr.ph728

.preheader188.i.preheader:                        ; preds = %.preheader823.i, %.preheader823.i.preheader
  br i1 %.first_iter.i.fr, label %.preheader188.i.us.preheader, label %.preheader188.i.preheader.split

.preheader188.i.us.preheader:                     ; preds = %.preheader188.i.preheader
  br i1 %.not185.i.us729, label %.split348.us, label %.lr.ph731

.preheader188.i.us:                               ; preds = %bb.aq
  %.not185.i.us = icmp eq i64 %i.fg, 0
  br i1 %.not185.i.us, label %.split348.us, label %.lr.ph731

.lr.ph731:                                        ; preds = %.preheader188.i.us.preheader, %.preheader188.i.us
  %.sroa.2.0.i266.i.us730 = phi i64 [ %i.fg, %.preheader188.i.us ], [ %.sroa.63.1.i.lcssa311, %.preheader188.i.us.preheader ]
  %i.fg = add i64 %.sroa.2.0.i266.i.us730, -1     ; 4 uses
  %i.fh = add i64 %i.fg, %i.et                    ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %.sroa.99.1.i.lcssa
  br i1 %i.fi, label %bb.aq, label %.invoke.i

bb.aq:                                            ; preds = %.lr.ph731
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.101.1.i.lcssa, i64 %i.fg
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !14824, !noundef !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.fh
  %i.fm = load i8, ptr %i.fl, align 1, !alias.scope !14823, !noundef !13
  %.not.i267.i.us = icmp eq i8 %i.fk, %i.fm
  br i1 %.not.i267.i.us, label %.preheader188.i.us, label %.split354.us

.split354.us:                                     ; preds = %bb.aq
  %i.fn = add i64 %.sroa.6818.sroa.0.0.insert.insert56.i, %i.et
  br label %bb.ap

.preheader188.i.preheader.split:                  ; preds = %.preheader188.i.preheader
  br i1 %.not185.i.us729, label %.split348.us, label %.invoke.i

.lr.ph728:                                        ; preds = %.preheader823.i.preheader, %.preheader823.i
  %.sroa.02.0.i262.i727 = phi i64 [ %i.ff, %.preheader823.i ], [ %.sroa.63.1.i.lcssa311, %.preheader823.i.preheader ] ; 4 uses
  %i.fo = add i64 %.sroa.02.0.i262.i727, %i.et    ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %.sroa.99.1.i.lcssa
  br i1 %i.fp, label %bb.ar, label %bb.as

.split348.us:                                     ; preds = %.preheader188.i.us.preheader, %.preheader188.i.us, %.preheader188.i.preheader.split
  %.us-phi1475.i = phi i64 [ 0, %.preheader188.i.preheader.split ], [ %.sroa.63.1.i.lcssa311, %.preheader188.i.us ], [ %.sroa.63.1.i.lcssa311, %.preheader188.i.us.preheader ]
  %i.fq = add i64 %i.et, %.sroa.102.1.i.lcssa     ; 2 uses
  br label %.noexc.i

bb.ar:                                            ; preds = %.lr.ph728
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.101.1.i.lcssa, i64 %.sroa.02.0.i262.i727
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !14824, !noundef !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.fo
  %i.fu = load i8, ptr %i.ft, align 1, !alias.scope !14823, !noundef !13
  %.not21.i265.i = icmp eq i8 %i.fs, %i.fu
  br i1 %.not21.i265.i, label %.preheader823.i, label %bb.at

bb.as:                                            ; preds = %.lr.ph728
  %i.fv = add i64 %i.et, %.sroa.63.1.i.lcssa311
  %umax.i264.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.99.1.i.lcssa, i64 %i.fv)
  br label %.invoke.i

.invoke.i:                                        ; preds = %.preheader188.i.preheader.split, %.preheader.i.preheader.split, %bb.ch, %.lr.ph708, %.lr.ph715, %bb.az, %.lr.ph723, %.lr.ph731, %bb.cl, %bb.ca, %bb.bd, %bb.as
  %i.fw = phi i64 [ %umax.i264.i, %bb.as ], [ %i.gu, %.lr.ph723 ], [ %i.mf, %bb.ch ], [ %umax.i244.i, %bb.bd ], [ %umax.i207.i, %bb.cl ], [ %i.fh, %.lr.ph731 ], [ %umax.i227.i, %bb.ca ], [ %i.ks, %.lr.ph715 ], [ %i.gw, %bb.az ], [ %i.md, %.lr.ph708 ], [ %i.er, %.preheader188.i.preheader.split ], [ %i.kb, %.preheader.i.preheader.split ]
  %i.fx = phi i64 [ %.sroa.99.1.i.lcssa, %bb.as ], [ %.sroa.102.1.i.lcssa, %.lr.ph723 ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.ch ], [ %.sroa.99.1.i.lcssa, %bb.bd ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.cl ], [ %.sroa.99.1.i.lcssa, %.lr.ph731 ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.ca ], [ %.sroa.016.sroa.13.0.copyload.i, %.lr.ph715 ], [ %.sroa.99.1.i.lcssa, %bb.az ], [ %.sroa.016.sroa.15.0.copyload.i, %.lr.ph708 ], [ %.sroa.102.1.i.lcssa, %.preheader188.i.preheader.split ], [ %.sroa.016.sroa.15.0.copyload.i, %.preheader.i.preheader.split ]
  %i.fy = phi ptr [ @16, %bb.as ], [ @14, %.lr.ph723 ], [ @15, %bb.ch ], [ @16, %bb.bd ], [ @16, %bb.cl ], [ @15, %.lr.ph731 ], [ @16, %bb.ca ], [ @15, %.lr.ph715 ], [ @15, %bb.az ], [ @14, %.lr.ph708 ], [ @14, %.preheader.i.preheader.split ], [ @14, %.preheader188.i.preheader.split ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fw, i64 noundef range(i64 0, -9223372036854775808) %i.fx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy) #27
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.at:                                            ; preds = %bb.ar
  %.reass1874.i.reass.reass = add i64 %i.et, %invariant.op928
  %i.fz = add i64 %.reass1874.i.reass.reass, %.sroa.02.0.i262.i727
  br label %bb.ap

bb.au:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !14825)
  call void @llvm.experimental.noalias.scope.decl(metadata !14826)
  br i1 %i.dv, label %.lr.ph.i238.i, label %.noexc.i

.lr.ph.i238.i:                                    ; preds = %bb.au
  %.sroa.6818.sroa.11.0.insert.ext.i = zext i40 %.sroa.6818.sroa.11.sroa.0.1.i.lcssa to i64
  %.sroa.6818.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.6818.sroa.11.0.insert.ext.i, 24
  %.sroa.6818.sroa.961.0.insert.ext.i = zext i8 %.sroa.6818.sroa.961.1.i.lcssa to i64
  %.sroa.6818.sroa.961.0.insert.shift.i = shl nuw nsw i64 %.sroa.6818.sroa.961.0.insert.ext.i, 16
  %.sroa.6818.sroa.961.0.insert.insert.i = or disjoint i64 %.sroa.6818.sroa.961.0.insert.shift.i, %.sroa.6818.sroa.11.0.insert.shift.i
  %.sroa.6818.sroa.9.0.insert.ext.i = zext i8 %.sroa.6818.sroa.9.1.i.lcssa to i64
  %.sroa.6818.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.6818.sroa.9.0.insert.ext.i, 8
  %.sroa.6818.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.6818.sroa.961.0.insert.insert.i, %.sroa.6818.sroa.9.0.insert.shift.i
  %.sroa.6818.sroa.0.0.insert.ext.i = zext i8 %.sroa.6818.sroa.0.1.i.lcssa to i64
  %.sroa.6818.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.6818.sroa.9.0.insert.insert.i, %.sroa.6818.sroa.0.0.insert.ext.i ; 2 uses
  %i.ga = sub i64 %.sroa.102.1.i.lcssa, %.sroa.6818.sroa.0.0.insert.insert.i
  %invariant.op927 = sub i64 1, %.sroa.63.1.i.lcssa311
  br label %bb.av

bb.av:                                            ; preds = %.sink.split.i246.i, %.lr.ph.i238.i
  %i.gb = phi i64 [ %.sroa.9022.1.i.lcssa, %.lr.ph.i238.i ], [ %.sink.i247.i, %.sink.split.i246.i ] ; 3 uses
  %i.gc = phi i64 [ %i.du, %.lr.ph.i238.i ], [ %i.gm, %.sink.split.i246.i ]
  %i.gd = phi i64 [ %.sroa.78.1.i.lcssa, %.lr.ph.i238.i ], [ %.ph71.i248.i, %.sink.split.i246.i ] ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !14825, !noundef !13
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = and i64 %i.gi, %.sroa.76.1.i.lcssa
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gl = add i64 %i.gd, %.sroa.102.1.i.lcssa
  br label %.sink.split.i246.i

bb.ax:                                            ; preds = %bb.av
  %.sroa.0.0.i.i240.i = call i64 @llvm.umax.i64(i64 %i.gb, i64 %.sroa.63.1.i.lcssa311) ; 4 uses
  %umax49.i241.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i240.i, i64 range(i64 0, -9223372036854775808) %.sroa.102.1.i.lcssa)
  %exitcond.not.i243.i718.not = icmp ult i64 %.sroa.0.0.i.i240.i, %.sroa.102.1.i.lcssa
  br i1 %exitcond.not.i243.i718.not, label %.lr.ph721.a, label %.preheader189.i.preheader

.sink.split.i246.i:                               ; preds = %bb.be, %bb.bb, %bb.aw
  %.sink.i247.i = phi i64 [ %i.ga, %bb.bb ], [ 0, %bb.be ], [ 0, %bb.aw ] ; 2 uses
  %.ph71.i248.i = phi i64 [ %i.hc, %bb.bb ], [ %i.hi, %bb.be ], [ %i.gl, %bb.aw ] ; 2 uses
  %i.gm = add i64 %.ph71.i248.i, %i.dt            ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %.sroa.99.1.i.lcssa
  br i1 %i.gn, label %bb.av, label %.noexc.i

bb.ay:                                            ; preds = %bb.bc
  %i.go = add nuw i64 %.sroa.02.0.i242.i719, 1    ; 2 uses
  %exitcond.not.i243.i = icmp eq i64 %i.go, %umax49.i241.i
  br i1 %exitcond.not.i243.i, label %.preheader189.i.preheader, label %.lr.ph721.a

.preheader189.i.preheader:                        ; preds = %bb.ay, %bb.ax
  %i.gp = icmp ult i64 %i.gb, %.sroa.63.1.i.lcssa311
  br i1 %i.gp, label %.lr.ph723, label %.preheader189.i.preheader._crit_edge

.lr.ph721.a:                                      ; preds = %bb.ax, %bb.ay
  %.sroa.02.0.i242.i719 = phi i64 [ %i.go, %bb.ay ], [ %.sroa.0.0.i.i240.i, %bb.ax ] ; 4 uses
  %i.gq = add i64 %.sroa.02.0.i242.i719, %i.gd    ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %.sroa.99.1.i.lcssa
  br i1 %i.gr, label %bb.bc, label %bb.bd

.preheader189.i:                                  ; preds = %bb.ba
  %i.gs = icmp ult i64 %i.gb, %i.gu
  br i1 %i.gs, label %.lr.ph723, label %.preheader189.i.preheader._crit_edge

.preheader189.i.preheader._crit_edge:             ; preds = %.preheader189.i.preheader, %.preheader189.i
  %i.gt = add i64 %i.gd, %.sroa.102.1.i.lcssa     ; 2 uses
  br label %.noexc.i

.lr.ph723:                                        ; preds = %.preheader189.i.preheader, %.preheader189.i
  %.sroa.2.0.i249.i722 = phi i64 [ %i.gu, %.preheader189.i ], [ %.sroa.63.1.i.lcssa311, %.preheader189.i.preheader ]
  %i.gu = add i64 %.sroa.2.0.i249.i722, -1        ; 6 uses
  %i.gv = icmp ult i64 %i.gu, %.sroa.102.1.i.lcssa
  br i1 %i.gv, label %bb.az, label %.invoke.i

bb.az:                                            ; preds = %.lr.ph723
  %i.gw = add i64 %i.gu, %i.gd                    ; 3 uses
  %i.gx = icmp ult i64 %i.gw, %.sroa.99.1.i.lcssa
  br i1 %i.gx, label %bb.ba, label %.invoke.i

bb.ba:                                            ; preds = %bb.az
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.101.1.i.lcssa, i64 %i.gu
  %i.gz = load i8, ptr %i.gy, align 1, !alias.scope !14826, !noundef !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.gw
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !14825, !noundef !13
  %.not.i250.i = icmp eq i8 %i.gz, %i.hb
  br i1 %.not.i250.i, label %.preheader189.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hc = add i64 %i.gd, %.sroa.6818.sroa.0.0.insert.insert.i
  br label %.sink.split.i246.i

bb.bc:                                            ; preds = %.lr.ph721.a
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.101.1.i.lcssa, i64 %.sroa.02.0.i242.i719
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !14826, !noundef !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %i.gq
  %i.hg = load i8, ptr %i.hf, align 1, !alias.scope !14825, !noundef !13
  %.not21.i245.i = icmp eq i8 %i.he, %i.hg
  br i1 %.not21.i245.i, label %bb.ay, label %bb.be

bb.bd:                                            ; preds = %.lr.ph721.a
  %i.hh = add i64 %i.gd, %.sroa.0.0.i.i240.i
  %umax.i244.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.99.1.i.lcssa, i64 %i.hh)
  br label %.invoke.i

bb.be:                                            ; preds = %bb.bc
  %.reass1872.i.reass.reass = add i64 %i.gd, %invariant.op927
  %i.hi = add i64 %.reass1872.i.reass.reass, %.sroa.02.0.i242.i719
  br label %.sink.split.i246.i

.loopexit192.i:                                   ; preds = %.loopexit1431.i
  br label %.noexc.i

bb.bf:                                            ; preds = %_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.sroa.12.0.copyload.i) ]
  br i1 %i.bp, label %bb.bp, label %.preheader.i134.i

.preheader.i134.i:                                ; preds = %bb.bf
  %i.hj = trunc nuw i8 %.sroa.93.sroa.978.0.i to i1
  br i1 %i.hj, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i, label %.lr.ph.i135.preheader.i

.lr.ph.i135.preheader.i:                          ; preds = %.preheader.i134.i
  %i.hk = trunc nuw i8 %.sroa.93.sroa.0.0.i to i1 ; 2 uses
  %i.hl = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %i.hl, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i135.preheader.i
  %.not.i.i.i138.peel.i = icmp ult i64 %.sroa.5.0.i, %.sroa.016.sroa.13.0.copyload.i
  br i1 %.not.i.i.i138.peel.i, label %bb.bh, label %.split.i.i.i139.peel.i

.split.i.i.i139.peel.i:                           ; preds = %bb.bg
  %i.hm = icmp eq i64 %.sroa.5.0.i, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.hm, label %bb.bi, label %.loopexit.invoke.i

bb.bh:                                            ; preds = %bb.bg
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %.sroa.5.0.i
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !14827, !noalias !14828, !noundef !13
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.bi, label %.loopexit.invoke.i

bb.bi:                                            ; preds = %bb.bh, %.split.i.i.i139.peel.i, %.lr.ph.i135.preheader.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %.sroa.5.0.i ; 4 uses
  %i.hr = icmp samesign eq i64 %.sroa.5.0.i, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.hr, label %.loopexit1462.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hs = load i8, ptr %i.hq, align 1, !noalias !14829, !noundef !13 ; 5 uses
  %i.ht = icmp sgt i8 %i.hs, -1
  br i1 %i.ht, label %bb.bk, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.peel.i: ; preds = %bb.bj
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  %i.hv = and i8 %i.hs, 31
  %i.hw = zext nneg i8 %i.hv to i32               ; 3 uses
  %i.hx = add nuw nsw i64 %.sroa.5.0.i, 1
  %i.hy = icmp samesign ne i64 %i.hx, %.sroa.016.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.hy)
  %i.hz = load i8, ptr %i.hu, align 1, !noalias !14829, !noundef !13
  %i.ia = shl nuw nsw i32 %i.hw, 6
  %i.ib = and i8 %i.hz, 63
  %i.ic = zext nneg i8 %i.ib to i32               ; 2 uses
  %i.id = or disjoint i32 %i.ia, %i.ic
  %i.ie = icmp samesign ugt i8 %i.hs, -33
  br i1 %i.ie, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.peel.i, label %bb.bl

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.peel.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ig = add nuw nsw i64 %.sroa.5.0.i, 2
  %i.ih = icmp samesign ne i64 %i.ig, %.sroa.016.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.ih)
  %i.ii = load i8, ptr %i.if, align 1, !noalias !14829, !noundef !13
  %i.ij = shl nuw nsw i32 %i.ic, 6
  %i.ik = and i8 %i.ii, 63
  %i.il = zext nneg i8 %i.ik to i32
  %i.im = or disjoint i32 %i.ij, %i.il            ; 2 uses
  %i.in = shl nuw nsw i32 %i.hw, 12
  %i.io = or disjoint i32 %i.im, %i.in
  %i.ip = icmp samesign ugt i8 %i.hs, -17
  br i1 %i.ip, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.peel.i, label %bb.bl

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.peel.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ir = add nuw nsw i64 %.sroa.5.0.i, 3
  %i.is = icmp samesign ne i64 %i.ir, %.sroa.016.sroa.13.0.copyload.i
  call void @llvm.assume(i1 %i.is)
end_hunk_0
begin_hunk_1_@_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringINtNtCs7p2uQeJxui2_9deltalake5error18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtB5_12SpecToString14spec_to_stringBD_:bb.a
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.ks
  %i.kx = load i8, ptr %i.kw, align 1, !alias.scope !14830, !noundef !13
  %.not.i230.i.us = icmp eq i8 %i.kv, %i.kx
  br i1 %.not.i230.i.us, label %.preheader.i.us, label %.split282.us

.split282.us:                                     ; preds = %bb.by
  %i.ky = add i64 %.sroa.93.sroa.0.0.insert.insert73.i, %i.ke
  br label %bb.bx

.preheader.i.preheader.split:                     ; preds = %.preheader.i.preheader
  br i1 %.not186.i.us713, label %.split.us, label %.invoke.i

.lr.ph712:                                        ; preds = %.preheader822.i.preheader, %.preheader822.i
  %.sroa.02.0.i225.i711 = phi i64 [ %i.kq, %.preheader822.i ], [ %.sroa.5.0.i, %.preheader822.i.preheader ] ; 4 uses
  %i.kz = add i64 %.sroa.02.0.i225.i711, %i.ke    ; 2 uses
  %i.la = icmp ult i64 %i.kz, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.la, label %bb.bz, label %bb.ca

.split.us:                                        ; preds = %.preheader.i.us.preheader, %.preheader.i.us, %.preheader.i.preheader.split
  %i.lb = add i64 %i.ke, %.sroa.016.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

bb.bz:                                            ; preds = %.lr.ph712
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %.sroa.02.0.i225.i711
  %i.ld = load i8, ptr %i.lc, align 1, !alias.scope !14831, !noundef !13
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.kz
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !14830, !noundef !13
  %.not21.i228.i = icmp eq i8 %i.ld, %i.lf
  br i1 %.not21.i228.i, label %.preheader822.i, label %bb.cb

bb.ca:                                            ; preds = %.lr.ph712
  %i.lg = add i64 %i.ke, %.sroa.5.0.i
  %umax.i227.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.016.sroa.13.0.copyload.i, i64 %i.lg)
  br label %.invoke.i

bb.cb:                                            ; preds = %bb.bz
  %.reass1870.i.reass.reass = add i64 %i.ke, %invariant.op926
  %i.lh = add i64 %.reass1870.i.reass.reass, %.sroa.02.0.i225.i711
  br label %bb.bx

bb.cc:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !14832)
  call void @llvm.experimental.noalias.scope.decl(metadata !14833)
  br i1 %i.ji, label %.lr.ph.i201.i, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

.lr.ph.i201.i:                                    ; preds = %bb.cc
  %.sroa.93.sroa.978.0.insert.ext.i = zext i8 %.sroa.93.sroa.978.0.i to i64
  %.sroa.93.sroa.978.0.insert.shift.i = shl nuw nsw i64 %.sroa.93.sroa.978.0.insert.ext.i, 16
  %.sroa.93.sroa.0.0.insert.ext.i = zext i8 %.sroa.93.sroa.0.0.i to i64
  %i.li = or disjoint i64 %.sroa.93.sroa.978.0.insert.shift.i, %.sroa.93.sroa.0.0.insert.ext.i
  %.sroa.93.sroa.0.0.insert.insert.i = or disjoint i64 %i.li, %i.br ; 2 uses
  %i.lj = sub i64 %.sroa.016.sroa.15.0.copyload.i, %.sroa.93.sroa.0.0.insert.insert.i
  %invariant.op = sub i64 1, %.sroa.5.0.i
  br label %bb.cd

bb.cd:                                            ; preds = %.sink.split.i209.i, %.lr.ph.i201.i
  %i.lk = phi i64 [ %.sroa.317.0.i, %.lr.ph.i201.i ], [ %.sink.i210.i, %.sink.split.i209.i ] ; 3 uses
  %i.ll = phi i64 [ %i.jh, %.lr.ph.i201.i ], [ %i.lv, %.sink.split.i209.i ]
  %i.lm = phi i64 [ %.sroa.19.0.i, %.lr.ph.i201.i ], [ %.ph71.i211.i, %.sink.split.i209.i ] ; 8 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.ll
  %i.lo = load i8, ptr %i.ln, align 1, !alias.scope !14832, !noundef !13
  %i.lp = and i8 %i.lo, 63
  %i.lq = zext nneg i8 %i.lp to i64
  %i.lr = shl nuw i64 1, %i.lq
  %i.ls = and i64 %i.lr, %.sroa.016.sroa.7.0.copyload.i
  %i.lt = icmp eq i64 %i.ls, 0
  br i1 %i.lt, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.lu = add i64 %i.lm, %.sroa.016.sroa.15.0.copyload.i
  br label %.sink.split.i209.i

bb.cf:                                            ; preds = %bb.cd
  %.sroa.0.0.i.i203.i = call i64 @llvm.umax.i64(i64 %i.lk, i64 %.sroa.5.0.i) ; 4 uses
  %umax49.i204.i = call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i203.i, i64 range(i64 0, -9223372036854775808) %.sroa.016.sroa.15.0.copyload.i)
  %exitcond.not.i206.i704.not = icmp ult i64 %.sroa.0.0.i.i203.i, %.sroa.016.sroa.15.0.copyload.i
  br i1 %exitcond.not.i206.i704.not, label %.lr.ph, label %.preheader187.i.preheader

.sink.split.i209.i:                               ; preds = %bb.cm, %bb.cj, %bb.ce
  %.sink.i210.i = phi i64 [ %i.lj, %bb.cj ], [ 0, %bb.cm ], [ 0, %bb.ce ] ; 2 uses
  %.ph71.i211.i = phi i64 [ %i.ml, %bb.cj ], [ %i.mr, %bb.cm ], [ %i.lu, %bb.ce ] ; 2 uses
  %i.lv = add i64 %.ph71.i211.i, %i.bq            ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.lw, label %bb.cd, label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

bb.cg:                                            ; preds = %bb.ck
  %i.lx = add nuw i64 %.sroa.02.0.i205.i705, 1    ; 2 uses
  %exitcond.not.i206.i = icmp eq i64 %i.lx, %umax49.i204.i
  br i1 %exitcond.not.i206.i, label %.preheader187.i.preheader, label %.lr.ph

.preheader187.i.preheader:                        ; preds = %bb.cg, %bb.cf
  %i.ly = icmp ult i64 %i.lk, %.sroa.5.0.i
  br i1 %i.ly, label %.lr.ph708, label %.preheader187.i.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.cf, %bb.cg
  %.sroa.02.0.i205.i705 = phi i64 [ %i.lx, %bb.cg ], [ %.sroa.0.0.i.i203.i, %bb.cf ] ; 4 uses
  %i.lz = add i64 %.sroa.02.0.i205.i705, %i.lm    ; 2 uses
  %i.ma = icmp ult i64 %i.lz, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.ma, label %bb.ck, label %bb.cl

.preheader187.i:                                  ; preds = %bb.ci
  %i.mb = icmp ult i64 %i.lk, %i.md
  br i1 %i.mb, label %.lr.ph708, label %.preheader187.i.preheader._crit_edge

.preheader187.i.preheader._crit_edge:             ; preds = %.preheader187.i.preheader, %.preheader187.i
  %i.mc = add i64 %i.lm, %.sroa.016.sroa.15.0.copyload.i ; 2 uses
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

.lr.ph708:                                        ; preds = %.preheader187.i.preheader, %.preheader187.i
  %.sroa.2.0.i212.i707 = phi i64 [ %i.md, %.preheader187.i ], [ %.sroa.5.0.i, %.preheader187.i.preheader ]
  %i.md = add i64 %.sroa.2.0.i212.i707, -1        ; 6 uses
  %i.me = icmp ult i64 %i.md, %.sroa.016.sroa.15.0.copyload.i
  br i1 %i.me, label %bb.ch, label %.invoke.i

bb.ch:                                            ; preds = %.lr.ph708
  %i.mf = add i64 %i.md, %i.lm                    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %.sroa.016.sroa.13.0.copyload.i
  br i1 %i.mg, label %bb.ci, label %.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %i.md
  %i.mi = load i8, ptr %i.mh, align 1, !alias.scope !14833, !noundef !13
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.mf
  %i.mk = load i8, ptr %i.mj, align 1, !alias.scope !14832, !noundef !13
  %.not.i213.i = icmp eq i8 %i.mi, %i.mk
  br i1 %.not.i213.i, label %.preheader187.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ml = add i64 %i.lm, %.sroa.93.sroa.0.0.insert.insert.i
  br label %.sink.split.i209.i

bb.ck:                                            ; preds = %.lr.ph
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.14.0.copyload.i, i64 %.sroa.02.0.i205.i705
  %i.mn = load i8, ptr %i.mm, align 1, !alias.scope !14833, !noundef !13
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %i.lz
  %i.mp = load i8, ptr %i.mo, align 1, !alias.scope !14832, !noundef !13
  %.not21.i208.i = icmp eq i8 %i.mn, %i.mp
  br i1 %.not21.i208.i, label %bb.cg, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph
  %i.mq = add i64 %i.lm, %.sroa.0.0.i.i203.i
  %umax.i207.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.016.sroa.13.0.copyload.i, i64 %i.mq)
  br label %.invoke.i

bb.cm:                                            ; preds = %bb.ck
  %.reass1868.i.reass.reass = add i64 %i.lm, %invariant.op
  %i.mr = add i64 %.reass1868.i.reass.reass, %.sroa.02.0.i205.i705
  br label %.sink.split.i209.i

bb.cn:                                            ; preds = %.loopexit1462.i
  br label %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i

_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i: ; preds = %.sink.split.i209.i, %bb.bx, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i, %bb.bt, %bb.cn, %.preheader187.i.preheader._crit_edge, %bb.cc, %.split.us, %bb.bu, %.loopexit1462.i, %bb.bs, %bb.bl, %.preheader.i134.i
  %.sroa.5.4132.i = phi i64 [ %.sroa.016.sroa.13.0.copyload.i, %.loopexit1462.i ], [ %.sroa.5.0.i, %.preheader187.i.preheader._crit_edge ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bs ], [ %.sroa.5.0.i, %.split.us ], [ %.sroa.5.0.i, %bb.cc ], [ %.sroa.5.0.i, %bb.bx ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.cn ], [ %.sroa.5.0.i, %.preheader.i134.i ], [ %.sroa.5.0.i, %bb.bu ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ %.sroa.5.0.i, %bb.bl ], [ %i.jj, %bb.bt ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sroa.5.0.i, %.sink.split.i209.i ]
  %.sroa.19.4130.i = phi i64 [ %.sroa.19.0.i, %.loopexit1462.i ], [ %i.mc, %.preheader187.i.preheader._crit_edge ], [ %.sroa.19.0.i, %bb.bs ], [ %i.lb, %.split.us ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.cc ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bx ], [ %.sroa.19.0.i, %bb.cn ], [ %.sroa.19.0.i, %.preheader.i134.i ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bu ], [ %.sroa.19.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ %.sroa.19.0.i, %bb.bl ], [ %.sroa.19.0.i, %bb.bt ], [ %.sroa.19.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ %.sroa.19.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sroa.016.sroa.13.0.copyload.i, %.sink.split.i209.i ]
  %.sroa.317.4128.i = phi i64 [ %.sroa.317.0.i, %.loopexit1462.i ], [ 0, %.preheader187.i.preheader._crit_edge ], [ %.sroa.317.0.i, %bb.bs ], [ -1, %.split.us ], [ %.sroa.317.0.i, %bb.cc ], [ -1, %bb.bx ], [ %.sroa.317.0.i, %bb.cn ], [ %.sroa.317.0.i, %.preheader.i134.i ], [ -1, %bb.bu ], [ %.sroa.317.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ %.sroa.317.0.i, %bb.bl ], [ %.sroa.317.0.i, %bb.bt ], [ %.sroa.317.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ %.sroa.317.0.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sink.i210.i, %.sink.split.i209.i ]
  %.sroa.93.sroa.0.4126.i = phi i8 [ 0, %.loopexit1462.i ], [ %.sroa.93.sroa.0.0.i, %.preheader187.i.preheader._crit_edge ], [ 0, %bb.bs ], [ %.sroa.93.sroa.0.0.i, %.split.us ], [ %.sroa.93.sroa.0.0.i, %bb.cc ], [ %.sroa.93.sroa.0.0.i, %bb.bx ], [ 1, %bb.cn ], [ %.sroa.93.sroa.0.0.i, %.preheader.i134.i ], [ %.sroa.93.sroa.0.0.i, %bb.bu ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ 0, %bb.bl ], [ 0, %bb.bt ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sroa.93.sroa.0.0.i, %.sink.split.i209.i ]
  %.sroa.93.sroa.978.3124.i = phi i8 [ 0, %.loopexit1462.i ], [ %.sroa.93.sroa.978.0.i, %.preheader187.i.preheader._crit_edge ], [ 0, %bb.bs ], [ %.sroa.93.sroa.978.0.i, %.split.us ], [ %.sroa.93.sroa.978.0.i, %bb.cc ], [ %.sroa.93.sroa.978.0.i, %bb.bx ], [ 1, %bb.cn ], [ 1, %.preheader.i134.i ], [ %.sroa.93.sroa.978.0.i, %bb.bu ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ 0, %bb.bl ], [ 0, %bb.bt ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sroa.93.sroa.978.0.i, %.sink.split.i209.i ]
  %.sroa.54.3.i = phi i1 [ false, %.loopexit1462.i ], [ false, %.preheader187.i.preheader._crit_edge ], [ false, %bb.bs ], [ false, %.split.us ], [ true, %bb.cc ], [ true, %bb.bx ], [ true, %bb.cn ], [ true, %.preheader.i134.i ], [ true, %bb.bu ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ false, %bb.bl ], [ false, %bb.bt ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ true, %.sink.split.i209.i ]
  %.sroa.44.2.i = phi i64 [ %.sroa.016.sroa.13.0.copyload.i, %.loopexit1462.i ], [ %i.mc, %.preheader187.i.preheader._crit_edge ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bs ], [ %i.lb, %.split.us ], [ %.sroa.44.0.i, %bb.cc ], [ %.sroa.44.0.i, %bb.bx ], [ %.sroa.44.0.i, %bb.cn ], [ %.sroa.44.0.i, %.preheader.i134.i ], [ %.sroa.44.0.i, %bb.bu ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ %.sroa.5.0.i, %bb.bl ], [ %i.jj, %bb.bt ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %.sroa.44.0.i, %.sink.split.i209.i ]
  %.sroa.793.3.pn.i = phi i64 [ %.sroa.016.sroa.13.0.copyload.i, %.loopexit1462.i ], [ %i.lm, %.preheader187.i.preheader._crit_edge ], [ %.sroa.016.sroa.13.0.copyload.i, %bb.bs ], [ %i.ke, %.split.us ], [ %i.bh, %bb.cc ], [ %i.bh, %bb.bx ], [ %i.bh, %bb.cn ], [ %i.bh, %.preheader.i134.i ], [ %i.bh, %bb.bu ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i140.i ], [ %.sroa.5.0.i, %bb.bl ], [ %i.jj, %bb.bt ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i149.i ], [ %i.jj, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i148.i ], [ %i.bh, %.sink.split.i209.i ]
  %.sroa.0.0.i.i.i.i7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.sroa.12.0.copyload.i, i64 %.sroa.44.0.i
  %.sroa.4.0.i.i.i.i6.i.i = sub nuw i64 %.sroa.793.3.pn.i, %.sroa.44.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14834
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i7.i.i, i64 noundef %.sroa.4.0.i.i.i.i6.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 11)
          to label %.noexc105.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105.i:                                      ; preds = %_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1L_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmt0EEINtB5_8FuseImplBY_E4nextB1N_.exit.i.i
  %.sroa.0.0.copyload30.i.i = load i64, ptr %i.b, align 8, !noalias !14835 ; 2 uses
  %.sroa.8.i.sroa.0.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx31.i.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.6.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835 ; 4 uses
  %.sroa.8.i.sroa.7.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.10.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.12.0.copyload.i = load ptr, ptr %.sroa.8.i.sroa.12.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.13.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.13.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.14.0.copyload.i = load ptr, ptr %.sroa.8.i.sroa.14.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  %.sroa.8.i.sroa.15.0.copyload.i = load i64, ptr %.sroa.8.i.sroa.15.0..sroa.8.0..sroa_idx31.i.sroa_idx.i, align 8, !noalias !14835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14834
  %.not1.i.i = icmp eq i64 %.sroa.0.0.copyload30.i.i, 2
  br i1 %.not1.i.i, label %.thread.i.split, label %._crit_edge

._crit_edge:                                      ; preds = %.noexc105.i
  %.sroa.6818.sroa.0.0.extract.trunc.i.le = trunc i64 %.sroa.8.i.sroa.6.0.copyload.i to i8
  %.sroa.6818.sroa.9.0.extract.shift.i.le = lshr i64 %.sroa.8.i.sroa.6.0.copyload.i, 8
  %.sroa.6818.sroa.9.0.extract.trunc.i.le = trunc i64 %.sroa.6818.sroa.9.0.extract.shift.i.le to i8
  %.sroa.6818.sroa.961.0.extract.shift.i.le = lshr i64 %.sroa.8.i.sroa.6.0.copyload.i, 16
  %.sroa.6818.sroa.961.0.extract.trunc.i.le = trunc i64 %.sroa.6818.sroa.961.0.extract.shift.i.le to i8
  %.sroa.6818.sroa.11.0.extract.shift.i.le = lshr i64 %.sroa.8.i.sroa.6.0.copyload.i, 24
  %.sroa.6818.sroa.11.0.extract.trunc.i.le = trunc nuw i64 %.sroa.6818.sroa.11.0.extract.shift.i.le to i40
  br label %bb.x

.noexc.i:                                         ; preds = %.sink.split.i246.i, %bb.ap, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i, %bb.al, %.loopexit192.i, %.preheader189.i.preheader._crit_edge, %bb.au, %.split348.us, %bb.am, %.loopexit1431.i, %bb.ak, %bb.ad, %.preheader.i154.i
  %.sroa.5815.11024.i = phi i64 [ 1, %.split348.us ], [ 1, %bb.ap ], [ 1, %.preheader189.i.preheader._crit_edge ], [ 0, %bb.ad ], [ 0, %.loopexit1431.i ], [ 0, %.loopexit192.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ 0, %bb.ak ], [ 1, %bb.au ], [ 0, %.preheader.i154.i ], [ 1, %bb.am ], [ 0, %bb.al ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ 1, %.sink.split.i246.i ]
  %.sroa.6818.sroa.961.6.i = phi i8 [ %.sroa.6818.sroa.961.1.i.lcssa, %.split348.us ], [ %.sroa.6818.sroa.961.1.i.lcssa, %bb.ap ], [ %.sroa.6818.sroa.961.1.i.lcssa, %.preheader189.i.preheader._crit_edge ], [ 0, %bb.ad ], [ 0, %.loopexit1431.i ], [ 1, %.loopexit192.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ 0, %bb.ak ], [ %.sroa.6818.sroa.961.1.i.lcssa, %bb.au ], [ 1, %.preheader.i154.i ], [ %.sroa.6818.sroa.961.1.i.lcssa, %bb.am ], [ 0, %bb.al ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.6818.sroa.961.1.i.lcssa, %.sink.split.i246.i ]
  %.sroa.6818.sroa.0.7.i = phi i8 [ %.sroa.6818.sroa.0.1.i.lcssa, %.split348.us ], [ %.sroa.6818.sroa.0.1.i.lcssa, %bb.ap ], [ %.sroa.6818.sroa.0.1.i.lcssa, %.preheader189.i.preheader._crit_edge ], [ 0, %bb.ad ], [ 0, %.loopexit1431.i ], [ 1, %.loopexit192.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ 0, %bb.ak ], [ %.sroa.6818.sroa.0.1.i.lcssa, %bb.au ], [ %.sroa.6818.sroa.0.1.i.lcssa, %.preheader.i154.i ], [ %.sroa.6818.sroa.0.1.i.lcssa, %bb.am ], [ 0, %bb.al ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ 0, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.6818.sroa.0.1.i.lcssa, %.sink.split.i246.i ]
  %.sroa.110.6.i = phi i1 [ false, %.split348.us ], [ true, %bb.ap ], [ false, %.preheader189.i.preheader._crit_edge ], [ false, %bb.ad ], [ false, %.loopexit1431.i ], [ true, %.loopexit192.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ false, %bb.ak ], [ true, %bb.au ], [ true, %.preheader.i154.i ], [ true, %bb.am ], [ false, %bb.al ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ false, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ true, %.sink.split.i246.i ]
  %.sroa.103.3.i = phi i64 [ %i.fq, %.split348.us ], [ %.sroa.103.1.i.lcssa, %bb.ap ], [ %i.gt, %.preheader189.i.preheader._crit_edge ], [ %.sroa.63.1.i.lcssa311, %bb.ad ], [ %.sroa.63.1.i.lcssa311, %.loopexit1431.i ], [ %.sroa.103.1.i.lcssa, %.loopexit192.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ %.sroa.99.1.i.lcssa, %bb.ak ], [ %.sroa.103.1.i.lcssa, %bb.au ], [ %.sroa.103.1.i.lcssa, %.preheader.i154.i ], [ %.sroa.103.1.i.lcssa, %bb.am ], [ %i.dw, %bb.al ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.103.1.i.lcssa, %.sink.split.i246.i ]
  %.sroa.9022.7.i = phi i64 [ -1, %.split348.us ], [ -1, %bb.ap ], [ 0, %.preheader189.i.preheader._crit_edge ], [ %.sroa.9022.1.i.lcssa, %bb.ad ], [ %.sroa.9022.1.i.lcssa, %.loopexit1431.i ], [ %.sroa.9022.1.i.lcssa, %.loopexit192.i ], [ %.sroa.9022.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ %.sroa.9022.1.i.lcssa, %bb.ak ], [ %.sroa.9022.1.i.lcssa, %bb.au ], [ %.sroa.9022.1.i.lcssa, %.preheader.i154.i ], [ -1, %bb.am ], [ %.sroa.9022.1.i.lcssa, %bb.al ], [ %.sroa.9022.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ %.sroa.9022.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sink.i247.i, %.sink.split.i246.i ]
  %.sroa.78.7.i = phi i64 [ %i.fq, %.split348.us ], [ %.sroa.99.1.i.lcssa, %bb.ap ], [ %i.gt, %.preheader189.i.preheader._crit_edge ], [ %.sroa.78.1.i.lcssa, %bb.ad ], [ %.sroa.78.1.i.lcssa, %.loopexit1431.i ], [ %.sroa.78.1.i.lcssa, %.loopexit192.i ], [ %.sroa.78.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ %.sroa.78.1.i.lcssa, %bb.ak ], [ %.sroa.99.1.i.lcssa, %bb.au ], [ %.sroa.78.1.i.lcssa, %.preheader.i154.i ], [ %.sroa.99.1.i.lcssa, %bb.am ], [ %.sroa.78.1.i.lcssa, %bb.al ], [ %.sroa.78.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ %.sroa.78.1.i.lcssa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.99.1.i.lcssa, %.sink.split.i246.i ]
  %.sroa.63.7.i = phi i64 [ %.us-phi1475.i, %.split348.us ], [ %.sroa.63.1.i.lcssa311, %bb.ap ], [ %.sroa.63.1.i.lcssa311, %.preheader189.i.preheader._crit_edge ], [ %.sroa.63.1.i.lcssa311, %bb.ad ], [ %.sroa.63.1.i.lcssa311, %.loopexit1431.i ], [ %.sroa.63.1.i.lcssa311, %.loopexit192.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ %.sroa.99.1.i.lcssa, %bb.ak ], [ %.sroa.63.1.i.lcssa311, %bb.au ], [ %.sroa.63.1.i.lcssa311, %.preheader.i154.i ], [ %.sroa.63.1.i.lcssa311, %bb.am ], [ %i.dw, %bb.al ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.63.1.i.lcssa311, %.sink.split.i246.i ]
  %.sroa.107.1.pn.i = phi i64 [ %i.et, %.split348.us ], [ %.sroa.107.1.i.lcssa, %bb.ap ], [ %i.gd, %.preheader189.i.preheader._crit_edge ], [ %.sroa.63.1.i.lcssa311, %bb.ad ], [ %.sroa.63.1.i.lcssa311, %.loopexit1431.i ], [ %.sroa.107.1.i.lcssa, %.loopexit192.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit12.i.i.i160.i ], [ %.sroa.99.1.i.lcssa, %bb.ak ], [ %.sroa.107.1.i.lcssa, %bb.au ], [ %.sroa.107.1.i.lcssa, %.preheader.i154.i ], [ %.sroa.107.1.i.lcssa, %bb.am ], [ %i.dw, %bb.al ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit16.i.i.i169.i ], [ %i.dw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit14.i.i.i168.i ], [ %.sroa.107.1.i.lcssa, %.sink.split.i246.i ] ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.9523.1.i.lcssa, i64 %.sroa.103.1.i.lcssa ; 3 uses
  %.sroa.3.0.i20.pn.i.i = sub nuw i64 %.sroa.107.1.pn.i, %.sroa.103.1.i.lcssa ; 3 uses
  store ptr %.sroa.0.0.i.i, ptr %i.l, align 8, !noalias !14815
  store i64 %.sroa.3.0.i20.pn.i.i, ptr %i.bc, align 8, !noalias !14815
  %i.ms = icmp eq i64 %.sroa.107.1.pn.i, %.sroa.103.1.i.lcssa
  br i1 %i.ms, label %.loopexit197.i.backedge, label %bb.co

.thread.i.split:                                  ; preds = %_RNvYNvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitReENtNtNtNtBc_4iter6traits8iterator8Iterator4nextINtNtNtBc_3ops8function6FnOnceTQB5_EE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.lr.ph, %.noexc105.i
  %i.mt = icmp eq ptr %i.bd, %i.ba
  br i1 %i.mt, label %._crit_edge.i, label %bb.s

bb.co:                                            ; preds = %.noexc.i
  %i.mu = load ptr, ptr %i.aw, align 8, !noalias !14815, !nonnull !13, !noundef !13
  %i.mv = load i64, ptr %i.ax, align 8, !noalias !14815, !noundef !13
  %i.mw = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.mu, i64 noundef %i.mv)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.mw, label %.loopexit197.i.backedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mx = load ptr, ptr %i.aw, align 8, !noalias !14815, !nonnull !13, !noundef !13 ; 2 uses
  %i.my = load i64, ptr %i.ax, align 8, !noalias !14815, !noundef !13 ; 2 uses
  %.idx = shl nuw nsw i64 %i.my, 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx
  %.not.not.not.i.not.i734 = icmp eq i64 %i.my, 0
  br i1 %.not.not.not.i.not.i734, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i, label %.lr.ph736

bb.cr:                                            ; preds = %.noexc107.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.na, %i.mz
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i, label %.lr.ph736

.lr.ph736:                                        ; preds = %bb.cq, %bb.cr
  %i.nb = phi ptr [ %i.na, %bb.cr ], [ %i.mx, %bb.cq ] ; 3 uses
  %.val3.i.i = load ptr, ptr %i.nb, align 8, !noalias !14836, !nonnull !13, !noundef !13
  %i.nc = getelementptr i8, ptr %i.nb, i64 8
  %.val4.i.i = load i64, ptr %i.nc, align 8, !noalias !14836, !noundef !13
  %i.nd = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.3.0.i20.pn.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val3.i.i, i64 noundef %.val4.i.i) #32
          to label %.noexc107.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107.i:                                      ; preds = %.lr.ph736
  br i1 %i.nd, label %.loopexit197.i.backedge, label %bb.cr

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i: ; preds = %bb.cr, %bb.cq
  %i.ne = load i64, ptr %i.ax, align 8, !alias.scope !14837, !noalias !14815, !noundef !13 ; 3 uses
  %i.nf = load i64, ptr %i.m, align 8, !range !26, !alias.scope !14837, !noalias !14815, !noundef !13
  %i.ng = icmp eq i64 %i.ne, %i.nf
  br i1 %i.ng, label %bb.cs, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i

bb.cs:                                            ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCs7QZdtHb2D1i_9aws_sigv4(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cs, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXNtCs7p2uQeJxui2_9deltalake5errorINtB1H_18DisplaySourceChainNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtBb_3fmt7Display3fmts_0EB1J_.exit.i
  %i.nh = load ptr, ptr %i.aw, align 8, !alias.scope !14837, !noalias !14815, !nonnull !13, !noundef !13
  %i.ni = getelementptr inbounds nuw [16 x i8], ptr %i.nh, i64 %i.ne ; 2 uses
  store ptr %.sroa.0.0.i.i, ptr %i.ni, align 8, !noalias !14838
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  store i64 %.sroa.3.0.i20.pn.i.i, ptr %i.nj, align 8
  %i.nk = add i64 %i.ne, 1
  store i64 %i.nk, ptr %i.ax, align 8, !alias.scope !14837, !noalias !14815
  br label %.loopexit197.i.backedge

.loopexit197.i.backedge:                          ; preds = %.noexc107.i, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReE8push_mutCs7p2uQeJxui2_9deltalake.exit.i, %bb.cp, %.noexc.i
  br label %.loopexit197.i

._crit_edge814.i:                                 ; preds = %bb.cz, %bb.v, %._crit_edge.i, %bb.r
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %._crit_edge814.i
  %i.nl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.cv

bb.cu:                                            ; preds = %._crit_edge814.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.split-lp212.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cv:                                            ; preds = %bb.ct
  %i.nm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !14815
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit128.i unwind label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.no = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit128.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit117.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit.i
  %i.np = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit117.i ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit.i ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.dr unwind label %bb.dq

bb.cy:                                            ; preds = %bb.cz, %.peel.next.i
  %.sroa.089.0811.i = phi ptr [ %i.bn, %.peel.next.i ], [ %i.nq, %bb.cz ] ; 2 uses
  %.sroa.8.0810.i = phi i64 [ 1, %.peel.next.i ], [ %i.nr, %bb.cz ] ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.089.0811.i, i64 16 ; 2 uses
  %i.nr = add nuw nsw i64 %.sroa.8.0810.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14815
  store ptr %.sroa.089.0811.i, ptr %i.k, align 8, !noalias !14815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14815
  %.reass.i = add i64 %invariant.op.i, %.sroa.8.0810.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14815
  invoke void @_RNvMNtCs6Po7BT7Nknu_5alloc5sliceSh6repeatCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @117, i64 noundef 1, i64 noundef %.reass.i)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i122.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14815
  %.not820.i = icmp eq ptr %i.nq, %i.bi
  br i1 %.not820.i, label %._crit_edge814.i, label %bb.cy, !llvm.loop !14814

bb.da:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14815
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.dc unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.dd

bb.dc:                                            ; preds = %bb.da
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs7p2uQeJxui2_9deltalake.exit117.i unwind label %.loopexit.split-lp212.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dd:                                            ; preds = %bb.db
  %i.nt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.de:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !14815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14815
  store ptr %i.i, ptr %i.h, align 8, !noalias !14815
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.477.0..sroa_idx.i, align 8, !noalias !14815
  store ptr %i.k, ptr %i.bm, align 8, !noalias !14815
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRReNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.481.0..sroa_idx.i, align 8, !noalias !14815
  %i.nu = invoke noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @183, ptr noundef nonnull @118, ptr noundef nonnull %i.h)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #29
          to label %.body118.i unwind label %bb.do

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14815
  br i1 %i.nu, label %.loopexit1475.i, label %bb.dj

.loopexit1475.i:                                  ; preds = %bb.dg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.dh

bb.dh:                                            ; preds = %.loopexit1475.i
  %i.nv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body118.i unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.loopexit1475.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.dg
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i122.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %lpad.loopexit1478.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body118.i unwind label %bb.dl
end_hunk_1
