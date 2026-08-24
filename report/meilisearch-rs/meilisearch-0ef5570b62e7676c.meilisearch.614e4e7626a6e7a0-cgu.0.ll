Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a

bb.dg:                                            ; preds = %bb.df
  %i.vs = add nuw i64 %.sroa.018.1561.i.i, 1      ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vq
  %i.vu = trunc nuw nsw i64 %.sroa.0131.0560.i.i to i32
  store i32 %i.vu, ptr %i.vt, align 4, !noalias !34382
  %i.vv = add nuw nsw i64 %i.vd, 1
  %exitcond835.not.i.i = icmp eq i64 %i.vd, %i.sv
  br i1 %exitcond835.not.i.i, label %.preheader253.i.i, label %.lr.ph563.i.i

.invoke3974.a:                                    ; preds = %bb.df, %bb.de, %bb.da, %.lr.ph563.i.i, %bb.cy, %bb.cx
  %i.vw = phi i64 [ %i.uw, %bb.cy ], [ %i.uu, %bb.cx ], [ %i.vq, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %i.vg, %bb.da ], [ %.sroa.018.1561.i.i, %bb.de ]
  %i.vx = phi i64 [ %.sroa.0.0.i.i, %bb.cy ], [ 64, %bb.cx ], [ 64, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %.sroa.0.0.i422.i.i, %bb.da ], [ %.sroa.12.5.i.i, %bb.de ]
  %i.vy = phi ptr [ @1558, %bb.cy ], [ @1557, %bb.cx ], [ @1563, %bb.df ], [ @1559, %.lr.ph563.i.i ], [ @1560, %bb.da ], [ @1562, %bb.de ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vw, i64 noundef %i.vx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vy) #43
          to label %.cont3975.a unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont3975.a:                                      ; preds = %.invoke3974.a
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i": ; preds = %bb.cv
  %i.vz = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.uj) #38, !noalias !34382
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17ha75054a7c6aed61aE.exit550.i.i": ; preds = %bb.cn
  %i.wa = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i520.i.i) #38, !noalias !34382
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.lr.ph557.i.i:                                    ; preds = %.split.i.i, %bb.di
  %.sroa.0127.1556.i.i = phi i64 [ %.sroa.0127.1.i.i, %bb.di ], [ 1, %.split.i.i ] ; 3 uses
  %.sroa.043.3555.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %bb.di ], [ %.sroa.043.0574.i.i, %.split.i.i ] ; 3 uses
  %.sroa.0127.0554.i.i = phi i64 [ %.sroa.0127.1556.i.i, %bb.di ], [ 0, %.split.i.i ] ; 6 uses
  %i.wb = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427915.i.i, i64 %.sroa.0127.0554.i.i ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 1024
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1032) %i.wb, i8 0, i64 1032, i1 false), !noalias !34382
  store float 3.402000e+38, ptr %i.wd, align 8, !alias.scope !34565, !noalias !34382
  %i.we = add nuw nsw i64 %.sroa.0127.0554.i.i, %.sroa.047.1573.i.i ; 3 uses
  %i.wf = icmp ult i64 %i.we, %.sroa.0.0.i.i
  br i1 %i.wf, label %bb.dh, label %.invoke3972.a

bb.dh:                                            ; preds = %.lr.ph557.i.i
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.we
  %i.wh = load i32, ptr %i.wg, align 4, !noalias !34382, !noundef !27 ; 2 uses
  %.not.i167.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i167.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dh
  %i.wi = zext i32 %i.wh to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3555.i.i)
  %i.wj = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.dj, %bb.dh
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3555.i.i, %bb.dh ], [ %i.xd, %bb.dj ] ; 2 uses
  %i.wk = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h56fd6c289f2ade0fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.wb)
          to label %bb.di unwind label %.thread163.loopexit.i.i, !noalias !34382

bb.di:                                            ; preds = %._crit_edge.i.i
  store float %i.wk, ptr %i.wd, align 8, !alias.scope !34568, !noalias !34382
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0554.i.i
  %i.wm = trunc nuw nsw i64 %.sroa.0127.0554.i.i to i32 ; 2 uses
  store i32 %i.wm, ptr %i.wl, align 4, !noalias !34382
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0554.i.i
  store i32 %i.wm, ptr %i.wn, align 4, !noalias !34382
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0554.i.i
  store i32 1, ptr %i.wo, align 4, !noalias !34382
  %i.wp = icmp samesign ult i64 %.sroa.0127.1556.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.wq = zext i1 %i.wp to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1556.i.i, %i.wq
  br i1 %i.wp, label %.lr.ph557.i.i, label %._crit_edge558.i.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %.lr.ph.preheader.i.i
  %i.wr = phi i64 [ %i.xc, %bb.dj ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ws = phi i64 [ %i.xe, %bb.dj ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4553.i.i = phi i64 [ %i.xd, %bb.dj ], [ %.sroa.043.3555.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond828.not.i.i = icmp eq i64 %i.ws, %i.wj
  br i1 %exitcond828.not.i.i, label %.invoke3972.a, label %bb.dj

.invoke3972.a:                                    ; preds = %.lr.ph557.i.i, %.lr.ph.i.i
  %i.wt = phi i64 [ %.sroa.043.4553.i.i, %.lr.ph.i.i ], [ %i.we, %.lr.ph557.i.i ]
  %i.wu = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph557.i.i ]
  %i.wv = phi ptr [ @1567, %.lr.ph.i.i ], [ @1566, %.lr.ph557.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wt, i64 noundef %i.wu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wv) #43
          to label %.cont3973.a unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont3973.a:                                      ; preds = %.invoke3972.a
  unreachable

bb.dj:                                            ; preds = %.lr.ph.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4553.i.i
  %i.wx = load i8, ptr %i.ww, align 1, !alias.scope !34571, !noalias !34531, !noundef !27
  %i.wy = zext i8 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.wy ; 2 uses
  %i.xa = load i32, ptr %i.wz, align 4, !alias.scope !34574, !noalias !34382, !noundef !27
  %i.xb = add i32 %i.xa, 1
  store i32 %i.xb, ptr %i.wz, align 4, !alias.scope !34574, !noalias !34382
  %i.xc = add nuw nsw i64 %i.wr, 1                ; 2 uses
  store i64 %i.xc, ptr %i.wc, align 8, !alias.scope !34577, !noalias !34382
  %i.xd = add nuw i64 %.sroa.043.4553.i.i, 1      ; 2 uses
  %i.xe = add nuw nsw i64 %i.ws, 1
  %exitcond829.not.i.i = icmp eq i64 %i.ws, %i.wi
  br i1 %exitcond829.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dk:                                            ; preds = %bb.dn, %bb.al
  %.sroa.047.0551.i.i = phi i64 [ 0, %bb.al ], [ %i.xj, %bb.dn ] ; 2 uses
  %.sroa.059.0550.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.dn ] ; 5 uses
  %i.xf = icmp ult i64 %.sroa.059.0550.i.i, %.sroa.0.0.i.i
  br i1 %i.xf, label %bb.dl, label %.invoke.i.i

bb.dl:                                            ; preds = %bb.dk
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0550.i.i ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !noalias !34382, !noundef !27
  %i.xi = add i32 %i.xh, 1
  store i32 %i.xi, ptr %i.xg, align 4, !noalias !34382
  %i.xj = add nuw i64 %.sroa.047.0551.i.i, 1      ; 3 uses
  %i.xk = icmp eq i64 %i.xj, %i.aq                ; 2 uses
  br i1 %i.xk, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.xl = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0551.i.i
  %i.xm = load i8, ptr %i.xl, align 1, !alias.scope !34368, !noalias !34580, !noundef !27
  %i.xn = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.xj
  %i.xo = load i8, ptr %i.xn, align 1, !alias.scope !34368, !noalias !34580, !noundef !27
  %.not238.i.i = icmp eq i8 %i.xm, %i.xo
  br i1 %.not238.i.i, label %bb.dn, label %bb.do

.invoke.i.i:                                      ; preds = %bb.dk
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0550.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dn:                                            ; preds = %bb.do, %bb.dm
  %.sroa.059.1.i.i = phi i64 [ %i.xp, %bb.do ], [ %.sroa.059.0550.i.i, %bb.dm ]
  br i1 %i.xk, label %.split.i.i, label %bb.dk

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %i.xp = add nuw nsw i64 %.sroa.059.0550.i.i, 1
  br label %bb.dn

.thread130.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.i.i, %bb.am
  %.pn230155.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn926.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.am ], [ %.sroa.016.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.016.6925.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.am ], [ %.sroa.14.6.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.6924.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i = phi ptr [ %.sroa.026.4.ph162.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i = phi i64 [ %.sroa.12.4.ph161.i.i, %bb.am ], [ 0, %.loopexit.split-lp.i.i ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i = phi ptr [ %.sroa.044.1.ph160.i.i, %bb.am ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.11.0147.i.i = phi i1 [ %.sroa.11.1.ph159.i.i, %bb.am ], [ true, %.loopexit.split-lp.i.i ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %.sroa.051.0146.i.i = phi ptr [ %i.kk, %bb.am ], [ %.sroa.051.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.051.2923.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i = phi i64 [ %i.uo, %bb.am ], [ %.sroa.1152.2.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.1152.2922.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ]
  %i.xq = icmp eq i64 %.sroa.1152.0145.i.i, 0
  br i1 %i.xq, label %bb.bn, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i551.i.i": ; preds = %.thread130.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i) #38, !noalias !34382
  br label %bb.bn

bb.dp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ij, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn100.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.xr = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xr, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i": ; preds = %bb.dp
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !34382
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xt, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"
  %i.xu = phi ptr [ %i.ho, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.hj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85931.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.xs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xu) ]
  tail call void @mi_free(ptr noundef nonnull %i.xu) #38, !noalias !34382
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit215.i"

bb.dq:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1424.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0423.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.ann, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34584)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34592)
  %i.xv = icmp eq i64 %.sroa.0.0423.i, 0
  br i1 %i.xv, label %.loopexit.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xw = add i64 %.sroa.0.0423.i, 7
  %i.xx = lshr i64 %i.xw, 3                       ; 8 uses
  %i.xy = icmp eq i64 %.sroa.0.0423.i, 1
  br i1 %i.xy, label %.preheader.i.i.preheader, label %bb.ds

.preheader.i.i.preheader:                         ; preds = %bb.dr
  br i1 %min.iters.check, label %.preheader.i.i.preheader4592, label %vector.body3731

.preheader.i.i.preheader4592:                     ; preds = %vector.body3731, %.preheader.i.i.preheader
  %.ph4593 = phi i64 [ 1, %.preheader.i.i.preheader ], [ %i.hb, %vector.body3731 ]
  %.sroa.066.0449.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %vector.body3731 ]
  br label %.preheader.i.i

vector.body3731:                                  ; preds = %.preheader.i.i.preheader, %vector.body3731
  %index3732 = phi i64 [ %index.next3733, %vector.body3731 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3732 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  store <16 x i8> zeroinitializer, ptr %i.xz, align 1, !alias.scope !34592, !noalias !34594
  store <16 x i8> zeroinitializer, ptr %i.ya, align 1, !alias.scope !34592, !noalias !34594
  %index.next3733 = add nuw i64 %index3732, 32    ; 2 uses
  %i.yb = icmp eq i64 %index.next3733, %n.vec
  br i1 %i.yb, label %.preheader.i.i.preheader4592, label %vector.body3731, !llvm.loop !34595

bb.ds:                                            ; preds = %bb.dr
  %i.yc = shl nuw nsw i64 %.sroa.0.0423.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.yc, %i.ft
  br i1 %.not121.i.i, label %.invoke1149.i, label %.preheader360.i.i, !prof !2480

.invoke1149.i:                                    ; preds = %bb.gd, %.lr.ph403.i.preheader.i, %bb.ds, %bb.ee
  %i.yd = phi i64 [ %i.xx, %bb.ee ], [ %i.yi, %.lr.ph403.i.preheader.i ], [ %i.yc, %bb.ds ], [ %i.ann, %bb.gd ]
  %i.ye = phi i64 [ %i.fs, %bb.ee ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.ds ], [ %spec.store.select.i, %bb.gd ]
  %i.yf = phi ptr [ @1577, %bb.ee ], [ @1541, %.lr.ph403.i.preheader.i ], [ @1545, %bb.ds ], [ @1931, %bb.gd ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.yd, i64 noundef %i.ye, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yf) #43
          to label %.cont1150.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !34262

.cont1150.i:                                      ; preds = %.invoke1149.i
  unreachable

.preheader360.i.i:                                ; preds = %bb.ds
  %.idx.i.i = shl nuw nsw i64 %.sroa.0.0423.i, 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fv, i8 0, i64 %.idx.i.i, i1 false), !alias.scope !34586, !noalias !34596
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ga, %.preheader360.i.i
  %i.yg = phi i64 [ 1, %.preheader360.i.i ], [ %i.anh, %bb.ga ] ; 4 uses
  %.sroa.069.0399.i.i = phi i64 [ 0, %.preheader360.i.i ], [ %i.yg, %bb.ga ] ; 3 uses
  %exitcond.not.i175.i = icmp eq i64 %i.yg, %i.gr
  br i1 %exitcond.not.i175.i, label %.invoke.i, label %bb.fy

.loopexit358.i.i:                                 ; preds = %bb.fx
  %i.yh = icmp eq i64 %i.yj, 0
  br i1 %i.yh, label %.lr.ph403.i.preheader.i, label %.split.i176.i

.lr.ph403.i.preheader.i:                          ; preds = %.loopexit358.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 0, i64 %i.fy, i1 false), !alias.scope !34588, !noalias !34597
  %i.yi = mul i64 %i.xx, %i.aq                    ; 4 uses
  %.not124.i.i = icmp ugt i64 %i.yi, %i.ge
  br i1 %.not124.i.i, label %.invoke1149.i, label %bb.du, !prof !2480

.split.i176.i:                                    ; preds = %bb.ga, %.loopexit358.i.i
  %.sroa.05.0401.i.i = phi i64 [ %i.yj, %.loopexit358.i.i ], [ 256, %bb.ga ]
  %i.yj = add nsw i64 %.sroa.05.0401.i.i, -1      ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.bd, i64 %i.yj
  %i.yk = mul i64 %i.yj, %.sroa.0.0423.i
  br label %bb.fv

bb.du:                                            ; preds = %.lr.ph403.i.preheader.i
  %.not355404.i.i = icmp samesign eq i64 %i.yi, 0
  br i1 %.not355404.i.i, label %.lr.ph434.i.i, label %.lr.ph407.preheader.i.i

.lr.ph407.preheader.i.i:                          ; preds = %bb.du
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.yi, i1 false), !alias.scope !34590, !noalias !34598
  br label %.lr.ph434.i.i

.lr.ph434.i.i:                                    ; preds = %bb.du, %.lr.ph407.preheader.i.i
  %i.yl = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %.not131.i.i = icmp samesign ugt i64 %i.yl, %i.fs
  %.idx451.i.i = shl nuw nsw i64 %i.yl, 5
  %i.ym = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx451.i.i
  %i.yn = icmp eq i64 %i.yl, 0
  %i.yo = and i64 %.sroa.0.0423.i, -8             ; 8 uses
  %i.yp = and i64 %.sroa.0.0423.i, 7              ; 4 uses
  %.not.i.i178.i = icmp samesign ugt i64 %i.xx, %i.fs
  %.idx452.i.i = shl i64 %i.xx, 5                 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx452.i.i
  br i1 %.not131.i.i, label %.lr.ph434.split.us.i.i, label %.lr.ph434.split.preheader.i.i, !prof !29

.lr.ph434.split.preheader.i.i:                    ; preds = %.lr.ph434.i.i
  %.idx453.i.i = shl nuw nsw i64 %i.yp, 2         ; 3 uses
  %i.yr = icmp eq i64 %i.yp, 0
  %i.ys = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %i.yt = icmp samesign ult i64 %i.ys, %i.fs
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.ys ; 2 uses
  %i.yv = trunc i64 %i.yo to i8
  %i.yw = icmp eq i64 %i.yp, 1                    ; 2 uses
  %.sroa.077.1.idx.i.i = select i1 %i.yw, i64 0, i64 4 ; 3 uses
  %i.yx = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %i.yy = icmp samesign ult i64 %i.yx, %i.fs
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yx
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4 ; 2 uses
  %i.zb = trunc i64 %i.yo to i8
  %i.zc = or disjoint i8 %i.zb, 1
  %i.zd = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.ze = icmp samesign eq i64 %i.zd, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.1 = select i1 %i.ze, i64 0, i64 4 ; 2 uses
  %i.zf = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %i.zg = icmp samesign ult i64 %i.zf, %i.fs
  %i.zh = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zf
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8 ; 2 uses
  %i.zj = trunc i64 %i.yo to i8
  %i.zk = or disjoint i8 %i.zj, 2
  %i.zl = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.zm = add nuw nsw i64 %i.zl, %.sroa.077.1.idx.i.i.1
  %i.zn = icmp samesign eq i64 %i.zm, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.2 = select i1 %i.zn, i64 0, i64 4
  %i.zo = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %i.zp = icmp samesign ult i64 %i.zo, %i.fs
  %i.zq = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zo
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 12 ; 2 uses
  %i.zs = trunc i64 %i.yo to i8
  %i.zt = or disjoint i8 %i.zs, 3
  %i.zu = lshr i64 %.sroa.0.0423.i, 3             ; 3 uses
  %i.zv = icmp samesign ult i64 %i.zu, %i.fs
  %i.zw = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zu
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 16 ; 2 uses
  %i.zy = trunc i64 %i.yo to i8
  %i.zz = or disjoint i8 %i.zy, 4
  %i.aaa = lshr i64 %.sroa.0.0423.i, 3            ; 3 uses
  %i.aab = icmp samesign ult i64 %i.aaa, %i.fs
  %i.aac = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.aaa
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 20 ; 2 uses
  %i.aae = trunc i64 %i.yo to i8
  %i.aaf = or disjoint i8 %i.aae, 5
  %i.aag = lshr i64 %.sroa.0.0423.i, 3            ; 3 uses
  %i.aah = icmp samesign ult i64 %i.aag, %i.fs
  %i.aai = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.aag
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 24 ; 2 uses
  %i.aak = trunc i64 %i.yo to i8
  %i.aal = or disjoint i8 %i.aak, 6
  %10 = add i64 %.idx452.i.i, -32
  %11 = lshr exact i64 %10, 5
  br label %.lr.ph434.split.i.i

.lr.ph434.split.us.i.i:                           ; preds = %.lr.ph434.i.i
  %i.aam = load i8, ptr %i.ax, align 1, !alias.scope !34599, !noalias !34602, !noundef !27
  %i.aan = zext i8 %i.aam to i64
  %i.aao = mul nuw nsw i64 %.sroa.0.0423.i, %i.aan
  %.not130.us.i.i = icmp ugt i64 %i.aao, %i.ft
  br i1 %.not130.us.i.i, label %.split438.us.i.i, label %.split440.us.i.i, !prof !29

.split440.us.i.i:                                 ; preds = %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !34603
  br label %.split440.us.i.invoke.i

.split440.us.i.invoke.i:                          ; preds = %bb.fd, %bb.fb, %bb.ec, %bb.ea, %.split438.us.i.i, %.split440.us.i.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.fd ], [ %.sink.i.sroa.gep14, %bb.fb ], [ %.sink.i.sroa.gep15, %bb.ec ], [ %.sink.i.sroa.gep16, %bb.ea ], [ %.sink.i.sroa.gep17, %.split438.us.i.i ], [ %.sink.i.sroa.gep18, %.split440.us.i.i ]
  %.sink.i.sroa.phi19 = phi ptr [ %.sink.i.sroa.gep20, %bb.fd ], [ %.sink.i.sroa.gep21, %bb.fb ], [ %.sink.i.sroa.gep22, %bb.ec ], [ %.sink.i.sroa.gep23, %bb.ea ], [ %.sink.i.sroa.gep24, %.split438.us.i.i ], [ %.sink.i.sroa.gep25, %.split440.us.i.i ]
  %.sink.i.sroa.phi26 = phi ptr [ %.sink.i.sroa.gep27, %bb.fd ], [ %.sink.i.sroa.gep28, %bb.fb ], [ %.sink.i.sroa.gep29, %bb.ec ], [ %.sink.i.sroa.gep30, %bb.ea ], [ %.sink.i.sroa.gep31, %.split438.us.i.i ], [ %.sink.i.sroa.gep32, %.split440.us.i.i ]
  %.sink.i.sroa.phi33 = phi ptr [ %.sink.i.sroa.gep34, %bb.fd ], [ %.sink.i.sroa.gep35, %bb.fb ], [ %.sink.i.sroa.gep36, %bb.ec ], [ %.sink.i.sroa.gep37, %bb.ea ], [ %.sink.i.sroa.gep38, %.split438.us.i.i ], [ %.sink.i.sroa.gep39, %.split440.us.i.i ]
  %.sink.i = phi ptr [ %i.ad, %bb.fd ], [ %i.af, %bb.fb ], [ %i.ac, %bb.ec ], [ %i.ae, %bb.ea ], [ %i.ah, %.split438.us.i.i ], [ %i.ag, %.split440.us.i.i ] ; 2 uses
  %i.aap = phi ptr [ @1539, %bb.fd ], [ @1538, %bb.fb ], [ @1536, %bb.ec ], [ @1535, %bb.ea ], [ @1533, %.split438.us.i.i ], [ @1534, %.split440.us.i.i ]
  store ptr @186, ptr %.sink.i, align 8, !noalias !34603
  store i64 1, ptr %.sink.i.sroa.phi, align 8, !noalias !34603
  store ptr null, ptr %.sink.i.sroa.phi19, align 8, !noalias !34603
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi26, align 8, !noalias !34603
  store i64 0, ptr %.sink.i.sroa.phi33, align 8, !noalias !34603
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aap) #43
          to label %.split440.us.i.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !34262

.split440.us.i.cont.i:                            ; preds = %.split440.us.i.invoke.i
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i: ; preds = %bb.ef
  %i.aaq = icmp eq ptr %i.aas, %i.gs
  br i1 %i.aaq, label %.lr.ph447.preheader.i.i, label %.lr.ph434.split.i.i

.lr.ph434.split.i.i:                              ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i, %.lr.ph434.split.preheader.i.i
  %.sroa.0.0336432.i.i = phi ptr [ %i.aas, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ %i.ax, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0431.i.i = phi i64 [ %i.aat, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ 0, %.lr.ph434.split.preheader.i.i ] ; 7 uses
  %i.aar = mul i64 %i.xx, %.sroa.7.0431.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i, i64 1 ; 2 uses
  %i.aat = add nuw i64 %.sroa.7.0431.i.i, 1
  %exitcond486.not.i.i = icmp eq i64 %.sroa.7.0431.i.i, %i.aq
  br i1 %exitcond486.not.i.i, label %.invoke.i, label %bb.dy

.lr.ph447.preheader.i.i:                          ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i
  %i.aau = load i8, ptr %i.gu, align 1, !alias.scope !34592, !noalias !34594, !noundef !27
  %i.aav = mul i64 %i.xx, %i.gt
  br label %.lr.ph447.i.i

.lr.ph447.i.i:                                    ; preds = %bb.dx, %.lr.ph447.preheader.i.i
  %.sroa.03.0446.i.i = phi i64 [ %.sroa.03.1.i.i, %bb.dx ], [ 1, %.lr.ph447.preheader.i.i ] ; 2 uses
  %.sroa.052.0445.i.i = phi i64 [ %i.aaw, %bb.dx ], [ %i.gt, %.lr.ph447.preheader.i.i ]
  %.sroa.059.0444.i.i = phi i64 [ %i.aax, %bb.dx ], [ %i.aav, %.lr.ph447.preheader.i.i ]
  %.sroa.061.0443.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.dx ], [ %i.aau, %.lr.ph447.preheader.i.i ] ; 4 uses
  %i.aaw = add i64 %.sroa.052.0445.i.i, -1        ; 4 uses
  %i.aax = sub i64 %.sroa.059.0444.i.i, %i.xx     ; 2 uses
  %i.aay = lshr i8 %.sroa.061.0443.i.i, 3
  %i.aaz = zext nneg i8 %i.aay to i64
  %i.aba = add i64 %i.aax, %i.aaz                 ; 3 uses
  %i.abb = icmp ult i64 %i.aba, %i.ge
  br i1 %i.abb, label %bb.dv, label %.invoke.i

bb.dv:                                            ; preds = %.lr.ph447.i.i
  %i.abc = and i8 %.sroa.061.0443.i.i, 7
  %i.abd = shl nuw i8 1, %i.abc
  %i.abe = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.aba
  %i.abf = load i8, ptr %i.abe, align 1, !alias.scope !34590, !noalias !34598, !noundef !27
  %i.abg = and i8 %i.abf, %i.abd
  %i.abh = icmp eq i8 %i.abg, 0
  br i1 %i.abh, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abi = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaw
  %i.abj = load i8, ptr %i.abi, align 1, !alias.scope !34592, !noalias !34594, !noundef !27 ; 2 uses
  %.not129.i.i = icmp ne i8 %.sroa.061.0443.i.i, %i.abj
  %i.abk = zext i1 %.not129.i.i to i64
  %spec.select137.i.i = add i64 %.sroa.03.0446.i.i, %i.abk
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0443.i.i, %bb.dv ], [ %i.abj, %bb.dw ] ; 2 uses
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.0446.i.i, %bb.dv ], [ %spec.select137.i.i, %bb.dw ] ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaw
  store i8 %.sroa.061.1.i.i, ptr %i.abl, align 1, !alias.scope !34592, !noalias !34594
  %.not128.i.i = icmp eq i64 %i.aaw, 0
  br i1 %.not128.i.i, label %.loopexit.i, label %.lr.ph447.i.i

bb.dy:                                            ; preds = %.lr.ph434.split.i.i
  %i.abm = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.7.0431.i.i ; 15 uses
  %i.abn = mul i64 %.sroa.7.0431.i.i, %i.xx       ; 3 uses
  %i.abo = load i8, ptr %.sroa.0.0336432.i.i, align 1, !alias.scope !34599, !noalias !34602, !noundef !27
  %i.abp = zext i8 %i.abo to i64
  %i.abq = mul nuw nsw i64 %.sroa.0.0423.i, %i.abp ; 4 uses
  %.not130.i.i = icmp ugt i64 %i.abq, %i.ft
  br i1 %.not130.i.i, label %.split438.us.i.i, label %bb.dz, !prof !29

.split438.us.i.i:                                 ; preds = %bb.dy, %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !34603
  br label %.split440.us.i.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.abq
  %i.abs = sub nuw nsw i64 %i.ft, %i.abq          ; 2 uses
  br i1 %i.yn, label %._crit_edge416.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %bb.dz, %bb.fu
  %.sroa.029.0413.i.i = phi float [ %.sroa.029.4.7.i.i, %bb.fu ], [ f0x7E967699, %bb.dz ] ; 2 uses
  %.sroa.0164.0412.i.i = phi ptr [ %i.abt, %bb.fu ], [ %i.fz, %bb.dz ] ; 10 uses
  %.sroa.7166.0411.i.i = phi i64 [ %i.abu, %bb.fu ], [ 0, %bb.dz ] ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 32 ; 2 uses
  %i.abu = add nuw nsw i64 %.sroa.7166.0411.i.i, 1
  %i.abv = shl nuw nsw i64 %.sroa.7166.0411.i.i, 3 ; 11 uses
  %.not136.i.i = icmp samesign ugt i64 %i.abv, %i.abs
  br i1 %.not136.i.i, label %bb.fb, label %bb.fc, !prof !29

._crit_edge416.i.i:                               ; preds = %bb.fu, %bb.dz
  %.sroa.029.0.lcssa.i.i = phi float [ f0x7E967699, %bb.dz ], [ %.sroa.029.4.7.i.i, %bb.fu ] ; 3 uses
  %i.abw = add nuw nsw i64 %i.abq, %i.yo          ; 3 uses
  %.not133.i.i = icmp ugt i64 %i.abw, %i.ft
  br i1 %.not133.i.i, label %bb.ea, label %bb.eb, !prof !29

bb.ea:                                            ; preds = %._crit_edge416.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !34603
  br label %.split440.us.i.invoke.i

bb.eb:                                            ; preds = %._crit_edge416.i.i
  %i.abx = sub nuw nsw i64 %i.ft, %i.abw
  %.not134.i.i = icmp samesign ugt i64 %i.yp, %i.abx
  br i1 %.not134.i.i, label %bb.ec, label %bb.ed, !prof !29

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !34603
  br label %.split440.us.i.invoke.i

bb.ed:                                            ; preds = %bb.eb
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.abw ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %.idx453.i.i ; 3 uses
  br i1 %i.yr, label %._crit_edge425.i.i, label %.lr.ph424.preheader.i.i

.lr.ph424.preheader.i.i:                          ; preds = %bb.ed
  %.sroa.077.1418.i.i = getelementptr inbounds nuw i8, ptr %i.aby, i64 4 ; 2 uses
  br i1 %i.yt, label %bb.eh, label %.invoke.i

._crit_edge425.i.i:                               ; preds = %bb.ey, %bb.ez, %bb.ei, %bb.el, %bb.eo, %bb.er, %bb.eu, %bb.ex, %bb.ed
  %.sroa.029.1.lcssa.i.i = phi float [ %.sroa.029.0.lcssa.i.i, %bb.ed ], [ %.sroa.029.2.i.i, %bb.ei ], [ %.sroa.029.2.i.i.1, %bb.el ], [ %.sroa.029.2.i.i.2, %bb.eo ], [ %.sroa.029.2.i.i.3, %bb.er ], [ %.sroa.029.2.i.i.4, %bb.eu ], [ %.sroa.029.2.i.i.5, %bb.ex ], [ %i.ako, %bb.ez ], [ %.sroa.029.2.i.i.5, %bb.ey ] ; 2 uses
  %i.aca = icmp ult i64 %.sroa.7.0431.i.i, 2000
  br i1 %i.aca, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.eg, %._crit_edge425.i.i
  %.sroa.032.0.i.i = phi float [ %i.ajk, %bb.eg ], [ 2.810000e+01, %._crit_edge425.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34604)
  br i1 %.not.i.i178.i, label %.invoke1149.i, label %.lr.ph430.i.i.preheader, !prof !2480

.lr.ph430.i.i.preheader:                          ; preds = %bb.ee
  %12 = tail call i64 @llvm.umax.i64(i64 %i.abn, i64 %i.ge)
  %13 = sub i64 %12, %i.aar
  %14 = tail call i64 @llvm.umin.i64(i64 %11, i64 %13) ; 2 uses
  %min.iters.check3737 = icmp samesign ult i64 %14, 4
  br i1 %min.iters.check3737, label %.lr.ph430.i.i.preheader4585, label %vector.ph3738

vector.ph3738:                                    ; preds = %.lr.ph430.i.i.preheader
  %15 = add nuw nsw i64 %14, 1                    ; 2 uses
  %i.acb = and i64 %15, 3                         ; 2 uses
  %i.acc = icmp eq i64 %i.acb, 0
  %i.acd = select i1 %i.acc, i64 4, i64 %i.acb
  %n.vec3739 = sub nsw i64 %15, %i.acd            ; 3 uses
  %i.ace = shl i64 %n.vec3739, 5
  %i.acf = getelementptr i8, ptr %i.fz, i64 %i.ace
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3740 = insertelement <4 x float> poison, float %.sroa.032.0.i.i, i64 0 ; 5 uses
  %broadcast.splat3741 = shufflevector <4 x float> %broadcast.splatinsert3740, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.gl, i64 %i.abn
  %i.acg = shufflevector <4 x float> %broadcast.splatinsert3740, <4 x float> poison, <16 x i32> zeroinitializer
  %i.ach = shufflevector <4 x float> %broadcast.splatinsert3740, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aci = shufflevector <4 x float> %broadcast.splatinsert3740, <4 x float> poison, <16 x i32> zeroinitializer
  %i.acj = shufflevector <4 x float> %broadcast.splatinsert3740, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3742

vector.body3742:                                  ; preds = %vector.body3742, %vector.ph3738
  %index3743 = phi i64 [ 0, %vector.ph3738 ], [ %index.next3748, %vector.body3742 ] ; 3 uses
  %i.ack = shl i64 %index3743, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.fz, i64 %i.ack ; 9 uses
  %i.acl = getelementptr i8, ptr %i.fz, i64 %i.ack ; 8 uses
  %next.gep3744 = getelementptr i8, ptr %i.acl, i64 32
  %i.acm = getelementptr i8, ptr %i.fz, i64 %i.ack ; 8 uses
  %next.gep3745 = getelementptr i8, ptr %i.acm, i64 64
  %i.acn = getelementptr i8, ptr %i.fz, i64 %i.ack ; 8 uses
  %next.gep3746 = getelementptr i8, ptr %i.acn, i64 96
  %i.aco = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.acp = getelementptr i8, ptr %i.acl, i64 36
  %i.acq = getelementptr i8, ptr %i.acm, i64 68
  %i.acr = getelementptr i8, ptr %i.acn, i64 100
  %i.acs = load float, ptr %i.aco, align 4, !alias.scope !34588, !noalias !34607
  %i.act = load float, ptr %i.acp, align 4, !alias.scope !34588, !noalias !34607
  %i.acu = load float, ptr %i.acq, align 4, !alias.scope !34588, !noalias !34607
  %i.acv = load float, ptr %i.acr, align 4, !alias.scope !34588, !noalias !34607
  %i.acw = insertelement <4 x float> poison, float %i.acs, i64 0
  %i.acx = insertelement <4 x float> %i.acw, float %i.act, i64 1
  %i.acy = insertelement <4 x float> %i.acx, float %i.acu, i64 2
  %i.acz = insertelement <4 x float> %i.acy, float %i.acv, i64 3
  %i.ada = fsub <4 x float> %i.acz, %broadcast.splat ; 3 uses
  %i.adb = fcmp oge <4 x float> %i.ada, %broadcast.splat3741
  %i.adc = select <4 x i1> %i.adb, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.add = load float, ptr %next.gep, align 4, !alias.scope !34588, !noalias !34607
  %i.ade = load float, ptr %next.gep3744, align 4, !alias.scope !34588, !noalias !34607
  %i.adf = load float, ptr %next.gep3745, align 4, !alias.scope !34588, !noalias !34607
  %i.adg = load float, ptr %next.gep3746, align 4, !alias.scope !34588, !noalias !34607
  %i.adh = insertelement <4 x float> poison, float %i.add, i64 0
  %i.adi = insertelement <4 x float> %i.adh, float %i.ade, i64 1
  %i.adj = insertelement <4 x float> %i.adi, float %i.adf, i64 2
  %i.adk = insertelement <4 x float> %i.adj, float %i.adg, i64 3
  %i.adl = fsub <4 x float> %i.adk, %broadcast.splat ; 3 uses
  %i.adm = fcmp oge <4 x float> %i.adl, %broadcast.splat3741
  %i.adn = zext <4 x i1> %i.adm to <4 x i8>
  %i.ado = or disjoint <4 x i8> %i.adc, %i.adn
  %i.adp = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.adq = getelementptr i8, ptr %i.acl, i64 40
  %i.adr = getelementptr i8, ptr %i.acm, i64 72
  %i.ads = getelementptr i8, ptr %i.acn, i64 104
  %i.adt = load float, ptr %i.adp, align 4, !alias.scope !34588, !noalias !34607
  %i.adu = load float, ptr %i.adq, align 4, !alias.scope !34588, !noalias !34607
  %i.adv = load float, ptr %i.adr, align 4, !alias.scope !34588, !noalias !34607
  %i.adw = load float, ptr %i.ads, align 4, !alias.scope !34588, !noalias !34607
  %i.adx = insertelement <4 x float> poison, float %i.adt, i64 0
  %i.ady = insertelement <4 x float> %i.adx, float %i.adu, i64 1
  %i.adz = insertelement <4 x float> %i.ady, float %i.adv, i64 2
  %i.aea = insertelement <4 x float> %i.adz, float %i.adw, i64 3
  %i.aeb = fsub <4 x float> %i.aea, %broadcast.splat ; 3 uses
  %i.aec = fcmp oge <4 x float> %i.aeb, %broadcast.splat3741
  %i.aed = select <4 x i1> %i.aec, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.aee = or disjoint <4 x i8> %i.ado, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.aeg = getelementptr i8, ptr %i.acl, i64 44
  %i.aeh = getelementptr i8, ptr %i.acm, i64 76
  %i.aei = getelementptr i8, ptr %i.acn, i64 108
  %i.aej = load float, ptr %i.aef, align 4, !alias.scope !34588, !noalias !34607
  %i.aek = load float, ptr %i.aeg, align 4, !alias.scope !34588, !noalias !34607
  %i.ael = load float, ptr %i.aeh, align 4, !alias.scope !34588, !noalias !34607
  %i.aem = load float, ptr %i.aei, align 4, !alias.scope !34588, !noalias !34607
  %i.aen = insertelement <4 x float> poison, float %i.aej, i64 0
  %i.aeo = insertelement <4 x float> %i.aen, float %i.aek, i64 1
  %i.aep = insertelement <4 x float> %i.aeo, float %i.ael, i64 2
  %i.aeq = insertelement <4 x float> %i.aep, float %i.aem, i64 3
  %i.aer = fsub <4 x float> %i.aeq, %broadcast.splat ; 3 uses
  %i.aes = fcmp oge <4 x float> %i.aer, %broadcast.splat3741
  %i.aet = select <4 x i1> %i.aes, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.aeu = or disjoint <4 x i8> %i.aee, %i.aet
  %i.aev = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.aew = getelementptr i8, ptr %i.acl, i64 48
  %i.aex = getelementptr i8, ptr %i.acm, i64 80
  %i.aey = getelementptr i8, ptr %i.acn, i64 112
  %i.aez = load float, ptr %i.aev, align 4, !alias.scope !34588, !noalias !34607
  %i.afa = load float, ptr %i.aew, align 4, !alias.scope !34588, !noalias !34607
  %i.afb = load float, ptr %i.aex, align 4, !alias.scope !34588, !noalias !34607
  %i.afc = load float, ptr %i.aey, align 4, !alias.scope !34588, !noalias !34607
  %i.afd = insertelement <4 x float> poison, float %i.aez, i64 0
  %i.afe = insertelement <4 x float> %i.afd, float %i.afa, i64 1
  %i.aff = insertelement <4 x float> %i.afe, float %i.afb, i64 2
  %i.afg = insertelement <4 x float> %i.aff, float %i.afc, i64 3
  %i.afh = fsub <4 x float> %i.afg, %broadcast.splat ; 3 uses
  %i.afi = fcmp oge <4 x float> %i.afh, %broadcast.splat3741
  %i.afj = select <4 x i1> %i.afi, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.afk = or disjoint <4 x i8> %i.aeu, %i.afj
  %i.afl = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.afm = getelementptr i8, ptr %i.acl, i64 52
  %i.afn = getelementptr i8, ptr %i.acm, i64 84
  %i.afo = getelementptr i8, ptr %i.acn, i64 116
  %i.afp = load float, ptr %i.afl, align 4, !alias.scope !34588, !noalias !34607
  %i.afq = load float, ptr %i.afm, align 4, !alias.scope !34588, !noalias !34607
  %i.afr = load float, ptr %i.afn, align 4, !alias.scope !34588, !noalias !34607
  %i.afs = load float, ptr %i.afo, align 4, !alias.scope !34588, !noalias !34607
  %i.aft = insertelement <4 x float> poison, float %i.afp, i64 0
  %i.afu = insertelement <4 x float> %i.aft, float %i.afq, i64 1
  %i.afv = insertelement <4 x float> %i.afu, float %i.afr, i64 2
  %i.afw = insertelement <4 x float> %i.afv, float %i.afs, i64 3
  %i.afx = fsub <4 x float> %i.afw, %broadcast.splat ; 3 uses
  %i.afy = fcmp oge <4 x float> %i.afx, %broadcast.splat3741
  %i.afz = select <4 x i1> %i.afy, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.aga = or disjoint <4 x i8> %i.afk, %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.agc = getelementptr i8, ptr %i.acl, i64 56
  %i.agd = getelementptr i8, ptr %i.acm, i64 88
  %i.age = getelementptr i8, ptr %i.acn, i64 120
  %i.agf = load float, ptr %i.agb, align 4, !alias.scope !34588, !noalias !34607
  %i.agg = load float, ptr %i.agc, align 4, !alias.scope !34588, !noalias !34607
  %i.agh = load float, ptr %i.agd, align 4, !alias.scope !34588, !noalias !34607
  %i.agi = load float, ptr %i.age, align 4, !alias.scope !34588, !noalias !34607
  %i.agj = insertelement <4 x float> poison, float %i.agf, i64 0
  %i.agk = insertelement <4 x float> %i.agj, float %i.agg, i64 1
  %i.agl = insertelement <4 x float> %i.agk, float %i.agh, i64 2
  %i.agm = insertelement <4 x float> %i.agl, float %i.agi, i64 3
  %i.agn = fsub <4 x float> %i.agm, %broadcast.splat ; 3 uses
  %i.ago = fcmp oge <4 x float> %i.agn, %broadcast.splat3741
  %i.agp = select <4 x i1> %i.ago, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.agq = or disjoint <4 x i8> %i.aga, %i.agp
  %i.agr = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.ags = getelementptr i8, ptr %i.acl, i64 60
  %i.agt = getelementptr i8, ptr %i.acm, i64 92
  %i.agu = getelementptr i8, ptr %i.acn, i64 124
  %i.agv = load float, ptr %i.agr, align 4, !alias.scope !34588, !noalias !34607
  %i.agw = load float, ptr %i.ags, align 4, !alias.scope !34588, !noalias !34607
  %i.agx = load float, ptr %i.agt, align 4, !alias.scope !34588, !noalias !34607
  %i.agy = load float, ptr %i.agu, align 4, !alias.scope !34588, !noalias !34607
  %i.agz = insertelement <4 x float> poison, float %i.agv, i64 0
  %i.aha = insertelement <4 x float> %i.agz, float %i.agw, i64 1
  %i.ahb = insertelement <4 x float> %i.aha, float %i.agx, i64 2
  %i.ahc = insertelement <4 x float> %i.ahb, float %i.agy, i64 3
  %i.ahd = fsub <4 x float> %i.ahc, %broadcast.splat ; 3 uses
  %i.ahe = fcmp oge <4 x float> %i.ahd, %broadcast.splat3741
  %i.ahf = select <4 x i1> %i.ahe, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.ahg = add nuw <4 x i8> %i.agq, %i.ahf
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index3743 ; 2 uses
  %wide.load3747 = load <4 x i8>, ptr %gep, align 1, !alias.scope !34608, !noalias !34609
  %i.ahh = or <4 x i8> %i.ahg, %wide.load3747
  store <4 x i8> %i.ahh, ptr %gep, align 1, !alias.scope !34608, !noalias !34609
  %i.ahi = shufflevector <4 x float> %i.adl, <4 x float> %i.ada, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahj = shufflevector <4 x float> %i.aeb, <4 x float> %i.aer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahk = shufflevector <8 x float> %i.ahi, <8 x float> %i.ahj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahl = fcmp olt <16 x float> %i.ahk, %i.acg
  %i.ahm = shufflevector <4 x float> %i.adl, <4 x float> %i.ada, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahn = shufflevector <4 x float> %i.aeb, <4 x float> %i.aer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aho = shufflevector <8 x float> %i.ahm, <8 x float> %i.ahn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahp = select <16 x i1> %i.ahl, <16 x float> %i.aho, <16 x float> %i.ach
  %i.ahq = shufflevector <4 x float> %i.afh, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahr = shufflevector <4 x float> %i.agn, <4 x float> %i.ahd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahs = shufflevector <8 x float> %i.ahq, <8 x float> %i.ahr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aht = fcmp olt <16 x float> %i.ahs, %i.aci
  %i.ahu = shufflevector <4 x float> %i.afh, <4 x float> %i.afx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahv = shufflevector <4 x float> %i.agn, <4 x float> %i.ahd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahw = shufflevector <8 x float> %i.ahu, <8 x float> %i.ahv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahx = select <16 x i1> %i.aht, <16 x float> %i.ahw, <16 x float> %i.acj
  %interleaved.vec = shufflevector <16 x float> %i.ahp, <16 x float> %i.ahx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !34588, !noalias !34607
  %index.next3748 = add nuw i64 %index3743, 4     ; 2 uses
  %i.ahy = icmp eq i64 %index.next3748, %n.vec3739
  br i1 %i.ahy, label %.lr.ph430.i.i.preheader4585, label %vector.body3742, !llvm.loop !34611

.lr.ph430.i.i.preheader4585:                      ; preds = %vector.body3742, %.lr.ph430.i.i.preheader
  %.sroa.0187.0428.i.i.ph = phi ptr [ %i.fz, %.lr.ph430.i.i.preheader ], [ %i.acf, %vector.body3742 ]
  %.sroa.7189.0427.i.i.ph = phi i64 [ 0, %.lr.ph430.i.i.preheader ], [ %n.vec3739, %vector.body3742 ]
  %i.ahz = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i, i64 0
  %i.aia = shufflevector <4 x float> %i.ahz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aib = insertelement <4 x float> poison, float %.sroa.032.0.i.i, i64 0
  %i.aic = shufflevector <4 x float> %i.aib, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i

.lr.ph430.i.i:                                    ; preds = %.lr.ph430.i.i.preheader4585, %bb.ef
  %.sroa.0187.0428.i.i = phi ptr [ %i.aig, %bb.ef ], [ %.sroa.0187.0428.i.i.ph, %.lr.ph430.i.i.preheader4585 ] ; 4 uses
  %.sroa.7189.0427.i.i = phi i64 [ %i.aif, %bb.ef ], [ %.sroa.7189.0427.i.i.ph, %.lr.ph430.i.i.preheader4585 ] ; 2 uses
  %i.aid = add nuw i64 %.sroa.7189.0427.i.i, %i.abn ; 3 uses
  %i.aie = icmp ult i64 %i.aid, %i.ge
  br i1 %i.aie, label %bb.ef, label %.invoke.i

bb.ef:                                            ; preds = %.lr.ph430.i.i
  %.sroa.9223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i, i64 16 ; 2 uses
  %i.aif = add nuw nsw i64 %.sroa.7189.0427.i.i, 1
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i, i64 32 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.aid ; 2 uses
  %i.aii = load i8, ptr %i.aih, align 1, !alias.scope !34608, !noalias !34609, !noundef !27
  %i.aij = load <4 x float>, ptr %.sroa.0187.0428.i.i, align 4, !alias.scope !34588, !noalias !34607
  %i.aik = fsub <4 x float> %i.aij, %i.aia        ; 3 uses
  %i.ail = fcmp oge <4 x float> %i.aik, %i.aic
  %i.aim = bitcast <4 x i1> %i.ail to i4
  %i.ain = zext i4 %i.aim to i8
  %i.aio = fcmp olt <4 x float> %i.aik, %i.aic
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.bog = trunc nuw nsw i64 %.sroa.0131.0574.i.i to i32
  store i32 %i.bog, ptr %i.bof, align 4, !noalias !34822
  %i.boh = add nuw nsw i64 %i.bnp, 1
  %exitcond855.not.i.i = icmp eq i64 %i.bnp, %i.blh
  br i1 %exitcond855.not.i.i, label %.preheader253.i.i290, label %.lr.ph577.i.i

.invoke3978.a:                                    ; preds = %bb.kw, %bb.kv, %bb.kr, %.lr.ph577.i.i, %bb.kp, %bb.ko
  %i.boi = phi i64 [ %i.bni, %bb.kp ], [ %i.bng, %bb.ko ], [ %i.boc, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %i.bns, %bb.kr ], [ %.sroa.018.1575.i.i, %bb.kv ]
  %i.boj = phi i64 [ %.sroa.0.0.i.i204, %bb.kp ], [ 64, %bb.ko ], [ 64, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %.sroa.0.0.i422.i.i219, %bb.kr ], [ %.sroa.12.5.i.i287, %bb.kv ]
  %i.bok = phi ptr [ @1558, %bb.kp ], [ @1557, %bb.ko ], [ @1563, %bb.kw ], [ @1559, %.lr.ph577.i.i ], [ @1560, %bb.kr ], [ @1562, %bb.kv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.boi, i64 noundef %i.boj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bok) #43
          to label %.cont3979.a unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34822

.cont3979.a:                                      ; preds = %.invoke3978.a
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i": ; preds = %bb.km
  %i.bol = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.bmv) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i": ; preds = %bb.ke
  %i.bom = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i239"

.lr.ph571.i.i:                                    ; preds = %.split.i.i270, %bb.kz
  %.sroa.0127.1570.i.i = phi i64 [ %.sroa.0127.1.i.i280, %bb.kz ], [ 1, %.split.i.i270 ] ; 3 uses
  %.sroa.043.3569.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i277, %bb.kz ], [ %.sroa.043.0588.i.i, %.split.i.i270 ] ; 3 uses
  %.sroa.0127.0568.i.i = phi i64 [ %.sroa.0127.1570.i.i, %bb.kz ], [ 0, %.split.i.i270 ] ; 6 uses
  %i.bon = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427933.i.i, i64 %.sroa.0127.0568.i.i ; 5 uses
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 2816 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bon, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bon, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %i.bop, align 8, !alias.scope !35011, !noalias !34822
  %i.boq = add nuw nsw i64 %.sroa.0127.0568.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bor = icmp ult i64 %i.boq, %.sroa.0.0.i.i204
  br i1 %i.bor, label %bb.ky, label %.invoke3976.a

bb.ky:                                            ; preds = %.lr.ph571.i.i
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %i.boq
  %i.bot = load i32, ptr %i.bos, align 4, !noalias !34822, !noundef !27 ; 2 uses
  %.not.i169.i = icmp eq i32 %i.bot, 0
  br i1 %.not.i169.i, label %._crit_edge.i.i276, label %.lr.ph.preheader.i.i273

.lr.ph.preheader.i.i273:                          ; preds = %bb.ky
  %i.bou = zext i32 %i.bot to i64
  %reass.sub.i274 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i)
  %i.bov = add nuw nsw i64 %reass.sub.i274, 1
  br label %.lr.ph.i.i275

._crit_edge.i.i276:                               ; preds = %bb.lb, %bb.ky
  %.sroa.043.4.lcssa.i.i277 = phi i64 [ %.sroa.043.3569.i.i, %bb.ky ], [ %i.bpq, %bb.lb ] ; 2 uses
  %i.bow = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bon)
          to label %bb.kz unwind label %.thread163.loopexit.i.i278, !noalias !34822

bb.kz:                                            ; preds = %._crit_edge.i.i276
  store float %i.bow, ptr %i.bop, align 8, !alias.scope !35014, !noalias !34822
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0568.i.i
  %i.boy = trunc nuw nsw i64 %.sroa.0127.0568.i.i to i32 ; 2 uses
  store i32 %i.boy, ptr %i.box, align 4, !noalias !34822
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0568.i.i
  store i32 %i.boy, ptr %i.boz, align 4, !noalias !34822
  %i.bpa = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0568.i.i
  store i32 1, ptr %i.bpa, align 4, !noalias !34822
  %i.bpb = icmp samesign ult i64 %.sroa.0127.1570.i.i, %.sroa.0.0.i447.i.i272 ; 2 uses
  %i.bpc = zext i1 %i.bpb to i64
  %.sroa.0127.1.i.i280 = add nuw i64 %.sroa.0127.1570.i.i, %i.bpc
  br i1 %i.bpb, label %.lr.ph571.i.i, label %._crit_edge572.i.i

.lr.ph.i.i275:                                    ; preds = %bb.lb, %.lr.ph.preheader.i.i273
  %i.bpd = phi i64 [ %i.bpr, %bb.lb ], [ 1, %.lr.ph.preheader.i.i273 ] ; 3 uses
  %.sroa.043.4567.i.i = phi i64 [ %i.bpq, %bb.lb ], [ %.sroa.043.3569.i.i, %.lr.ph.preheader.i.i273 ] ; 3 uses
  %exitcond848.not.i.i = icmp eq i64 %i.bpd, %i.bov
  br i1 %exitcond848.not.i.i, label %.invoke3976.a, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i.i275
  %i.bpe = getelementptr inbounds nuw [2 x i8], ptr %i.aqv, i64 %.sroa.043.4567.i.i
  %i.bpf = load i16, ptr %i.bpe, align 2, !alias.scope !35017, !noalias !34971, !noundef !27 ; 2 uses
  %i.bpg = zext i16 %i.bpf to i64                 ; 2 uses
  %i.bph = icmp ult i16 %i.bpf, 704
  br i1 %i.bph, label %bb.lb, label %.invoke3976.a

.invoke3976.a:                                    ; preds = %.lr.ph571.i.i, %bb.la, %.lr.ph.i.i275
  %i.bpi = phi i64 [ %.sroa.043.4567.i.i, %.lr.ph.i.i275 ], [ %i.bpg, %bb.la ], [ %i.boq, %.lr.ph571.i.i ]
  %i.bpj = phi i64 [ %2, %.lr.ph.i.i275 ], [ 704, %bb.la ], [ %.sroa.0.0.i.i204, %.lr.ph571.i.i ]
  %i.bpk = phi ptr [ @1567, %.lr.ph.i.i275 ], [ @1932, %bb.la ], [ @1566, %.lr.ph571.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bpi, i64 noundef %i.bpj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpk) #43
          to label %.cont3977.a unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34822

.cont3977.a:                                      ; preds = %.invoke3976.a
  unreachable

bb.lb:                                            ; preds = %bb.la
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %i.bon, i64 %i.bpg ; 2 uses
  %i.bpm = load i32, ptr %i.bpl, align 4, !alias.scope !35020, !noalias !34822, !noundef !27
  %i.bpn = add i32 %i.bpm, 1
  store i32 %i.bpn, ptr %i.bpl, align 4, !alias.scope !35020, !noalias !34822
  %i.bpo = load i64, ptr %i.boo, align 8, !alias.scope !35023, !noalias !34822, !noundef !27
  %i.bpp = add i64 %i.bpo, 1
  store i64 %i.bpp, ptr %i.boo, align 8, !alias.scope !35026, !noalias !34822
  %i.bpq = add nuw i64 %.sroa.043.4567.i.i, 1     ; 2 uses
  %i.bpr = add nuw nsw i64 %i.bpd, 1
  %exitcond849.not.i.i = icmp eq i64 %i.bpd, %i.bou
  br i1 %exitcond849.not.i.i, label %._crit_edge.i.i276, label %.lr.ph.i.i275

bb.lc:                                            ; preds = %bb.lf, %bb.ib
  %.sroa.047.0565.i.i = phi i64 [ 0, %bb.ib ], [ %i.bpw, %bb.lf ] ; 2 uses
  %.sroa.059.0564.i.i = phi i64 [ 0, %bb.ib ], [ %.sroa.059.1.i.i269, %bb.lf ] ; 5 uses
  %i.bps = icmp ult i64 %.sroa.059.0564.i.i, %.sroa.0.0.i.i204
  br i1 %i.bps, label %bb.ld, label %.invoke.i.i229

bb.ld:                                            ; preds = %bb.lc
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i207, i64 %.sroa.059.0564.i.i ; 2 uses
  %i.bpu = load i32, ptr %i.bpt, align 4, !noalias !34822, !noundef !27
  %i.bpv = add i32 %i.bpu, 1
  store i32 %i.bpv, ptr %i.bpt, align 4, !noalias !34822
  %i.bpw = add nuw i64 %.sroa.047.0565.i.i, 1     ; 3 uses
  %i.bpx = icmp eq i64 %i.bpw, %2                 ; 2 uses
  br i1 %i.bpx, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.axu, i64 %.sroa.047.0565.i.i
  %i.bpz = load i8, ptr %i.bpy, align 1, !alias.scope !34808, !noalias !35029, !noundef !27
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.bpw
  %i.bqb = load i8, ptr %i.bqa, align 1, !alias.scope !34808, !noalias !35029, !noundef !27
  %.not238.i.i268 = icmp eq i8 %i.bpz, %i.bqb
  br i1 %.not238.i.i268, label %bb.lf, label %bb.lg

.invoke.i.i229:                                   ; preds = %bb.lc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i, i64 noundef %.sroa.0.0.i.i204, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i267 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i230, !noalias !34822

.cont.i.i267:                                     ; preds = %.invoke.i.i229
  unreachable

bb.lf:                                            ; preds = %bb.lg, %bb.le
  %.sroa.059.1.i.i269 = phi i64 [ %i.bqc, %bb.lg ], [ %.sroa.059.0564.i.i, %bb.le ]
  br i1 %i.bpx, label %.split.i.i270, label %bb.lc

bb.lg:                                            ; preds = %bb.le, %bb.ld
  %i.bqc = add nuw nsw i64 %.sroa.059.0564.i.i, 1
  br label %bb.lf

.thread130.i.i306:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i322, %bb.ic
  %.pn230155.i.i307 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i305, %bb.ic ], [ %.pn.i.i327, %.loopexit.split-lp.i.i322 ], [ %.pn953.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i308 = phi ptr [ %.sroa.016.7.i.i285, %bb.ic ], [ %.sroa.016.6.i.i326, %.loopexit.split-lp.i.i322 ], [ %.sroa.016.6952.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i309 = phi i64 [ %.sroa.14.7.i.i284, %bb.ic ], [ %.sroa.14.6.i.i325, %.loopexit.split-lp.i.i322 ], [ %.sroa.14.6951.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i310 = phi ptr [ %.sroa.026.4.ph162.i.i304, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i311 = phi i64 [ %.sroa.12.4.ph161.i.i303, %bb.ic ], [ 0, %.loopexit.split-lp.i.i322 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i312 = phi ptr [ %.sroa.044.1.ph160.i.i302, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0147.i.i313 = phi i1 [ %.sroa.11.1.ph159.i.i301, %bb.ic ], [ true, %.loopexit.split-lp.i.i322 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.051.0146.i.i314 = phi ptr [ %i.bcp, %bb.ic ], [ %.sroa.051.2.i.i324, %.loopexit.split-lp.i.i322 ], [ %.sroa.051.2950.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i315 = phi i64 [ %i.bna, %bb.ic ], [ %.sroa.1152.2.i.i323, %.loopexit.split-lp.i.i322 ], [ %.sroa.1152.2949.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %i.bqd = icmp eq i64 %.sroa.1152.0145.i.i315, 0
  br i1 %i.bqd, label %bb.jd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread130.i.i306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i314) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i314) #38, !noalias !34822
  br label %bb.jd

bb.lh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hv, %.thread86.i.i403
  %.pn230.pn.pn.pn.pn.pn90.i.i265 = phi { ptr, i32 } [ %i.bao, %.thread86.i.i403 ], [ %.pn230.pn.pn.pn.pn100.i.i263, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i261, %bb.hv ] ; 2 uses
  %i.bqe = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bqe, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i": ; preds = %bb.lh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i207) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hp
  %i.bqf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bqg = icmp eq i64 %.sroa.0.0.i.i204, 0
  br i1 %i.bqg, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"
  %i.bqh = phi ptr [ %i.azt, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.azo, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i265, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.bqf, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bqh) ]
  tail call void @mi_free(ptr noundef nonnull %i.bqh) #38, !noalias !34822
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i"

bb.li:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i76
  %.sroa.032.1442.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i206, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cga, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35041)
  %i.bqi = icmp eq i64 %.sroa.0.0441.i, 0
  br i1 %i.bqi, label %.loopexit.i203, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bqj = add i64 %.sroa.0.0441.i, 7
  %i.bqk = lshr i64 %i.bqj, 3                     ; 8 uses
  %i.bql = icmp eq i64 %.sroa.0.0441.i, 1
  br i1 %i.bql, label %.preheader.i.i413.preheader, label %bb.lk

.preheader.i.i413.preheader:                      ; preds = %bb.lj
  br i1 %min.iters.check3813, label %.preheader.i.i413.preheader4378, label %vector.body3816

.preheader.i.i413.preheader4378:                  ; preds = %vector.body3816, %.preheader.i.i413.preheader
  %.ph4379 = phi i64 [ 1, %.preheader.i.i413.preheader ], [ %i.azg, %vector.body3816 ]
  %.sroa.066.0449.i.i414.ph = phi i64 [ 0, %.preheader.i.i413.preheader ], [ %n.vec3815, %vector.body3816 ]
  br label %.preheader.i.i413

vector.body3816:                                  ; preds = %.preheader.i.i413.preheader, %vector.body3816
  %index3817 = phi i64 [ %index.next3818, %vector.body3816 ], [ 0, %.preheader.i.i413.preheader ] ; 2 uses
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.axu, i64 %index3817 ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 16
  store <16 x i8> zeroinitializer, ptr %i.bqm, align 1, !alias.scope !35041, !noalias !35043
  store <16 x i8> zeroinitializer, ptr %i.bqn, align 1, !alias.scope !35041, !noalias !35043
  %index.next3818 = add nuw i64 %index3817, 32    ; 2 uses
  %i.bqo = icmp eq i64 %index.next3818, %n.vec3815
  br i1 %i.bqo, label %.preheader.i.i413.preheader4378, label %vector.body3816, !llvm.loop !35044

bb.lk:                                            ; preds = %bb.lj
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0441.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.ll, label %.preheader360.i.i80, !prof !2480

bb.ll:                                            ; preds = %bb.lk
  %i.bqp = mul nuw nsw i64 %.sroa.0.0441.i, 704
  br label %.invoke1203.i

.invoke1203.i:                                    ; preds = %bb.nw, %.lr.ph403.i.preheader.i101, %bb.lx, %bb.ll
  %i.bqq = phi i64 [ %i.bqp, %bb.ll ], [ %i.bqk, %bb.lx ], [ %i.bqv, %.lr.ph403.i.preheader.i101 ], [ %i.cga, %bb.nw ]
  %i.bqr = phi i64 [ %i.axy, %bb.ll ], [ %i.axx, %bb.lx ], [ %i.ayj, %.lr.ph403.i.preheader.i101 ], [ %spec.store.select.i44, %bb.nw ]
  %i.bqs = phi ptr [ @1545, %bb.ll ], [ @1577, %bb.lx ], [ @1541, %.lr.ph403.i.preheader.i101 ], [ @1931, %bb.nw ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bqq, i64 noundef %i.bqr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqs) #43
          to label %.cont1204.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98", !noalias !34699

.cont1204.i:                                      ; preds = %.invoke1203.i
  unreachable

.preheader360.i.i80:                              ; preds = %bb.lk
  %.idx.i.i81 = mul nuw nsw i64 %.sroa.0.0441.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aya, i8 0, i64 %.idx.i.i81, i1 false), !alias.scope !35035, !noalias !35045
  br label %bb.lm

bb.lm:                                            ; preds = %bb.nt, %.preheader360.i.i80
  %i.bqt = phi i64 [ 1, %.preheader360.i.i80 ], [ %i.cfu, %bb.nt ] ; 4 uses
  %.sroa.069.0399.i.i82 = phi i64 [ 0, %.preheader360.i.i80 ], [ %i.bqt, %bb.nt ] ; 3 uses
  %exitcond.not.i177.i = icmp eq i64 %i.bqt, %i.ayw
  br i1 %exitcond.not.i177.i, label %.invoke.i97, label %bb.nr

.loopexit358.i.i100:                              ; preds = %bb.nq
  %i.bqu = icmp eq i64 %i.bqw, 0
  br i1 %i.bqu, label %.lr.ph403.i.preheader.i101, label %.split.i178.i

.lr.ph403.i.preheader.i101:                       ; preds = %.loopexit358.i.i100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.aye, i8 0, i64 %i.ayd, i1 false), !alias.scope !35037, !noalias !35046
  %i.bqv = mul i64 %i.bqk, %2                     ; 4 uses
  %.not124.i.i102 = icmp ugt i64 %i.bqv, %i.ayj
  br i1 %.not124.i.i102, label %.invoke1203.i, label %bb.ln, !prof !2480

.split.i178.i:                                    ; preds = %bb.nt, %.loopexit358.i.i100
  %.sroa.05.0401.i.i84 = phi i64 [ %i.bqw, %.loopexit358.i.i100 ], [ 704, %bb.nt ]
  %i.bqw = add nsw i64 %.sroa.05.0401.i.i84, -1   ; 4 uses
  %invariant.gep.i.i85 = getelementptr [4 x i8], ptr %i.ata, i64 %i.bqw
  %i.bqx = mul i64 %i.bqw, %.sroa.0.0441.i
  br label %bb.no

bb.ln:                                            ; preds = %.lr.ph403.i.preheader.i101
  %.not355404.i.i103 = icmp samesign eq i64 %i.bqv, 0
  br i1 %.not355404.i.i103, label %.lr.ph434.i.i106, label %.lr.ph407.preheader.i.i104

.lr.ph407.preheader.i.i104:                       ; preds = %bb.ln
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ayq, i8 0, i64 %i.bqv, i1 false), !alias.scope !35039, !noalias !35047
  br label %.lr.ph434.i.i106

.lr.ph434.i.i106:                                 ; preds = %bb.ln, %.lr.ph407.preheader.i.i104
  %i.bqy = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %.not131.i.i107 = icmp samesign ugt i64 %i.bqy, %i.axx
  %.idx452.i.i108 = shl nuw nsw i64 %i.bqy, 5
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.aye, i64 %.idx452.i.i108
  %i.bra = icmp eq i64 %i.bqy, 0
  %i.brb = and i64 %.sroa.0.0441.i, -8            ; 8 uses
  %i.brc = and i64 %.sroa.0.0441.i, 7             ; 4 uses
  %.not.i.i180.i = icmp samesign ugt i64 %i.bqk, %i.axx
  %.idx453.i.i109 = shl i64 %i.bqk, 5             ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.aye, i64 %.idx453.i.i109
  br i1 %.not131.i.i107, label %.lr.ph434.split.us.i.i410, label %.lr.ph434.split.preheader.i.i110, !prof !29

.lr.ph434.split.preheader.i.i110:                 ; preds = %.lr.ph434.i.i106
  %.idx454.i.i = shl nuw nsw i64 %i.brc, 2        ; 3 uses
  %i.bre = icmp eq i64 %i.brc, 0
  %i.brf = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.brg = icmp samesign ult i64 %i.brf, %i.axx
  %i.brh = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.brf ; 2 uses
  %i.bri = trunc i64 %i.brb to i8
  %i.brj = icmp eq i64 %i.brc, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i159 = select i1 %i.brj, i64 0, i64 4 ; 3 uses
  %i.brk = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.brl = icmp samesign ult i64 %i.brk, %i.axx
  %i.brm = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.brk
  %i.brn = getelementptr inbounds nuw i8, ptr %i.brm, i64 4 ; 2 uses
  %i.bro = trunc i64 %i.brb to i8
  %i.brp = or disjoint i8 %i.bro, 1
  %i.brq = add nuw nsw i64 %.sroa.077.1.idx.i.i159, 4
  %i.brr = icmp samesign eq i64 %i.brq, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i159.1 = select i1 %i.brr, i64 0, i64 4 ; 2 uses
  %i.brs = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.brt = icmp samesign ult i64 %i.brs, %i.axx
  %i.bru = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.brs
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bru, i64 8 ; 2 uses
  %i.brw = trunc i64 %i.brb to i8
  %i.brx = or disjoint i8 %i.brw, 2
  %i.bry = add nuw nsw i64 %.sroa.077.1.idx.i.i159, 4
  %i.brz = add nuw nsw i64 %i.bry, %.sroa.077.1.idx.i.i159.1
  %i.bsa = icmp samesign eq i64 %i.brz, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i159.2 = select i1 %i.bsa, i64 0, i64 4
  %i.bsb = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.bsc = icmp samesign ult i64 %i.bsb, %i.axx
  %i.bsd = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.bsb
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 12 ; 2 uses
  %i.bsf = trunc i64 %i.brb to i8
  %i.bsg = or disjoint i8 %i.bsf, 3
  %i.bsh = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.bsi = icmp samesign ult i64 %i.bsh, %i.axx
  %i.bsj = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.bsh
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 16 ; 2 uses
  %i.bsl = trunc i64 %i.brb to i8
  %i.bsm = or disjoint i8 %i.bsl, 4
  %i.bsn = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.bso = icmp samesign ult i64 %i.bsn, %i.axx
  %i.bsp = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.bsn
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsp, i64 20 ; 2 uses
  %i.bsr = trunc i64 %i.brb to i8
  %i.bss = or disjoint i8 %i.bsr, 5
  %i.bst = lshr i64 %.sroa.0.0441.i, 3            ; 3 uses
  %i.bsu = icmp samesign ult i64 %i.bst, %i.axx
  %i.bsv = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %i.bst
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 24 ; 2 uses
  %i.bsx = trunc i64 %i.brb to i8
  %i.bsy = or disjoint i8 %i.bsx, 6
  %16 = add i64 %.idx453.i.i109, -32
  %17 = lshr exact i64 %16, 5
  br label %.lr.ph434.split.i.i111

.lr.ph434.split.us.i.i410:                        ; preds = %.lr.ph434.i.i106
  %i.bsz = load i16, ptr %i.aqv, align 2, !alias.scope !35048, !noalias !35051, !noundef !27
  %i.bta = zext i16 %i.bsz to i64
  %i.btb = mul nuw nsw i64 %.sroa.0.0441.i, %i.bta
  %.not130.us.i.i411 = icmp ugt i64 %i.btb, %i.axy
  br i1 %.not130.us.i.i411, label %.split438.us.i.i409, label %.split440.us.i.i412, !prof !29

.split440.us.i.i412:                              ; preds = %.lr.ph434.split.us.i.i410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35052
  br label %.split440.us.i.invoke.i121

.split440.us.i.invoke.i121:                       ; preds = %bb.mw, %bb.mu, %bb.lv, %bb.lt, %.split438.us.i.i409, %.split440.us.i.i412
  %.sink.i122.sroa.phi = phi ptr [ %.sink.i122.sroa.gep, %bb.mw ], [ %.sink.i122.sroa.gep40, %bb.mu ], [ %.sink.i122.sroa.gep41, %bb.lv ], [ %.sink.i122.sroa.gep42, %bb.lt ], [ %.sink.i122.sroa.gep43, %.split438.us.i.i409 ], [ %.sink.i122.sroa.gep44, %.split440.us.i.i412 ]
  %.sink.i122.sroa.phi45 = phi ptr [ %.sink.i122.sroa.gep46, %bb.mw ], [ %.sink.i122.sroa.gep47, %bb.mu ], [ %.sink.i122.sroa.gep48, %bb.lv ], [ %.sink.i122.sroa.gep49, %bb.lt ], [ %.sink.i122.sroa.gep50, %.split438.us.i.i409 ], [ %.sink.i122.sroa.gep51, %.split440.us.i.i412 ]
  %.sink.i122.sroa.phi52 = phi ptr [ %.sink.i122.sroa.gep53, %bb.mw ], [ %.sink.i122.sroa.gep54, %bb.mu ], [ %.sink.i122.sroa.gep55, %bb.lv ], [ %.sink.i122.sroa.gep56, %bb.lt ], [ %.sink.i122.sroa.gep57, %.split438.us.i.i409 ], [ %.sink.i122.sroa.gep58, %.split440.us.i.i412 ]
  %.sink.i122.sroa.phi59 = phi ptr [ %.sink.i122.sroa.gep60, %bb.mw ], [ %.sink.i122.sroa.gep61, %bb.mu ], [ %.sink.i122.sroa.gep62, %bb.lv ], [ %.sink.i122.sroa.gep63, %bb.lt ], [ %.sink.i122.sroa.gep64, %.split438.us.i.i409 ], [ %.sink.i122.sroa.gep65, %.split440.us.i.i412 ]
  %.sink.i122 = phi ptr [ %i.p, %bb.mw ], [ %i.r, %bb.mu ], [ %i.o, %bb.lv ], [ %i.q, %bb.lt ], [ %i.t, %.split438.us.i.i409 ], [ %i.s, %.split440.us.i.i412 ] ; 2 uses
  %i.btc = phi ptr [ @1539, %bb.mw ], [ @1538, %bb.mu ], [ @1536, %bb.lv ], [ @1535, %bb.lt ], [ @1533, %.split438.us.i.i409 ], [ @1534, %.split440.us.i.i412 ]
  store ptr @186, ptr %.sink.i122, align 8, !noalias !35052
  store i64 1, ptr %.sink.i122.sroa.phi, align 8, !noalias !35052
  store ptr null, ptr %.sink.i122.sroa.phi45, align 8, !noalias !35052
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i122.sroa.phi52, align 8, !noalias !35052
  store i64 0, ptr %.sink.i122.sroa.phi59, align 8, !noalias !35052
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i122, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.btc) #43
          to label %.split440.us.i.cont.i123 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i98", !noalias !34699

.split440.us.i.cont.i123:                         ; preds = %.split440.us.i.invoke.i121
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i191: ; preds = %bb.ly
  %i.btd = icmp eq ptr %i.btf, %i.ayx
  br i1 %i.btd, label %.lr.ph447.preheader.i.i192, label %.lr.ph434.split.i.i111

.lr.ph434.split.i.i111:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i191, %.lr.ph434.split.preheader.i.i110
  %.sroa.0.0336432.i.i112 = phi ptr [ %i.btf, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i191 ], [ %i.aqv, %.lr.ph434.split.preheader.i.i110 ] ; 2 uses
  %.sroa.7.0431.i.i113 = phi i64 [ %i.btg, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i191 ], [ 0, %.lr.ph434.split.preheader.i.i110 ] ; 7 uses
  %i.bte = mul i64 %i.bqk, %.sroa.7.0431.i.i113
  %i.btf = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i112, i64 2 ; 2 uses
  %i.btg = add nuw nsw i64 %.sroa.7.0431.i.i113, 1
  %exitcond487.not.i.i114 = icmp eq i64 %.sroa.7.0431.i.i113, %2
  br i1 %exitcond487.not.i.i114, label %.invoke.i97, label %bb.lr

.lr.ph447.preheader.i.i192:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i191
  %i.bth = load i8, ptr %i.ayz, align 1, !alias.scope !35041, !noalias !35043, !noundef !27
  %i.bti = mul i64 %i.bqk, %i.ayy
  br label %.lr.ph447.i.i193

.lr.ph447.i.i193:                                 ; preds = %bb.lq, %.lr.ph447.preheader.i.i192
  %.sroa.03.0446.i.i194 = phi i64 [ %.sroa.03.1.i.i201, %bb.lq ], [ 1, %.lr.ph447.preheader.i.i192 ] ; 2 uses
  %.sroa.052.0445.i.i195 = phi i64 [ %i.btj, %bb.lq ], [ %i.ayy, %.lr.ph447.preheader.i.i192 ]
  %.sroa.059.0444.i.i196 = phi i64 [ %i.btk, %bb.lq ], [ %i.bti, %.lr.ph447.preheader.i.i192 ]
  %.sroa.061.0443.i.i197 = phi i8 [ %.sroa.061.1.i.i200, %bb.lq ], [ %i.bth, %.lr.ph447.preheader.i.i192 ] ; 4 uses
  %i.btj = add i64 %.sroa.052.0445.i.i195, -1     ; 4 uses
  %i.btk = sub i64 %.sroa.059.0444.i.i196, %i.bqk ; 2 uses
  %i.btl = lshr i8 %.sroa.061.0443.i.i197, 3
  %i.btm = zext nneg i8 %i.btl to i64
  %i.btn = add i64 %i.btk, %i.btm                 ; 3 uses
  %i.bto = icmp ult i64 %i.btn, %i.ayj
  br i1 %i.bto, label %bb.lo, label %.invoke.i97

bb.lo:                                            ; preds = %.lr.ph447.i.i193
  %i.btp = and i8 %.sroa.061.0443.i.i197, 7
  %i.btq = shl nuw i8 1, %i.btp
  %i.btr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %i.btn
  %i.bts = load i8, ptr %i.btr, align 1, !alias.scope !35039, !noalias !35047, !noundef !27
  %i.btt = and i8 %i.bts, %i.btq
  %i.btu = icmp eq i8 %i.btt, 0
  br i1 %i.btu, label %bb.lq, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.btv = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.btj
  %i.btw = load i8, ptr %i.btv, align 1, !alias.scope !35041, !noalias !35043, !noundef !27 ; 2 uses
  %.not129.i.i198 = icmp ne i8 %.sroa.061.0443.i.i197, %i.btw
  %i.btx = zext i1 %.not129.i.i198 to i64
  %spec.select137.i.i199 = add i64 %.sroa.03.0446.i.i194, %i.btx
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.sroa.061.1.i.i200 = phi i8 [ %.sroa.061.0443.i.i197, %bb.lo ], [ %i.btw, %bb.lp ] ; 2 uses
  %.sroa.03.1.i.i201 = phi i64 [ %.sroa.03.0446.i.i194, %bb.lo ], [ %spec.select137.i.i199, %bb.lp ] ; 2 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.btj
  store i8 %.sroa.061.1.i.i200, ptr %i.bty, align 1, !alias.scope !35041, !noalias !35043
  %.not128.i.i202 = icmp eq i64 %i.btj, 0
  br i1 %.not128.i.i202, label %.loopexit.i203, label %.lr.ph447.i.i193

bb.lr:                                            ; preds = %.lr.ph434.split.i.i111
  %i.btz = getelementptr inbounds nuw i8, ptr %i.axu, i64 %.sroa.7.0431.i.i113 ; 15 uses
  %i.bua = mul i64 %.sroa.7.0431.i.i113, %i.bqk   ; 3 uses
  %i.bub = load i16, ptr %.sroa.0.0336432.i.i112, align 2, !alias.scope !35048, !noalias !35051, !noundef !27
  %i.buc = zext i16 %i.bub to i64
  %i.bud = mul nuw nsw i64 %.sroa.0.0441.i, %i.buc ; 4 uses
  %.not130.i.i115 = icmp ugt i64 %i.bud, %i.axy
  br i1 %.not130.i.i115, label %.split438.us.i.i409, label %bb.ls, !prof !29

.split438.us.i.i409:                              ; preds = %bb.lr, %.lr.ph434.split.us.i.i410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35052
  br label %.split440.us.i.invoke.i121

bb.ls:                                            ; preds = %bb.lr
  %i.bue = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.bud
  %i.buf = sub nuw nsw i64 %i.axy, %i.bud         ; 2 uses
  br i1 %i.bra, label %._crit_edge416.i.i147, label %.lr.ph415.i.i116

.lr.ph415.i.i116:                                 ; preds = %bb.ls, %bb.nn
  %.sroa.029.0413.i.i117 = phi float [ %.sroa.029.4.7.i.i146, %bb.nn ], [ f0x7E967699, %bb.ls ] ; 2 uses
  %.sroa.0164.0412.i.i118 = phi ptr [ %i.bug, %bb.nn ], [ %i.aye, %bb.ls ] ; 10 uses
  %.sroa.7166.0411.i.i119 = phi i64 [ %i.buh, %bb.nn ], [ 0, %bb.ls ] ; 2 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i118, i64 32 ; 2 uses
  %i.buh = add nuw nsw i64 %.sroa.7166.0411.i.i119, 1
  %i.bui = shl nuw nsw i64 %.sroa.7166.0411.i.i119, 3 ; 11 uses
  %.not136.i.i120 = icmp samesign ugt i64 %i.bui, %i.buf
  br i1 %.not136.i.i120, label %bb.mu, label %bb.mv, !prof !29

._crit_edge416.i.i147:                            ; preds = %bb.nn, %bb.ls
  %.sroa.029.0.lcssa.i.i148 = phi float [ f0x7E967699, %bb.ls ], [ %.sroa.029.4.7.i.i146, %bb.nn ] ; 3 uses
  %i.buj = add nuw nsw i64 %i.bud, %i.brb         ; 3 uses
  %.not133.i.i149 = icmp ugt i64 %i.buj, %i.axy
  br i1 %.not133.i.i149, label %bb.lt, label %bb.lu, !prof !29

bb.lt:                                            ; preds = %._crit_edge416.i.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35052
  br label %.split440.us.i.invoke.i121

bb.lu:                                            ; preds = %._crit_edge416.i.i147
  %i.buk = sub nuw nsw i64 %i.axy, %i.buj
  %.not134.i.i150 = icmp samesign ugt i64 %i.brc, %i.buk
  br i1 %.not134.i.i150, label %bb.lv, label %bb.lw, !prof !29

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35052
  br label %.split440.us.i.invoke.i121

bb.lw:                                            ; preds = %bb.lu
  %i.bul = getelementptr inbounds nuw [4 x i8], ptr %i.aya, i64 %i.buj ; 3 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bul, i64 %.idx454.i.i ; 3 uses
  br i1 %i.bre, label %._crit_edge425.i.i161, label %.lr.ph424.preheader.i.i151

.lr.ph424.preheader.i.i151:                       ; preds = %bb.lw
  %.sroa.077.1418.i.i152 = getelementptr inbounds nuw i8, ptr %i.bul, i64 4 ; 2 uses
  br i1 %i.brg, label %bb.ma, label %.invoke.i97

._crit_edge425.i.i161:                            ; preds = %bb.mr, %bb.ms, %bb.mb, %bb.me, %bb.mh, %bb.mk, %bb.mn, %bb.mq, %bb.lw
  %.sroa.029.1.lcssa.i.i162 = phi float [ %.sroa.029.0.lcssa.i.i148, %bb.lw ], [ %.sroa.029.2.i.i158, %bb.mb ], [ %.sroa.029.2.i.i158.1, %bb.me ], [ %.sroa.029.2.i.i158.2, %bb.mh ], [ %.sroa.029.2.i.i158.3, %bb.mk ], [ %.sroa.029.2.i.i158.4, %bb.mn ], [ %.sroa.029.2.i.i158.5, %bb.mq ], [ %i.cdb, %bb.ms ], [ %.sroa.029.2.i.i158.5, %bb.mr ] ; 2 uses
  %i.bun = icmp samesign ult i64 %.sroa.7.0431.i.i113, 2000
  br i1 %i.bun, label %bb.lz, label %bb.lx

bb.lx:                                            ; preds = %bb.lz, %._crit_edge425.i.i161
  %.sroa.032.0.i.i163 = phi float [ %i.cbx, %bb.lz ], [ 1.350000e+01, %._crit_edge425.i.i161 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35053)
  br i1 %.not.i.i180.i, label %.invoke1203.i, label %.lr.ph430.i.i164.preheader, !prof !2480

.lr.ph430.i.i164.preheader:                       ; preds = %bb.lx
  %18 = call i64 @llvm.umax.i64(i64 %i.bua, i64 %i.ayj)
  %19 = sub i64 %18, %i.bte
  %20 = call i64 @llvm.umin.i64(i64 %17, i64 %19) ; 2 uses
  %min.iters.check3825 = icmp samesign ult i64 %20, 4
  br i1 %min.iters.check3825, label %.lr.ph430.i.i164.preheader4368, label %vector.ph3826

vector.ph3826:                                    ; preds = %.lr.ph430.i.i164.preheader
  %21 = add nuw nsw i64 %20, 1                    ; 2 uses
  %i.buo = and i64 %21, 3                         ; 2 uses
  %i.bup = icmp eq i64 %i.buo, 0
  %i.buq = select i1 %i.bup, i64 4, i64 %i.buo
  %n.vec3827 = sub nsw i64 %21, %i.buq            ; 3 uses
  %i.bur = shl i64 %n.vec3827, 5
  %i.bus = getelementptr i8, ptr %i.aye, i64 %i.bur
  %broadcast.splatinsert3828.a = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i162, i64 0
  %broadcast.splat3829.a = shufflevector <4 x float> %broadcast.splatinsert3828.a, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3830 = insertelement <4 x float> poison, float %.sroa.032.0.i.i163, i64 0 ; 5 uses
  %broadcast.splat3831 = shufflevector <4 x float> %broadcast.splatinsert3830, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep5245 = getelementptr i8, ptr %i.ayq, i64 %i.bua
  %i.but = shufflevector <4 x float> %broadcast.splatinsert3830, <4 x float> poison, <16 x i32> zeroinitializer
  %i.buu = shufflevector <4 x float> %broadcast.splatinsert3830, <4 x float> poison, <16 x i32> zeroinitializer
  %i.buv = shufflevector <4 x float> %broadcast.splatinsert3830, <4 x float> poison, <16 x i32> zeroinitializer
  %i.buw = shufflevector <4 x float> %broadcast.splatinsert3830, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3832

vector.body3832:                                  ; preds = %vector.body3832, %vector.ph3826
  %index3833 = phi i64 [ 0, %vector.ph3826 ], [ %index.next3840, %vector.body3832 ] ; 3 uses
  %i.bux = shl i64 %index3833, 5                  ; 4 uses
  %next.gep3834.a = getelementptr i8, ptr %i.aye, i64 %i.bux ; 9 uses
  %i.buy = getelementptr i8, ptr %i.aye, i64 %i.bux ; 8 uses
  %next.gep3835.a = getelementptr i8, ptr %i.buy, i64 32
  %i.buz = getelementptr i8, ptr %i.aye, i64 %i.bux ; 8 uses
  %next.gep3836 = getelementptr i8, ptr %i.buz, i64 64
  %i.bva = getelementptr i8, ptr %i.aye, i64 %i.bux ; 8 uses
  %next.gep3837 = getelementptr i8, ptr %i.bva, i64 96
  %i.bvb = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 4
  %i.bvc = getelementptr i8, ptr %i.buy, i64 36
  %i.bvd = getelementptr i8, ptr %i.buz, i64 68
  %i.bve = getelementptr i8, ptr %i.bva, i64 100
  %i.bvf = load float, ptr %i.bvb, align 4, !alias.scope !35037, !noalias !35056
  %i.bvg = load float, ptr %i.bvc, align 4, !alias.scope !35037, !noalias !35056
  %i.bvh = load float, ptr %i.bvd, align 4, !alias.scope !35037, !noalias !35056
  %i.bvi = load float, ptr %i.bve, align 4, !alias.scope !35037, !noalias !35056
  %i.bvj = insertelement <4 x float> poison, float %i.bvf, i64 0
  %i.bvk = insertelement <4 x float> %i.bvj, float %i.bvg, i64 1
  %i.bvl = insertelement <4 x float> %i.bvk, float %i.bvh, i64 2
  %i.bvm = insertelement <4 x float> %i.bvl, float %i.bvi, i64 3
  %i.bvn = fsub <4 x float> %i.bvm, %broadcast.splat3829.a ; 3 uses
  %i.bvo = fcmp oge <4 x float> %i.bvn, %broadcast.splat3831
  %i.bvp = select <4 x i1> %i.bvo, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.bvq = load float, ptr %next.gep3834.a, align 4, !alias.scope !35037, !noalias !35056
  %i.bvr = load float, ptr %next.gep3835.a, align 4, !alias.scope !35037, !noalias !35056
  %i.bvs = load float, ptr %next.gep3836, align 4, !alias.scope !35037, !noalias !35056
  %i.bvt = load float, ptr %next.gep3837, align 4, !alias.scope !35037, !noalias !35056
  %i.bvu = insertelement <4 x float> poison, float %i.bvq, i64 0
  %i.bvv = insertelement <4 x float> %i.bvu, float %i.bvr, i64 1
  %i.bvw = insertelement <4 x float> %i.bvv, float %i.bvs, i64 2
  %i.bvx = insertelement <4 x float> %i.bvw, float %i.bvt, i64 3
  %i.bvy = fsub <4 x float> %i.bvx, %broadcast.splat3829.a ; 3 uses
  %i.bvz = fcmp oge <4 x float> %i.bvy, %broadcast.splat3831
  %i.bwa = zext <4 x i1> %i.bvz to <4 x i8>
  %i.bwb = or disjoint <4 x i8> %i.bvp, %i.bwa
  %i.bwc = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 8
  %i.bwd = getelementptr i8, ptr %i.buy, i64 40
  %i.bwe = getelementptr i8, ptr %i.buz, i64 72
  %i.bwf = getelementptr i8, ptr %i.bva, i64 104
  %i.bwg = load float, ptr %i.bwc, align 4, !alias.scope !35037, !noalias !35056
  %i.bwh = load float, ptr %i.bwd, align 4, !alias.scope !35037, !noalias !35056
  %i.bwi = load float, ptr %i.bwe, align 4, !alias.scope !35037, !noalias !35056
  %i.bwj = load float, ptr %i.bwf, align 4, !alias.scope !35037, !noalias !35056
  %i.bwk = insertelement <4 x float> poison, float %i.bwg, i64 0
  %i.bwl = insertelement <4 x float> %i.bwk, float %i.bwh, i64 1
  %i.bwm = insertelement <4 x float> %i.bwl, float %i.bwi, i64 2
  %i.bwn = insertelement <4 x float> %i.bwm, float %i.bwj, i64 3
  %i.bwo = fsub <4 x float> %i.bwn, %broadcast.splat3829.a ; 3 uses
  %i.bwp = fcmp oge <4 x float> %i.bwo, %broadcast.splat3831
  %i.bwq = select <4 x i1> %i.bwp, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.bwr = or disjoint <4 x i8> %i.bwb, %i.bwq
  %i.bws = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 12
  %i.bwt = getelementptr i8, ptr %i.buy, i64 44
  %i.bwu = getelementptr i8, ptr %i.buz, i64 76
  %i.bwv = getelementptr i8, ptr %i.bva, i64 108
  %i.bww = load float, ptr %i.bws, align 4, !alias.scope !35037, !noalias !35056
  %i.bwx = load float, ptr %i.bwt, align 4, !alias.scope !35037, !noalias !35056
  %i.bwy = load float, ptr %i.bwu, align 4, !alias.scope !35037, !noalias !35056
  %i.bwz = load float, ptr %i.bwv, align 4, !alias.scope !35037, !noalias !35056
  %i.bxa = insertelement <4 x float> poison, float %i.bww, i64 0
  %i.bxb = insertelement <4 x float> %i.bxa, float %i.bwx, i64 1
  %i.bxc = insertelement <4 x float> %i.bxb, float %i.bwy, i64 2
  %i.bxd = insertelement <4 x float> %i.bxc, float %i.bwz, i64 3
  %i.bxe = fsub <4 x float> %i.bxd, %broadcast.splat3829.a ; 3 uses
  %i.bxf = fcmp oge <4 x float> %i.bxe, %broadcast.splat3831
  %i.bxg = select <4 x i1> %i.bxf, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.bxh = or disjoint <4 x i8> %i.bwr, %i.bxg
  %i.bxi = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 16
  %i.bxj = getelementptr i8, ptr %i.buy, i64 48
  %i.bxk = getelementptr i8, ptr %i.buz, i64 80
  %i.bxl = getelementptr i8, ptr %i.bva, i64 112
  %i.bxm = load float, ptr %i.bxi, align 4, !alias.scope !35037, !noalias !35056
  %i.bxn = load float, ptr %i.bxj, align 4, !alias.scope !35037, !noalias !35056
  %i.bxo = load float, ptr %i.bxk, align 4, !alias.scope !35037, !noalias !35056
  %i.bxp = load float, ptr %i.bxl, align 4, !alias.scope !35037, !noalias !35056
  %i.bxq = insertelement <4 x float> poison, float %i.bxm, i64 0
  %i.bxr = insertelement <4 x float> %i.bxq, float %i.bxn, i64 1
  %i.bxs = insertelement <4 x float> %i.bxr, float %i.bxo, i64 2
  %i.bxt = insertelement <4 x float> %i.bxs, float %i.bxp, i64 3
  %i.bxu = fsub <4 x float> %i.bxt, %broadcast.splat3829.a ; 3 uses
  %i.bxv = fcmp oge <4 x float> %i.bxu, %broadcast.splat3831
  %i.bxw = select <4 x i1> %i.bxv, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.bxx = or disjoint <4 x i8> %i.bxh, %i.bxw
  %i.bxy = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 20
  %i.bxz = getelementptr i8, ptr %i.buy, i64 52
  %i.bya = getelementptr i8, ptr %i.buz, i64 84
  %i.byb = getelementptr i8, ptr %i.bva, i64 116
  %i.byc = load float, ptr %i.bxy, align 4, !alias.scope !35037, !noalias !35056
  %i.byd = load float, ptr %i.bxz, align 4, !alias.scope !35037, !noalias !35056
  %i.bye = load float, ptr %i.bya, align 4, !alias.scope !35037, !noalias !35056
  %i.byf = load float, ptr %i.byb, align 4, !alias.scope !35037, !noalias !35056
  %i.byg = insertelement <4 x float> poison, float %i.byc, i64 0
  %i.byh = insertelement <4 x float> %i.byg, float %i.byd, i64 1
  %i.byi = insertelement <4 x float> %i.byh, float %i.bye, i64 2
  %i.byj = insertelement <4 x float> %i.byi, float %i.byf, i64 3
  %i.byk = fsub <4 x float> %i.byj, %broadcast.splat3829.a ; 3 uses
  %i.byl = fcmp oge <4 x float> %i.byk, %broadcast.splat3831
  %i.bym = select <4 x i1> %i.byl, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.byn = or disjoint <4 x i8> %i.bxx, %i.bym
  %i.byo = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 24
  %i.byp = getelementptr i8, ptr %i.buy, i64 56
  %i.byq = getelementptr i8, ptr %i.buz, i64 88
  %i.byr = getelementptr i8, ptr %i.bva, i64 120
  %i.bys = load float, ptr %i.byo, align 4, !alias.scope !35037, !noalias !35056
  %i.byt = load float, ptr %i.byp, align 4, !alias.scope !35037, !noalias !35056
  %i.byu = load float, ptr %i.byq, align 4, !alias.scope !35037, !noalias !35056
  %i.byv = load float, ptr %i.byr, align 4, !alias.scope !35037, !noalias !35056
  %i.byw = insertelement <4 x float> poison, float %i.bys, i64 0
  %i.byx = insertelement <4 x float> %i.byw, float %i.byt, i64 1
  %i.byy = insertelement <4 x float> %i.byx, float %i.byu, i64 2
  %i.byz = insertelement <4 x float> %i.byy, float %i.byv, i64 3
  %i.bza = fsub <4 x float> %i.byz, %broadcast.splat3829.a ; 3 uses
  %i.bzb = fcmp oge <4 x float> %i.bza, %broadcast.splat3831
  %i.bzc = select <4 x i1> %i.bzb, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.bzd = or disjoint <4 x i8> %i.byn, %i.bzc
  %i.bze = getelementptr inbounds nuw i8, ptr %next.gep3834.a, i64 28
  %i.bzf = getelementptr i8, ptr %i.buy, i64 60
  %i.bzg = getelementptr i8, ptr %i.buz, i64 92
  %i.bzh = getelementptr i8, ptr %i.bva, i64 124
  %i.bzi = load float, ptr %i.bze, align 4, !alias.scope !35037, !noalias !35056
  %i.bzj = load float, ptr %i.bzf, align 4, !alias.scope !35037, !noalias !35056
  %i.bzk = load float, ptr %i.bzg, align 4, !alias.scope !35037, !noalias !35056
  %i.bzl = load float, ptr %i.bzh, align 4, !alias.scope !35037, !noalias !35056
  %i.bzm = insertelement <4 x float> poison, float %i.bzi, i64 0
  %i.bzn = insertelement <4 x float> %i.bzm, float %i.bzj, i64 1
  %i.bzo = insertelement <4 x float> %i.bzn, float %i.bzk, i64 2
  %i.bzp = insertelement <4 x float> %i.bzo, float %i.bzl, i64 3
  %i.bzq = fsub <4 x float> %i.bzp, %broadcast.splat3829.a ; 3 uses
  %i.bzr = fcmp oge <4 x float> %i.bzq, %broadcast.splat3831
  %i.bzs = select <4 x i1> %i.bzr, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bzt = add nuw <4 x i8> %i.bzd, %i.bzs
  %gep5246 = getelementptr i8, ptr %invariant.gep5245, i64 %index3833 ; 2 uses
  %wide.load3838 = load <4 x i8>, ptr %gep5246, align 1, !alias.scope !35057, !noalias !35058
  %i.bzu = or <4 x i8> %i.bzt, %wide.load3838
  store <4 x i8> %i.bzu, ptr %gep5246, align 1, !alias.scope !35057, !noalias !35058
  %i.bzv = shufflevector <4 x float> %i.bvy, <4 x float> %i.bvn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzw = shufflevector <4 x float> %i.bwo, <4 x float> %i.bxe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bzx = shufflevector <8 x float> %i.bzv, <8 x float> %i.bzw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bzy = fcmp olt <16 x float> %i.bzx, %i.but
  %i.bzz = shufflevector <4 x float> %i.bvy, <4 x float> %i.bvn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.caa = shufflevector <4 x float> %i.bwo, <4 x float> %i.bxe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cab = shufflevector <8 x float> %i.bzz, <8 x float> %i.caa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cac = select <16 x i1> %i.bzy, <16 x float> %i.cab, <16 x float> %i.buu
  %i.cad = shufflevector <4 x float> %i.bxu, <4 x float> %i.byk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cae = shufflevector <4 x float> %i.bza, <4 x float> %i.bzq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.caf = shufflevector <8 x float> %i.cad, <8 x float> %i.cae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cag = fcmp olt <16 x float> %i.caf, %i.buv
  %i.cah = shufflevector <4 x float> %i.bxu, <4 x float> %i.byk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cai = shufflevector <4 x float> %i.bza, <4 x float> %i.bzq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.caj = shufflevector <8 x float> %i.cah, <8 x float> %i.cai, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cak = select <16 x i1> %i.cag, <16 x float> %i.caj, <16 x float> %i.buw
  %interleaved.vec3839 = shufflevector <16 x float> %i.cac, <16 x float> %i.cak, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3839, ptr %next.gep3834.a, align 4, !alias.scope !35037, !noalias !35056
  %index.next3840 = add nuw i64 %index3833, 4     ; 2 uses
  %i.cal = icmp eq i64 %index.next3840, %n.vec3827
  br i1 %i.cal, label %.lr.ph430.i.i164.preheader4368, label %vector.body3832, !llvm.loop !35060

.lr.ph430.i.i164.preheader4368:                   ; preds = %vector.body3832, %.lr.ph430.i.i164.preheader
  %.sroa.0187.0428.i.i165.ph = phi ptr [ %i.aye, %.lr.ph430.i.i164.preheader ], [ %i.bus, %vector.body3832 ]
  %.sroa.7189.0427.i.i166.ph = phi i64 [ 0, %.lr.ph430.i.i164.preheader ], [ %n.vec3827, %vector.body3832 ]
  %i.cam = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i162, i64 0
  %i.can = shufflevector <4 x float> %i.cam, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cao = insertelement <4 x float> poison, float %.sroa.032.0.i.i163, i64 0
  %i.cap = shufflevector <4 x float> %i.cao, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i164

.lr.ph430.i.i164:                                 ; preds = %.lr.ph430.i.i164.preheader4368, %bb.ly
  %.sroa.0187.0428.i.i165 = phi ptr [ %i.cat, %bb.ly ], [ %.sroa.0187.0428.i.i165.ph, %.lr.ph430.i.i164.preheader4368 ] ; 4 uses
  %.sroa.7189.0427.i.i166 = phi i64 [ %i.cas, %bb.ly ], [ %.sroa.7189.0427.i.i166.ph, %.lr.ph430.i.i164.preheader4368 ] ; 2 uses
  %i.caq = add nuw i64 %.sroa.7189.0427.i.i166, %i.bua ; 3 uses
  %i.car = icmp ult i64 %i.caq, %i.ayj
  br i1 %i.car, label %bb.ly, label %.invoke.i97

bb.ly:                                            ; preds = %.lr.ph430.i.i164
  %.sroa.9223.0..sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i165, i64 16 ; 2 uses
  %i.cas = add nuw nsw i64 %.sroa.7189.0427.i.i166, 1
  %i.cat = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i165, i64 32 ; 2 uses
  %i.cau = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %i.caq ; 2 uses
  %i.cav = load i8, ptr %i.cau, align 1, !alias.scope !35057, !noalias !35058, !noundef !27
  %i.caw = load <4 x float>, ptr %.sroa.0187.0428.i.i165, align 4, !alias.scope !35037, !noalias !35056
  %i.cax = fsub <4 x float> %i.caw, %i.can        ; 3 uses
  %i.cay = fcmp oge <4 x float> %i.cax, %i.cap
  %i.caz = bitcast <4 x i1> %i.cay to i4
  %i.cba = zext i4 %i.caz to i8
  %i.cbb = fcmp olt <4 x float> %i.cax, %i.cap
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.dff = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.ddp) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i": ; preds = %bb.sb
  %i.dfg = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i948) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i682"

.lr.ph571.i.i734:                                 ; preds = %.split.i.i718, %bb.sw
  %.sroa.0127.1570.i.i735 = phi i64 [ %.sroa.0127.1.i.i750, %bb.sw ], [ 1, %.split.i.i718 ] ; 3 uses
  %.sroa.043.3569.i.i736 = phi i64 [ %.sroa.043.4.lcssa.i.i747, %bb.sw ], [ %.sroa.043.0588.i.i725, %.split.i.i718 ] ; 3 uses
  %.sroa.0127.0568.i.i737 = phi i64 [ %.sroa.0127.1570.i.i735, %bb.sw ], [ 0, %.split.i.i718 ] ; 6 uses
  %i.dfh = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427933.i.i669, i64 %.sroa.0127.0568.i.i737 ; 5 uses
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dfh, i64 2176 ; 2 uses
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.dfh, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dfh, i8 0, i64 2184, i1 false), !noalias !35264
  store float 3.402000e+38, ptr %i.dfj, align 8, !alias.scope !35453, !noalias !35264
  %i.dfk = add nuw nsw i64 %.sroa.0127.0568.i.i737, %.sroa.047.1587.i.i726 ; 3 uses
  %i.dfl = icmp ult i64 %i.dfk, %.sroa.0.0.i.i634
  br i1 %i.dfl, label %bb.sv, label %.invoke3980

bb.sv:                                            ; preds = %.lr.ph571.i.i734
  %i.dfm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %i.dfk
  %i.dfn = load i32, ptr %i.dfm, align 4, !noalias !35264, !noundef !27 ; 2 uses
  %.not.i169.i738 = icmp eq i32 %i.dfn, 0
  br i1 %.not.i169.i738, label %._crit_edge.i.i746, label %.lr.ph.preheader.i.i739

.lr.ph.preheader.i.i739:                          ; preds = %bb.sv
  %i.dfo = zext i32 %i.dfn to i64
  %reass.sub.i740 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i736)
  %i.dfp = add nuw nsw i64 %reass.sub.i740, 1
  br label %.lr.ph.i.i741

._crit_edge.i.i746:                               ; preds = %bb.sy, %bb.sv
  %.sroa.043.4.lcssa.i.i747 = phi i64 [ %.sroa.043.3569.i.i736, %bb.sv ], [ %i.dgk, %bb.sy ] ; 2 uses
  %i.dfq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dfh)
          to label %bb.sw unwind label %.thread163.loopexit.i.i748, !noalias !35264

bb.sw:                                            ; preds = %._crit_edge.i.i746
  store float %i.dfq, ptr %i.dfj, align 8, !alias.scope !35456, !noalias !35264
  %i.dfr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0127.0568.i.i737
  %i.dfs = trunc nuw nsw i64 %.sroa.0127.0568.i.i737 to i32 ; 2 uses
  store i32 %i.dfs, ptr %i.dfr, align 4, !noalias !35264
  %i.dft = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0568.i.i737
  store i32 %i.dfs, ptr %i.dft, align 4, !noalias !35264
  %i.dfu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0568.i.i737
  store i32 1, ptr %i.dfu, align 4, !noalias !35264
  %i.dfv = icmp samesign ult i64 %.sroa.0127.1570.i.i735, %.sroa.0.0.i447.i.i732 ; 2 uses
  %i.dfw = zext i1 %i.dfv to i64
  %.sroa.0127.1.i.i750 = add nuw i64 %.sroa.0127.1570.i.i735, %i.dfw
  br i1 %i.dfv, label %.lr.ph571.i.i734, label %._crit_edge572.i.i751

.lr.ph.i.i741:                                    ; preds = %bb.sy, %.lr.ph.preheader.i.i739
  %i.dfx = phi i64 [ %i.dgl, %bb.sy ], [ 1, %.lr.ph.preheader.i.i739 ] ; 3 uses
  %.sroa.043.4567.i.i742 = phi i64 [ %i.dgk, %bb.sy ], [ %.sroa.043.3569.i.i736, %.lr.ph.preheader.i.i739 ] ; 3 uses
  %exitcond848.not.i.i743 = icmp eq i64 %i.dfx, %i.dfp
  br i1 %exitcond848.not.i.i743, label %.invoke3980, label %bb.sx

bb.sx:                                            ; preds = %.lr.ph.i.i741
  %i.dfy = getelementptr inbounds nuw [2 x i8], ptr %i.cjd, i64 %.sroa.043.4567.i.i742
  %i.dfz = load i16, ptr %i.dfy, align 2, !alias.scope !35459, !noalias !35413, !noundef !27 ; 2 uses
  %i.dga = zext i16 %i.dfz to i64                 ; 2 uses
  %i.dgb = icmp ult i16 %i.dfz, 544
  br i1 %i.dgb, label %bb.sy, label %.invoke3980

.invoke3980:                                      ; preds = %.lr.ph571.i.i734, %bb.sx, %.lr.ph.i.i741
  %i.dgc = phi i64 [ %.sroa.043.4567.i.i742, %.lr.ph.i.i741 ], [ %i.dga, %bb.sx ], [ %i.dfk, %.lr.ph571.i.i734 ]
  %i.dgd = phi i64 [ %2, %.lr.ph.i.i741 ], [ 544, %bb.sx ], [ %.sroa.0.0.i.i634, %.lr.ph571.i.i734 ]
  %i.dge = phi ptr [ @1567, %.lr.ph.i.i741 ], [ @1932, %bb.sx ], [ @1566, %.lr.ph571.i.i734 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dgc, i64 noundef %i.dgd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dge) #43
          to label %.cont3981 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35264

.cont3981:                                        ; preds = %.invoke3980
  unreachable

bb.sy:                                            ; preds = %bb.sx
  %i.dgf = getelementptr inbounds nuw [4 x i8], ptr %i.dfh, i64 %i.dga ; 2 uses
  %i.dgg = load i32, ptr %i.dgf, align 4, !alias.scope !35462, !noalias !35264, !noundef !27
  %i.dgh = add i32 %i.dgg, 1
  store i32 %i.dgh, ptr %i.dgf, align 4, !alias.scope !35462, !noalias !35264
  %i.dgi = load i64, ptr %i.dfi, align 8, !alias.scope !35465, !noalias !35264, !noundef !27
  %i.dgj = add i64 %i.dgi, 1
  store i64 %i.dgj, ptr %i.dfi, align 8, !alias.scope !35468, !noalias !35264
  %i.dgk = add nuw i64 %.sroa.043.4567.i.i742, 1  ; 2 uses
  %i.dgl = add nuw nsw i64 %i.dfx, 1
  %exitcond849.not.i.i745 = icmp eq i64 %i.dfx, %i.dfo
  br i1 %exitcond849.not.i.i745, label %._crit_edge.i.i746, label %.lr.ph.i.i741

bb.sz:                                            ; preds = %bb.tc, %bb.py
  %.sroa.047.0565.i.i670 = phi i64 [ 0, %bb.py ], [ %i.dgq, %bb.tc ] ; 2 uses
  %.sroa.059.0564.i.i671 = phi i64 [ 0, %bb.py ], [ %.sroa.059.1.i.i717, %bb.tc ] ; 5 uses
  %i.dgm = icmp ult i64 %.sroa.059.0564.i.i671, %.sroa.0.0.i.i634
  br i1 %i.dgm, label %bb.ta, label %.invoke.i.i672

bb.ta:                                            ; preds = %bb.sz
  %i.dgn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i649, i64 %.sroa.059.0564.i.i671 ; 2 uses
  %i.dgo = load i32, ptr %i.dgn, align 4, !noalias !35264, !noundef !27
  %i.dgp = add i32 %i.dgo, 1
  store i32 %i.dgp, ptr %i.dgn, align 4, !noalias !35264
  %i.dgq = add nuw i64 %.sroa.047.0565.i.i670, 1  ; 3 uses
  %i.dgr = icmp eq i64 %i.dgq, %.sroa.01.1        ; 2 uses
  br i1 %i.dgr, label %bb.td, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  %i.dgs = getelementptr inbounds nuw i8, ptr %i.coo, i64 %.sroa.047.0565.i.i670
  %i.dgt = load i8, ptr %i.dgs, align 1, !alias.scope !35250, !noalias !35471, !noundef !27
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.coo, i64 %i.dgq
  %i.dgv = load i8, ptr %i.dgu, align 1, !alias.scope !35250, !noalias !35471, !noundef !27
  %.not238.i.i716 = icmp eq i8 %i.dgt, %i.dgv
  br i1 %.not238.i.i716, label %bb.tc, label %bb.td

.invoke.i.i672:                                   ; preds = %bb.sz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i671, i64 noundef %.sroa.0.0.i.i634, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i715 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i673, !noalias !35264

.cont.i.i715:                                     ; preds = %.invoke.i.i672
  unreachable

bb.tc:                                            ; preds = %bb.td, %bb.tb
  %.sroa.059.1.i.i717 = phi i64 [ %i.dgw, %bb.td ], [ %.sroa.059.0564.i.i671, %bb.tb ]
  br i1 %i.dgr, label %.split.i.i718, label %bb.sz

bb.td:                                            ; preds = %bb.tb, %bb.ta
  %i.dgw = add nuw nsw i64 %.sroa.059.0564.i.i671, 1
  br label %bb.tc

.thread130.i.i798:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834", %.loopexit.split-lp.i.i828, %bb.pz
  %.pn230155.i.i799 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i797, %bb.pz ], [ %.pn.i.i833, %.loopexit.split-lp.i.i828 ], [ %.pn953.i.i835, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.016.4154.i.i800 = phi ptr [ %.sroa.016.7.i.i756, %bb.pz ], [ %.sroa.016.6.i.i832, %.loopexit.split-lp.i.i828 ], [ %.sroa.016.6952.i.i836, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.14.4153.i.i801 = phi i64 [ %.sroa.14.7.i.i755, %bb.pz ], [ %.sroa.14.6.i.i831, %.loopexit.split-lp.i.i828 ], [ %.sroa.14.6951.i.i837, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.026.3152.i.i802 = phi ptr [ %.sroa.026.4.ph162.i.i796, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i828 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.12.3151.i.i803 = phi i64 [ %.sroa.12.4.ph161.i.i795, %bb.pz ], [ 0, %.loopexit.split-lp.i.i828 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.044.0148.i.i804 = phi ptr [ %.sroa.044.1.ph160.i.i794, %bb.pz ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i828 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %.sroa.11.0147.i.i805 = phi i1 [ %.sroa.11.1.ph159.i.i793, %bb.pz ], [ true, %.loopexit.split-lp.i.i828 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %.sroa.051.0146.i.i806 = phi ptr [ %i.ctj, %bb.pz ], [ %.sroa.051.2.i.i830, %.loopexit.split-lp.i.i828 ], [ %.sroa.051.2950.i.i838, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ] ; 2 uses
  %.sroa.1152.0145.i.i807 = phi i64 [ %i.ddu, %bb.pz ], [ %.sroa.1152.2.i.i829, %.loopexit.split-lp.i.i828 ], [ %.sroa.1152.2949.i.i839, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i834" ]
  %i.dgx = icmp eq i64 %.sroa.1152.0145.i.i807, 0
  br i1 %i.dgx, label %bb.ra, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i808"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i808": ; preds = %.thread130.i.i798
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i806) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i806) #38, !noalias !35264
  br label %bb.ra

bb.te:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706", %bb.ps, %.thread86.i.i970
  %.pn230.pn.pn.pn.pn.pn90.i.i709 = phi { ptr, i32 } [ %i.cri, %.thread86.i.i970 ], [ %.pn230.pn.pn.pn.pn100.i.i707, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i706" ], [ %.pn230.pn.pn.pn.i.i704, %bb.ps ] ; 2 uses
  %i.dgy = icmp eq i64 %.sroa.0.0.i.i634, 0
  br i1 %i.dgy, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710": ; preds = %bb.te
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i649) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972": ; preds = %bb.pm
  %i.dgz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dha = icmp eq i64 %.sroa.0.0.i.i634, 0
  br i1 %i.dha, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i711": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710"
  %i.dhb = phi ptr [ %i.cqn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710" ], [ %i.cqi, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i712 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i709, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i710" ], [ %i.dgz, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i972" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dhb) ]
  tail call void @mi_free(ptr noundef nonnull %i.dhb) #38, !noalias !35264
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit218.i713"

bb.tf:                                            ; preds = %bb.rf
  %i.dhc = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i895, ptr %i.dhc, align 8, !alias.scope !35325, !noalias !35326
  %i.dhd = zext i8 %.sroa.0113.1.i.i894 to i64
  %i.dhe = add nuw nsw i64 %i.dhd, 1
  %i.dhf = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dhe, ptr %i.dhf, align 8, !alias.scope !35325, !noalias !35326
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cue) #38, !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i649) #38, !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqn) #38, !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 1 %i.coo) #38, !noalias !35141
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.tg:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i495
  %.sroa.032.1442.i498 = phi i64 [ 1, %.split.i495 ], [ %.sroa.032.1.i645, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i499 = phi i64 [ %spec.store.select.i447, %.split.i495 ], [ %i.dwy, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35483)
  %i.dhg = icmp eq i64 %.sroa.0.0441.i499, 0
  br i1 %i.dhg, label %.loopexit.i633, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.dhh = add i64 %.sroa.0.0441.i499, 7
  %i.dhi = lshr i64 %i.dhh, 3                     ; 8 uses
  %i.dhj = icmp eq i64 %.sroa.0.0441.i499, 1
  br i1 %i.dhj, label %.preheader.i.i985.preheader, label %bb.ti

.preheader.i.i985.preheader:                      ; preds = %bb.th
  br i1 %min.iters.check3898, label %.preheader.i.i985.preheader4143, label %vector.body3901

.preheader.i.i985.preheader4143:                  ; preds = %vector.body3901, %.preheader.i.i985.preheader
  %.ph4144 = phi i64 [ 1, %.preheader.i.i985.preheader ], [ %i.cqa, %vector.body3901 ]
  %.sroa.066.0449.i.i986.ph = phi i64 [ 0, %.preheader.i.i985.preheader ], [ %n.vec3900, %vector.body3901 ]
  br label %.preheader.i.i985

vector.body3901:                                  ; preds = %.preheader.i.i985.preheader, %vector.body3901
  %index3902 = phi i64 [ %index.next3903, %vector.body3901 ], [ 0, %.preheader.i.i985.preheader ] ; 2 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.coo, i64 %index3902 ; 2 uses
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.dhk, i64 16
  store <16 x i8> zeroinitializer, ptr %i.dhk, align 1, !alias.scope !35483, !noalias !35485
  store <16 x i8> zeroinitializer, ptr %i.dhl, align 1, !alias.scope !35483, !noalias !35485
  %index.next3903 = add nuw i64 %index3902, 32    ; 2 uses
  %i.dhm = icmp eq i64 %index.next3903, %n.vec3900
  br i1 %i.dhm, label %.preheader.i.i985.preheader4143, label %vector.body3901, !llvm.loop !35486

bb.ti:                                            ; preds = %bb.th
  %.not121.i.i500 = icmp ugt i64 %.sroa.0.0441.i499, %spec.store.select.i447
  br i1 %.not121.i.i500, label %bb.tj, label %.preheader360.i.i501, !prof !2480

bb.tj:                                            ; preds = %bb.ti
  %i.dhn = mul nuw nsw i64 %.sroa.0.0441.i499, 544
  br label %.invoke1203.i979

.invoke1203.i979:                                 ; preds = %bb.vu, %._crit_edge408.i.i533, %.lr.ph403.i.preheader.i529, %bb.tv, %bb.tj
  %i.dho = phi i64 [ %i.dhn, %bb.tj ], [ %i.dhi, %bb.tv ], [ %.sroa.01.1, %._crit_edge408.i.i533 ], [ %i.dht, %.lr.ph403.i.preheader.i529 ], [ %i.dwy, %bb.vu ]
  %i.dhp = phi i64 [ %i.cos, %bb.tj ], [ %i.cor, %bb.tv ], [ %2, %._crit_edge408.i.i533 ], [ %i.cpd, %.lr.ph403.i.preheader.i529 ], [ %spec.store.select.i447, %bb.vu ]
  %i.dhq = phi ptr [ @1545, %bb.tj ], [ @1577, %bb.tv ], [ @1540, %._crit_edge408.i.i533 ], [ @1541, %.lr.ph403.i.preheader.i529 ], [ @1931, %bb.vu ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.dho, i64 noundef %i.dhp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dhq) #43
          to label %.cont1204.i980 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524", !noalias !35141

.cont1204.i980:                                   ; preds = %.invoke1203.i979
  unreachable

.preheader360.i.i501:                             ; preds = %bb.ti
  %.idx.i.i502 = mul nuw nsw i64 %.sroa.0.0441.i499, 2176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cou, i8 0, i64 %.idx.i.i502, i1 false), !alias.scope !35477, !noalias !35487
  br label %bb.tk

bb.tk:                                            ; preds = %bb.vr, %.preheader360.i.i501
  %i.dhr = phi i64 [ 1, %.preheader360.i.i501 ], [ %i.dws, %bb.vr ] ; 4 uses
  %.sroa.069.0399.i.i503 = phi i64 [ 0, %.preheader360.i.i501 ], [ %i.dhr, %bb.vr ] ; 3 uses
  %exitcond.not.i177.i504 = icmp eq i64 %i.dhr, %i.cpq
  br i1 %exitcond.not.i177.i504, label %.invoke.i523, label %bb.vp

.loopexit358.i.i528:                              ; preds = %bb.vo
  %i.dhs = icmp eq i64 %i.dhu, 0
  br i1 %i.dhs, label %.lr.ph403.i.preheader.i529, label %.split.i178.i507

.lr.ph403.i.preheader.i529:                       ; preds = %.loopexit358.i.i528
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.coy, i8 0, i64 %i.cox, i1 false), !alias.scope !35479, !noalias !35488
  %i.dht = mul i64 %i.dhi, %.sroa.01.1            ; 4 uses
  %.not124.i.i530 = icmp ugt i64 %i.dht, %i.cpd
  br i1 %.not124.i.i530, label %.invoke1203.i979, label %bb.tl, !prof !2480

.split.i178.i507:                                 ; preds = %bb.vr, %.loopexit358.i.i528
  %.sroa.05.0401.i.i508 = phi i64 [ %i.dhu, %.loopexit358.i.i528 ], [ 544, %bb.vr ]
  %i.dhu = add nsw i64 %.sroa.05.0401.i.i508, -1  ; 4 uses
  %invariant.gep.i.i509 = getelementptr [4 x i8], ptr %i.cjn, i64 %i.dhu
  %i.dhv = mul i64 %i.dhu, %.sroa.0.0441.i499
  br label %bb.vm

bb.tl:                                            ; preds = %.lr.ph403.i.preheader.i529
  %.not355404.i.i531 = icmp samesign eq i64 %i.dht, 0
  br i1 %.not355404.i.i531, label %._crit_edge408.i.i533, label %.lr.ph407.preheader.i.i532

.lr.ph407.preheader.i.i532:                       ; preds = %bb.tl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cpk, i8 0, i64 %i.dht, i1 false), !alias.scope !35481, !noalias !35489
  br label %._crit_edge408.i.i533

._crit_edge408.i.i533:                            ; preds = %.lr.ph407.preheader.i.i532, %bb.tl
  br i1 %.not126.i.i497, label %.invoke1203.i979, label %.lr.ph434.i.i534, !prof !2480

.lr.ph434.i.i534:                                 ; preds = %._crit_edge408.i.i533
  %i.dhw = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %.not131.i.i535 = icmp samesign ugt i64 %i.dhw, %i.cor
  %.idx452.i.i536 = shl nuw nsw i64 %i.dhw, 5
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.idx452.i.i536
  %i.dhy = icmp eq i64 %i.dhw, 0
  %i.dhz = and i64 %.sroa.0.0441.i499, -8         ; 8 uses
  %i.dia = and i64 %.sroa.0.0441.i499, 7          ; 4 uses
  %.not.i.i180.i537 = icmp samesign ugt i64 %i.dhi, %i.cor
  %.idx453.i.i538 = shl i64 %i.dhi, 5             ; 2 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.idx453.i.i538
  br i1 %.not131.i.i535, label %.lr.ph434.split.us.i.i982, label %.lr.ph434.split.preheader.i.i539, !prof !29

.lr.ph434.split.preheader.i.i539:                 ; preds = %.lr.ph434.i.i534
  %.idx454.i.i540 = shl nuw nsw i64 %i.dia, 2     ; 3 uses
  %i.dic = icmp eq i64 %i.dia, 0
  %i.did = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.die = icmp samesign ult i64 %i.did, %i.cor
  %i.dif = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.did ; 2 uses
  %i.dig = trunc i64 %i.dhz to i8
  %i.dih = icmp eq i64 %i.dia, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i589 = select i1 %i.dih, i64 0, i64 4 ; 3 uses
  %i.dii = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.dij = icmp samesign ult i64 %i.dii, %i.cor
  %i.dik = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.dii
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dik, i64 4 ; 2 uses
  %i.dim = trunc i64 %i.dhz to i8
  %i.din = or disjoint i8 %i.dim, 1
  %i.dio = add nuw nsw i64 %.sroa.077.1.idx.i.i589, 4
  %i.dip = icmp samesign eq i64 %i.dio, %.idx454.i.i540 ; 2 uses
  %.sroa.077.1.idx.i.i589.1 = select i1 %i.dip, i64 0, i64 4 ; 2 uses
  %i.diq = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.dir = icmp samesign ult i64 %i.diq, %i.cor
  %i.dis = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.diq
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dis, i64 8 ; 2 uses
  %i.diu = trunc i64 %i.dhz to i8
  %i.div = or disjoint i8 %i.diu, 2
  %i.diw = add nuw nsw i64 %.sroa.077.1.idx.i.i589, 4
  %i.dix = add nuw nsw i64 %i.diw, %.sroa.077.1.idx.i.i589.1
  %i.diy = icmp samesign eq i64 %i.dix, %.idx454.i.i540 ; 2 uses
  %.sroa.077.1.idx.i.i589.2 = select i1 %i.diy, i64 0, i64 4
  %i.diz = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.dja = icmp samesign ult i64 %i.diz, %i.cor
  %i.djb = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.diz
  %i.djc = getelementptr inbounds nuw i8, ptr %i.djb, i64 12 ; 2 uses
  %i.djd = trunc i64 %i.dhz to i8
  %i.dje = or disjoint i8 %i.djd, 3
  %i.djf = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.djg = icmp samesign ult i64 %i.djf, %i.cor
  %i.djh = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.djf
  %i.dji = getelementptr inbounds nuw i8, ptr %i.djh, i64 16 ; 2 uses
  %i.djj = trunc i64 %i.dhz to i8
  %i.djk = or disjoint i8 %i.djj, 4
  %i.djl = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.djm = icmp samesign ult i64 %i.djl, %i.cor
  %i.djn = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.djl
  %i.djo = getelementptr inbounds nuw i8, ptr %i.djn, i64 20 ; 2 uses
  %i.djp = trunc i64 %i.dhz to i8
  %i.djq = or disjoint i8 %i.djp, 5
  %i.djr = lshr i64 %.sroa.0.0441.i499, 3         ; 3 uses
  %i.djs = icmp samesign ult i64 %i.djr, %i.cor
  %i.djt = getelementptr inbounds nuw [32 x i8], ptr %i.coy, i64 %i.djr
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djt, i64 24 ; 2 uses
  %i.djv = trunc i64 %i.dhz to i8
  %i.djw = or disjoint i8 %i.djv, 6
  %22 = add i64 %.idx453.i.i538, -32
  %23 = lshr exact i64 %22, 5
  br label %.lr.ph434.split.i.i541

.lr.ph434.split.us.i.i982:                        ; preds = %.lr.ph434.i.i534
  %i.djx = load i16, ptr %i.cjd, align 2, !alias.scope !35490, !noalias !35493, !noundef !27
  %i.djy = zext i16 %i.djx to i64
  %i.djz = mul nuw nsw i64 %.sroa.0.0441.i499, %i.djy
  %.not130.us.i.i983 = icmp ugt i64 %i.djz, %i.cos
  br i1 %.not130.us.i.i983, label %.split438.us.i.i981, label %.split440.us.i.i984, !prof !29

.split440.us.i.i984:                              ; preds = %.lr.ph434.split.us.i.i982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35494
  br label %.split440.us.i.invoke.i551

.split440.us.i.invoke.i551:                       ; preds = %bb.uu, %bb.us, %bb.tt, %bb.tr, %.split438.us.i.i981, %.split440.us.i.i984
  %.sink.i552.sroa.phi = phi ptr [ %.sink.i552.sroa.gep, %bb.uu ], [ %.sink.i552.sroa.gep66, %bb.us ], [ %.sink.i552.sroa.gep67, %bb.tt ], [ %.sink.i552.sroa.gep68, %bb.tr ], [ %.sink.i552.sroa.gep69, %.split438.us.i.i981 ], [ %.sink.i552.sroa.gep70, %.split440.us.i.i984 ]
  %.sink.i552.sroa.phi71 = phi ptr [ %.sink.i552.sroa.gep72, %bb.uu ], [ %.sink.i552.sroa.gep73, %bb.us ], [ %.sink.i552.sroa.gep74, %bb.tt ], [ %.sink.i552.sroa.gep75, %bb.tr ], [ %.sink.i552.sroa.gep76, %.split438.us.i.i981 ], [ %.sink.i552.sroa.gep77, %.split440.us.i.i984 ]
  %.sink.i552.sroa.phi78 = phi ptr [ %.sink.i552.sroa.gep79, %bb.uu ], [ %.sink.i552.sroa.gep80, %bb.us ], [ %.sink.i552.sroa.gep81, %bb.tt ], [ %.sink.i552.sroa.gep82, %bb.tr ], [ %.sink.i552.sroa.gep83, %.split438.us.i.i981 ], [ %.sink.i552.sroa.gep84, %.split440.us.i.i984 ]
  %.sink.i552.sroa.phi85 = phi ptr [ %.sink.i552.sroa.gep86, %bb.uu ], [ %.sink.i552.sroa.gep87, %bb.us ], [ %.sink.i552.sroa.gep88, %bb.tt ], [ %.sink.i552.sroa.gep89, %bb.tr ], [ %.sink.i552.sroa.gep90, %.split438.us.i.i981 ], [ %.sink.i552.sroa.gep91, %.split440.us.i.i984 ]
  %.sink.i552 = phi ptr [ %i.b, %bb.uu ], [ %i.d, %bb.us ], [ %i.a, %bb.tt ], [ %i.c, %bb.tr ], [ %i.f, %.split438.us.i.i981 ], [ %i.e, %.split440.us.i.i984 ] ; 2 uses
  %i.dka = phi ptr [ @1539, %bb.uu ], [ @1538, %bb.us ], [ @1536, %bb.tt ], [ @1535, %bb.tr ], [ @1533, %.split438.us.i.i981 ], [ @1534, %.split440.us.i.i984 ]
  store ptr @186, ptr %.sink.i552, align 8, !noalias !35494
  store i64 1, ptr %.sink.i552.sroa.phi, align 8, !noalias !35494
  store ptr null, ptr %.sink.i552.sroa.phi71, align 8, !noalias !35494
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i552.sroa.phi78, align 8, !noalias !35494
  store i64 0, ptr %.sink.i552.sroa.phi85, align 8, !noalias !35494
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i552, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dka) #43
          to label %.split440.us.i.cont.i553 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i524", !noalias !35141

.split440.us.i.cont.i553:                         ; preds = %.split440.us.i.invoke.i551
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i621: ; preds = %bb.tw
  %i.dkb = icmp eq ptr %i.dkd, %i.cpr
  br i1 %i.dkb, label %.lr.ph447.preheader.i.i622, label %.lr.ph434.split.i.i541

.lr.ph434.split.i.i541:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i621, %.lr.ph434.split.preheader.i.i539
  %.sroa.0.0336432.i.i542 = phi ptr [ %i.dkd, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i621 ], [ %i.cjd, %.lr.ph434.split.preheader.i.i539 ] ; 2 uses
  %.sroa.7.0431.i.i543 = phi i64 [ %i.dke, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i621 ], [ 0, %.lr.ph434.split.preheader.i.i539 ] ; 7 uses
  %i.dkc = mul i64 %i.dhi, %.sroa.7.0431.i.i543
  %i.dkd = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i542, i64 2 ; 2 uses
  %i.dke = add nuw nsw i64 %.sroa.7.0431.i.i543, 1
  %exitcond487.not.i.i544 = icmp eq i64 %.sroa.7.0431.i.i543, %.sroa.01.1
  br i1 %exitcond487.not.i.i544, label %.invoke.i523, label %bb.tp

.lr.ph447.preheader.i.i622:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i621
  %i.dkf = load i8, ptr %i.cpt, align 1, !alias.scope !35483, !noalias !35485, !noundef !27
  %i.dkg = mul i64 %i.dhi, %i.cps
  br label %.lr.ph447.i.i623

.lr.ph447.i.i623:                                 ; preds = %bb.to, %.lr.ph447.preheader.i.i622
  %.sroa.03.0446.i.i624 = phi i64 [ %.sroa.03.1.i.i631, %bb.to ], [ 1, %.lr.ph447.preheader.i.i622 ] ; 2 uses
  %.sroa.052.0445.i.i625 = phi i64 [ %i.dkh, %bb.to ], [ %i.cps, %.lr.ph447.preheader.i.i622 ]
  %.sroa.059.0444.i.i626 = phi i64 [ %i.dki, %bb.to ], [ %i.dkg, %.lr.ph447.preheader.i.i622 ]
  %.sroa.061.0443.i.i627 = phi i8 [ %.sroa.061.1.i.i630, %bb.to ], [ %i.dkf, %.lr.ph447.preheader.i.i622 ] ; 4 uses
  %i.dkh = add i64 %.sroa.052.0445.i.i625, -1     ; 4 uses
  %i.dki = sub i64 %.sroa.059.0444.i.i626, %i.dhi ; 2 uses
  %i.dkj = lshr i8 %.sroa.061.0443.i.i627, 3
  %i.dkk = zext nneg i8 %i.dkj to i64
  %i.dkl = add i64 %i.dki, %i.dkk                 ; 3 uses
  %i.dkm = icmp ult i64 %i.dkl, %i.cpd
  br i1 %i.dkm, label %bb.tm, label %.invoke.i523

bb.tm:                                            ; preds = %.lr.ph447.i.i623
  %i.dkn = and i8 %.sroa.061.0443.i.i627, 7
  %i.dko = shl nuw i8 1, %i.dkn
  %i.dkp = getelementptr inbounds nuw i8, ptr %i.cpk, i64 %i.dkl
  %i.dkq = load i8, ptr %i.dkp, align 1, !alias.scope !35481, !noalias !35489, !noundef !27
  %i.dkr = and i8 %i.dkq, %i.dko
  %i.dks = icmp eq i8 %i.dkr, 0
  br i1 %i.dks, label %bb.to, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.coo, i64 %i.dkh
  %i.dku = load i8, ptr %i.dkt, align 1, !alias.scope !35483, !noalias !35485, !noundef !27 ; 2 uses
  %.not129.i.i628 = icmp ne i8 %.sroa.061.0443.i.i627, %i.dku
  %i.dkv = zext i1 %.not129.i.i628 to i64
  %spec.select137.i.i629 = add i64 %.sroa.03.0446.i.i624, %i.dkv
  br label %bb.to

bb.to:                                            ; preds = %bb.tn, %bb.tm
  %.sroa.061.1.i.i630 = phi i8 [ %.sroa.061.0443.i.i627, %bb.tm ], [ %i.dku, %bb.tn ] ; 2 uses
  %.sroa.03.1.i.i631 = phi i64 [ %.sroa.03.0446.i.i624, %bb.tm ], [ %spec.select137.i.i629, %bb.tn ] ; 2 uses
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.coo, i64 %i.dkh
  store i8 %.sroa.061.1.i.i630, ptr %i.dkw, align 1, !alias.scope !35483, !noalias !35485
  %.not128.i.i632 = icmp eq i64 %i.dkh, 0
  br i1 %.not128.i.i632, label %.loopexit.i633, label %.lr.ph447.i.i623

bb.tp:                                            ; preds = %.lr.ph434.split.i.i541
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.coo, i64 %.sroa.7.0431.i.i543 ; 15 uses
  %i.dky = mul i64 %.sroa.7.0431.i.i543, %i.dhi   ; 3 uses
  %i.dkz = load i16, ptr %.sroa.0.0336432.i.i542, align 2, !alias.scope !35490, !noalias !35493, !noundef !27
  %i.dla = zext i16 %i.dkz to i64
  %i.dlb = mul nuw nsw i64 %.sroa.0.0441.i499, %i.dla ; 4 uses
  %.not130.i.i545 = icmp ugt i64 %i.dlb, %i.cos
  br i1 %.not130.i.i545, label %.split438.us.i.i981, label %bb.tq, !prof !29

.split438.us.i.i981:                              ; preds = %bb.tp, %.lr.ph434.split.us.i.i982
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35494
  br label %.split440.us.i.invoke.i551

bb.tq:                                            ; preds = %bb.tp
  %i.dlc = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.dlb
  %i.dld = sub nuw nsw i64 %i.cos, %i.dlb         ; 2 uses
  br i1 %i.dhy, label %._crit_edge416.i.i577, label %.lr.ph415.i.i546

.lr.ph415.i.i546:                                 ; preds = %bb.tq, %bb.vl
  %.sroa.029.0413.i.i547 = phi float [ %.sroa.029.4.7.i.i576, %bb.vl ], [ f0x7E967699, %bb.tq ] ; 2 uses
  %.sroa.0164.0412.i.i548 = phi ptr [ %i.dle, %bb.vl ], [ %i.coy, %bb.tq ] ; 10 uses
  %.sroa.7166.0411.i.i549 = phi i64 [ %i.dlf, %bb.vl ], [ 0, %bb.tq ] ; 2 uses
  %i.dle = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i548, i64 32 ; 2 uses
  %i.dlf = add nuw nsw i64 %.sroa.7166.0411.i.i549, 1
  %i.dlg = shl nuw nsw i64 %.sroa.7166.0411.i.i549, 3 ; 11 uses
  %.not136.i.i550 = icmp samesign ugt i64 %i.dlg, %i.dld
  br i1 %.not136.i.i550, label %bb.us, label %bb.ut, !prof !29

._crit_edge416.i.i577:                            ; preds = %bb.vl, %bb.tq
  %.sroa.029.0.lcssa.i.i578 = phi float [ f0x7E967699, %bb.tq ], [ %.sroa.029.4.7.i.i576, %bb.vl ] ; 3 uses
  %i.dlh = add nuw nsw i64 %i.dlb, %i.dhz         ; 3 uses
  %.not133.i.i579 = icmp ugt i64 %i.dlh, %i.cos
  br i1 %.not133.i.i579, label %bb.tr, label %bb.ts, !prof !29

bb.tr:                                            ; preds = %._crit_edge416.i.i577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35494
  br label %.split440.us.i.invoke.i551

bb.ts:                                            ; preds = %._crit_edge416.i.i577
  %i.dli = sub nuw nsw i64 %i.cos, %i.dlh
  %.not134.i.i580 = icmp samesign ugt i64 %i.dia, %i.dli
  br i1 %.not134.i.i580, label %bb.tt, label %bb.tu, !prof !29

bb.tt:                                            ; preds = %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35494
  br label %.split440.us.i.invoke.i551

bb.tu:                                            ; preds = %bb.ts
  %i.dlj = getelementptr inbounds nuw [4 x i8], ptr %i.cou, i64 %i.dlh ; 3 uses
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.dlj, i64 %.idx454.i.i540 ; 3 uses
  br i1 %i.dic, label %._crit_edge425.i.i591, label %.lr.ph424.preheader.i.i581

.lr.ph424.preheader.i.i581:                       ; preds = %bb.tu
  %.sroa.077.1418.i.i582 = getelementptr inbounds nuw i8, ptr %i.dlj, i64 4 ; 2 uses
  br i1 %i.die, label %bb.ty, label %.invoke.i523

._crit_edge425.i.i591:                            ; preds = %bb.up, %bb.uq, %bb.tz, %bb.uc, %bb.uf, %bb.ui, %bb.ul, %bb.uo, %bb.tu
  %.sroa.029.1.lcssa.i.i592 = phi float [ %.sroa.029.0.lcssa.i.i578, %bb.tu ], [ %.sroa.029.2.i.i588, %bb.tz ], [ %.sroa.029.2.i.i588.1, %bb.uc ], [ %.sroa.029.2.i.i588.2, %bb.uf ], [ %.sroa.029.2.i.i588.3, %bb.ui ], [ %.sroa.029.2.i.i588.4, %bb.ul ], [ %.sroa.029.2.i.i588.5, %bb.uo ], [ %i.dtz, %bb.uq ], [ %.sroa.029.2.i.i588.5, %bb.up ] ; 2 uses
  %i.dll = icmp samesign ult i64 %.sroa.7.0431.i.i543, 2000
  br i1 %i.dll, label %bb.tx, label %bb.tv

bb.tv:                                            ; preds = %bb.tx, %._crit_edge425.i.i591
  %.sroa.032.0.i.i593 = phi float [ %i.dsv, %bb.tx ], [ 1.460000e+01, %._crit_edge425.i.i591 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35495)
  br i1 %.not.i.i180.i537, label %.invoke1203.i979, label %.lr.ph430.i.i594.preheader, !prof !2480

.lr.ph430.i.i594.preheader:                       ; preds = %bb.tv
  %24 = call i64 @llvm.umax.i64(i64 %i.dky, i64 %i.cpd)
  %25 = sub i64 %24, %i.dkc
  %26 = call i64 @llvm.umin.i64(i64 %23, i64 %25) ; 2 uses
  %min.iters.check3910 = icmp samesign ult i64 %26, 4
  br i1 %min.iters.check3910, label %.lr.ph430.i.i594.preheader4133, label %vector.ph3911

vector.ph3911:                                    ; preds = %.lr.ph430.i.i594.preheader
  %27 = add nuw nsw i64 %26, 1                    ; 2 uses
  %i.dlm = and i64 %27, 3                         ; 2 uses
  %i.dln = icmp eq i64 %i.dlm, 0
  %i.dlo = select i1 %i.dln, i64 4, i64 %i.dlm
  %n.vec3912 = sub nsw i64 %27, %i.dlo            ; 3 uses
  %i.dlp = shl i64 %n.vec3912, 5
  %i.dlq = getelementptr i8, ptr %i.coy, i64 %i.dlp
  %broadcast.splatinsert3913 = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i592, i64 0
  %broadcast.splat3914 = shufflevector <4 x float> %broadcast.splatinsert3913, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3915 = insertelement <4 x float> poison, float %.sroa.032.0.i.i593, i64 0 ; 5 uses
  %broadcast.splat3916 = shufflevector <4 x float> %broadcast.splatinsert3915, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep5247 = getelementptr i8, ptr %i.cpk, i64 %i.dky
  %i.dlr = shufflevector <4 x float> %broadcast.splatinsert3915, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dls = shufflevector <4 x float> %broadcast.splatinsert3915, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dlt = shufflevector <4 x float> %broadcast.splatinsert3915, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dlu = shufflevector <4 x float> %broadcast.splatinsert3915, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3917

vector.body3917:                                  ; preds = %vector.body3917, %vector.ph3911
  %index3918 = phi i64 [ 0, %vector.ph3911 ], [ %index.next3925, %vector.body3917 ] ; 3 uses
  %i.dlv = shl i64 %index3918, 5                  ; 4 uses
  %next.gep3919 = getelementptr i8, ptr %i.coy, i64 %i.dlv ; 9 uses
  %i.dlw = getelementptr i8, ptr %i.coy, i64 %i.dlv ; 8 uses
  %next.gep3920 = getelementptr i8, ptr %i.dlw, i64 32
  %i.dlx = getelementptr i8, ptr %i.coy, i64 %i.dlv ; 8 uses
  %next.gep3921 = getelementptr i8, ptr %i.dlx, i64 64
  %i.dly = getelementptr i8, ptr %i.coy, i64 %i.dlv ; 8 uses
  %next.gep3922 = getelementptr i8, ptr %i.dly, i64 96
  %i.dlz = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 4
  %i.dma = getelementptr i8, ptr %i.dlw, i64 36
  %i.dmb = getelementptr i8, ptr %i.dlx, i64 68
  %i.dmc = getelementptr i8, ptr %i.dly, i64 100
  %i.dmd = load float, ptr %i.dlz, align 4, !alias.scope !35479, !noalias !35498
  %i.dme = load float, ptr %i.dma, align 4, !alias.scope !35479, !noalias !35498
  %i.dmf = load float, ptr %i.dmb, align 4, !alias.scope !35479, !noalias !35498
  %i.dmg = load float, ptr %i.dmc, align 4, !alias.scope !35479, !noalias !35498
  %i.dmh = insertelement <4 x float> poison, float %i.dmd, i64 0
  %i.dmi = insertelement <4 x float> %i.dmh, float %i.dme, i64 1
  %i.dmj = insertelement <4 x float> %i.dmi, float %i.dmf, i64 2
  %i.dmk = insertelement <4 x float> %i.dmj, float %i.dmg, i64 3
  %i.dml = fsub <4 x float> %i.dmk, %broadcast.splat3914 ; 3 uses
  %i.dmm = fcmp oge <4 x float> %i.dml, %broadcast.splat3916
  %i.dmn = select <4 x i1> %i.dmm, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.dmo = load float, ptr %next.gep3919, align 4, !alias.scope !35479, !noalias !35498
  %i.dmp = load float, ptr %next.gep3920, align 4, !alias.scope !35479, !noalias !35498
  %i.dmq = load float, ptr %next.gep3921, align 4, !alias.scope !35479, !noalias !35498
  %i.dmr = load float, ptr %next.gep3922, align 4, !alias.scope !35479, !noalias !35498
  %i.dms = insertelement <4 x float> poison, float %i.dmo, i64 0
  %i.dmt = insertelement <4 x float> %i.dms, float %i.dmp, i64 1
  %i.dmu = insertelement <4 x float> %i.dmt, float %i.dmq, i64 2
  %i.dmv = insertelement <4 x float> %i.dmu, float %i.dmr, i64 3
  %i.dmw = fsub <4 x float> %i.dmv, %broadcast.splat3914 ; 3 uses
  %i.dmx = fcmp oge <4 x float> %i.dmw, %broadcast.splat3916
  %i.dmy = zext <4 x i1> %i.dmx to <4 x i8>
  %i.dmz = or disjoint <4 x i8> %i.dmn, %i.dmy
  %i.dna = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 8
  %i.dnb = getelementptr i8, ptr %i.dlw, i64 40
  %i.dnc = getelementptr i8, ptr %i.dlx, i64 72
  %i.dnd = getelementptr i8, ptr %i.dly, i64 104
  %i.dne = load float, ptr %i.dna, align 4, !alias.scope !35479, !noalias !35498
  %i.dnf = load float, ptr %i.dnb, align 4, !alias.scope !35479, !noalias !35498
  %i.dng = load float, ptr %i.dnc, align 4, !alias.scope !35479, !noalias !35498
  %i.dnh = load float, ptr %i.dnd, align 4, !alias.scope !35479, !noalias !35498
  %i.dni = insertelement <4 x float> poison, float %i.dne, i64 0
  %i.dnj = insertelement <4 x float> %i.dni, float %i.dnf, i64 1
  %i.dnk = insertelement <4 x float> %i.dnj, float %i.dng, i64 2
  %i.dnl = insertelement <4 x float> %i.dnk, float %i.dnh, i64 3
  %i.dnm = fsub <4 x float> %i.dnl, %broadcast.splat3914 ; 3 uses
  %i.dnn = fcmp oge <4 x float> %i.dnm, %broadcast.splat3916
  %i.dno = select <4 x i1> %i.dnn, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.dnp = or disjoint <4 x i8> %i.dmz, %i.dno
  %i.dnq = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 12
  %i.dnr = getelementptr i8, ptr %i.dlw, i64 44
  %i.dns = getelementptr i8, ptr %i.dlx, i64 76
  %i.dnt = getelementptr i8, ptr %i.dly, i64 108
  %i.dnu = load float, ptr %i.dnq, align 4, !alias.scope !35479, !noalias !35498
  %i.dnv = load float, ptr %i.dnr, align 4, !alias.scope !35479, !noalias !35498
  %i.dnw = load float, ptr %i.dns, align 4, !alias.scope !35479, !noalias !35498
  %i.dnx = load float, ptr %i.dnt, align 4, !alias.scope !35479, !noalias !35498
  %i.dny = insertelement <4 x float> poison, float %i.dnu, i64 0
  %i.dnz = insertelement <4 x float> %i.dny, float %i.dnv, i64 1
  %i.doa = insertelement <4 x float> %i.dnz, float %i.dnw, i64 2
  %i.dob = insertelement <4 x float> %i.doa, float %i.dnx, i64 3
  %i.doc = fsub <4 x float> %i.dob, %broadcast.splat3914 ; 3 uses
  %i.dod = fcmp oge <4 x float> %i.doc, %broadcast.splat3916
  %i.doe = select <4 x i1> %i.dod, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.dof = or disjoint <4 x i8> %i.dnp, %i.doe
  %i.dog = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 16
  %i.doh = getelementptr i8, ptr %i.dlw, i64 48
  %i.doi = getelementptr i8, ptr %i.dlx, i64 80
  %i.doj = getelementptr i8, ptr %i.dly, i64 112
  %i.dok = load float, ptr %i.dog, align 4, !alias.scope !35479, !noalias !35498
  %i.dol = load float, ptr %i.doh, align 4, !alias.scope !35479, !noalias !35498
  %i.dom = load float, ptr %i.doi, align 4, !alias.scope !35479, !noalias !35498
  %i.don = load float, ptr %i.doj, align 4, !alias.scope !35479, !noalias !35498
  %i.doo = insertelement <4 x float> poison, float %i.dok, i64 0
  %i.dop = insertelement <4 x float> %i.doo, float %i.dol, i64 1
  %i.doq = insertelement <4 x float> %i.dop, float %i.dom, i64 2
  %i.dor = insertelement <4 x float> %i.doq, float %i.don, i64 3
  %i.dos = fsub <4 x float> %i.dor, %broadcast.splat3914 ; 3 uses
  %i.dot = fcmp oge <4 x float> %i.dos, %broadcast.splat3916
  %i.dou = select <4 x i1> %i.dot, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.dov = or disjoint <4 x i8> %i.dof, %i.dou
  %i.dow = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 20
  %i.dox = getelementptr i8, ptr %i.dlw, i64 52
  %i.doy = getelementptr i8, ptr %i.dlx, i64 84
  %i.doz = getelementptr i8, ptr %i.dly, i64 116
  %i.dpa = load float, ptr %i.dow, align 4, !alias.scope !35479, !noalias !35498
  %i.dpb = load float, ptr %i.dox, align 4, !alias.scope !35479, !noalias !35498
  %i.dpc = load float, ptr %i.doy, align 4, !alias.scope !35479, !noalias !35498
  %i.dpd = load float, ptr %i.doz, align 4, !alias.scope !35479, !noalias !35498
  %i.dpe = insertelement <4 x float> poison, float %i.dpa, i64 0
  %i.dpf = insertelement <4 x float> %i.dpe, float %i.dpb, i64 1
  %i.dpg = insertelement <4 x float> %i.dpf, float %i.dpc, i64 2
  %i.dph = insertelement <4 x float> %i.dpg, float %i.dpd, i64 3
  %i.dpi = fsub <4 x float> %i.dph, %broadcast.splat3914 ; 3 uses
  %i.dpj = fcmp oge <4 x float> %i.dpi, %broadcast.splat3916
  %i.dpk = select <4 x i1> %i.dpj, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.dpl = or disjoint <4 x i8> %i.dov, %i.dpk
  %i.dpm = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 24
  %i.dpn = getelementptr i8, ptr %i.dlw, i64 56
  %i.dpo = getelementptr i8, ptr %i.dlx, i64 88
  %i.dpp = getelementptr i8, ptr %i.dly, i64 120
  %i.dpq = load float, ptr %i.dpm, align 4, !alias.scope !35479, !noalias !35498
  %i.dpr = load float, ptr %i.dpn, align 4, !alias.scope !35479, !noalias !35498
  %i.dps = load float, ptr %i.dpo, align 4, !alias.scope !35479, !noalias !35498
  %i.dpt = load float, ptr %i.dpp, align 4, !alias.scope !35479, !noalias !35498
  %i.dpu = insertelement <4 x float> poison, float %i.dpq, i64 0
  %i.dpv = insertelement <4 x float> %i.dpu, float %i.dpr, i64 1
  %i.dpw = insertelement <4 x float> %i.dpv, float %i.dps, i64 2
  %i.dpx = insertelement <4 x float> %i.dpw, float %i.dpt, i64 3
  %i.dpy = fsub <4 x float> %i.dpx, %broadcast.splat3914 ; 3 uses
  %i.dpz = fcmp oge <4 x float> %i.dpy, %broadcast.splat3916
  %i.dqa = select <4 x i1> %i.dpz, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.dqb = or disjoint <4 x i8> %i.dpl, %i.dqa
  %i.dqc = getelementptr inbounds nuw i8, ptr %next.gep3919, i64 28
  %i.dqd = getelementptr i8, ptr %i.dlw, i64 60
  %i.dqe = getelementptr i8, ptr %i.dlx, i64 92
  %i.dqf = getelementptr i8, ptr %i.dly, i64 124
  %i.dqg = load float, ptr %i.dqc, align 4, !alias.scope !35479, !noalias !35498
  %i.dqh = load float, ptr %i.dqd, align 4, !alias.scope !35479, !noalias !35498
  %i.dqi = load float, ptr %i.dqe, align 4, !alias.scope !35479, !noalias !35498
  %i.dqj = load float, ptr %i.dqf, align 4, !alias.scope !35479, !noalias !35498
  %i.dqk = insertelement <4 x float> poison, float %i.dqg, i64 0
  %i.dql = insertelement <4 x float> %i.dqk, float %i.dqh, i64 1
  %i.dqm = insertelement <4 x float> %i.dql, float %i.dqi, i64 2
  %i.dqn = insertelement <4 x float> %i.dqm, float %i.dqj, i64 3
  %i.dqo = fsub <4 x float> %i.dqn, %broadcast.splat3914 ; 3 uses
  %i.dqp = fcmp oge <4 x float> %i.dqo, %broadcast.splat3916
  %i.dqq = select <4 x i1> %i.dqp, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.dqr = add nuw <4 x i8> %i.dqb, %i.dqq
  %gep5248 = getelementptr i8, ptr %invariant.gep5247, i64 %index3918 ; 2 uses
  %wide.load3923 = load <4 x i8>, ptr %gep5248, align 1, !alias.scope !35499, !noalias !35500
  %i.dqs = or <4 x i8> %i.dqr, %wide.load3923
  store <4 x i8> %i.dqs, ptr %gep5248, align 1, !alias.scope !35499, !noalias !35500
  %i.dqt = shufflevector <4 x float> %i.dmw, <4 x float> %i.dml, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dqu = shufflevector <4 x float> %i.dnm, <4 x float> %i.doc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dqv = shufflevector <8 x float> %i.dqt, <8 x float> %i.dqu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dqw = fcmp olt <16 x float> %i.dqv, %i.dlr
  %i.dqx = shufflevector <4 x float> %i.dmw, <4 x float> %i.dml, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dqy = shufflevector <4 x float> %i.dnm, <4 x float> %i.doc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dqz = shufflevector <8 x float> %i.dqx, <8 x float> %i.dqy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dra = select <16 x i1> %i.dqw, <16 x float> %i.dqz, <16 x float> %i.dls
  %i.drb = shufflevector <4 x float> %i.dos, <4 x float> %i.dpi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.drc = shufflevector <4 x float> %i.dpy, <4 x float> %i.dqo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.drd = shufflevector <8 x float> %i.drb, <8 x float> %i.drc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dre = fcmp olt <16 x float> %i.drd, %i.dlt
  %i.drf = shufflevector <4 x float> %i.dos, <4 x float> %i.dpi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.drg = shufflevector <4 x float> %i.dpy, <4 x float> %i.dqo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.drh = shufflevector <8 x float> %i.drf, <8 x float> %i.drg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dri = select <16 x i1> %i.dre, <16 x float> %i.drh, <16 x float> %i.dlu
  %interleaved.vec3924 = shufflevector <16 x float> %i.dra, <16 x float> %i.dri, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3924, ptr %next.gep3919, align 4, !alias.scope !35479, !noalias !35498
  %index.next3925 = add nuw i64 %index3918, 4     ; 2 uses
  %i.drj = icmp eq i64 %index.next3925, %n.vec3912
  br i1 %i.drj, label %.lr.ph430.i.i594.preheader4133, label %vector.body3917, !llvm.loop !35502

.lr.ph430.i.i594.preheader4133:                   ; preds = %vector.body3917, %.lr.ph430.i.i594.preheader
  %.sroa.0187.0428.i.i595.ph = phi ptr [ %i.coy, %.lr.ph430.i.i594.preheader ], [ %i.dlq, %vector.body3917 ]
  %.sroa.7189.0427.i.i596.ph = phi i64 [ 0, %.lr.ph430.i.i594.preheader ], [ %n.vec3912, %vector.body3917 ]
  %i.drk = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i592, i64 0
  %i.drl = shufflevector <4 x float> %i.drk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.drm = insertelement <4 x float> poison, float %.sroa.032.0.i.i593, i64 0
  %i.drn = shufflevector <4 x float> %i.drm, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i594

.lr.ph430.i.i594:                                 ; preds = %.lr.ph430.i.i594.preheader4133, %bb.tw
  %.sroa.0187.0428.i.i595 = phi ptr [ %i.drr, %bb.tw ], [ %.sroa.0187.0428.i.i595.ph, %.lr.ph430.i.i594.preheader4133 ] ; 4 uses
  %.sroa.7189.0427.i.i596 = phi i64 [ %i.drq, %bb.tw ], [ %.sroa.7189.0427.i.i596.ph, %.lr.ph430.i.i594.preheader4133 ] ; 2 uses
  %i.dro = add nuw i64 %.sroa.7189.0427.i.i596, %i.dky ; 3 uses
  %i.drp = icmp ult i64 %i.dro, %i.cpd
  br i1 %i.drp, label %bb.tw, label %.invoke.i523

bb.tw:                                            ; preds = %.lr.ph430.i.i594
  %.sroa.9223.0..sroa_idx.i.i605 = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i595, i64 16 ; 2 uses
  %i.drq = add nuw nsw i64 %.sroa.7189.0427.i.i596, 1
  %i.drr = getelementptr inbounds nuw i8, ptr %.sroa.0187.0428.i.i595, i64 32 ; 2 uses
  %i.drs = getelementptr inbounds nuw i8, ptr %i.cpk, i64 %i.dro ; 2 uses
  %i.drt = load i8, ptr %i.drs, align 1, !alias.scope !35499, !noalias !35500, !noundef !27
  %i.dru = load <4 x float>, ptr %.sroa.0187.0428.i.i595, align 4, !alias.scope !35479, !noalias !35498
  %i.drv = fsub <4 x float> %i.dru, %i.drl        ; 3 uses
  %i.drw = fcmp oge <4 x float> %i.drv, %i.drn
  %i.drx = bitcast <4 x i1> %i.drw to i4
  %i.dry = zext i4 %i.drx to i8
  %i.drz = fcmp olt <4 x float> %i.drv, %i.drn
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !38946
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !38946, !noundef !27
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !38946, !noundef !27
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !38946
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !38946, !noundef !27
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !38946, !noundef !27
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !38946
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !38946, !noundef !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !38946, !noundef !27
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !38946
  %exitcond.not.i.3 = icmp eq i64 %i.br, 704
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit, label %scalar.ph362, !llvm.loop !38965

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit: ; preds = %vector.body364, %scalar.ph362
  %i.bx = load float, ptr %i.j, align 4, !noundef !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  store float %i.bx, ptr %i.by, align 8, !alias.scope !38966
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !27
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !27
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check337, label %.lr.ph65.preheader373, label %vector.ph338

.lr.ph65.preheader373:                            ; preds = %pred.store.continue357, %.lr.ph65.preheader
  %.ph374 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue357 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec339, %pred.store.continue357 ]
  br label %.lr.ph65

vector.ph338:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body340

vector.body340:                                   ; preds = %pred.store.continue357, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next358, %pred.store.continue357 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load342.a = load <4 x i32>, ptr %i.cg, align 4
  %wide.load343 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load342.a, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load343, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body340
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body340
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %index.next358 = add nuw i64 %index341, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next358, %n.vec339
  br i1 %i.dg, label %.lr.ph65.preheader373, label %vector.body340, !llvm.loop !38969

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader373, %bb.ai
  %i.dh = phi i64 [ %i.fi, %bb.ai ], [ %.ph374, %.lr.ph65.preheader373 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader373 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !27
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %14 = xor i64 %.sroa.016.066, -1
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %umax331 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %i.dq = add i64 %umax331, %14
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq)
  %i.dr = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.ds = and i64 %i.dr, 7                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = select i1 %i.dt, i64 8, i64 %i.ds
  %n.vec = sub i64 %i.dr, %i.du                   ; 3 uses
  %i.dv = add i64 %n.vec, 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <4 x i32>, ptr %i.dx, align 4
  %wide.load332 = load <4 x i32>, ptr %i.dy, align 4
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load, ptr %i.dz, align 4
  store <4 x i32> %wide.load332, ptr %i.ea, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !38970

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dv, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ec = phi i64 [ %i.fe, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ec, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ed = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %7
  br i1 %i.ee, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fb, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.ef = phi i64 [ %i.ei, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.ef, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.ef, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !27
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h32e3a6562c56f671E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.eh, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ei = add i64 %i.ef, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ei, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.ej, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.ek = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.ek, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1898) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.el = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.em, %i.el
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.en, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = load float, ptr %i.h, align 4, !noundef !27 ; 2 uses
  %i.ep = fcmp une float %i.eo, %.sroa.546.0.copyload
  br i1 %i.ep, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.eq = fcmp ogt float %i.eo, %.sroa.546.0.copyload
  br i1 %i.eq, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %i.i, align 4, !noundef !27
  %i.es = load i32, ptr %8, align 4, !noundef !27
  %i.et = sub i32 %i.er, %i.es
  %i.eu = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ev = icmp ugt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ew = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ex, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1899) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.ey = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.ez = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1900) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.ey, %bb.z ] ; 2 uses
  %i.fb = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fb, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ed, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1901) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ed
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !27
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.fd, ptr %gep, align 4
  %i.fe = add i64 %i.ec, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fe, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !38971

bb.ag:                                            ; preds = %.lr.ph65
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !27
  %i.fh = icmp eq i32 %i.fg, %i.aa
  br i1 %i.fh, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1902) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fi = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !38972

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.ff, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fj, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1903) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !38973
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !38973, !noundef !27
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !38973, !noundef !27
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !38973
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !38973, !noundef !27
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !38973, !noundef !27
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !38973
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !38973, !noundef !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !38973, !noundef !27
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !38973
  %exitcond.not.i.3 = icmp eq i64 %i.br, 544
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit, label %scalar.ph362, !llvm.loop !38992

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit: ; preds = %vector.body364, %scalar.ph362
  %i.bx = load float, ptr %i.j, align 4, !noundef !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  store float %i.bx, ptr %i.by, align 8, !alias.scope !38993
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !27
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !27
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check337, label %.lr.ph65.preheader373, label %vector.ph338

.lr.ph65.preheader373:                            ; preds = %pred.store.continue357, %.lr.ph65.preheader
  %.ph374 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue357 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec339, %pred.store.continue357 ]
  br label %.lr.ph65

vector.ph338:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body340

vector.body340:                                   ; preds = %pred.store.continue357, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next358, %pred.store.continue357 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load342.a = load <4 x i32>, ptr %i.cg, align 4
  %wide.load343 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load342.a, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load343, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body340
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body340
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %index.next358 = add nuw i64 %index341, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next358, %n.vec339
  br i1 %i.dg, label %.lr.ph65.preheader373, label %vector.body340, !llvm.loop !38996

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader373, %bb.ai
  %i.dh = phi i64 [ %i.fi, %bb.ai ], [ %.ph374, %.lr.ph65.preheader373 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader373 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !27
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %14 = xor i64 %.sroa.016.066, -1
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %umax331 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %i.dq = add i64 %umax331, %14
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq)
  %i.dr = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.ds = and i64 %i.dr, 7                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = select i1 %i.dt, i64 8, i64 %i.ds
  %n.vec = sub i64 %i.dr, %i.du                   ; 3 uses
  %i.dv = add i64 %n.vec, 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <4 x i32>, ptr %i.dx, align 4
  %wide.load332 = load <4 x i32>, ptr %i.dy, align 4
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load, ptr %i.dz, align 4
  store <4 x i32> %wide.load332, ptr %i.ea, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !38997

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dv, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ec = phi i64 [ %i.fe, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ec, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ed = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %7
  br i1 %i.ee, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fb, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.ef = phi i64 [ %i.ei, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.ef, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.ef, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !27
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h766e51aa9200a005E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.eh, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ei = add i64 %i.ef, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ei, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.ej, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.ek = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.ek, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1898) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.el = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.em, %i.el
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.en, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = load float, ptr %i.h, align 4, !noundef !27 ; 2 uses
  %i.ep = fcmp une float %i.eo, %.sroa.546.0.copyload
  br i1 %i.ep, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.eq = fcmp ogt float %i.eo, %.sroa.546.0.copyload
  br i1 %i.eq, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %i.i, align 4, !noundef !27
  %i.es = load i32, ptr %8, align 4, !noundef !27
  %i.et = sub i32 %i.er, %i.es
  %i.eu = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ev = icmp ugt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ew = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ex, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1899) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.ey = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.ez = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1900) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.ey, %bb.z ] ; 2 uses
  %i.fb = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fb, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ed, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1901) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ed
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !27
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.fd, ptr %gep, align 4
  %i.fe = add i64 %i.ec, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fe, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !38998

bb.ag:                                            ; preds = %.lr.ph65
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !27
  %i.fh = icmp eq i32 %i.fg, %i.aa
  br i1 %i.fh, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1902) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fi = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !38999

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.ff, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fj, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1903) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !39000
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !39000, !noundef !27
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !39000, !noundef !27
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !39000
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !39000, !noundef !27
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !39000, !noundef !27
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !39000
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !39000, !noundef !27
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !39000, !noundef !27
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !39000
  %exitcond.not.i.3 = icmp eq i64 %i.br, 256
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit, label %scalar.ph362, !llvm.loop !39019

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit: ; preds = %vector.body364, %scalar.ph362
  %i.bx = load float, ptr %i.j, align 4, !noundef !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 1032
  store float %i.bx, ptr %i.by, align 8, !alias.scope !39020
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !27
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !27
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check337, label %.lr.ph65.preheader373, label %vector.ph338

.lr.ph65.preheader373:                            ; preds = %pred.store.continue357, %.lr.ph65.preheader
  %.ph374 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue357 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec339, %pred.store.continue357 ]
  br label %.lr.ph65

vector.ph338:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body340

vector.body340:                                   ; preds = %pred.store.continue357, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next358, %pred.store.continue357 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load342.a = load <4 x i32>, ptr %i.cg, align 4
  %wide.load343 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load342.a, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load343, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body340
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body340
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if344, label %pred.store.continue345

pred.store.if344:                                 ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue345

pred.store.continue345:                           ; preds = %pred.store.if344, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if346, label %pred.store.continue347

pred.store.if346:                                 ; preds = %pred.store.continue345
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue347

pred.store.continue347:                           ; preds = %pred.store.if346, %pred.store.continue345
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if348, label %pred.store.continue349

pred.store.if348:                                 ; preds = %pred.store.continue347
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue349

pred.store.continue349:                           ; preds = %pred.store.if348, %pred.store.continue347
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if350, label %pred.store.continue351

pred.store.if350:                                 ; preds = %pred.store.continue349
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue351

pred.store.continue351:                           ; preds = %pred.store.if350, %pred.store.continue349
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if352, label %pred.store.continue353

pred.store.if352:                                 ; preds = %pred.store.continue351
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue353

pred.store.continue353:                           ; preds = %pred.store.if352, %pred.store.continue351
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if354, label %pred.store.continue355

pred.store.if354:                                 ; preds = %pred.store.continue353
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue355

pred.store.continue355:                           ; preds = %pred.store.if354, %pred.store.continue353
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if356, label %pred.store.continue357

pred.store.if356:                                 ; preds = %pred.store.continue355
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index341
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue357

pred.store.continue357:                           ; preds = %pred.store.if356, %pred.store.continue355
  %index.next358 = add nuw i64 %index341, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next358, %n.vec339
  br i1 %i.dg, label %.lr.ph65.preheader373, label %vector.body340, !llvm.loop !39023

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader373, %bb.ai
  %i.dh = phi i64 [ %i.fi, %bb.ai ], [ %.ph374, %.lr.ph65.preheader373 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader373 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !27 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !27
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %14 = xor i64 %.sroa.016.066, -1
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %umax331 = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %i.dq = add i64 %umax331, %14
  %umin = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq)
  %i.dr = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dr, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.ds = and i64 %i.dr, 7                        ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  %i.du = select i1 %i.dt, i64 8, i64 %i.ds
  %n.vec = sub i64 %i.dr, %i.du                   ; 3 uses
  %i.dv = add i64 %n.vec, 1
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <4 x i32>, ptr %i.dx, align 4
  %wide.load332 = load <4 x i32>, ptr %i.dy, align 4
  %i.dz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load, ptr %i.dz, align 4
  store <4 x i32> %wide.load332, ptr %i.ea, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !39024

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dv, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ec = phi i64 [ %i.fe, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ec, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ed = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %7
  br i1 %i.ee, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fb, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.ef = phi i64 [ %i.ei, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.ef, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.ef, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.eh = load i32, ptr %i.eg, align 4, !noundef !27
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h0214dbf8139ad6afE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.eh, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ei = add i64 %i.ef, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ei, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.ej, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.ek = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.ek, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1898) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.el = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.em, %i.el
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.en, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eo = load float, ptr %i.h, align 4, !noundef !27 ; 2 uses
  %i.ep = fcmp une float %i.eo, %.sroa.546.0.copyload
  br i1 %i.ep, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.eq = fcmp ogt float %i.eo, %.sroa.546.0.copyload
  br i1 %i.eq, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %i.i, align 4, !noundef !27
  %i.es = load i32, ptr %8, align 4, !noundef !27
  %i.et = sub i32 %i.er, %i.es
  %i.eu = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ev = icmp ugt i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ew = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ex, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1899) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.ey = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.ez = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fa, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1900) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.ey, %bb.z ] ; 2 uses
  %i.fb = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fb, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ed, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1901) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ed
  %i.fd = load i32, ptr %i.fc, align 4, !noundef !27
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.fd, ptr %gep, align 4
  %i.fe = add i64 %i.ec, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fe, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !39025

bb.ag:                                            ; preds = %.lr.ph65
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !noundef !27
  %i.fh = icmp eq i32 %i.fg, %i.aa
  br i1 %i.fh, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1902) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fi = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !39026

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.ff, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fj, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1903) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc9metablock34BrotliBuildMetaBlockGreedyInternal17h0916bdb0a16a6b62E:bb.a
  %lcmp.mod581 = icmp ne i64 %xtraiter577, 0
  tail call void @llvm.assume(i1 %lcmp.mod581)
  br label %.lr.ph.i.i.i.i135.epil

.lr.ph.i.i.i.i135.epil:                           ; preds = %.lr.ph.i.i.i.i135.epil, %.lr.ph.i.i.i.i135.epil.preheader
  %.sroa.0.08.i.i.i.i136.epil = phi ptr [ %i.gz, %.lr.ph.i.i.i.i135.epil ], [ %.sroa.0.08.i.i.i.i136.epil.init, %.lr.ph.i.i.i.i135.epil.preheader ] ; 3 uses
  %epil.iter578 = phi i64 [ %epil.iter578.next, %.lr.ph.i.i.i.i135.epil ], [ 0, %.lr.ph.i.i.i.i135.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i.i136.epil, i8 0, i64 2184, i1 false), !noalias !39421
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i.i.epil, align 8, !noalias !39438
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i136.epil, i64 2192 ; 2 uses
  %epil.iter578.next = add i64 %epil.iter578, 1   ; 2 uses
  %epil.iter578.cmp.not = icmp eq i64 %epil.iter578.next, %xtraiter577
  br i1 %epil.iter578.cmp.not, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", label %.lr.ph.i.i.i.i135.epil, !llvm.loop !39441

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa", %.lr.ph.i.i.i.i135.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i139 = phi ptr [ %i.gm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h91045f1cd593af7bE.exit.i.i.i.i" ], [ %i.gy, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i.loopexit.unr-lcssa" ], [ %i.gz, %.lr.ph.i.i.i.i135.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i.i139, i8 0, i64 2184, i1 false), !noalias !39421
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i139, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i, align 8, !noalias !39438
  %i.ha = load ptr, ptr %i.fy, align 8, !alias.scope !39410, !noalias !39442, !nonnull !27, !align !148, !noundef !27
  %i.hb = getelementptr inbounds nuw i8, ptr %13, i64 216 ; 4 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !39410, !noalias !39442, !noundef !27
  store ptr %i.gm, ptr %i.fy, align 8, !alias.scope !39410, !noalias !39442
  store i64 %.sroa.0.0.i.i114, ptr %i.hb, align 8, !alias.scope !39410, !noalias !39442
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i"
  tail call void @mi_free(ptr noundef nonnull align 8 %i.ha) #38, !noalias !39421
  br label %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit

bb.ap:                                            ; preds = %bb.ap, %bb.an
  %.sroa.09.1.i128 = phi i64 [ %spec.select15.i127, %bb.an ], [ %i.he, %bb.ap ] ; 6 uses
  %.not29.i129 = icmp ugt i64 %.sroa.09.1.i128, %i.ga
  %i.he = shl nuw nsw i64 %.sroa.09.1.i128, 1
  br i1 %.not29.i129, label %bb.aq, label %bb.ap

bb.aq:                                            ; preds = %bb.ap
  %i.hf = shl i64 %.sroa.09.1.i128, 2             ; 3 uses
  %i.hg = icmp ugt i64 %.sroa.09.1.i128, 4611686018427387903
  %i.hh = icmp ugt i64 %i.hf, 9223372036854775804
  %or.cond.i.i.i.i.i130 = or i1 %i.hg, %i.hh
  br i1 %or.cond.i.i.i.i.i130, label %bb.ar, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131: ; preds = %bb.aq
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39443
  %i.hi = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.hf, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39443 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131, %bb.aq
  %.sroa.4.0.ph.i.i68.i147 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131 ], [ 0, %bb.aq ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i68.i147, i64 %i.hf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39448
  unreachable

bb.as:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i66.i131
  %i.hk = icmp samesign ult i64 %.sroa.09.1.i128, 2305843009213693952
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = shl nuw nsw i64 %.val45.i125, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr nonnull readonly align 4 %.val44.i124, i64 %i.hl, i1 false), !alias.scope !39449, !noalias !39453
  store ptr %i.hi, ptr %i.ge, align 8, !alias.scope !39407, !noalias !39414
  store i64 %.sroa.09.1.i128, ptr %i.gf, align 8, !alias.scope !39407, !noalias !39414
  br i1 %i.gj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i71.i132": ; preds = %bb.as
  tail call void @mi_free(ptr noundef nonnull align 4 %.val44.i124) #38, !noalias !39421
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i133"

_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h313698f4f8d71414E.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i65.i140"
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gm, i64 2184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.gm, i8 0, i64 2184, i1 false), !noalias !39421
  store float 3.402000e+38, ptr %i.hm, align 8, !alias.scope !39455, !noalias !39421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.827.0..sroa_idx, i8 0, i64 32, i1 false)
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 64, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 512, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 512, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.928.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store float 1.000000e+02, ptr %.sroa.928.0..sroa_idx, align 8
  br i1 %.not, label %._crit_edge135, label %.lr.ph134

.lr.ph134:                                        ; preds = %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 176 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 184 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph134, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.sroa.021.1133 = phi i64 [ 1, %.lr.ph134 ], [ %.sroa.021.1, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %.sroa.0.0132 = phi i64 [ %2, %.lr.ph134 ], [ %i.kk, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.05.0131 = phi i8 [ %4, %.lr.ph134 ], [ %.sroa.05.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.07.0130 = phi i8 [ %5, %.lr.ph134 ], [ %.sroa.07.2, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 2 uses
  %.sroa.021.0129 = phi i64 [ 0, %.lr.ph134 ], [ %.sroa.021.1133, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit ] ; 3 uses
  %i.ht = icmp ult i64 %.sroa.021.0129, %11
  br i1 %i.ht, label %bb.bf, label %bb.bk

._crit_edge135.loopexit:                          ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit
  %.pre = load i64, ptr %i.c, align 8, !range !223
  br label %._crit_edge135

._crit_edge135:                                   ; preds = %._crit_edge135.loopexit, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit
  %i.hu = phi i64 [ %.pre, %._crit_edge135.loopexit ], [ %.sroa.013.0, %_ZN6brotli3enc9metablock17InitBlockSplitter17h12ef218aa38a5bc2E.exit ]
  %i.hv = trunc nuw i64 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %13, i64 176
  %.val40 = load ptr, ptr %i.hw, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 184
  %.val41 = load i64, ptr %i.hx, align 8, !noundef !27 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %13, i64 240 ; 2 uses
  br i1 %i.hv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock31ContextBlockSplitterFinishBlock17h66fa7f7da5e00ab8E(ptr noalias noundef align 8 dereferenceable(200) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge135
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h877de8a4e472dec8E(ptr noalias noundef align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, ptr noalias noundef align 8 dereferenceable(48) %13, ptr noalias noundef nonnull align 8 %.val40, i64 noundef %.val41, ptr noalias noundef align 8 dereferenceable(8) %i.hy, i1 noundef zeroext true)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.val44 = load ptr, ptr %i.ei, align 8, !nonnull !27, !align !148, !noundef !27
  %.val45 = load i64, ptr %i.fl, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE(ptr noalias noundef align 8 dereferenceable(88) %i.b, ptr noalias noundef align 8 dereferenceable(48) %i.eh, ptr noalias noundef nonnull align 8 %.val44, i64 noundef %.val45, ptr noalias noundef align 8 dereferenceable(8) %i.ej, i1 noundef zeroext true)
  %.val48 = load ptr, ptr %i.fy, align 8, !nonnull !27, !align !148, !noundef !27
  %.val49 = load i64, ptr %i.hb, align 8, !noundef !27
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h04cabe4174c5f56fE(ptr noalias noundef align 8 dereferenceable(88) %i.a, ptr noalias noundef align 8 dereferenceable(48) %i.fx, ptr noalias noundef nonnull align 8 %.val48, i64 noundef %.val49, ptr noalias noundef align 8 dereferenceable(8) %i.fz, i1 noundef zeroext true)
  %i.hz = icmp ugt i64 %7, 1
  br i1 %i.hz, label %bb.ax, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit

_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit: ; preds = %.loopexit.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.experimental.noalias.scope.decl(metadata !39458)
  call void @llvm.experimental.noalias.scope.decl(metadata !39461)
  %i.ia = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !39461, !noalias !39458, !noundef !27 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 224
  %i.id = shl i64 %i.ib, 6                        ; 7 uses
  store i64 %i.id, ptr %i.ic, align 8, !alias.scope !39461, !noalias !39458
  %i.ie = shl i64 %i.ib, 8                        ; 4 uses
  %i.if = icmp ugt i64 %i.id, 4611686018427387903
  %i.ig = icmp ugt i64 %i.ie, 9223372036854775804
  %or.cond.i.i.i.i.i150 = or i1 %i.if, %i.ig
  br i1 %or.cond.i.i.i.i.i150, label %bb.ba, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151, !prof !3784

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151: ; preds = %bb.ax
  %i.ih = icmp eq i64 %i.ie, 0
  br i1 %i.ih, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i", label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !39463
  %i.ii = call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.ie, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !39463 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ik = ptrtoint ptr %i.ii to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.4.0.ph.i.i.i = phi i64 [ 4, %bb.ay ], [ 0, %bb.ax ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ie, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43, !noalias !39468
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i": ; preds = %bb.az, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151
  %.sroa.10.0.i.i.i = phi i64 [ %i.ik, %bb.az ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i151 ]
  %i.il = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 5 uses
  %i.im = icmp samesign ult i64 %i.id, 2305843009213693952
  call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !alias.scope !39461, !noalias !39458, !nonnull !27, !align !603, !noundef !27
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 152 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !alias.scope !39461, !noalias !39458, !noundef !27
  store ptr %i.il, ptr %i.in, align 8, !alias.scope !39461, !noalias !39458
  store i64 %i.id, ptr %i.ip, align 8, !alias.scope !39461, !noalias !39458
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152": ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  call void @mi_free(ptr noundef nonnull align 4 %i.io) #38, !noalias !39469
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i152", %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h76134b5592bd6506E.exit.i"
  %.not.i154 = icmp eq i64 %i.ib, 0
  br i1 %.not.i154, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.bd
  %exitcond9.not.i = icmp eq i64 %14, %i.ib
  br i1 %exitcond9.not.i, label %_ZN6brotli3enc9metablock17MapStaticContexts17h4e4a6d16511c8e67E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153", %.loopexit.i
  %.sroa.03.04.i = phi i64 [ %14, %.loopexit.i ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit.i153" ] ; 4 uses
  %14 = add nuw i64 %.sroa.03.04.i, 1             ; 2 uses
  %15 = mul i64 %.sroa.03.04.i, %7
  %16 = trunc i64 %15 to i32                      ; 2 uses
  %17 = shl i64 %.sroa.03.04.i, 6                 ; 3 uses
  %umin = call i64 @llvm.umax.i64(i64 %17, i64 %i.id)
  %18 = shl i64 %.sroa.03.04.i, 6
  %19 = sub i64 %umin, %18
  %20 = call i64 @llvm.umin.i64(i64 %9, i64 %19)  ; 2 uses
  %min.iters.check = icmp ult i64 %20, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %umin461 = call i64 @llvm.umin.i64(i64 %20, i64 63)
  %i.is = add nuw nsw i64 %umin461, 1             ; 2 uses
  %i.it = and i64 %i.is, 7                        ; 2 uses
  %i.iu = icmp eq i64 %i.it, 0
  %i.iv = select i1 %i.iu, i64 8, i64 %i.it
  %n.vec = sub nsw i64 %i.is, %i.iv               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %16, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.il, i64 %17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %wide.load = load <4 x i32>, ptr %i.iw, align 4, !alias.scope !39458, !noalias !39461
  %wide.load462 = load <4 x i32>, ptr %i.ix, align 4, !alias.scope !39458, !noalias !39461
  %i.iy = add <4 x i32> %wide.load, %broadcast.splat
  %i.iz = add <4 x i32> %wide.load462, %broadcast.splat
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.iy, ptr %gep, align 4, !noalias !39469
  store <4 x i32> %i.iz, ptr %i.ja, align 4, !noalias !39469
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jb = icmp eq i64 %index.next, %n.vec
  br i1 %i.jb, label %scalar.ph.preheader, label %vector.body, !llvm.loop !39470

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.05.03.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bd
  %.sroa.05.03.i = phi i64 [ %i.jc, %bb.bd ], [ %.sroa.05.03.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.jc = add nuw nsw i64 %.sroa.05.03.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.05.03.i, %9
  br i1 %exitcond.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %scalar.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  %i.jd = add nuw nsw i64 %.sroa.05.03.i, %17     ; 3 uses
  %i.je = icmp ult i64 %i.jd, %i.id
  br i1 %i.je, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %scalar.ph
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #43, !noalias !39469
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.sroa.05.03.i
  %i.jg = load i32, ptr %i.jf, align 4, !alias.scope !39458, !noalias !39461, !noundef !27
  %i.jh = add i32 %i.jg, %16
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.jd
  store i32 %i.jh, ptr %i.ji, align 4, !noalias !39469
  %exitcond8.not.i = icmp eq i64 %i.jc, 64
  br i1 %exitcond8.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !39471

bb.be:                                            ; preds = %bb.bb
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.jd, i64 noundef %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1965) #43, !noalias !39469
  unreachable

bb.bf:                                            ; preds = %bb.at
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.sroa.021.0129 ; 4 uses
  %i.jk = load i32, ptr %i.jj, align 4, !noundef !27 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !noundef !27
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jo = load i16, ptr %i.jn, align 4, !noundef !27 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 14
  %i.jq = load i16, ptr %i.jp, align 2, !noundef !27
  %.val42 = load ptr, ptr %i.ei, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val43 = load i64, ptr %i.fl, align 8, !noundef !27 ; 3 uses
  %i.jr = zext i16 %i.jo to i64                   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39472)
  call void @llvm.experimental.noalias.scope.decl(metadata !39475)
  %i.js = load i64, ptr %i.hn, align 8, !alias.scope !39472, !noalias !39477, !noundef !27 ; 3 uses
  %i.jt = icmp ult i64 %i.js, %.val43
  br i1 %i.jt, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !39480)
  %i.ju = icmp ult i16 %i.jo, 704
  br i1 %i.ju, label %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 65536) %i.jr, i64 noundef 704, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1932) #43, !noalias !39483
  unreachable

_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i: ; preds = %bb.bg
  %i.jv = getelementptr inbounds nuw [2832 x i8], ptr %.val42, i64 %i.js ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.jr ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !alias.scope !39484, !noalias !39485, !noundef !27
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4, !alias.scope !39484, !noalias !39485
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2816 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !alias.scope !39486, !noalias !39485, !noundef !27
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !alias.scope !39489, !noalias !39485
  %i.kc = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477, !noundef !27
  %i.kd = add i64 %i.kc, 1                        ; 2 uses
  store i64 %i.kd, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477
  %i.ke = load i64, ptr %.sroa.719.0..sroa_idx, align 8, !alias.scope !39472, !noalias !39477, !noundef !27
  %i.kf = icmp eq i64 %i.kd, %i.ke
  br i1 %i.kf, label %bb.bj, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit

bb.bi:                                            ; preds = %bb.bf
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.js, i64 noundef %.val43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1968) #43, !noalias !39492
  unreachable

bb.bj:                                            ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17hfda3d414699dce3dE(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noalias noundef nonnull align 8 %.val42, i64 noundef %.val43, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ej, i1 noundef zeroext false)
  br label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit

_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit: ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hd4bb9e12450b56bfE.exit.i, %bb.bj
  %i.kg = icmp eq i32 %i.jk, 0
  br i1 %i.kg, label %._crit_edge125, label %.lr.ph124.preheader

.lr.ph124.preheader:                              ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit
  %i.kh = zext i32 %i.jk to i64
  br label %.lr.ph124

bb.bk:                                            ; preds = %bb.at
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.021.0129, i64 noundef %11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2019) #43
  unreachable

._crit_edge125:                                   ; preds = %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit
  %.sroa.07.1.lcssa = phi i8 [ %.sroa.07.0130, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %.sroa.05.1122, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %.sroa.05.1.lcssa = phi i8 [ %.sroa.05.0131, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %i.ls, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %.sroa.0.1.lcssa = phi i64 [ %.sroa.0.0132, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hbb20fb4e6ccad31cE.exit ], [ %i.nd, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ]
  %i.ki = and i32 %i.jm, 33554431                 ; 2 uses
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = add i64 %.sroa.0.1.lcssa, %i.kj         ; 3 uses
  %i.kl = icmp eq i32 %i.ki, 0
  br i1 %i.kl, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit, label %bb.bl

.lr.ph124:                                        ; preds = %.lr.ph124.preheader, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit
  %.sroa.0.1123 = phi i64 [ %i.nd, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.0.0132, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.05.1122 = phi i8 [ %i.ls, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.05.0131, %.lr.ph124.preheader ] ; 6 uses
  %.sroa.07.1121 = phi i8 [ %.sroa.05.1122, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %.sroa.07.0130, %.lr.ph124.preheader ] ; 2 uses
  %.sroa.017.0120 = phi i64 [ %i.ne, %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc8bd6b70995c6887E.exit ], [ %i.kh, %.lr.ph124.preheader ]
  %i.km = and i64 %.sroa.0.1123, %3               ; 3 uses
  %i.kn = icmp ult i64 %i.km, %1
  br i1 %i.kn, label %bb.bv, label %bb.bw

_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit: ; preds = %bb.bu, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i, %bb.bo, %._crit_edge125
  %.sroa.07.2 = phi i8 [ %.sroa.07.1.lcssa, %._crit_edge125 ], [ %i.ku, %bb.bo ], [ %i.ku, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i ], [ %i.ku, %bb.bu ]
  %.sroa.05.2 = phi i8 [ %.sroa.05.1.lcssa, %._crit_edge125 ], [ %i.kz, %bb.bo ], [ %i.kz, %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i ], [ %i.kz, %bb.bu ]
  %i.ko = icmp ult i64 %.sroa.021.1133, %12       ; 2 uses
  %i.kp = zext i1 %i.ko to i64
  %.sroa.021.1 = add nuw i64 %.sroa.021.1133, %i.kp
  br i1 %i.ko, label %bb.at, label %._crit_edge135.loopexit

bb.bl:                                            ; preds = %._crit_edge125
  %i.kq = add i64 %i.kk, 4294967294
  %i.kr = and i64 %i.kq, %3                       ; 3 uses
  %i.ks = icmp ult i64 %i.kr, %1
  br i1 %i.ks, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 %i.kr
  %i.ku = load i8, ptr %i.kt, align 1, !noundef !27 ; 3 uses
  %i.kv = add i64 %i.kk, 4294967295
  %i.kw = and i64 %i.kv, %3                       ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %1
  br i1 %i.kx, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kr, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2020) #43
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 %i.kw
  %i.kz = load i8, ptr %i.ky, align 1, !noundef !27 ; 3 uses
  %i.la = icmp ugt i16 %i.jo, 127
  br i1 %i.la, label %bb.bq, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bp:                                            ; preds = %bb.bm
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.kw, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2021) #43
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %.val46 = load ptr, ptr %i.fy, align 8, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val47 = load i64, ptr %i.hb, align 8, !noundef !27 ; 3 uses
  %i.lb = and i16 %i.jq, 1023                     ; 2 uses
  %i.lc = zext nneg i16 %i.lb to i64              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39493)
  call void @llvm.experimental.noalias.scope.decl(metadata !39496)
  %i.ld = load i64, ptr %i.hs, align 8, !alias.scope !39493, !noalias !39498, !noundef !27 ; 3 uses
  %i.le = icmp ult i64 %i.ld, %.val47
  br i1 %i.le, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !39501)
  %i.lf = icmp samesign ult i16 %i.lb, 544
  br i1 %i.lf, label %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 1024) %i.lc, i64 noundef 544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1932) #43, !noalias !39504
  unreachable

_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i: ; preds = %bb.br
  %i.lg = getelementptr inbounds nuw [2192 x i8], ptr %.val46, i64 %i.ld ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lc ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !alias.scope !39505, !noalias !39506, !noundef !27
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 4, !alias.scope !39505, !noalias !39506
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 2176 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !39507, !noalias !39506, !noundef !27
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %i.lk, align 8, !alias.scope !39510, !noalias !39506
  %i.ln = load i64, ptr %.sroa.827.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498, !noundef !27
  %i.lo = add i64 %i.ln, 1                        ; 2 uses
  store i64 %i.lo, ptr %.sroa.827.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498
  %i.lp = load i64, ptr %.sroa.726.0..sroa_idx, align 8, !alias.scope !39493, !noalias !39498, !noundef !27
  %i.lq = icmp eq i64 %i.lo, %i.lp
  br i1 %i.lq, label %bb.bu, label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bt:                                            ; preds = %bb.bq
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ld, i64 noundef %.val47, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1968) #43, !noalias !39513
  unreachable

bb.bu:                                            ; preds = %_ZN6brotli3enc9histogram16HistogramAddItem17hec39d7e5b6a97acdE.exit.i
  call fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h04cabe4174c5f56fE(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noalias noundef nonnull align 8 %.val46, i64 noundef %.val47, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz, i1 noundef zeroext false)
  br label %_ZN6brotli3enc9metablock22BlockSplitterAddSymbol17hc83d80dae1a0c44bE.exit

bb.bv:                                            ; preds = %.lr.ph124
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 %i.km
  %i.ls = load i8, ptr %i.lr, align 1, !noundef !27 ; 4 uses
  %i.lt = load i64, ptr %i.c, align 8, !range !223, !noundef !27
  %i.lu = trunc nuw i64 %i.lt to i1
  br i1 %i.lu, label %bb.bx, label %bb.cc

bb.bw:                                            ; preds = %.lr.ph124
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.km, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2022) #43
  unreachable

bb.bx:                                            ; preds = %bb.bv
  switch i8 %6, label %default.unreachable [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
    i8 3, label %bb.cb
  ]

default.unreachable:                              ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.lv = and i8 %.sroa.05.1122, 63
  br label %_ZN6brotli3enc9histogram7Context17h3ef6be51f6f5189cE.exit

bb.bz:                                            ; preds = %bb.bx
end_hunk_6
