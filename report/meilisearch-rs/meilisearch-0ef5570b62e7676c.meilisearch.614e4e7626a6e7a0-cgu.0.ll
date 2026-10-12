Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 149
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 284
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  br i1 %i.wt, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i": ; preds = %bb.dh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !35147
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i"
  %i.wv = phi ptr [ %i.hg, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i" ], [ %i.hb, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85911.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread909.i.i" ], [ %i.wu, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wv) ]
  tail call void @mi_free(ptr noundef nonnull %i.wv) #38, !noalias !35147
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit216.i"

bb.di:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1412.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0411.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.amn, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35205)
  %i.ww = icmp eq i64 %.sroa.0.0411.i, 0
  br i1 %i.ww, label %.loopexit.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.wx = add i64 %.sroa.0.0411.i, 7
  %i.wy = lshr i64 %i.wx, 3                       ; 8 uses
  %i.wz = icmp eq i64 %.sroa.0.0411.i, 1
  br i1 %i.wz, label %.preheader.i.preheader.i, label %bb.dk

.preheader.i.preheader.i:                         ; preds = %bb.dj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fp, i8 0, i64 %i.aq, i1 false), !alias.scope !35205, !noalias !35206
  br label %.loopexit.i

bb.dk:                                            ; preds = %bb.dj
  %i.xa = shl nuw nsw i64 %.sroa.0.0411.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.xa, %i.ft
  br i1 %.not121.i.i, label %.invoke1088.i, label %.preheader360.i.i, !prof !87

.invoke1088.i:                                    ; preds = %bb.fs, %.lr.ph403.i.preheader.i, %bb.dk, %bb.dw
  %i.xb = phi i64 [ %i.wy, %bb.dw ], [ %i.xl, %.lr.ph403.i.preheader.i ], [ %i.xa, %bb.dk ], [ %i.amn, %bb.fs ]
  %i.xc = phi i64 [ %i.fs, %bb.dw ], [ %i.ge, %.lr.ph403.i.preheader.i ], [ %i.ft, %bb.dk ], [ %spec.store.select.i, %bb.fs ]
  %i.xd = phi ptr [ @1572, %bb.dw ], [ @1541, %.lr.ph403.i.preheader.i ], [ @1543, %bb.dk ], [ @1924, %bb.fs ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.xb, i64 noundef %i.xc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xd) #43
          to label %.cont1089.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !35105

.cont1089.i:                                      ; preds = %.invoke1088.i
  unreachable

.preheader360.i.i:                                ; preds = %bb.dk
  %.idx.i.i = shl nuw nsw i64 %.sroa.0.0411.i, 10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fv, i8 0, i64 %.idx.i.i, i1 false), !alias.scope !35202, !noalias !35207
  br label %bb.dl

bb.dl:                                            ; preds = %bb.fq, %.preheader360.i.i
  %i.xe = phi i64 [ 1, %.preheader360.i.i ], [ %i.amk, %bb.fq ] ; 3 uses
  %.sroa.069.0399.i.i = phi i64 [ 0, %.preheader360.i.i ], [ %i.xe, %bb.fq ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [1040 x i8], ptr %i.bd, i64 %.sroa.069.0399.i.i
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 1024
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !35208, !noalias !35209, !noundef !45
  %i.xi = and i64 %i.xh, 4294967295               ; 3 uses
  %i.xj = icmp samesign ult i64 %i.xi, 256
  br i1 %i.xj, label %bb.fr, label %bb.fp

.loopexit358.i.i:                                 ; preds = %bb.fo
  %i.xk = icmp eq i64 %i.xm, 0
  br i1 %i.xk, label %.lr.ph403.i.preheader.i, label %.split.i175.i

.lr.ph403.i.preheader.i:                          ; preds = %.loopexit358.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 0, i64 %i.fy, i1 false), !alias.scope !35203, !noalias !35210
  %i.xl = mul i64 %i.wy, %i.aq                    ; 4 uses
  %.not124.i.i = icmp ugt i64 %i.xl, %i.ge
  br i1 %.not124.i.i, label %.invoke1088.i, label %bb.dm, !prof !87

.split.i175.i:                                    ; preds = %bb.fq, %.loopexit358.i.i
  %.sroa.05.0401.i.i = phi i64 [ %i.xm, %.loopexit358.i.i ], [ 256, %bb.fq ]
  %i.xm = add nsw i64 %.sroa.05.0401.i.i, -1      ; 4 uses
  %invariant.gep.i176.i = getelementptr [4 x i8], ptr %i.bd, i64 %i.xm
  %i.xn = mul i64 %i.xm, %.sroa.0.0411.i
  br label %bb.fn

bb.dm:                                            ; preds = %.lr.ph403.i.preheader.i
  %.not355404.i.i = icmp samesign eq i64 %i.xl, 0
  br i1 %.not355404.i.i, label %.lr.ph434.i.i, label %.lr.ph407.preheader.i.i

.lr.ph407.preheader.i.i:                          ; preds = %bb.dm
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gl, i8 0, i64 %i.xl, i1 false), !alias.scope !35204, !noalias !35211
  br label %.lr.ph434.i.i

.lr.ph434.i.i:                                    ; preds = %bb.dm, %.lr.ph407.preheader.i.i
  %i.xo = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %.not131.i.i = icmp samesign ugt i64 %i.xo, %i.fs
  %.idx451.i.i = shl nuw nsw i64 %i.xo, 5
  %i.xp = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx451.i.i
  %i.xq = icmp eq i64 %i.xo, 0
  %i.xr = and i64 %.sroa.0.0411.i, -8             ; 8 uses
  %i.xs = and i64 %.sroa.0.0411.i, 7              ; 4 uses
  %.not.i.i179.i = icmp samesign ugt i64 %i.wy, %i.fs
  %.idx452.i.i = shl i64 %i.wy, 5                 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx452.i.i
  br i1 %.not131.i.i, label %.lr.ph434.split.us.i.i, label %.lr.ph434.split.preheader.i.i, !prof !47

.lr.ph434.split.preheader.i.i:                    ; preds = %.lr.ph434.i.i
  %.idx453.i.i = shl nuw nsw i64 %i.xs, 2         ; 3 uses
  %i.xu = icmp eq i64 %i.xs, 0
  %i.xv = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.xw = icmp samesign ult i64 %i.xv, %i.fs
  %i.xx = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.xv ; 2 uses
  %i.xy = trunc i64 %i.xr to i8
  %i.xz = icmp eq i64 %i.xs, 1                    ; 2 uses
  %.sroa.077.1.idx.i.i = select i1 %i.xz, i64 0, i64 4 ; 3 uses
  %i.ya = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yb = icmp samesign ult i64 %i.ya, %i.fs
  %i.yc = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.ya
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 4 ; 2 uses
  %i.ye = trunc i64 %i.xr to i8
  %i.yf = or disjoint i8 %i.ye, 1
  %i.yg = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yh = icmp samesign eq i64 %i.yg, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.1 = select i1 %i.yh, i64 0, i64 4 ; 2 uses
  %i.yi = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yj = icmp samesign ult i64 %i.yi, %i.fs
  %i.yk = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yi
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8 ; 2 uses
  %i.ym = trunc i64 %i.xr to i8
  %i.yn = or disjoint i8 %i.ym, 2
  %i.yo = add nuw nsw i64 %.sroa.077.1.idx.i.i, 4
  %i.yp = add nuw nsw i64 %i.yo, %.sroa.077.1.idx.i.i.1
  %i.yq = icmp samesign eq i64 %i.yp, %.idx453.i.i ; 2 uses
  %.sroa.077.1.idx.i.i.2 = select i1 %i.yq, i64 0, i64 4
  %i.yr = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.ys = icmp samesign ult i64 %i.yr, %i.fs
  %i.yt = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yr
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 12 ; 2 uses
  %i.yv = trunc i64 %i.xr to i8
  %i.yw = or disjoint i8 %i.yv, 3
  %i.yx = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.yy = icmp samesign ult i64 %i.yx, %i.fs
  %i.yz = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.yx
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16 ; 2 uses
  %i.zb = trunc i64 %i.xr to i8
  %i.zc = or disjoint i8 %i.zb, 4
  %i.zd = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.ze = icmp samesign ult i64 %i.zd, %i.fs
  %i.zf = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zd
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 20 ; 2 uses
  %i.zh = trunc i64 %i.xr to i8
  %i.zi = or disjoint i8 %i.zh, 5
  %i.zj = lshr i64 %.sroa.0.0411.i, 3             ; 3 uses
  %i.zk = icmp samesign ult i64 %i.zj, %i.fs
  %i.zl = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24 ; 2 uses
  %i.zn = trunc i64 %i.xr to i8
  %i.zo = or disjoint i8 %i.zn, 6
  %i.zp = add i64 %.idx452.i.i, -32
  %i.zq = lshr exact i64 %i.zp, 5
  br label %.lr.ph434.split.i.i

.lr.ph434.split.us.i.i:                           ; preds = %.lr.ph434.i.i
  %i.zr = load i8, ptr %i.ax, align 1, !alias.scope !35212, !noalias !35213, !noundef !45
  %i.zs = zext i8 %i.zr to i64
  %i.zt = mul nuw nsw i64 %.sroa.0.0411.i, %i.zs
  %.not130.us.i.i = icmp ugt i64 %i.zt, %i.ft
  br i1 %.not130.us.i.i, label %.split438.us.i.i, label %.split440.us.i.i, !prof !47

.split440.us.i.i:                                 ; preds = %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !35214
  br label %.split440.us.i.invoke.i

.split440.us.i.invoke.i:                          ; preds = %bb.ev, %bb.et, %bb.du, %bb.ds, %.split438.us.i.i, %.split440.us.i.i
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.ev ], [ %.sink.i.sroa.gep14, %bb.et ], [ %.sink.i.sroa.gep15, %bb.du ], [ %.sink.i.sroa.gep16, %bb.ds ], [ %.sink.i.sroa.gep17, %.split438.us.i.i ], [ %.sink.i.sroa.gep18, %.split440.us.i.i ]
  %.sink.i.sroa.phi19 = phi ptr [ %.sink.i.sroa.gep20, %bb.ev ], [ %.sink.i.sroa.gep21, %bb.et ], [ %.sink.i.sroa.gep22, %bb.du ], [ %.sink.i.sroa.gep23, %bb.ds ], [ %.sink.i.sroa.gep24, %.split438.us.i.i ], [ %.sink.i.sroa.gep25, %.split440.us.i.i ]
  %.sink.i.sroa.phi26 = phi ptr [ %.sink.i.sroa.gep27, %bb.ev ], [ %.sink.i.sroa.gep28, %bb.et ], [ %.sink.i.sroa.gep29, %bb.du ], [ %.sink.i.sroa.gep30, %bb.ds ], [ %.sink.i.sroa.gep31, %.split438.us.i.i ], [ %.sink.i.sroa.gep32, %.split440.us.i.i ]
  %.sink.i.sroa.phi33 = phi ptr [ %.sink.i.sroa.gep34, %bb.ev ], [ %.sink.i.sroa.gep35, %bb.et ], [ %.sink.i.sroa.gep36, %bb.du ], [ %.sink.i.sroa.gep37, %bb.ds ], [ %.sink.i.sroa.gep38, %.split438.us.i.i ], [ %.sink.i.sroa.gep39, %.split440.us.i.i ]
  %.sink.i = phi ptr [ %i.ad, %bb.ev ], [ %i.af, %bb.et ], [ %i.ac, %bb.du ], [ %i.ae, %bb.ds ], [ %i.ah, %.split438.us.i.i ], [ %i.ag, %.split440.us.i.i ] ; 2 uses
  %i.zu = phi ptr [ @1539, %bb.ev ], [ @1538, %bb.et ], [ @1536, %bb.du ], [ @1535, %bb.ds ], [ @1533, %.split438.us.i.i ], [ @1534, %.split440.us.i.i ]
  store ptr @186, ptr %.sink.i, align 8, !noalias !35214
  store i64 1, ptr %.sink.i.sroa.phi, align 8, !noalias !35214
  store ptr null, ptr %.sink.i.sroa.phi19, align 8, !noalias !35214
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi26, align 8, !noalias !35214
  store i64 0, ptr %.sink.i.sroa.phi33, align 8, !noalias !35214
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zu) #43
          to label %.split440.us.i.cont.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i", !noalias !35105

.split440.us.i.cont.i:                            ; preds = %.split440.us.i.invoke.i
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i: ; preds = %bb.dx
  %i.zv = icmp eq ptr %i.zw, %i.gr
  br i1 %i.zv, label %.lr.ph447.preheader.i.i, label %.lr.ph434.split.i.i

.lr.ph434.split.i.i:                              ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i, %.lr.ph434.split.preheader.i.i
  %.sroa.0.0336432.i.i = phi ptr [ %i.zw, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ %i.ax, %.lr.ph434.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0431.i.i = phi i64 [ %i.zx, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i ], [ 0, %.lr.ph434.split.preheader.i.i ] ; 7 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i, i64 1 ; 2 uses
  %i.zx = add nuw i64 %.sroa.7.0431.i.i, 1
  %exitcond486.not.i.i = icmp eq i64 %.sroa.7.0431.i.i, %i.aq
  br i1 %exitcond486.not.i.i, label %.invoke.i, label %bb.dq

.lr.ph447.preheader.i.i:                          ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i
  %i.zy = load i8, ptr %i.gt, align 1, !alias.scope !35205, !noalias !35206, !noundef !45
  %i.zz = mul i64 %i.wy, %i.gs
  br label %.lr.ph447.i.i

.lr.ph447.i.i:                                    ; preds = %bb.dp, %.lr.ph447.preheader.i.i
  %.sroa.03.0446.i.i = phi i64 [ %.sroa.03.1.i.i, %bb.dp ], [ 1, %.lr.ph447.preheader.i.i ] ; 2 uses
  %.sroa.052.0445.i.i = phi i64 [ %i.aaa, %bb.dp ], [ %i.gs, %.lr.ph447.preheader.i.i ]
  %.sroa.059.0444.i.i = phi i64 [ %i.aab, %bb.dp ], [ %i.zz, %.lr.ph447.preheader.i.i ]
  %.sroa.061.0443.i.i = phi i8 [ %.sroa.061.1.i.i, %bb.dp ], [ %i.zy, %.lr.ph447.preheader.i.i ] ; 4 uses
  %i.aaa = add nsw i64 %.sroa.052.0445.i.i, -1    ; 4 uses
  %i.aab = sub i64 %.sroa.059.0444.i.i, %i.wy     ; 2 uses
  %i.aac = lshr i8 %.sroa.061.0443.i.i, 3
  %i.aad = zext nneg i8 %i.aac to i64
  %i.aae = add i64 %i.aab, %i.aad                 ; 3 uses
  %i.aaf = icmp ult i64 %i.aae, %i.ge
  br i1 %i.aaf, label %bb.dn, label %.invoke.i

bb.dn:                                            ; preds = %.lr.ph447.i.i
  %i.aag = and i8 %.sroa.061.0443.i.i, 7
  %i.aah = shl nuw i8 1, %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.aae
  %i.aaj = load i8, ptr %i.aai, align 1, !alias.scope !35204, !noalias !35211, !noundef !45
  %i.aak = and i8 %i.aaj, %i.aah
  %i.aal = icmp eq i8 %i.aak, 0
  br i1 %i.aal, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aam = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaa
  %i.aan = load i8, ptr %i.aam, align 1, !alias.scope !35205, !noalias !35206, !noundef !45 ; 2 uses
  %.not129.i.i = icmp ne i8 %.sroa.061.0443.i.i, %i.aan
  %i.aao = zext i1 %.not129.i.i to i64
  %spec.select137.i.i = add i64 %.sroa.03.0446.i.i, %i.aao
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.sroa.061.1.i.i = phi i8 [ %.sroa.061.0443.i.i, %bb.dn ], [ %i.aan, %bb.do ] ; 2 uses
  %.sroa.03.1.i.i = phi i64 [ %.sroa.03.0446.i.i, %bb.dn ], [ %spec.select137.i.i, %bb.do ] ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.aaa
  store i8 %.sroa.061.1.i.i, ptr %i.aap, align 1, !alias.scope !35205, !noalias !35206
  %.not128.i.i = icmp eq i64 %i.aaa, 0
  br i1 %.not128.i.i, label %.loopexit.i, label %.lr.ph447.i.i

bb.dq:                                            ; preds = %.lr.ph434.split.i.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.7.0431.i.i ; 15 uses
  %i.aar = mul i64 %.sroa.7.0431.i.i, %i.wy       ; 3 uses
  %i.aas = load i8, ptr %.sroa.0.0336432.i.i, align 1, !alias.scope !35212, !noalias !35213, !noundef !45
  %i.aat = zext i8 %i.aas to i64
  %i.aau = mul nuw nsw i64 %.sroa.0.0411.i, %i.aat ; 4 uses
  %.not130.i.i = icmp ugt i64 %i.aau, %i.ft
  br i1 %.not130.i.i, label %.split438.us.i.i, label %bb.dr, !prof !47

.split438.us.i.i:                                 ; preds = %bb.dq, %.lr.ph434.split.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !35214
  br label %.split440.us.i.invoke.i

bb.dr:                                            ; preds = %bb.dq
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.aau
  %i.aaw = sub nuw nsw i64 %i.ft, %i.aau          ; 2 uses
  br i1 %i.xq, label %._crit_edge416.i.i, label %.lr.ph415.i.i

.lr.ph415.i.i:                                    ; preds = %bb.dr, %bb.fm
  %.sroa.029.0413.i.i = phi float [ %.sroa.029.4.7.i.i, %bb.fm ], [ f0x7E967699, %bb.dr ] ; 2 uses
  %.sroa.0164.0412.i.i = phi ptr [ %i.aax, %bb.fm ], [ %i.fz, %bb.dr ] ; 10 uses
  %.sroa.7166.0411.i.i = phi i64 [ %i.aay, %bb.fm ], [ 0, %bb.dr ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i, i64 32 ; 2 uses
  %i.aay = add nuw nsw i64 %.sroa.7166.0411.i.i, 1
  %i.aaz = shl nuw nsw i64 %.sroa.7166.0411.i.i, 3 ; 11 uses
  %.not136.i.i = icmp samesign ugt i64 %i.aaz, %i.aaw
  br i1 %.not136.i.i, label %bb.et, label %bb.eu, !prof !47

._crit_edge416.i.i:                               ; preds = %bb.fm, %bb.dr
  %.sroa.029.0.lcssa.i.i = phi float [ f0x7E967699, %bb.dr ], [ %.sroa.029.4.7.i.i, %bb.fm ] ; 3 uses
  %i.aba = add nuw nsw i64 %i.aau, %i.xr          ; 3 uses
  %.not133.i.i = icmp ugt i64 %i.aba, %i.ft
  br i1 %.not133.i.i, label %bb.ds, label %bb.dt, !prof !47

bb.ds:                                            ; preds = %._crit_edge416.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !35214
  br label %.split440.us.i.invoke.i

bb.dt:                                            ; preds = %._crit_edge416.i.i
  %i.abb = sub nuw nsw i64 %i.ft, %i.aba
  %.not134.i.i = icmp samesign ugt i64 %i.xs, %i.abb
  br i1 %.not134.i.i, label %bb.du, label %bb.dv, !prof !47

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !35214
  br label %.split440.us.i.invoke.i

bb.dv:                                            ; preds = %bb.dt
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.aba ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 %.idx453.i.i ; 3 uses
  br i1 %i.xu, label %._crit_edge425.i.i, label %.lr.ph424.preheader.i.i

.lr.ph424.preheader.i.i:                          ; preds = %bb.dv
  %.sroa.077.1418.i.i = getelementptr inbounds nuw i8, ptr %i.abc, i64 4 ; 2 uses
  br i1 %i.xw, label %bb.dz, label %.invoke.i

._crit_edge425.i.i:                               ; preds = %bb.eq, %bb.er, %bb.ea, %bb.ed, %bb.eg, %bb.ej, %bb.em, %bb.ep, %bb.dv
  %.sroa.029.1.lcssa.i.i = phi float [ %.sroa.029.0.lcssa.i.i, %bb.dv ], [ %.sroa.029.2.i.i, %bb.ea ], [ %.sroa.029.2.i.i.1, %bb.ed ], [ %.sroa.029.2.i.i.2, %bb.eg ], [ %.sroa.029.2.i.i.3, %bb.ej ], [ %.sroa.029.2.i.i.4, %bb.em ], [ %.sroa.029.2.i.i.5, %bb.ep ], [ %i.ajw, %bb.er ], [ %.sroa.029.2.i.i.5, %bb.eq ] ; 2 uses
  %i.abe = icmp ult i64 %.sroa.7.0431.i.i, 2000
  br i1 %i.abe, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dy, %._crit_edge425.i.i
  %.sroa.032.0.i.i = phi float [ %i.ais, %bb.dy ], [ 2.810000e+01, %._crit_edge425.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35215)
  br i1 %.not.i.i179.i, label %.invoke1088.i, label %.lr.ph430.i.i.preheader, !prof !87

.lr.ph430.i.i.preheader:                          ; preds = %bb.dw
  %i.abf = tail call i64 @llvm.umax.i64(i64 %i.aar, i64 %i.ge)
  %10 = mul i64 %i.wy, %.sroa.7.0431.i.i
  %i.abg = sub i64 %i.abf, %10
  %i.abh = tail call i64 @llvm.umin.i64(i64 %i.zq, i64 %i.abg) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.abh, 4
  br i1 %min.iters.check, label %.lr.ph430.i.i.preheader4287, label %vector.ph3486

vector.ph3486:                                    ; preds = %.lr.ph430.i.i.preheader
  %i.abi = add nuw nsw i64 %i.abh, 1              ; 2 uses
  %i.abj = and i64 %i.abi, 3                      ; 2 uses
  %i.abk = icmp eq i64 %i.abj, 0
  %i.abl = select i1 %i.abk, i64 4, i64 %i.abj
  %n.vec = sub nsw i64 %i.abi, %i.abl             ; 3 uses
  %i.abm = shl i64 %n.vec, 5
  %i.abn = getelementptr i8, ptr %i.fz, i64 %i.abm
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3487 = insertelement <4 x float> poison, float %.sroa.032.0.i.i, i64 0 ; 5 uses
  %broadcast.splat3488 = shufflevector <4 x float> %broadcast.splatinsert3487, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.gl, i64 %i.aar
  %i.abo = shufflevector <4 x float> %broadcast.splatinsert3487, <4 x float> poison, <16 x i32> zeroinitializer
  %i.abp = shufflevector <4 x float> %broadcast.splatinsert3487, <4 x float> poison, <16 x i32> zeroinitializer
  %i.abq = shufflevector <4 x float> %broadcast.splatinsert3487, <4 x float> poison, <16 x i32> zeroinitializer
  %i.abr = shufflevector <4 x float> %broadcast.splatinsert3487, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3489

vector.body3489:                                  ; preds = %vector.body3489, %vector.ph3486
  %index3490 = phi i64 [ 0, %vector.ph3486 ], [ %index.next3495, %vector.body3489 ] ; 3 uses
  %i.abs = shl i64 %index3490, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.fz, i64 %i.abs ; 9 uses
  %i.abt = getelementptr i8, ptr %i.fz, i64 %i.abs ; 8 uses
  %next.gep3491 = getelementptr i8, ptr %i.abt, i64 32
  %i.abu = getelementptr i8, ptr %i.fz, i64 %i.abs ; 8 uses
  %next.gep3492 = getelementptr i8, ptr %i.abu, i64 64
  %i.abv = getelementptr i8, ptr %i.fz, i64 %i.abs ; 8 uses
  %next.gep3493 = getelementptr i8, ptr %i.abv, i64 96
  %i.abw = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.abx = getelementptr i8, ptr %i.abt, i64 36
  %i.aby = getelementptr i8, ptr %i.abu, i64 68
  %i.abz = getelementptr i8, ptr %i.abv, i64 100
  %i.aca = load float, ptr %i.abw, align 4, !alias.scope !35203, !noalias !35216
  %i.acb = load float, ptr %i.abx, align 4, !alias.scope !35203, !noalias !35216
  %i.acc = load float, ptr %i.aby, align 4, !alias.scope !35203, !noalias !35216
  %i.acd = load float, ptr %i.abz, align 4, !alias.scope !35203, !noalias !35216
  %i.ace = insertelement <4 x float> poison, float %i.aca, i64 0
  %i.acf = insertelement <4 x float> %i.ace, float %i.acb, i64 1
  %i.acg = insertelement <4 x float> %i.acf, float %i.acc, i64 2
  %i.ach = insertelement <4 x float> %i.acg, float %i.acd, i64 3
  %i.aci = fsub <4 x float> %i.ach, %broadcast.splat ; 3 uses
  %i.acj = fcmp oge <4 x float> %i.aci, %broadcast.splat3488
  %i.ack = select <4 x i1> %i.acj, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.acl = load float, ptr %next.gep, align 4, !alias.scope !35203, !noalias !35216
  %i.acm = load float, ptr %next.gep3491, align 4, !alias.scope !35203, !noalias !35216
  %i.acn = load float, ptr %next.gep3492, align 4, !alias.scope !35203, !noalias !35216
  %i.aco = load float, ptr %next.gep3493, align 4, !alias.scope !35203, !noalias !35216
  %i.acp = insertelement <4 x float> poison, float %i.acl, i64 0
  %i.acq = insertelement <4 x float> %i.acp, float %i.acm, i64 1
  %i.acr = insertelement <4 x float> %i.acq, float %i.acn, i64 2
  %i.acs = insertelement <4 x float> %i.acr, float %i.aco, i64 3
  %i.act = fsub <4 x float> %i.acs, %broadcast.splat ; 3 uses
  %i.acu = fcmp oge <4 x float> %i.act, %broadcast.splat3488
  %i.acv = zext <4 x i1> %i.acu to <4 x i8>
  %i.acw = or disjoint <4 x i8> %i.ack, %i.acv
  %i.acx = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.acy = getelementptr i8, ptr %i.abt, i64 40
  %i.acz = getelementptr i8, ptr %i.abu, i64 72
  %i.ada = getelementptr i8, ptr %i.abv, i64 104
  %i.adb = load float, ptr %i.acx, align 4, !alias.scope !35203, !noalias !35216
  %i.adc = load float, ptr %i.acy, align 4, !alias.scope !35203, !noalias !35216
  %i.add = load float, ptr %i.acz, align 4, !alias.scope !35203, !noalias !35216
  %i.ade = load float, ptr %i.ada, align 4, !alias.scope !35203, !noalias !35216
  %i.adf = insertelement <4 x float> poison, float %i.adb, i64 0
  %i.adg = insertelement <4 x float> %i.adf, float %i.adc, i64 1
  %i.adh = insertelement <4 x float> %i.adg, float %i.add, i64 2
  %i.adi = insertelement <4 x float> %i.adh, float %i.ade, i64 3
  %i.adj = fsub <4 x float> %i.adi, %broadcast.splat ; 3 uses
  %i.adk = fcmp oge <4 x float> %i.adj, %broadcast.splat3488
  %i.adl = select <4 x i1> %i.adk, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.adm = or disjoint <4 x i8> %i.acw, %i.adl
  %i.adn = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ado = getelementptr i8, ptr %i.abt, i64 44
  %i.adp = getelementptr i8, ptr %i.abu, i64 76
  %i.adq = getelementptr i8, ptr %i.abv, i64 108
  %i.adr = load float, ptr %i.adn, align 4, !alias.scope !35203, !noalias !35216
  %i.ads = load float, ptr %i.ado, align 4, !alias.scope !35203, !noalias !35216
  %i.adt = load float, ptr %i.adp, align 4, !alias.scope !35203, !noalias !35216
  %i.adu = load float, ptr %i.adq, align 4, !alias.scope !35203, !noalias !35216
  %i.adv = insertelement <4 x float> poison, float %i.adr, i64 0
  %i.adw = insertelement <4 x float> %i.adv, float %i.ads, i64 1
  %i.adx = insertelement <4 x float> %i.adw, float %i.adt, i64 2
  %i.ady = insertelement <4 x float> %i.adx, float %i.adu, i64 3
  %i.adz = fsub <4 x float> %i.ady, %broadcast.splat ; 3 uses
  %i.aea = fcmp oge <4 x float> %i.adz, %broadcast.splat3488
  %i.aeb = select <4 x i1> %i.aea, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.aec = or disjoint <4 x i8> %i.adm, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.aee = getelementptr i8, ptr %i.abt, i64 48
  %i.aef = getelementptr i8, ptr %i.abu, i64 80
  %i.aeg = getelementptr i8, ptr %i.abv, i64 112
  %i.aeh = load float, ptr %i.aed, align 4, !alias.scope !35203, !noalias !35216
  %i.aei = load float, ptr %i.aee, align 4, !alias.scope !35203, !noalias !35216
  %i.aej = load float, ptr %i.aef, align 4, !alias.scope !35203, !noalias !35216
  %i.aek = load float, ptr %i.aeg, align 4, !alias.scope !35203, !noalias !35216
  %i.ael = insertelement <4 x float> poison, float %i.aeh, i64 0
  %i.aem = insertelement <4 x float> %i.ael, float %i.aei, i64 1
  %i.aen = insertelement <4 x float> %i.aem, float %i.aej, i64 2
  %i.aeo = insertelement <4 x float> %i.aen, float %i.aek, i64 3
  %i.aep = fsub <4 x float> %i.aeo, %broadcast.splat ; 3 uses
  %i.aeq = fcmp oge <4 x float> %i.aep, %broadcast.splat3488
  %i.aer = select <4 x i1> %i.aeq, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.aes = or disjoint <4 x i8> %i.aec, %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.aeu = getelementptr i8, ptr %i.abt, i64 52
  %i.aev = getelementptr i8, ptr %i.abu, i64 84
  %i.aew = getelementptr i8, ptr %i.abv, i64 116
  %i.aex = load float, ptr %i.aet, align 4, !alias.scope !35203, !noalias !35216
  %i.aey = load float, ptr %i.aeu, align 4, !alias.scope !35203, !noalias !35216
  %i.aez = load float, ptr %i.aev, align 4, !alias.scope !35203, !noalias !35216
  %i.afa = load float, ptr %i.aew, align 4, !alias.scope !35203, !noalias !35216
  %i.afb = insertelement <4 x float> poison, float %i.aex, i64 0
  %i.afc = insertelement <4 x float> %i.afb, float %i.aey, i64 1
  %i.afd = insertelement <4 x float> %i.afc, float %i.aez, i64 2
  %i.afe = insertelement <4 x float> %i.afd, float %i.afa, i64 3
  %i.aff = fsub <4 x float> %i.afe, %broadcast.splat ; 3 uses
  %i.afg = fcmp oge <4 x float> %i.aff, %broadcast.splat3488
  %i.afh = select <4 x i1> %i.afg, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.afi = or disjoint <4 x i8> %i.aes, %i.afh
  %i.afj = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.afk = getelementptr i8, ptr %i.abt, i64 56
  %i.afl = getelementptr i8, ptr %i.abu, i64 88
  %i.afm = getelementptr i8, ptr %i.abv, i64 120
  %i.afn = load float, ptr %i.afj, align 4, !alias.scope !35203, !noalias !35216
  %i.afo = load float, ptr %i.afk, align 4, !alias.scope !35203, !noalias !35216
  %i.afp = load float, ptr %i.afl, align 4, !alias.scope !35203, !noalias !35216
  %i.afq = load float, ptr %i.afm, align 4, !alias.scope !35203, !noalias !35216
  %i.afr = insertelement <4 x float> poison, float %i.afn, i64 0
  %i.afs = insertelement <4 x float> %i.afr, float %i.afo, i64 1
  %i.aft = insertelement <4 x float> %i.afs, float %i.afp, i64 2
  %i.afu = insertelement <4 x float> %i.aft, float %i.afq, i64 3
  %i.afv = fsub <4 x float> %i.afu, %broadcast.splat ; 3 uses
  %i.afw = fcmp oge <4 x float> %i.afv, %broadcast.splat3488
  %i.afx = select <4 x i1> %i.afw, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.afy = or disjoint <4 x i8> %i.afi, %i.afx
  %i.afz = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.aga = getelementptr i8, ptr %i.abt, i64 60
  %i.agb = getelementptr i8, ptr %i.abu, i64 92
  %i.agc = getelementptr i8, ptr %i.abv, i64 124
  %i.agd = load float, ptr %i.afz, align 4, !alias.scope !35203, !noalias !35216
  %i.age = load float, ptr %i.aga, align 4, !alias.scope !35203, !noalias !35216
  %i.agf = load float, ptr %i.agb, align 4, !alias.scope !35203, !noalias !35216
  %i.agg = load float, ptr %i.agc, align 4, !alias.scope !35203, !noalias !35216
  %i.agh = insertelement <4 x float> poison, float %i.agd, i64 0
  %i.agi = insertelement <4 x float> %i.agh, float %i.age, i64 1
  %i.agj = insertelement <4 x float> %i.agi, float %i.agf, i64 2
  %i.agk = insertelement <4 x float> %i.agj, float %i.agg, i64 3
  %i.agl = fsub <4 x float> %i.agk, %broadcast.splat ; 3 uses
  %i.agm = fcmp oge <4 x float> %i.agl, %broadcast.splat3488
  %i.agn = select <4 x i1> %i.agm, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.ago = add nuw <4 x i8> %i.afy, %i.agn
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index3490 ; 2 uses
  %wide.load3494 = load <4 x i8>, ptr %gep, align 1, !alias.scope !35217, !noalias !35218
  %i.agp = or <4 x i8> %i.ago, %wide.load3494
  store <4 x i8> %i.agp, ptr %gep, align 1, !alias.scope !35217, !noalias !35218
  %i.agq = shufflevector <4 x float> %i.act, <4 x float> %i.aci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agr = shufflevector <4 x float> %i.adj, <4 x float> %i.adz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ags = shufflevector <8 x float> %i.agq, <8 x float> %i.agr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agt = fcmp olt <16 x float> %i.ags, %i.abo
  %i.agu = shufflevector <4 x float> %i.act, <4 x float> %i.aci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agv = shufflevector <4 x float> %i.adj, <4 x float> %i.adz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agw = shufflevector <8 x float> %i.agu, <8 x float> %i.agv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.agx = select <16 x i1> %i.agt, <16 x float> %i.agw, <16 x float> %i.abp
  %i.agy = shufflevector <4 x float> %i.aep, <4 x float> %i.aff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.agz = shufflevector <4 x float> %i.afv, <4 x float> %i.agl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aha = shufflevector <8 x float> %i.agy, <8 x float> %i.agz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahb = fcmp olt <16 x float> %i.aha, %i.abq
  %i.ahc = shufflevector <4 x float> %i.aep, <4 x float> %i.aff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahd = shufflevector <4 x float> %i.afv, <4 x float> %i.agl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ahe = shufflevector <8 x float> %i.ahc, <8 x float> %i.ahd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ahf = select <16 x i1> %i.ahb, <16 x float> %i.ahe, <16 x float> %i.abr
  %interleaved.vec = shufflevector <16 x float> %i.agx, <16 x float> %i.ahf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !35203, !noalias !35216
  %index.next3495 = add nuw i64 %index3490, 4     ; 2 uses
  %i.ahg = icmp eq i64 %index.next3495, %n.vec
  br i1 %i.ahg, label %.lr.ph430.i.i.preheader4287, label %vector.body3489, !llvm.loop !34463

.lr.ph430.i.i.preheader4287:                      ; preds = %vector.body3489, %.lr.ph430.i.i.preheader
  %.sroa.0187.0428.i.i.ph = phi ptr [ %i.fz, %.lr.ph430.i.i.preheader ], [ %i.abn, %vector.body3489 ]
  %.sroa.7189.0427.i.i.ph = phi i64 [ 0, %.lr.ph430.i.i.preheader ], [ %n.vec, %vector.body3489 ]
  %i.ahh = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i, i64 0
  %i.ahi = shufflevector <4 x float> %i.ahh, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahj = insertelement <4 x float> poison, float %.sroa.032.0.i.i, i64 0
  %i.ahk = shufflevector <4 x float> %i.ahj, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i

.lr.ph430.i.i:                                    ; preds = %.lr.ph430.i.i.preheader4287, %bb.dx
  %.sroa.0187.0428.i.i = phi ptr [ %i.aho, %bb.dx ], [ %.sroa.0187.0428.i.i.ph, %.lr.ph430.i.i.preheader4287 ] ; 4 uses
  %.sroa.7189.0427.i.i = phi i64 [ %i.ahn, %bb.dx ], [ %.sroa.7189.0427.i.i.ph, %.lr.ph430.i.i.preheader4287 ] ; 2 uses
  %i.ahl = add nuw i64 %.sroa.7189.0427.i.i, %i.aar ; 3 uses
  %i.ahm = icmp ult i64 %i.ahl, %i.ge
  br i1 %i.ahm, label %bb.dx, label %.invoke.i

bb.dx:                                            ; preds = %.lr.ph430.i.i
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i203) #38, !noalias !35288
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hc
  %i.bnn = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i"
  %i.bno = phi ptr [ %i.axr, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i" ], [ %i.axm, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85938.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i261, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread936.i.i" ], [ %i.bnn, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bno) ]
  tail call void @mi_free(ptr noundef nonnull %i.bno) #38, !noalias !35288
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit219.i"

bb.kn:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i76
  %.sroa.032.1430.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i202, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0429.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cdg, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35349)
  %i.bnp = icmp eq i64 %.sroa.0.0429.i, 0
  br i1 %i.bnp, label %.loopexit.i199, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bnq = add i64 %.sroa.0.0429.i, 7
  %i.bnr = lshr i64 %i.bnq, 3                     ; 8 uses
  %i.bns = icmp eq i64 %.sroa.0.0429.i, 1
  br i1 %i.bns, label %.preheader.i.preheader.i409, label %bb.kp

.preheader.i.preheader.i409:                      ; preds = %bb.ko
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.awa, i8 0, i64 %2, i1 false), !alias.scope !35349, !noalias !35350
  br label %.loopexit.i199

bb.kp:                                            ; preds = %bb.ko
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0429.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.kq, label %.preheader360.i.i80, !prof !87

bb.kq:                                            ; preds = %bb.kp
  %i.bnt = mul nuw nsw i64 %.sroa.0.0429.i, 704
  br label %.invoke1143.i

.invoke1143.i:                                    ; preds = %bb.my, %.lr.ph403.i.preheader.i98, %bb.lc, %bb.kq
  %i.bnu = phi i64 [ %i.bnt, %bb.kq ], [ %i.bnr, %bb.lc ], [ %i.boe, %.lr.ph403.i.preheader.i98 ], [ %i.cdg, %bb.my ]
  %i.bnv = phi i64 [ %i.awe, %bb.kq ], [ %i.awd, %bb.lc ], [ %i.awp, %.lr.ph403.i.preheader.i98 ], [ %spec.store.select.i44, %bb.my ]
  %i.bnw = phi ptr [ @1543, %bb.kq ], [ @1572, %bb.lc ], [ @1541, %.lr.ph403.i.preheader.i98 ], [ @1924, %bb.my ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bnu, i64 noundef %i.bnv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnw) #43
          to label %.cont1144.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i95", !noalias !35245

.cont1144.i:                                      ; preds = %.invoke1143.i
  unreachable

.preheader360.i.i80:                              ; preds = %bb.kp
  %.idx.i.i81 = mul nuw nsw i64 %.sroa.0.0429.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.awg, i8 0, i64 %.idx.i.i81, i1 false), !alias.scope !35346, !noalias !35351
  br label %bb.kr

bb.kr:                                            ; preds = %bb.mw, %.preheader360.i.i80
  %i.bnx = phi i64 [ 1, %.preheader360.i.i80 ], [ %i.cdd, %bb.mw ] ; 3 uses
  %.sroa.069.0399.i.i82 = phi i64 [ 0, %.preheader360.i.i80 ], [ %i.bnx, %bb.mw ] ; 2 uses
  %i.bny = getelementptr inbounds nuw [2832 x i8], ptr %i.arg, i64 %.sroa.069.0399.i.i82
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bny, i64 2816
  %i.boa = load i64, ptr %i.bnz, align 8, !alias.scope !35352, !noalias !35353, !noundef !45
  %i.bob = and i64 %i.boa, 4294967295             ; 3 uses
  %i.boc = icmp samesign ult i64 %i.bob, 256
  br i1 %i.boc, label %bb.mx, label %bb.mv

.loopexit358.i.i97:                               ; preds = %bb.mu
  %i.bod = icmp eq i64 %i.bof, 0
  br i1 %i.bod, label %.lr.ph403.i.preheader.i98, label %.split.i177.i

.lr.ph403.i.preheader.i98:                        ; preds = %.loopexit358.i.i97
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.awk, i8 0, i64 %i.awj, i1 false), !alias.scope !35347, !noalias !35354
  %i.boe = mul i64 %i.bnr, %2                     ; 4 uses
  %.not124.i.i99 = icmp ugt i64 %i.boe, %i.awp
  br i1 %.not124.i.i99, label %.invoke1143.i, label %bb.ks, !prof !87

.split.i177.i:                                    ; preds = %bb.mw, %.loopexit358.i.i97
  %.sroa.05.0401.i.i84 = phi i64 [ %i.bof, %.loopexit358.i.i97 ], [ 704, %bb.mw ]
  %i.bof = add nsw i64 %.sroa.05.0401.i.i84, -1   ; 4 uses
  %invariant.gep.i178.i = getelementptr [4 x i8], ptr %i.arg, i64 %i.bof
  %i.bog = mul i64 %i.bof, %.sroa.0.0429.i
  br label %bb.mt

bb.ks:                                            ; preds = %.lr.ph403.i.preheader.i98
  %.not355404.i.i100 = icmp samesign eq i64 %i.boe, 0
  br i1 %.not355404.i.i100, label %.lr.ph434.i.i103, label %.lr.ph407.preheader.i.i101

.lr.ph407.preheader.i.i101:                       ; preds = %bb.ks
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aww, i8 0, i64 %i.boe, i1 false), !alias.scope !35348, !noalias !35355
  br label %.lr.ph434.i.i103

.lr.ph434.i.i103:                                 ; preds = %bb.ks, %.lr.ph407.preheader.i.i101
  %i.boh = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %.not131.i.i104 = icmp samesign ugt i64 %i.boh, %i.awd
  %.idx452.i.i105 = shl nuw nsw i64 %i.boh, 5
  %i.boi = getelementptr inbounds nuw i8, ptr %i.awk, i64 %.idx452.i.i105
  %i.boj = icmp eq i64 %i.boh, 0
  %i.bok = and i64 %.sroa.0.0429.i, -8            ; 8 uses
  %i.bol = and i64 %.sroa.0.0429.i, 7             ; 4 uses
  %.not.i.i181.i = icmp samesign ugt i64 %i.bnr, %i.awd
  %.idx453.i.i106 = shl i64 %i.bnr, 5             ; 2 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.awk, i64 %.idx453.i.i106
  br i1 %.not131.i.i104, label %.lr.ph434.split.us.i.i406, label %.lr.ph434.split.preheader.i.i107, !prof !47

.lr.ph434.split.preheader.i.i107:                 ; preds = %.lr.ph434.i.i103
  %.idx454.i.i = shl nuw nsw i64 %i.bol, 2        ; 3 uses
  %i.bon = icmp eq i64 %i.bol, 0
  %i.boo = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bop = icmp samesign ult i64 %i.boo, %i.awd
  %i.boq = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.boo ; 2 uses
  %i.bor = trunc i64 %i.bok to i8
  %i.bos = icmp eq i64 %i.bol, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i155 = select i1 %i.bos, i64 0, i64 4 ; 3 uses
  %i.bot = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bou = icmp samesign ult i64 %i.bot, %i.awd
  %i.bov = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bot
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 4 ; 2 uses
  %i.box = trunc i64 %i.bok to i8
  %i.boy = or disjoint i8 %i.box, 1
  %i.boz = add nuw nsw i64 %.sroa.077.1.idx.i.i155, 4
  %i.bpa = icmp samesign eq i64 %i.boz, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i155.1 = select i1 %i.bpa, i64 0, i64 4 ; 2 uses
  %i.bpb = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpc = icmp samesign ult i64 %i.bpb, %i.awd
  %i.bpd = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bpb
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 8 ; 2 uses
  %i.bpf = trunc i64 %i.bok to i8
  %i.bpg = or disjoint i8 %i.bpf, 2
  %i.bph = add nuw nsw i64 %.sroa.077.1.idx.i.i155, 4
  %i.bpi = add nuw nsw i64 %i.bph, %.sroa.077.1.idx.i.i155.1
  %i.bpj = icmp samesign eq i64 %i.bpi, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i155.2 = select i1 %i.bpj, i64 0, i64 4
  %i.bpk = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpl = icmp samesign ult i64 %i.bpk, %i.awd
  %i.bpm = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bpk
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 12 ; 2 uses
  %i.bpo = trunc i64 %i.bok to i8
  %i.bpp = or disjoint i8 %i.bpo, 3
  %i.bpq = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpr = icmp samesign ult i64 %i.bpq, %i.awd
  %i.bps = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bpq
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bps, i64 16 ; 2 uses
  %i.bpu = trunc i64 %i.bok to i8
  %i.bpv = or disjoint i8 %i.bpu, 4
  %i.bpw = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bpx = icmp samesign ult i64 %i.bpw, %i.awd
  %i.bpy = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bpw
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpy, i64 20 ; 2 uses
  %i.bqa = trunc i64 %i.bok to i8
  %i.bqb = or disjoint i8 %i.bqa, 5
  %i.bqc = lshr i64 %.sroa.0.0429.i, 3            ; 3 uses
  %i.bqd = icmp samesign ult i64 %i.bqc, %i.awd
  %i.bqe = getelementptr inbounds nuw [32 x i8], ptr %i.awk, i64 %i.bqc
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 24 ; 2 uses
  %i.bqg = trunc i64 %i.bok to i8
  %i.bqh = or disjoint i8 %i.bqg, 6
  %i.bqi = add i64 %.idx453.i.i106, -32
  %i.bqj = lshr exact i64 %i.bqi, 5
  br label %.lr.ph434.split.i.i108

.lr.ph434.split.us.i.i406:                        ; preds = %.lr.ph434.i.i103
  %i.bqk = load i16, ptr %i.aoy, align 2, !alias.scope !35356, !noalias !35357, !noundef !45
  %i.bql = zext i16 %i.bqk to i64
  %i.bqm = mul nuw nsw i64 %.sroa.0.0429.i, %i.bql
  %.not130.us.i.i407 = icmp ugt i64 %i.bqm, %i.awe
  br i1 %.not130.us.i.i407, label %.split438.us.i.i405, label %.split440.us.i.i408, !prof !47

.split440.us.i.i408:                              ; preds = %.lr.ph434.split.us.i.i406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !35358
  br label %.split440.us.i.invoke.i117

.split440.us.i.invoke.i117:                       ; preds = %bb.mb, %bb.lz, %bb.la, %bb.ky, %.split438.us.i.i405, %.split440.us.i.i408
  %.sink.i118.sroa.phi = phi ptr [ %.sink.i118.sroa.gep, %bb.mb ], [ %.sink.i118.sroa.gep40, %bb.lz ], [ %.sink.i118.sroa.gep41, %bb.la ], [ %.sink.i118.sroa.gep42, %bb.ky ], [ %.sink.i118.sroa.gep43, %.split438.us.i.i405 ], [ %.sink.i118.sroa.gep44, %.split440.us.i.i408 ]
  %.sink.i118.sroa.phi45 = phi ptr [ %.sink.i118.sroa.gep46, %bb.mb ], [ %.sink.i118.sroa.gep47, %bb.lz ], [ %.sink.i118.sroa.gep48, %bb.la ], [ %.sink.i118.sroa.gep49, %bb.ky ], [ %.sink.i118.sroa.gep50, %.split438.us.i.i405 ], [ %.sink.i118.sroa.gep51, %.split440.us.i.i408 ]
  %.sink.i118.sroa.phi52 = phi ptr [ %.sink.i118.sroa.gep53, %bb.mb ], [ %.sink.i118.sroa.gep54, %bb.lz ], [ %.sink.i118.sroa.gep55, %bb.la ], [ %.sink.i118.sroa.gep56, %bb.ky ], [ %.sink.i118.sroa.gep57, %.split438.us.i.i405 ], [ %.sink.i118.sroa.gep58, %.split440.us.i.i408 ]
  %.sink.i118.sroa.phi59 = phi ptr [ %.sink.i118.sroa.gep60, %bb.mb ], [ %.sink.i118.sroa.gep61, %bb.lz ], [ %.sink.i118.sroa.gep62, %bb.la ], [ %.sink.i118.sroa.gep63, %bb.ky ], [ %.sink.i118.sroa.gep64, %.split438.us.i.i405 ], [ %.sink.i118.sroa.gep65, %.split440.us.i.i408 ]
  %.sink.i118 = phi ptr [ %i.p, %bb.mb ], [ %i.r, %bb.lz ], [ %i.o, %bb.la ], [ %i.q, %bb.ky ], [ %i.t, %.split438.us.i.i405 ], [ %i.s, %.split440.us.i.i408 ] ; 2 uses
  %i.bqn = phi ptr [ @1539, %bb.mb ], [ @1538, %bb.lz ], [ @1536, %bb.la ], [ @1535, %bb.ky ], [ @1533, %.split438.us.i.i405 ], [ @1534, %.split440.us.i.i408 ]
  store ptr @186, ptr %.sink.i118, align 8, !noalias !35358
  store i64 1, ptr %.sink.i118.sroa.phi, align 8, !noalias !35358
  store ptr null, ptr %.sink.i118.sroa.phi45, align 8, !noalias !35358
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i118.sroa.phi52, align 8, !noalias !35358
  store i64 0, ptr %.sink.i118.sroa.phi59, align 8, !noalias !35358
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i118, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqn) #43
          to label %.split440.us.i.cont.i119 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i95", !noalias !35245

.split440.us.i.cont.i119:                         ; preds = %.split440.us.i.invoke.i117
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i187: ; preds = %bb.ld
  %i.bqo = icmp eq ptr %i.bqp, %i.axc
  br i1 %i.bqo, label %.lr.ph447.preheader.i.i188, label %.lr.ph434.split.i.i108

.lr.ph434.split.i.i108:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i187, %.lr.ph434.split.preheader.i.i107
  %.sroa.0.0336432.i.i109 = phi ptr [ %i.bqp, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i187 ], [ %i.aoy, %.lr.ph434.split.preheader.i.i107 ] ; 2 uses
  %.sroa.7.0431.i.i110 = phi i64 [ %i.bqq, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i187 ], [ 0, %.lr.ph434.split.preheader.i.i107 ] ; 7 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i109, i64 2 ; 2 uses
  %i.bqq = add nuw nsw i64 %.sroa.7.0431.i.i110, 1
  %exitcond487.not.i.i = icmp eq i64 %.sroa.7.0431.i.i110, %2
  br i1 %exitcond487.not.i.i, label %.invoke.i94, label %bb.kw

.lr.ph447.preheader.i.i188:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i187
  %i.bqr = load i8, ptr %i.axe, align 1, !alias.scope !35349, !noalias !35350, !noundef !45
  %i.bqs = mul i64 %i.bnr, %i.axd
  br label %.lr.ph447.i.i189

.lr.ph447.i.i189:                                 ; preds = %bb.kv, %.lr.ph447.preheader.i.i188
  %.sroa.03.0446.i.i190 = phi i64 [ %.sroa.03.1.i.i197, %bb.kv ], [ 1, %.lr.ph447.preheader.i.i188 ] ; 2 uses
  %.sroa.052.0445.i.i191 = phi i64 [ %i.bqt, %bb.kv ], [ %i.axd, %.lr.ph447.preheader.i.i188 ]
  %.sroa.059.0444.i.i192 = phi i64 [ %i.bqu, %bb.kv ], [ %i.bqs, %.lr.ph447.preheader.i.i188 ]
  %.sroa.061.0443.i.i193 = phi i8 [ %.sroa.061.1.i.i196, %bb.kv ], [ %i.bqr, %.lr.ph447.preheader.i.i188 ] ; 4 uses
  %i.bqt = add nsw i64 %.sroa.052.0445.i.i191, -1 ; 4 uses
  %i.bqu = sub i64 %.sroa.059.0444.i.i192, %i.bnr ; 2 uses
  %i.bqv = lshr i8 %.sroa.061.0443.i.i193, 3
  %i.bqw = zext nneg i8 %i.bqv to i64
  %i.bqx = add i64 %i.bqu, %i.bqw                 ; 3 uses
  %i.bqy = icmp ult i64 %i.bqx, %i.awp
  br i1 %i.bqy, label %bb.kt, label %.invoke.i94

bb.kt:                                            ; preds = %.lr.ph447.i.i189
  %i.bqz = and i8 %.sroa.061.0443.i.i193, 7
  %i.bra = shl nuw i8 1, %i.bqz
  %i.brb = getelementptr inbounds nuw i8, ptr %i.aww, i64 %i.bqx
  %i.brc = load i8, ptr %i.brb, align 1, !alias.scope !35348, !noalias !35355, !noundef !45
  %i.brd = and i8 %i.brc, %i.bra
  %i.bre = icmp eq i8 %i.brd, 0
  br i1 %i.bre, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.brf = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.bqt
  %i.brg = load i8, ptr %i.brf, align 1, !alias.scope !35349, !noalias !35350, !noundef !45 ; 2 uses
  %.not129.i.i194 = icmp ne i8 %.sroa.061.0443.i.i193, %i.brg
  %i.brh = zext i1 %.not129.i.i194 to i64
  %spec.select137.i.i195 = add i64 %.sroa.03.0446.i.i190, %i.brh
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %bb.kt
  %.sroa.061.1.i.i196 = phi i8 [ %.sroa.061.0443.i.i193, %bb.kt ], [ %i.brg, %bb.ku ] ; 2 uses
  %.sroa.03.1.i.i197 = phi i64 [ %.sroa.03.0446.i.i190, %bb.kt ], [ %spec.select137.i.i195, %bb.ku ] ; 2 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.bqt
  store i8 %.sroa.061.1.i.i196, ptr %i.bri, align 1, !alias.scope !35349, !noalias !35350
  %.not128.i.i198 = icmp eq i64 %i.bqt, 0
  br i1 %.not128.i.i198, label %.loopexit.i199, label %.lr.ph447.i.i189

bb.kw:                                            ; preds = %.lr.ph434.split.i.i108
  %i.brj = getelementptr inbounds nuw i8, ptr %i.awa, i64 %.sroa.7.0431.i.i110 ; 15 uses
  %i.brk = mul i64 %.sroa.7.0431.i.i110, %i.bnr   ; 3 uses
  %i.brl = load i16, ptr %.sroa.0.0336432.i.i109, align 2, !alias.scope !35356, !noalias !35357, !noundef !45
  %i.brm = zext i16 %i.brl to i64
  %i.brn = mul nuw nsw i64 %.sroa.0.0429.i, %i.brm ; 4 uses
  %.not130.i.i111 = icmp ugt i64 %i.brn, %i.awe
  br i1 %.not130.i.i111, label %.split438.us.i.i405, label %bb.kx, !prof !47

.split438.us.i.i405:                              ; preds = %bb.kw, %.lr.ph434.split.us.i.i406
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35358
  br label %.split440.us.i.invoke.i117

bb.kx:                                            ; preds = %bb.kw
  %i.bro = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.brn
  %i.brp = sub nuw nsw i64 %i.awe, %i.brn         ; 2 uses
  br i1 %i.boj, label %._crit_edge416.i.i143, label %.lr.ph415.i.i112

.lr.ph415.i.i112:                                 ; preds = %bb.kx, %bb.ms
  %.sroa.029.0413.i.i113 = phi float [ %.sroa.029.4.7.i.i142, %bb.ms ], [ f0x7E967699, %bb.kx ] ; 2 uses
  %.sroa.0164.0412.i.i114 = phi ptr [ %i.brq, %bb.ms ], [ %i.awk, %bb.kx ] ; 10 uses
  %.sroa.7166.0411.i.i115 = phi i64 [ %i.brr, %bb.ms ], [ 0, %bb.kx ] ; 2 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i114, i64 32 ; 2 uses
  %i.brr = add nuw nsw i64 %.sroa.7166.0411.i.i115, 1
  %i.brs = shl nuw nsw i64 %.sroa.7166.0411.i.i115, 3 ; 11 uses
  %.not136.i.i116 = icmp samesign ugt i64 %i.brs, %i.brp
  br i1 %.not136.i.i116, label %bb.lz, label %bb.ma, !prof !47

._crit_edge416.i.i143:                            ; preds = %bb.ms, %bb.kx
  %.sroa.029.0.lcssa.i.i144 = phi float [ f0x7E967699, %bb.kx ], [ %.sroa.029.4.7.i.i142, %bb.ms ] ; 3 uses
  %i.brt = add nuw nsw i64 %i.brn, %i.bok         ; 3 uses
  %.not133.i.i145 = icmp ugt i64 %i.brt, %i.awe
  br i1 %.not133.i.i145, label %bb.ky, label %bb.kz, !prof !47

bb.ky:                                            ; preds = %._crit_edge416.i.i143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !35358
  br label %.split440.us.i.invoke.i117

bb.kz:                                            ; preds = %._crit_edge416.i.i143
  %i.bru = sub nuw nsw i64 %i.awe, %i.brt
  %.not134.i.i146 = icmp samesign ugt i64 %i.bol, %i.bru
  br i1 %.not134.i.i146, label %bb.la, label %bb.lb, !prof !47

bb.la:                                            ; preds = %bb.kz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !35358
  br label %.split440.us.i.invoke.i117

bb.lb:                                            ; preds = %bb.kz
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %i.awg, i64 %i.brt ; 3 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 %.idx454.i.i ; 3 uses
  br i1 %i.bon, label %._crit_edge425.i.i157, label %.lr.ph424.preheader.i.i147

.lr.ph424.preheader.i.i147:                       ; preds = %bb.lb
  %.sroa.077.1418.i.i148 = getelementptr inbounds nuw i8, ptr %i.brv, i64 4 ; 2 uses
  br i1 %i.bop, label %bb.lf, label %.invoke.i94

._crit_edge425.i.i157:                            ; preds = %bb.lw, %bb.lx, %bb.lg, %bb.lj, %bb.lm, %bb.lp, %bb.ls, %bb.lv, %bb.lb
  %.sroa.029.1.lcssa.i.i158 = phi float [ %.sroa.029.0.lcssa.i.i144, %bb.lb ], [ %.sroa.029.2.i.i154, %bb.lg ], [ %.sroa.029.2.i.i154.1, %bb.lj ], [ %.sroa.029.2.i.i154.2, %bb.lm ], [ %.sroa.029.2.i.i154.3, %bb.lp ], [ %.sroa.029.2.i.i154.4, %bb.ls ], [ %.sroa.029.2.i.i154.5, %bb.lv ], [ %i.cap, %bb.lx ], [ %.sroa.029.2.i.i154.5, %bb.lw ] ; 2 uses
  %i.brx = icmp samesign ult i64 %.sroa.7.0431.i.i110, 2000
  br i1 %i.brx, label %bb.le, label %bb.lc

bb.lc:                                            ; preds = %bb.le, %._crit_edge425.i.i157
  %.sroa.032.0.i.i159 = phi float [ %i.bzl, %bb.le ], [ 1.350000e+01, %._crit_edge425.i.i157 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35359)
  br i1 %.not.i.i181.i, label %.invoke1143.i, label %.lr.ph430.i.i160.preheader, !prof !87

.lr.ph430.i.i160.preheader:                       ; preds = %bb.lc
  %i.bry = call i64 @llvm.umax.i64(i64 %i.brk, i64 %i.awp)
  %11 = mul i64 %i.bnr, %.sroa.7.0431.i.i110
  %i.brz = sub i64 %i.bry, %11
  %i.bsa = call i64 @llvm.umin.i64(i64 %i.bqj, i64 %i.brz) ; 2 uses
  %min.iters.check3563 = icmp samesign ult i64 %i.bsa, 4
  br i1 %min.iters.check3563, label %.lr.ph430.i.i160.preheader4082, label %vector.ph3564

vector.ph3564:                                    ; preds = %.lr.ph430.i.i160.preheader
  %i.bsb = add nuw nsw i64 %i.bsa, 1              ; 2 uses
  %i.bsc = and i64 %i.bsb, 3                      ; 2 uses
  %i.bsd = icmp eq i64 %i.bsc, 0
  %i.bse = select i1 %i.bsd, i64 4, i64 %i.bsc
  %n.vec3565 = sub nsw i64 %i.bsb, %i.bse         ; 3 uses
  %i.bsf = shl i64 %n.vec3565, 5
  %i.bsg = getelementptr i8, ptr %i.awk, i64 %i.bsf
  %broadcast.splatinsert3566 = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i158, i64 0
  %broadcast.splat3567 = shufflevector <4 x float> %broadcast.splatinsert3566, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3568 = insertelement <4 x float> poison, float %.sroa.032.0.i.i159, i64 0 ; 5 uses
  %broadcast.splat3569 = shufflevector <4 x float> %broadcast.splatinsert3568, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep4920 = getelementptr i8, ptr %i.aww, i64 %i.brk
  %i.bsh = shufflevector <4 x float> %broadcast.splatinsert3568, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bsi = shufflevector <4 x float> %broadcast.splatinsert3568, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bsj = shufflevector <4 x float> %broadcast.splatinsert3568, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bsk = shufflevector <4 x float> %broadcast.splatinsert3568, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3570

vector.body3570:                                  ; preds = %vector.body3570, %vector.ph3564
  %index3571 = phi i64 [ 0, %vector.ph3564 ], [ %index.next3578, %vector.body3570 ] ; 3 uses
  %i.bsl = shl i64 %index3571, 5                  ; 4 uses
  %next.gep3572 = getelementptr i8, ptr %i.awk, i64 %i.bsl ; 9 uses
  %i.bsm = getelementptr i8, ptr %i.awk, i64 %i.bsl ; 8 uses
  %next.gep3573 = getelementptr i8, ptr %i.bsm, i64 32
  %i.bsn = getelementptr i8, ptr %i.awk, i64 %i.bsl ; 8 uses
  %next.gep3574 = getelementptr i8, ptr %i.bsn, i64 64
  %i.bso = getelementptr i8, ptr %i.awk, i64 %i.bsl ; 8 uses
  %next.gep3575 = getelementptr i8, ptr %i.bso, i64 96
  %i.bsp = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 4
  %i.bsq = getelementptr i8, ptr %i.bsm, i64 36
  %i.bsr = getelementptr i8, ptr %i.bsn, i64 68
  %i.bss = getelementptr i8, ptr %i.bso, i64 100
  %i.bst = load float, ptr %i.bsp, align 4, !alias.scope !35347, !noalias !35360
  %i.bsu = load float, ptr %i.bsq, align 4, !alias.scope !35347, !noalias !35360
  %i.bsv = load float, ptr %i.bsr, align 4, !alias.scope !35347, !noalias !35360
  %i.bsw = load float, ptr %i.bss, align 4, !alias.scope !35347, !noalias !35360
  %i.bsx = insertelement <4 x float> poison, float %i.bst, i64 0
  %i.bsy = insertelement <4 x float> %i.bsx, float %i.bsu, i64 1
  %i.bsz = insertelement <4 x float> %i.bsy, float %i.bsv, i64 2
  %i.bta = insertelement <4 x float> %i.bsz, float %i.bsw, i64 3
  %i.btb = fsub <4 x float> %i.bta, %broadcast.splat3567 ; 3 uses
  %i.btc = fcmp oge <4 x float> %i.btb, %broadcast.splat3569
  %i.btd = select <4 x i1> %i.btc, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.bte = load float, ptr %next.gep3572, align 4, !alias.scope !35347, !noalias !35360
  %i.btf = load float, ptr %next.gep3573, align 4, !alias.scope !35347, !noalias !35360
  %i.btg = load float, ptr %next.gep3574, align 4, !alias.scope !35347, !noalias !35360
  %i.bth = load float, ptr %next.gep3575, align 4, !alias.scope !35347, !noalias !35360
  %i.bti = insertelement <4 x float> poison, float %i.bte, i64 0
  %i.btj = insertelement <4 x float> %i.bti, float %i.btf, i64 1
  %i.btk = insertelement <4 x float> %i.btj, float %i.btg, i64 2
  %i.btl = insertelement <4 x float> %i.btk, float %i.bth, i64 3
  %i.btm = fsub <4 x float> %i.btl, %broadcast.splat3567 ; 3 uses
  %i.btn = fcmp oge <4 x float> %i.btm, %broadcast.splat3569
  %i.bto = zext <4 x i1> %i.btn to <4 x i8>
  %i.btp = or disjoint <4 x i8> %i.btd, %i.bto
  %i.btq = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 8
  %i.btr = getelementptr i8, ptr %i.bsm, i64 40
  %i.bts = getelementptr i8, ptr %i.bsn, i64 72
  %i.btt = getelementptr i8, ptr %i.bso, i64 104
  %i.btu = load float, ptr %i.btq, align 4, !alias.scope !35347, !noalias !35360
  %i.btv = load float, ptr %i.btr, align 4, !alias.scope !35347, !noalias !35360
  %i.btw = load float, ptr %i.bts, align 4, !alias.scope !35347, !noalias !35360
  %i.btx = load float, ptr %i.btt, align 4, !alias.scope !35347, !noalias !35360
  %i.bty = insertelement <4 x float> poison, float %i.btu, i64 0
  %i.btz = insertelement <4 x float> %i.bty, float %i.btv, i64 1
  %i.bua = insertelement <4 x float> %i.btz, float %i.btw, i64 2
  %i.bub = insertelement <4 x float> %i.bua, float %i.btx, i64 3
  %i.buc = fsub <4 x float> %i.bub, %broadcast.splat3567 ; 3 uses
  %i.bud = fcmp oge <4 x float> %i.buc, %broadcast.splat3569
  %i.bue = select <4 x i1> %i.bud, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.buf = or disjoint <4 x i8> %i.btp, %i.bue
  %i.bug = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 12
  %i.buh = getelementptr i8, ptr %i.bsm, i64 44
  %i.bui = getelementptr i8, ptr %i.bsn, i64 76
  %i.buj = getelementptr i8, ptr %i.bso, i64 108
  %i.buk = load float, ptr %i.bug, align 4, !alias.scope !35347, !noalias !35360
  %i.bul = load float, ptr %i.buh, align 4, !alias.scope !35347, !noalias !35360
  %i.bum = load float, ptr %i.bui, align 4, !alias.scope !35347, !noalias !35360
  %i.bun = load float, ptr %i.buj, align 4, !alias.scope !35347, !noalias !35360
  %i.buo = insertelement <4 x float> poison, float %i.buk, i64 0
  %i.bup = insertelement <4 x float> %i.buo, float %i.bul, i64 1
  %i.buq = insertelement <4 x float> %i.bup, float %i.bum, i64 2
  %i.bur = insertelement <4 x float> %i.buq, float %i.bun, i64 3
  %i.bus = fsub <4 x float> %i.bur, %broadcast.splat3567 ; 3 uses
  %i.but = fcmp oge <4 x float> %i.bus, %broadcast.splat3569
  %i.buu = select <4 x i1> %i.but, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.buv = or disjoint <4 x i8> %i.buf, %i.buu
  %i.buw = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 16
  %i.bux = getelementptr i8, ptr %i.bsm, i64 48
  %i.buy = getelementptr i8, ptr %i.bsn, i64 80
  %i.buz = getelementptr i8, ptr %i.bso, i64 112
  %i.bva = load float, ptr %i.buw, align 4, !alias.scope !35347, !noalias !35360
  %i.bvb = load float, ptr %i.bux, align 4, !alias.scope !35347, !noalias !35360
  %i.bvc = load float, ptr %i.buy, align 4, !alias.scope !35347, !noalias !35360
  %i.bvd = load float, ptr %i.buz, align 4, !alias.scope !35347, !noalias !35360
  %i.bve = insertelement <4 x float> poison, float %i.bva, i64 0
  %i.bvf = insertelement <4 x float> %i.bve, float %i.bvb, i64 1
  %i.bvg = insertelement <4 x float> %i.bvf, float %i.bvc, i64 2
  %i.bvh = insertelement <4 x float> %i.bvg, float %i.bvd, i64 3
  %i.bvi = fsub <4 x float> %i.bvh, %broadcast.splat3567 ; 3 uses
  %i.bvj = fcmp oge <4 x float> %i.bvi, %broadcast.splat3569
  %i.bvk = select <4 x i1> %i.bvj, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.bvl = or disjoint <4 x i8> %i.buv, %i.bvk
  %i.bvm = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 20
  %i.bvn = getelementptr i8, ptr %i.bsm, i64 52
  %i.bvo = getelementptr i8, ptr %i.bsn, i64 84
  %i.bvp = getelementptr i8, ptr %i.bso, i64 116
  %i.bvq = load float, ptr %i.bvm, align 4, !alias.scope !35347, !noalias !35360
  %i.bvr = load float, ptr %i.bvn, align 4, !alias.scope !35347, !noalias !35360
  %i.bvs = load float, ptr %i.bvo, align 4, !alias.scope !35347, !noalias !35360
  %i.bvt = load float, ptr %i.bvp, align 4, !alias.scope !35347, !noalias !35360
  %i.bvu = insertelement <4 x float> poison, float %i.bvq, i64 0
  %i.bvv = insertelement <4 x float> %i.bvu, float %i.bvr, i64 1
  %i.bvw = insertelement <4 x float> %i.bvv, float %i.bvs, i64 2
  %i.bvx = insertelement <4 x float> %i.bvw, float %i.bvt, i64 3
  %i.bvy = fsub <4 x float> %i.bvx, %broadcast.splat3567 ; 3 uses
  %i.bvz = fcmp oge <4 x float> %i.bvy, %broadcast.splat3569
  %i.bwa = select <4 x i1> %i.bvz, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.bwb = or disjoint <4 x i8> %i.bvl, %i.bwa
  %i.bwc = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 24
  %i.bwd = getelementptr i8, ptr %i.bsm, i64 56
  %i.bwe = getelementptr i8, ptr %i.bsn, i64 88
  %i.bwf = getelementptr i8, ptr %i.bso, i64 120
  %i.bwg = load float, ptr %i.bwc, align 4, !alias.scope !35347, !noalias !35360
  %i.bwh = load float, ptr %i.bwd, align 4, !alias.scope !35347, !noalias !35360
  %i.bwi = load float, ptr %i.bwe, align 4, !alias.scope !35347, !noalias !35360
  %i.bwj = load float, ptr %i.bwf, align 4, !alias.scope !35347, !noalias !35360
  %i.bwk = insertelement <4 x float> poison, float %i.bwg, i64 0
  %i.bwl = insertelement <4 x float> %i.bwk, float %i.bwh, i64 1
  %i.bwm = insertelement <4 x float> %i.bwl, float %i.bwi, i64 2
  %i.bwn = insertelement <4 x float> %i.bwm, float %i.bwj, i64 3
  %i.bwo = fsub <4 x float> %i.bwn, %broadcast.splat3567 ; 3 uses
  %i.bwp = fcmp oge <4 x float> %i.bwo, %broadcast.splat3569
  %i.bwq = select <4 x i1> %i.bwp, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.bwr = or disjoint <4 x i8> %i.bwb, %i.bwq
  %i.bws = getelementptr inbounds nuw i8, ptr %next.gep3572, i64 28
  %i.bwt = getelementptr i8, ptr %i.bsm, i64 60
  %i.bwu = getelementptr i8, ptr %i.bsn, i64 92
  %i.bwv = getelementptr i8, ptr %i.bso, i64 124
  %i.bww = load float, ptr %i.bws, align 4, !alias.scope !35347, !noalias !35360
  %i.bwx = load float, ptr %i.bwt, align 4, !alias.scope !35347, !noalias !35360
  %i.bwy = load float, ptr %i.bwu, align 4, !alias.scope !35347, !noalias !35360
  %i.bwz = load float, ptr %i.bwv, align 4, !alias.scope !35347, !noalias !35360
  %i.bxa = insertelement <4 x float> poison, float %i.bww, i64 0
  %i.bxb = insertelement <4 x float> %i.bxa, float %i.bwx, i64 1
  %i.bxc = insertelement <4 x float> %i.bxb, float %i.bwy, i64 2
  %i.bxd = insertelement <4 x float> %i.bxc, float %i.bwz, i64 3
  %i.bxe = fsub <4 x float> %i.bxd, %broadcast.splat3567 ; 3 uses
  %i.bxf = fcmp oge <4 x float> %i.bxe, %broadcast.splat3569
  %i.bxg = select <4 x i1> %i.bxf, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bxh = add nuw <4 x i8> %i.bwr, %i.bxg
  %gep4921 = getelementptr i8, ptr %invariant.gep4920, i64 %index3571 ; 2 uses
  %wide.load3576 = load <4 x i8>, ptr %gep4921, align 1, !alias.scope !35361, !noalias !35362
  %i.bxi = or <4 x i8> %i.bxh, %wide.load3576
  store <4 x i8> %i.bxi, ptr %gep4921, align 1, !alias.scope !35361, !noalias !35362
  %i.bxj = shufflevector <4 x float> %i.btm, <4 x float> %i.btb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxk = shufflevector <4 x float> %i.buc, <4 x float> %i.bus, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxl = shufflevector <8 x float> %i.bxj, <8 x float> %i.bxk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxm = fcmp olt <16 x float> %i.bxl, %i.bsh
  %i.bxn = shufflevector <4 x float> %i.btm, <4 x float> %i.btb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxo = shufflevector <4 x float> %i.buc, <4 x float> %i.bus, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxp = shufflevector <8 x float> %i.bxn, <8 x float> %i.bxo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxq = select <16 x i1> %i.bxm, <16 x float> %i.bxp, <16 x float> %i.bsi
  %i.bxr = shufflevector <4 x float> %i.bvi, <4 x float> %i.bvy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxs = shufflevector <4 x float> %i.bwo, <4 x float> %i.bxe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxt = shufflevector <8 x float> %i.bxr, <8 x float> %i.bxs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxu = fcmp olt <16 x float> %i.bxt, %i.bsj
  %i.bxv = shufflevector <4 x float> %i.bvi, <4 x float> %i.bvy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxw = shufflevector <4 x float> %i.bwo, <4 x float> %i.bxe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxx = shufflevector <8 x float> %i.bxv, <8 x float> %i.bxw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bxy = select <16 x i1> %i.bxu, <16 x float> %i.bxx, <16 x float> %i.bsk
  %interleaved.vec3577 = shufflevector <16 x float> %i.bxq, <16 x float> %i.bxy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3577, ptr %next.gep3572, align 4, !alias.scope !35347, !noalias !35360
  %index.next3578 = add nuw i64 %index3571, 4     ; 2 uses
  %i.bxz = icmp eq i64 %index.next3578, %n.vec3565
  br i1 %i.bxz, label %.lr.ph430.i.i160.preheader4082, label %vector.body3570, !llvm.loop !34765

.lr.ph430.i.i160.preheader4082:                   ; preds = %vector.body3570, %.lr.ph430.i.i160.preheader
  %.sroa.0187.0428.i.i161.ph = phi ptr [ %i.awk, %.lr.ph430.i.i160.preheader ], [ %i.bsg, %vector.body3570 ]
  %.sroa.7189.0427.i.i162.ph = phi i64 [ 0, %.lr.ph430.i.i160.preheader ], [ %n.vec3565, %vector.body3570 ]
  %i.bya = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i158, i64 0
  %i.byb = shufflevector <4 x float> %i.bya, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.byc = insertelement <4 x float> poison, float %.sroa.032.0.i.i159, i64 0
  %i.byd = shufflevector <4 x float> %i.byc, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i160

.lr.ph430.i.i160:                                 ; preds = %.lr.ph430.i.i160.preheader4082, %bb.ld
  %.sroa.0187.0428.i.i161 = phi ptr [ %i.byh, %bb.ld ], [ %.sroa.0187.0428.i.i161.ph, %.lr.ph430.i.i160.preheader4082 ] ; 4 uses
  %.sroa.7189.0427.i.i162 = phi i64 [ %i.byg, %bb.ld ], [ %.sroa.7189.0427.i.i162.ph, %.lr.ph430.i.i160.preheader4082 ] ; 2 uses
  %i.bye = add nuw i64 %.sroa.7189.0427.i.i162, %i.brk ; 3 uses
  %i.byf = icmp ult i64 %i.bye, %i.awp
  br i1 %i.byf, label %bb.ld, label %.invoke.i94

bb.ld:                                            ; preds = %.lr.ph430.i.i160
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.dcm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dcl, ptr %i.dcm, align 8, !alias.scope !35441, !noalias !35442
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqc) #38, !noalias !35430
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i642) #38, !noalias !35430
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cml) #38, !noalias !35430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35430
  tail call void @mi_free(ptr noundef nonnull align 1 %i.cku) #38, !noalias !35387
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.rw:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i489
  %.sroa.032.1430.i492 = phi i64 [ 1, %.split.i489 ], [ %.sroa.032.1.i638, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0429.i493 = phi i64 [ %spec.store.select.i441, %.split.i489 ], [ %i.dse, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35491)
  %i.dcn = icmp eq i64 %.sroa.0.0429.i493, 0
  br i1 %i.dcn, label %.loopexit.i626, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.dco = add i64 %.sroa.0.0429.i493, 7
  %i.dcp = lshr i64 %i.dco, 3                     ; 8 uses
  %i.dcq = icmp eq i64 %.sroa.0.0429.i493, 1
  br i1 %i.dcq, label %.preheader.i.preheader.i974, label %bb.ry

.preheader.i.preheader.i974:                      ; preds = %bb.rx
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cku, i8 0, i64 %.sroa.01.1, i1 false), !alias.scope !35491, !noalias !35492
  br label %.loopexit.i626

bb.ry:                                            ; preds = %bb.rx
  %.not121.i.i494 = icmp ugt i64 %.sroa.0.0429.i493, %spec.store.select.i441
  br i1 %.not121.i.i494, label %bb.rz, label %.preheader360.i.i495, !prof !87

bb.rz:                                            ; preds = %bb.ry
  %i.dcr = mul nuw nsw i64 %.sroa.0.0429.i493, 544
  br label %.invoke1143.i968

.invoke1143.i968:                                 ; preds = %bb.uh, %._crit_edge408.i.i526, %.lr.ph403.i.preheader.i522, %bb.sl, %bb.rz
  %i.dcs = phi i64 [ %i.dcr, %bb.rz ], [ %i.dcp, %bb.sl ], [ %.sroa.01.1, %._crit_edge408.i.i526 ], [ %i.ddc, %.lr.ph403.i.preheader.i522 ], [ %i.dse, %bb.uh ]
  %i.dct = phi i64 [ %i.cky, %bb.rz ], [ %i.ckx, %bb.sl ], [ %2, %._crit_edge408.i.i526 ], [ %i.clj, %.lr.ph403.i.preheader.i522 ], [ %spec.store.select.i441, %bb.uh ]
  %i.dcu = phi ptr [ @1543, %bb.rz ], [ @1572, %bb.sl ], [ @1540, %._crit_edge408.i.i526 ], [ @1541, %.lr.ph403.i.preheader.i522 ], [ @1924, %bb.uh ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.dcs, i64 noundef %i.dct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dcu) #43
          to label %.cont1144.i969 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i517", !noalias !35387

.cont1144.i969:                                   ; preds = %.invoke1143.i968
  unreachable

.preheader360.i.i495:                             ; preds = %bb.ry
  %.idx.i.i496 = mul nuw nsw i64 %.sroa.0.0429.i493, 2176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cla, i8 0, i64 %.idx.i.i496, i1 false), !alias.scope !35488, !noalias !35493
  br label %bb.sa

bb.sa:                                            ; preds = %bb.uf, %.preheader360.i.i495
  %i.dcv = phi i64 [ 1, %.preheader360.i.i495 ], [ %i.dsb, %bb.uf ] ; 3 uses
  %.sroa.069.0399.i.i497 = phi i64 [ 0, %.preheader360.i.i495 ], [ %i.dcv, %bb.uf ] ; 2 uses
  %i.dcw = getelementptr inbounds nuw [2192 x i8], ptr %i.cft, i64 %.sroa.069.0399.i.i497
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.dcw, i64 2176
  %i.dcy = load i64, ptr %i.dcx, align 8, !alias.scope !35494, !noalias !35495, !noundef !45
  %i.dcz = and i64 %i.dcy, 4294967295             ; 3 uses
  %i.dda = icmp samesign ult i64 %i.dcz, 256
  br i1 %i.dda, label %bb.ug, label %bb.ue

.loopexit358.i.i521:                              ; preds = %bb.ud
  %i.ddb = icmp eq i64 %i.ddd, 0
  br i1 %i.ddb, label %.lr.ph403.i.preheader.i522, label %.split.i177.i501

.lr.ph403.i.preheader.i522:                       ; preds = %.loopexit358.i.i521
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cle, i8 0, i64 %i.cld, i1 false), !alias.scope !35489, !noalias !35496
  %i.ddc = mul i64 %i.dcp, %.sroa.01.1            ; 4 uses
  %.not124.i.i523 = icmp ugt i64 %i.ddc, %i.clj
  br i1 %.not124.i.i523, label %.invoke1143.i968, label %bb.sb, !prof !87

.split.i177.i501:                                 ; preds = %bb.uf, %.loopexit358.i.i521
  %.sroa.05.0401.i.i502 = phi i64 [ %i.ddd, %.loopexit358.i.i521 ], [ 544, %bb.uf ]
  %i.ddd = add nsw i64 %.sroa.05.0401.i.i502, -1  ; 4 uses
  %invariant.gep.i178.i503 = getelementptr [4 x i8], ptr %i.cft, i64 %i.ddd
  %i.dde = mul i64 %i.ddd, %.sroa.0.0429.i493
  br label %bb.uc

bb.sb:                                            ; preds = %.lr.ph403.i.preheader.i522
  %.not355404.i.i524 = icmp samesign eq i64 %i.ddc, 0
  br i1 %.not355404.i.i524, label %._crit_edge408.i.i526, label %.lr.ph407.preheader.i.i525

.lr.ph407.preheader.i.i525:                       ; preds = %bb.sb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.clq, i8 0, i64 %i.ddc, i1 false), !alias.scope !35490, !noalias !35497
  br label %._crit_edge408.i.i526

._crit_edge408.i.i526:                            ; preds = %.lr.ph407.preheader.i.i525, %bb.sb
  br i1 %.not126.i.i491, label %.invoke1143.i968, label %.lr.ph434.i.i527, !prof !87

.lr.ph434.i.i527:                                 ; preds = %._crit_edge408.i.i526
  %i.ddf = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %.not131.i.i528 = icmp samesign ugt i64 %i.ddf, %i.ckx
  %.idx452.i.i529 = shl nuw nsw i64 %i.ddf, 5
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.cle, i64 %.idx452.i.i529
  %i.ddh = icmp eq i64 %i.ddf, 0
  %i.ddi = and i64 %.sroa.0.0429.i493, -8         ; 8 uses
  %i.ddj = and i64 %.sroa.0.0429.i493, 7          ; 4 uses
  %.not.i.i181.i530 = icmp samesign ugt i64 %i.dcp, %i.ckx
  %.idx453.i.i531 = shl i64 %i.dcp, 5             ; 2 uses
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.cle, i64 %.idx453.i.i531
  br i1 %.not131.i.i528, label %.lr.ph434.split.us.i.i971, label %.lr.ph434.split.preheader.i.i532, !prof !47

.lr.ph434.split.preheader.i.i532:                 ; preds = %.lr.ph434.i.i527
  %.idx454.i.i533 = shl nuw nsw i64 %i.ddj, 2     ; 3 uses
  %i.ddl = icmp eq i64 %i.ddj, 0
  %i.ddm = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.ddn = icmp samesign ult i64 %i.ddm, %i.ckx
  %i.ddo = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.ddm ; 2 uses
  %i.ddp = trunc i64 %i.ddi to i8
  %i.ddq = icmp eq i64 %i.ddj, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i582 = select i1 %i.ddq, i64 0, i64 4 ; 3 uses
  %i.ddr = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dds = icmp samesign ult i64 %i.ddr, %i.ckx
  %i.ddt = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.ddr
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 4 ; 2 uses
  %i.ddv = trunc i64 %i.ddi to i8
  %i.ddw = or disjoint i8 %i.ddv, 1
  %i.ddx = add nuw nsw i64 %.sroa.077.1.idx.i.i582, 4
  %i.ddy = icmp samesign eq i64 %i.ddx, %.idx454.i.i533 ; 2 uses
  %.sroa.077.1.idx.i.i582.1 = select i1 %i.ddy, i64 0, i64 4 ; 2 uses
  %i.ddz = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dea = icmp samesign ult i64 %i.ddz, %i.ckx
  %i.deb = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.ddz
  %i.dec = getelementptr inbounds nuw i8, ptr %i.deb, i64 8 ; 2 uses
  %i.ded = trunc i64 %i.ddi to i8
  %i.dee = or disjoint i8 %i.ded, 2
  %i.def = add nuw nsw i64 %.sroa.077.1.idx.i.i582, 4
  %i.deg = add nuw nsw i64 %i.def, %.sroa.077.1.idx.i.i582.1
  %i.deh = icmp samesign eq i64 %i.deg, %.idx454.i.i533 ; 2 uses
  %.sroa.077.1.idx.i.i582.2 = select i1 %i.deh, i64 0, i64 4
  %i.dei = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dej = icmp samesign ult i64 %i.dei, %i.ckx
  %i.dek = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.dei
  %i.del = getelementptr inbounds nuw i8, ptr %i.dek, i64 12 ; 2 uses
  %i.dem = trunc i64 %i.ddi to i8
  %i.den = or disjoint i8 %i.dem, 3
  %i.deo = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dep = icmp samesign ult i64 %i.deo, %i.ckx
  %i.deq = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.deo
  %i.der = getelementptr inbounds nuw i8, ptr %i.deq, i64 16 ; 2 uses
  %i.des = trunc i64 %i.ddi to i8
  %i.det = or disjoint i8 %i.des, 4
  %i.deu = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dev = icmp samesign ult i64 %i.deu, %i.ckx
  %i.dew = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.deu
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dew, i64 20 ; 2 uses
  %i.dey = trunc i64 %i.ddi to i8
  %i.dez = or disjoint i8 %i.dey, 5
  %i.dfa = lshr i64 %.sroa.0.0429.i493, 3         ; 3 uses
  %i.dfb = icmp samesign ult i64 %i.dfa, %i.ckx
  %i.dfc = getelementptr inbounds nuw [32 x i8], ptr %i.cle, i64 %i.dfa
  %i.dfd = getelementptr inbounds nuw i8, ptr %i.dfc, i64 24 ; 2 uses
  %i.dfe = trunc i64 %i.ddi to i8
  %i.dff = or disjoint i8 %i.dfe, 6
  %i.dfg = add i64 %.idx453.i.i531, -32
  %i.dfh = lshr exact i64 %i.dfg, 5
  br label %.lr.ph434.split.i.i534

.lr.ph434.split.us.i.i971:                        ; preds = %.lr.ph434.i.i527
  %i.dfi = load i16, ptr %i.cfj, align 2, !alias.scope !35498, !noalias !35499, !noundef !45
  %i.dfj = zext i16 %i.dfi to i64
  %i.dfk = mul nuw nsw i64 %.sroa.0.0429.i493, %i.dfj
  %.not130.us.i.i972 = icmp ugt i64 %i.dfk, %i.cky
  br i1 %.not130.us.i.i972, label %.split438.us.i.i970, label %.split440.us.i.i973, !prof !47

.split440.us.i.i973:                              ; preds = %.lr.ph434.split.us.i.i971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35500
  br label %.split440.us.i.invoke.i544

.split440.us.i.invoke.i544:                       ; preds = %bb.tk, %bb.ti, %bb.sj, %bb.sh, %.split438.us.i.i970, %.split440.us.i.i973
  %.sink.i545.sroa.phi = phi ptr [ %.sink.i545.sroa.gep, %bb.tk ], [ %.sink.i545.sroa.gep66, %bb.ti ], [ %.sink.i545.sroa.gep67, %bb.sj ], [ %.sink.i545.sroa.gep68, %bb.sh ], [ %.sink.i545.sroa.gep69, %.split438.us.i.i970 ], [ %.sink.i545.sroa.gep70, %.split440.us.i.i973 ]
  %.sink.i545.sroa.phi71 = phi ptr [ %.sink.i545.sroa.gep72, %bb.tk ], [ %.sink.i545.sroa.gep73, %bb.ti ], [ %.sink.i545.sroa.gep74, %bb.sj ], [ %.sink.i545.sroa.gep75, %bb.sh ], [ %.sink.i545.sroa.gep76, %.split438.us.i.i970 ], [ %.sink.i545.sroa.gep77, %.split440.us.i.i973 ]
  %.sink.i545.sroa.phi78 = phi ptr [ %.sink.i545.sroa.gep79, %bb.tk ], [ %.sink.i545.sroa.gep80, %bb.ti ], [ %.sink.i545.sroa.gep81, %bb.sj ], [ %.sink.i545.sroa.gep82, %bb.sh ], [ %.sink.i545.sroa.gep83, %.split438.us.i.i970 ], [ %.sink.i545.sroa.gep84, %.split440.us.i.i973 ]
  %.sink.i545.sroa.phi85 = phi ptr [ %.sink.i545.sroa.gep86, %bb.tk ], [ %.sink.i545.sroa.gep87, %bb.ti ], [ %.sink.i545.sroa.gep88, %bb.sj ], [ %.sink.i545.sroa.gep89, %bb.sh ], [ %.sink.i545.sroa.gep90, %.split438.us.i.i970 ], [ %.sink.i545.sroa.gep91, %.split440.us.i.i973 ]
  %.sink.i545 = phi ptr [ %i.b, %bb.tk ], [ %i.d, %bb.ti ], [ %i.a, %bb.sj ], [ %i.c, %bb.sh ], [ %i.f, %.split438.us.i.i970 ], [ %i.e, %.split440.us.i.i973 ] ; 2 uses
  %i.dfl = phi ptr [ @1539, %bb.tk ], [ @1538, %bb.ti ], [ @1536, %bb.sj ], [ @1535, %bb.sh ], [ @1533, %.split438.us.i.i970 ], [ @1534, %.split440.us.i.i973 ]
  store ptr @186, ptr %.sink.i545, align 8, !noalias !35500
  store i64 1, ptr %.sink.i545.sroa.phi, align 8, !noalias !35500
  store ptr null, ptr %.sink.i545.sroa.phi71, align 8, !noalias !35500
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i545.sroa.phi78, align 8, !noalias !35500
  store i64 0, ptr %.sink.i545.sroa.phi85, align 8, !noalias !35500
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i545, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfl) #43
          to label %.split440.us.i.cont.i546 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i517", !noalias !35387

.split440.us.i.cont.i546:                         ; preds = %.split440.us.i.invoke.i544
  unreachable

_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i614: ; preds = %bb.sm
  %i.dfm = icmp eq ptr %i.dfn, %i.clw
  br i1 %i.dfm, label %.lr.ph447.preheader.i.i615, label %.lr.ph434.split.i.i534

.lr.ph434.split.i.i534:                           ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i614, %.lr.ph434.split.preheader.i.i532
  %.sroa.0.0336432.i.i535 = phi ptr [ %i.dfn, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i614 ], [ %i.cfj, %.lr.ph434.split.preheader.i.i532 ] ; 2 uses
  %.sroa.7.0431.i.i536 = phi i64 [ %i.dfo, %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i614 ], [ 0, %.lr.ph434.split.preheader.i.i532 ] ; 7 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %.sroa.0.0336432.i.i535, i64 2 ; 2 uses
  %i.dfo = add nuw nsw i64 %.sroa.7.0431.i.i536, 1
  %exitcond487.not.i.i537 = icmp eq i64 %.sroa.7.0431.i.i536, %.sroa.01.1
  br i1 %exitcond487.not.i.i537, label %.invoke.i516, label %bb.sf

.lr.ph447.preheader.i.i615:                       ; preds = %_ZN6brotli3enc14block_splitter22update_cost_and_signal17h81de535e3596d66fE.exit.loopexit.i.i614
  %i.dfp = load i8, ptr %i.cly, align 1, !alias.scope !35491, !noalias !35492, !noundef !45
  %i.dfq = mul i64 %i.dcp, %i.clx
  br label %.lr.ph447.i.i616

.lr.ph447.i.i616:                                 ; preds = %bb.se, %.lr.ph447.preheader.i.i615
  %.sroa.03.0446.i.i617 = phi i64 [ %.sroa.03.1.i.i624, %bb.se ], [ 1, %.lr.ph447.preheader.i.i615 ] ; 2 uses
  %.sroa.052.0445.i.i618 = phi i64 [ %i.dfr, %bb.se ], [ %i.clx, %.lr.ph447.preheader.i.i615 ]
  %.sroa.059.0444.i.i619 = phi i64 [ %i.dfs, %bb.se ], [ %i.dfq, %.lr.ph447.preheader.i.i615 ]
  %.sroa.061.0443.i.i620 = phi i8 [ %.sroa.061.1.i.i623, %bb.se ], [ %i.dfp, %.lr.ph447.preheader.i.i615 ] ; 4 uses
  %i.dfr = add nsw i64 %.sroa.052.0445.i.i618, -1 ; 4 uses
  %i.dfs = sub i64 %.sroa.059.0444.i.i619, %i.dcp ; 2 uses
  %i.dft = lshr i8 %.sroa.061.0443.i.i620, 3
  %i.dfu = zext nneg i8 %i.dft to i64
  %i.dfv = add i64 %i.dfs, %i.dfu                 ; 3 uses
  %i.dfw = icmp ult i64 %i.dfv, %i.clj
  br i1 %i.dfw, label %bb.sc, label %.invoke.i516

bb.sc:                                            ; preds = %.lr.ph447.i.i616
  %i.dfx = and i8 %.sroa.061.0443.i.i620, 7
  %i.dfy = shl nuw i8 1, %i.dfx
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.clq, i64 %i.dfv
  %i.dga = load i8, ptr %i.dfz, align 1, !alias.scope !35490, !noalias !35497, !noundef !45
  %i.dgb = and i8 %i.dga, %i.dfy
  %i.dgc = icmp eq i8 %i.dgb, 0
  br i1 %i.dgc, label %bb.se, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dgd = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.dfr
  %i.dge = load i8, ptr %i.dgd, align 1, !alias.scope !35491, !noalias !35492, !noundef !45 ; 2 uses
  %.not129.i.i621 = icmp ne i8 %.sroa.061.0443.i.i620, %i.dge
  %i.dgf = zext i1 %.not129.i.i621 to i64
  %spec.select137.i.i622 = add i64 %.sroa.03.0446.i.i617, %i.dgf
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.061.1.i.i623 = phi i8 [ %.sroa.061.0443.i.i620, %bb.sc ], [ %i.dge, %bb.sd ] ; 2 uses
  %.sroa.03.1.i.i624 = phi i64 [ %.sroa.03.0446.i.i617, %bb.sc ], [ %spec.select137.i.i622, %bb.sd ] ; 2 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.cku, i64 %i.dfr
  store i8 %.sroa.061.1.i.i623, ptr %i.dgg, align 1, !alias.scope !35491, !noalias !35492
  %.not128.i.i625 = icmp eq i64 %i.dfr, 0
  br i1 %.not128.i.i625, label %.loopexit.i626, label %.lr.ph447.i.i616

bb.sf:                                            ; preds = %.lr.ph434.split.i.i534
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.cku, i64 %.sroa.7.0431.i.i536 ; 15 uses
  %i.dgi = mul i64 %.sroa.7.0431.i.i536, %i.dcp   ; 3 uses
  %i.dgj = load i16, ptr %.sroa.0.0336432.i.i535, align 2, !alias.scope !35498, !noalias !35499, !noundef !45
  %i.dgk = zext i16 %i.dgj to i64
  %i.dgl = mul nuw nsw i64 %.sroa.0.0429.i493, %i.dgk ; 4 uses
  %.not130.i.i538 = icmp ugt i64 %i.dgl, %i.cky
  br i1 %.not130.i.i538, label %.split438.us.i.i970, label %bb.sg, !prof !47

.split438.us.i.i970:                              ; preds = %bb.sf, %.lr.ph434.split.us.i.i971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35500
  br label %.split440.us.i.invoke.i544

bb.sg:                                            ; preds = %bb.sf
  %i.dgm = getelementptr inbounds nuw [4 x i8], ptr %i.cla, i64 %i.dgl
  %i.dgn = sub nuw nsw i64 %i.cky, %i.dgl         ; 2 uses
  br i1 %i.ddh, label %._crit_edge416.i.i570, label %.lr.ph415.i.i539

.lr.ph415.i.i539:                                 ; preds = %bb.sg, %bb.ub
  %.sroa.029.0413.i.i540 = phi float [ %.sroa.029.4.7.i.i569, %bb.ub ], [ f0x7E967699, %bb.sg ] ; 2 uses
  %.sroa.0164.0412.i.i541 = phi ptr [ %i.dgo, %bb.ub ], [ %i.cle, %bb.sg ] ; 10 uses
  %.sroa.7166.0411.i.i542 = phi i64 [ %i.dgp, %bb.ub ], [ 0, %bb.sg ] ; 2 uses
  %i.dgo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i541, i64 32 ; 2 uses
  %i.dgp = add nuw nsw i64 %.sroa.7166.0411.i.i542, 1
  %i.dgq = shl nuw nsw i64 %.sroa.7166.0411.i.i542, 3 ; 11 uses
  %.not136.i.i543 = icmp samesign ugt i64 %i.dgq, %i.dgn
  br i1 %.not136.i.i543, label %bb.ti, label %bb.tj, !prof !47

._crit_edge416.i.i570:                            ; preds = %bb.ub, %bb.sg
  %.sroa.029.0.lcssa.i.i571 = phi float [ f0x7E967699, %bb.sg ], [ %.sroa.029.4.7.i.i569, %bb.ub ] ; 3 uses
  %i.dgr = add nuw nsw i64 %i.dgl, %i.ddi         ; 3 uses
  %.not133.i.i572 = icmp ugt i64 %i.dgr, %i.cky
  br i1 %.not133.i.i572, label %bb.sh, label %bb.si, !prof !47

bb.sh:                                            ; preds = %._crit_edge416.i.i570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35500
  br label %.split440.us.i.invoke.i544

bb.si:                                            ; preds = %._crit_edge416.i.i570
  %i.dgs = sub nuw nsw i64 %i.cky, %i.dgr
  %.not134.i.i573 = icmp samesign ugt i64 %i.ddj, %i.dgs
  br i1 %.not134.i.i573, label %bb.sj, label %bb.sk, !prof !47

bb.sj:                                            ; preds = %bb.si
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35500
  br label %.split440.us.i.invoke.i544

bb.sk:                                            ; preds = %bb.si
  %i.dgt = getelementptr inbounds nuw [4 x i8], ptr %i.cla, i64 %i.dgr ; 3 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 %.idx454.i.i533 ; 3 uses
  br i1 %i.ddl, label %._crit_edge425.i.i584, label %.lr.ph424.preheader.i.i574

.lr.ph424.preheader.i.i574:                       ; preds = %bb.sk
  %.sroa.077.1418.i.i575 = getelementptr inbounds nuw i8, ptr %i.dgt, i64 4 ; 2 uses
  br i1 %i.ddn, label %bb.so, label %.invoke.i516

._crit_edge425.i.i584:                            ; preds = %bb.tf, %bb.tg, %bb.sp, %bb.ss, %bb.sv, %bb.sy, %bb.tb, %bb.te, %bb.sk
  %.sroa.029.1.lcssa.i.i585 = phi float [ %.sroa.029.0.lcssa.i.i571, %bb.sk ], [ %.sroa.029.2.i.i581, %bb.sp ], [ %.sroa.029.2.i.i581.1, %bb.ss ], [ %.sroa.029.2.i.i581.2, %bb.sv ], [ %.sroa.029.2.i.i581.3, %bb.sy ], [ %.sroa.029.2.i.i581.4, %bb.tb ], [ %.sroa.029.2.i.i581.5, %bb.te ], [ %i.dpn, %bb.tg ], [ %.sroa.029.2.i.i581.5, %bb.tf ] ; 2 uses
  %i.dgv = icmp samesign ult i64 %.sroa.7.0431.i.i536, 2000
  br i1 %i.dgv, label %bb.sn, label %bb.sl

bb.sl:                                            ; preds = %bb.sn, %._crit_edge425.i.i584
  %.sroa.032.0.i.i586 = phi float [ %i.doj, %bb.sn ], [ 1.460000e+01, %._crit_edge425.i.i584 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35501)
  br i1 %.not.i.i181.i530, label %.invoke1143.i968, label %.lr.ph430.i.i587.preheader, !prof !87

.lr.ph430.i.i587.preheader:                       ; preds = %bb.sl
  %i.dgw = call i64 @llvm.umax.i64(i64 %i.dgi, i64 %i.clj)
  %12 = mul i64 %i.dcp, %.sroa.7.0431.i.i536
  %i.dgx = sub i64 %i.dgw, %12
  %i.dgy = call i64 @llvm.umin.i64(i64 %i.dfh, i64 %i.dgx) ; 2 uses
  %min.iters.check3636 = icmp samesign ult i64 %i.dgy, 4
  br i1 %min.iters.check3636, label %.lr.ph430.i.i587.preheader3859, label %vector.ph3637

vector.ph3637:                                    ; preds = %.lr.ph430.i.i587.preheader
  %i.dgz = add nuw nsw i64 %i.dgy, 1              ; 2 uses
  %i.dha = and i64 %i.dgz, 3                      ; 2 uses
  %i.dhb = icmp eq i64 %i.dha, 0
  %i.dhc = select i1 %i.dhb, i64 4, i64 %i.dha
  %n.vec3638 = sub nsw i64 %i.dgz, %i.dhc         ; 3 uses
  %i.dhd = shl i64 %n.vec3638, 5
  %i.dhe = getelementptr i8, ptr %i.cle, i64 %i.dhd
  %broadcast.splatinsert3639 = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i585, i64 0
  %broadcast.splat3640 = shufflevector <4 x float> %broadcast.splatinsert3639, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert3641 = insertelement <4 x float> poison, float %.sroa.032.0.i.i586, i64 0 ; 5 uses
  %broadcast.splat3642 = shufflevector <4 x float> %broadcast.splatinsert3641, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep4922 = getelementptr i8, ptr %i.clq, i64 %i.dgi
  %i.dhf = shufflevector <4 x float> %broadcast.splatinsert3641, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dhg = shufflevector <4 x float> %broadcast.splatinsert3641, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dhh = shufflevector <4 x float> %broadcast.splatinsert3641, <4 x float> poison, <16 x i32> zeroinitializer
  %i.dhi = shufflevector <4 x float> %broadcast.splatinsert3641, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body3643

vector.body3643:                                  ; preds = %vector.body3643, %vector.ph3637
  %index3644 = phi i64 [ 0, %vector.ph3637 ], [ %index.next3651, %vector.body3643 ] ; 3 uses
  %i.dhj = shl i64 %index3644, 5                  ; 4 uses
  %next.gep3645 = getelementptr i8, ptr %i.cle, i64 %i.dhj ; 9 uses
  %i.dhk = getelementptr i8, ptr %i.cle, i64 %i.dhj ; 8 uses
  %next.gep3646 = getelementptr i8, ptr %i.dhk, i64 32
  %i.dhl = getelementptr i8, ptr %i.cle, i64 %i.dhj ; 8 uses
  %next.gep3647 = getelementptr i8, ptr %i.dhl, i64 64
  %i.dhm = getelementptr i8, ptr %i.cle, i64 %i.dhj ; 8 uses
  %next.gep3648 = getelementptr i8, ptr %i.dhm, i64 96
  %i.dhn = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 4
  %i.dho = getelementptr i8, ptr %i.dhk, i64 36
  %i.dhp = getelementptr i8, ptr %i.dhl, i64 68
  %i.dhq = getelementptr i8, ptr %i.dhm, i64 100
  %i.dhr = load float, ptr %i.dhn, align 4, !alias.scope !35489, !noalias !35502
  %i.dhs = load float, ptr %i.dho, align 4, !alias.scope !35489, !noalias !35502
  %i.dht = load float, ptr %i.dhp, align 4, !alias.scope !35489, !noalias !35502
  %i.dhu = load float, ptr %i.dhq, align 4, !alias.scope !35489, !noalias !35502
  %i.dhv = insertelement <4 x float> poison, float %i.dhr, i64 0
  %i.dhw = insertelement <4 x float> %i.dhv, float %i.dhs, i64 1
  %i.dhx = insertelement <4 x float> %i.dhw, float %i.dht, i64 2
  %i.dhy = insertelement <4 x float> %i.dhx, float %i.dhu, i64 3
  %i.dhz = fsub <4 x float> %i.dhy, %broadcast.splat3640 ; 3 uses
  %i.dia = fcmp oge <4 x float> %i.dhz, %broadcast.splat3642
  %i.dib = select <4 x i1> %i.dia, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.dic = load float, ptr %next.gep3645, align 4, !alias.scope !35489, !noalias !35502
  %i.did = load float, ptr %next.gep3646, align 4, !alias.scope !35489, !noalias !35502
  %i.die = load float, ptr %next.gep3647, align 4, !alias.scope !35489, !noalias !35502
  %i.dif = load float, ptr %next.gep3648, align 4, !alias.scope !35489, !noalias !35502
  %i.dig = insertelement <4 x float> poison, float %i.dic, i64 0
  %i.dih = insertelement <4 x float> %i.dig, float %i.did, i64 1
  %i.dii = insertelement <4 x float> %i.dih, float %i.die, i64 2
  %i.dij = insertelement <4 x float> %i.dii, float %i.dif, i64 3
  %i.dik = fsub <4 x float> %i.dij, %broadcast.splat3640 ; 3 uses
  %i.dil = fcmp oge <4 x float> %i.dik, %broadcast.splat3642
  %i.dim = zext <4 x i1> %i.dil to <4 x i8>
  %i.din = or disjoint <4 x i8> %i.dib, %i.dim
  %i.dio = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 8
  %i.dip = getelementptr i8, ptr %i.dhk, i64 40
  %i.diq = getelementptr i8, ptr %i.dhl, i64 72
  %i.dir = getelementptr i8, ptr %i.dhm, i64 104
  %i.dis = load float, ptr %i.dio, align 4, !alias.scope !35489, !noalias !35502
  %i.dit = load float, ptr %i.dip, align 4, !alias.scope !35489, !noalias !35502
  %i.diu = load float, ptr %i.diq, align 4, !alias.scope !35489, !noalias !35502
  %i.div = load float, ptr %i.dir, align 4, !alias.scope !35489, !noalias !35502
  %i.diw = insertelement <4 x float> poison, float %i.dis, i64 0
  %i.dix = insertelement <4 x float> %i.diw, float %i.dit, i64 1
  %i.diy = insertelement <4 x float> %i.dix, float %i.diu, i64 2
  %i.diz = insertelement <4 x float> %i.diy, float %i.div, i64 3
  %i.dja = fsub <4 x float> %i.diz, %broadcast.splat3640 ; 3 uses
  %i.djb = fcmp oge <4 x float> %i.dja, %broadcast.splat3642
  %i.djc = select <4 x i1> %i.djb, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.djd = or disjoint <4 x i8> %i.din, %i.djc
  %i.dje = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 12
  %i.djf = getelementptr i8, ptr %i.dhk, i64 44
  %i.djg = getelementptr i8, ptr %i.dhl, i64 76
  %i.djh = getelementptr i8, ptr %i.dhm, i64 108
  %i.dji = load float, ptr %i.dje, align 4, !alias.scope !35489, !noalias !35502
  %i.djj = load float, ptr %i.djf, align 4, !alias.scope !35489, !noalias !35502
  %i.djk = load float, ptr %i.djg, align 4, !alias.scope !35489, !noalias !35502
  %i.djl = load float, ptr %i.djh, align 4, !alias.scope !35489, !noalias !35502
  %i.djm = insertelement <4 x float> poison, float %i.dji, i64 0
  %i.djn = insertelement <4 x float> %i.djm, float %i.djj, i64 1
  %i.djo = insertelement <4 x float> %i.djn, float %i.djk, i64 2
  %i.djp = insertelement <4 x float> %i.djo, float %i.djl, i64 3
  %i.djq = fsub <4 x float> %i.djp, %broadcast.splat3640 ; 3 uses
  %i.djr = fcmp oge <4 x float> %i.djq, %broadcast.splat3642
  %i.djs = select <4 x i1> %i.djr, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.djt = or disjoint <4 x i8> %i.djd, %i.djs
  %i.dju = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 16
  %i.djv = getelementptr i8, ptr %i.dhk, i64 48
  %i.djw = getelementptr i8, ptr %i.dhl, i64 80
  %i.djx = getelementptr i8, ptr %i.dhm, i64 112
  %i.djy = load float, ptr %i.dju, align 4, !alias.scope !35489, !noalias !35502
  %i.djz = load float, ptr %i.djv, align 4, !alias.scope !35489, !noalias !35502
  %i.dka = load float, ptr %i.djw, align 4, !alias.scope !35489, !noalias !35502
  %i.dkb = load float, ptr %i.djx, align 4, !alias.scope !35489, !noalias !35502
  %i.dkc = insertelement <4 x float> poison, float %i.djy, i64 0
  %i.dkd = insertelement <4 x float> %i.dkc, float %i.djz, i64 1
  %i.dke = insertelement <4 x float> %i.dkd, float %i.dka, i64 2
  %i.dkf = insertelement <4 x float> %i.dke, float %i.dkb, i64 3
  %i.dkg = fsub <4 x float> %i.dkf, %broadcast.splat3640 ; 3 uses
  %i.dkh = fcmp oge <4 x float> %i.dkg, %broadcast.splat3642
  %i.dki = select <4 x i1> %i.dkh, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.dkj = or disjoint <4 x i8> %i.djt, %i.dki
  %i.dkk = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 20
  %i.dkl = getelementptr i8, ptr %i.dhk, i64 52
  %i.dkm = getelementptr i8, ptr %i.dhl, i64 84
  %i.dkn = getelementptr i8, ptr %i.dhm, i64 116
  %i.dko = load float, ptr %i.dkk, align 4, !alias.scope !35489, !noalias !35502
  %i.dkp = load float, ptr %i.dkl, align 4, !alias.scope !35489, !noalias !35502
  %i.dkq = load float, ptr %i.dkm, align 4, !alias.scope !35489, !noalias !35502
  %i.dkr = load float, ptr %i.dkn, align 4, !alias.scope !35489, !noalias !35502
  %i.dks = insertelement <4 x float> poison, float %i.dko, i64 0
  %i.dkt = insertelement <4 x float> %i.dks, float %i.dkp, i64 1
  %i.dku = insertelement <4 x float> %i.dkt, float %i.dkq, i64 2
  %i.dkv = insertelement <4 x float> %i.dku, float %i.dkr, i64 3
  %i.dkw = fsub <4 x float> %i.dkv, %broadcast.splat3640 ; 3 uses
  %i.dkx = fcmp oge <4 x float> %i.dkw, %broadcast.splat3642
  %i.dky = select <4 x i1> %i.dkx, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.dkz = or disjoint <4 x i8> %i.dkj, %i.dky
  %i.dla = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 24
  %i.dlb = getelementptr i8, ptr %i.dhk, i64 56
  %i.dlc = getelementptr i8, ptr %i.dhl, i64 88
  %i.dld = getelementptr i8, ptr %i.dhm, i64 120
  %i.dle = load float, ptr %i.dla, align 4, !alias.scope !35489, !noalias !35502
  %i.dlf = load float, ptr %i.dlb, align 4, !alias.scope !35489, !noalias !35502
  %i.dlg = load float, ptr %i.dlc, align 4, !alias.scope !35489, !noalias !35502
  %i.dlh = load float, ptr %i.dld, align 4, !alias.scope !35489, !noalias !35502
  %i.dli = insertelement <4 x float> poison, float %i.dle, i64 0
  %i.dlj = insertelement <4 x float> %i.dli, float %i.dlf, i64 1
  %i.dlk = insertelement <4 x float> %i.dlj, float %i.dlg, i64 2
  %i.dll = insertelement <4 x float> %i.dlk, float %i.dlh, i64 3
  %i.dlm = fsub <4 x float> %i.dll, %broadcast.splat3640 ; 3 uses
  %i.dln = fcmp oge <4 x float> %i.dlm, %broadcast.splat3642
  %i.dlo = select <4 x i1> %i.dln, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.dlp = or disjoint <4 x i8> %i.dkz, %i.dlo
  %i.dlq = getelementptr inbounds nuw i8, ptr %next.gep3645, i64 28
  %i.dlr = getelementptr i8, ptr %i.dhk, i64 60
  %i.dls = getelementptr i8, ptr %i.dhl, i64 92
  %i.dlt = getelementptr i8, ptr %i.dhm, i64 124
  %i.dlu = load float, ptr %i.dlq, align 4, !alias.scope !35489, !noalias !35502
  %i.dlv = load float, ptr %i.dlr, align 4, !alias.scope !35489, !noalias !35502
  %i.dlw = load float, ptr %i.dls, align 4, !alias.scope !35489, !noalias !35502
  %i.dlx = load float, ptr %i.dlt, align 4, !alias.scope !35489, !noalias !35502
  %i.dly = insertelement <4 x float> poison, float %i.dlu, i64 0
  %i.dlz = insertelement <4 x float> %i.dly, float %i.dlv, i64 1
  %i.dma = insertelement <4 x float> %i.dlz, float %i.dlw, i64 2
  %i.dmb = insertelement <4 x float> %i.dma, float %i.dlx, i64 3
  %i.dmc = fsub <4 x float> %i.dmb, %broadcast.splat3640 ; 3 uses
  %i.dmd = fcmp oge <4 x float> %i.dmc, %broadcast.splat3642
  %i.dme = select <4 x i1> %i.dmd, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.dmf = add nuw <4 x i8> %i.dlp, %i.dme
  %gep4923 = getelementptr i8, ptr %invariant.gep4922, i64 %index3644 ; 2 uses
  %wide.load3649 = load <4 x i8>, ptr %gep4923, align 1, !alias.scope !35503, !noalias !35504
  %i.dmg = or <4 x i8> %i.dmf, %wide.load3649
  store <4 x i8> %i.dmg, ptr %gep4923, align 1, !alias.scope !35503, !noalias !35504
  %i.dmh = shufflevector <4 x float> %i.dik, <4 x float> %i.dhz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmi = shufflevector <4 x float> %i.dja, <4 x float> %i.djq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmj = shufflevector <8 x float> %i.dmh, <8 x float> %i.dmi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dmk = fcmp olt <16 x float> %i.dmj, %i.dhf
  %i.dml = shufflevector <4 x float> %i.dik, <4 x float> %i.dhz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmm = shufflevector <4 x float> %i.dja, <4 x float> %i.djq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmn = shufflevector <8 x float> %i.dml, <8 x float> %i.dmm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dmo = select <16 x i1> %i.dmk, <16 x float> %i.dmn, <16 x float> %i.dhg
  %i.dmp = shufflevector <4 x float> %i.dkg, <4 x float> %i.dkw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmq = shufflevector <4 x float> %i.dlm, <4 x float> %i.dmc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmr = shufflevector <8 x float> %i.dmp, <8 x float> %i.dmq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dms = fcmp olt <16 x float> %i.dmr, %i.dhh
  %i.dmt = shufflevector <4 x float> %i.dkg, <4 x float> %i.dkw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmu = shufflevector <4 x float> %i.dlm, <4 x float> %i.dmc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dmv = shufflevector <8 x float> %i.dmt, <8 x float> %i.dmu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dmw = select <16 x i1> %i.dms, <16 x float> %i.dmv, <16 x float> %i.dhi
  %interleaved.vec3650 = shufflevector <16 x float> %i.dmo, <16 x float> %i.dmw, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3650, ptr %next.gep3645, align 4, !alias.scope !35489, !noalias !35502
  %index.next3651 = add nuw i64 %index3644, 4     ; 2 uses
  %i.dmx = icmp eq i64 %index.next3651, %n.vec3638
  br i1 %i.dmx, label %.lr.ph430.i.i587.preheader3859, label %vector.body3643, !llvm.loop !35062

.lr.ph430.i.i587.preheader3859:                   ; preds = %vector.body3643, %.lr.ph430.i.i587.preheader
  %.sroa.0187.0428.i.i588.ph = phi ptr [ %i.cle, %.lr.ph430.i.i587.preheader ], [ %i.dhe, %vector.body3643 ]
  %.sroa.7189.0427.i.i589.ph = phi i64 [ 0, %.lr.ph430.i.i587.preheader ], [ %n.vec3638, %vector.body3643 ]
  %i.dmy = insertelement <4 x float> poison, float %.sroa.029.1.lcssa.i.i585, i64 0
  %i.dmz = shufflevector <4 x float> %i.dmy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dna = insertelement <4 x float> poison, float %.sroa.032.0.i.i586, i64 0
  %i.dnb = shufflevector <4 x float> %i.dna, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph430.i.i587

.lr.ph430.i.i587:                                 ; preds = %.lr.ph430.i.i587.preheader3859, %bb.sm
  %.sroa.0187.0428.i.i588 = phi ptr [ %i.dnf, %bb.sm ], [ %.sroa.0187.0428.i.i588.ph, %.lr.ph430.i.i587.preheader3859 ] ; 4 uses
  %.sroa.7189.0427.i.i589 = phi i64 [ %i.dne, %bb.sm ], [ %.sroa.7189.0427.i.i589.ph, %.lr.ph430.i.i587.preheader3859 ] ; 2 uses
  %i.dnc = add nuw i64 %.sroa.7189.0427.i.i589, %i.dgi ; 3 uses
  %i.dnd = icmp ult i64 %i.dnc, %i.clj
  br i1 %i.dnd, label %bb.sm, label %.invoke.i516

bb.sm:                                            ; preds = %.lr.ph430.i.i587
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h357bcc83faeb8dfbE:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !38924
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !38924, !noundef !45
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !38924, !noundef !45
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !38924
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !38924, !noundef !45
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !38924, !noundef !45
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !38924
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !38924, !noundef !45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !38924, !noundef !45
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !38924
  %exitcond.not.i.3 = icmp eq i64 %i.br, 704
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit, label %scalar.ph361, !llvm.loop !38917

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit: ; preds = %vector.body363, %scalar.ph361
  %i.bx = load float, ptr %i.j, align 4, !noundef !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 2824
  store float %i.bx, ptr %i.by, align 8, !alias.scope !38931
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h8ccdc31e791fac2aE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1888) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !45
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check336, label %.lr.ph65.preheader372, label %vector.ph337

.lr.ph65.preheader372:                            ; preds = %pred.store.continue356, %.lr.ph65.preheader
  %.ph373 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue356 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec338, %pred.store.continue356 ]
  br label %.lr.ph65

vector.ph337:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %pred.store.continue356, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next357, %pred.store.continue356 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load341 = load <4 x i32>, ptr %i.cg, align 4
  %wide.load342 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load341, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load342, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body339
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body339
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if343.a, label %pred.store.continue344.a

pred.store.if343.a:                               ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue344.a

pred.store.continue344.a:                         ; preds = %pred.store.if343.a, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if345.a, label %pred.store.continue346.a

pred.store.if345.a:                               ; preds = %pred.store.continue344.a
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue346.a

pred.store.continue346.a:                         ; preds = %pred.store.if345.a, %pred.store.continue344.a
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if347.a, label %pred.store.continue348.a

pred.store.if347.a:                               ; preds = %pred.store.continue346.a
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue348.a

pred.store.continue348.a:                         ; preds = %pred.store.if347.a, %pred.store.continue346.a
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if349.a, label %pred.store.continue350.a

pred.store.if349.a:                               ; preds = %pred.store.continue348.a
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue350.a

pred.store.continue350.a:                         ; preds = %pred.store.if349.a, %pred.store.continue348.a
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if351.a, label %pred.store.continue352.a

pred.store.if351.a:                               ; preds = %pred.store.continue350.a
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue352.a

pred.store.continue352.a:                         ; preds = %pred.store.if351.a, %pred.store.continue350.a
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if353.a, label %pred.store.continue354.a

pred.store.if353.a:                               ; preds = %pred.store.continue352.a
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue354.a

pred.store.continue354.a:                         ; preds = %pred.store.if353.a, %pred.store.continue352.a
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354.a
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354.a
  %index.next357 = add nuw i64 %index340, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next357, %n.vec338
  br i1 %i.dg, label %.lr.ph65.preheader372, label %vector.body339, !llvm.loop !38920

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader372, %bb.ai
  %i.dh = phi i64 [ %i.fk, %bb.ai ], [ %.ph373, %.lr.ph65.preheader372 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader372 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !45 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !45
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %i.dq = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %14 = xor i64 %.sroa.016.066, -1
  %i.dr = add i64 %i.dq, %14
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dr)
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dt, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.du = and i64 %i.dt, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec = sub i64 %i.dt, %i.dw                   ; 3 uses
  %i.dx = add i64 %n.vec, 1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <4 x i32>, ptr %i.dz, align 4
  %wide.load331 = load <4 x i32>, ptr %i.ea, align 4
  %i.eb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %wide.load, ptr %i.eb, align 4
  store <4 x i32> %wide.load331, ptr %i.ec, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.body, !llvm.loop !38921

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dx, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ee = phi i64 [ %i.fg, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ee, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ef = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %7
  br i1 %i.eg, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fd, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.eh = phi i64 [ %i.ek, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.eh, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.eh, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.ej = load i32, ptr %i.ei, align 4, !noundef !45
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h32e3a6562c56f671E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.ej, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ek = add i64 %i.eh, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ek, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1891) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.el, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.em, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.eo = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.eo, %i.en
  %i.ep = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.ep, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = load float, ptr %i.h, align 4, !noundef !45 ; 2 uses
  %i.er = fcmp une float %i.eq, %.sroa.546.0.copyload
  br i1 %i.er, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.es = fcmp ogt float %i.eq, %.sroa.546.0.copyload
  br i1 %i.es, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.et = load i32, ptr %i.i, align 4, !noundef !45
  %i.eu = load i32, ptr %8, align 4, !noundef !45
  %i.ev = sub i32 %i.et, %i.eu
  %i.ew = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ex = icmp ugt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ey = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ez, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1893) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.fa = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.fb = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.fa, %bb.z ] ; 2 uses
  %i.fd = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fd, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ef, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ef
  %i.ff = load i32, ptr %i.fe, align 4, !noundef !45
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.ff, ptr %gep, align 4
  %i.fg = add i64 %i.ee, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fg, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !38922

bb.ag:                                            ; preds = %.lr.ph65
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !45
  %i.fj = icmp eq i32 %i.fi, %i.aa
  br i1 %i.fj, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fk = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !38923

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.fh, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fl, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h74b2081842603b54E:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !38951
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !38951, !noundef !45
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !38951, !noundef !45
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !38951
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !38951, !noundef !45
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !38951, !noundef !45
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !38951
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !38951, !noundef !45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !38951, !noundef !45
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !38951
  %exitcond.not.i.3 = icmp eq i64 %i.br, 544
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit, label %scalar.ph361, !llvm.loop !38944

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit: ; preds = %vector.body363, %scalar.ph361
  %i.bx = load float, ptr %i.j, align 4, !noundef !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 2184
  store float %i.bx, ptr %i.by, align 8, !alias.scope !38958
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17hd0dab0cea3a04cb8E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1888) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !45
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check336, label %.lr.ph65.preheader372, label %vector.ph337

.lr.ph65.preheader372:                            ; preds = %pred.store.continue356, %.lr.ph65.preheader
  %.ph373 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue356 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec338, %pred.store.continue356 ]
  br label %.lr.ph65

vector.ph337:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %pred.store.continue356, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next357, %pred.store.continue356 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load341 = load <4 x i32>, ptr %i.cg, align 4
  %wide.load342 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load341, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load342, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body339
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body339
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if343.a, label %pred.store.continue344.a

pred.store.if343.a:                               ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue344.a

pred.store.continue344.a:                         ; preds = %pred.store.if343.a, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if345.a, label %pred.store.continue346.a

pred.store.if345.a:                               ; preds = %pred.store.continue344.a
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue346.a

pred.store.continue346.a:                         ; preds = %pred.store.if345.a, %pred.store.continue344.a
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if347.a, label %pred.store.continue348.a

pred.store.if347.a:                               ; preds = %pred.store.continue346.a
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue348.a

pred.store.continue348.a:                         ; preds = %pred.store.if347.a, %pred.store.continue346.a
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if349.a, label %pred.store.continue350.a

pred.store.if349.a:                               ; preds = %pred.store.continue348.a
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue350.a

pred.store.continue350.a:                         ; preds = %pred.store.if349.a, %pred.store.continue348.a
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if351.a, label %pred.store.continue352.a

pred.store.if351.a:                               ; preds = %pred.store.continue350.a
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue352.a

pred.store.continue352.a:                         ; preds = %pred.store.if351.a, %pred.store.continue350.a
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if353.a, label %pred.store.continue354.a

pred.store.if353.a:                               ; preds = %pred.store.continue352.a
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue354.a

pred.store.continue354.a:                         ; preds = %pred.store.if353.a, %pred.store.continue352.a
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354.a
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354.a
  %index.next357 = add nuw i64 %index340, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next357, %n.vec338
  br i1 %i.dg, label %.lr.ph65.preheader372, label %vector.body339, !llvm.loop !38947

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader372, %bb.ai
  %i.dh = phi i64 [ %i.fk, %bb.ai ], [ %.ph373, %.lr.ph65.preheader372 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader372 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !45 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !45
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %i.dq = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %14 = xor i64 %.sroa.016.066, -1
  %i.dr = add i64 %i.dq, %14
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dr)
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dt, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.du = and i64 %i.dt, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec = sub i64 %i.dt, %i.dw                   ; 3 uses
  %i.dx = add i64 %n.vec, 1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <4 x i32>, ptr %i.dz, align 4
  %wide.load331 = load <4 x i32>, ptr %i.ea, align 4
  %i.eb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %wide.load, ptr %i.eb, align 4
  store <4 x i32> %wide.load331, ptr %i.ec, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.body, !llvm.loop !38948

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dx, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ee = phi i64 [ %i.fg, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ee, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ef = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %7
  br i1 %i.eg, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fd, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.eh = phi i64 [ %i.ek, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.eh, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.eh, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.ej = load i32, ptr %i.ei, align 4, !noundef !45
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h766e51aa9200a005E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.ej, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ek = add i64 %i.eh, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ek, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1891) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.el, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.em, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.eo = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.eo, %i.en
  %i.ep = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.ep, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = load float, ptr %i.h, align 4, !noundef !45 ; 2 uses
  %i.er = fcmp une float %i.eq, %.sroa.546.0.copyload
  br i1 %i.er, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.es = fcmp ogt float %i.eq, %.sroa.546.0.copyload
  br i1 %i.es, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.et = load i32, ptr %i.i, align 4, !noundef !45
  %i.eu = load i32, ptr %8, align 4, !noundef !45
  %i.ev = sub i32 %i.et, %i.eu
  %i.ew = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ex = icmp ugt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ey = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ez, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1893) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.fa = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.fb = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.fa, %bb.z ] ; 2 uses
  %i.fd = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fd, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ef, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ef
  %i.ff = load i32, ptr %i.fe, align 4, !noundef !45
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.ff, ptr %gep, align 4
  %i.fg = add i64 %i.ee, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fg, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !38949

bb.ag:                                            ; preds = %.lr.ph65
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !45
  %i.fj = icmp eq i32 %i.fi, %i.aa
  br i1 %i.fj, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fk = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !38950

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.fh, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fl, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc7cluster22BrotliHistogramCombine17h927b250c66d009c4E:bb.a
  %i.be = add i32 %i.bd, %i.bb
  store i32 %i.be, ptr %i.ba, align 8, !alias.scope !38978
  %i.bf = or disjoint i64 %.sroa.01.09.i, 2       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.az ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !alias.scope !38978, !noundef !45
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.az
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !38978, !noundef !45
  %i.bk = add i32 %i.bj, %i.bh
  store i32 %i.bk, ptr %i.bg, align 4, !alias.scope !38978
  %i.bl = or disjoint i64 %.sroa.01.09.i, 3       ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bf ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !alias.scope !38978, !noundef !45
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bf
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !38978, !noundef !45
  %i.bq = add i32 %i.bp, %i.bn
  store i32 %i.bq, ptr %i.bm, align 8, !alias.scope !38978
  %i.br = add nuw nsw i64 %.sroa.01.09.i, 4       ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bl ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !38978, !noundef !45
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bv = load i32, ptr %i.bu, align 4, !alias.scope !38978, !noundef !45
  %i.bw = add i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bs, align 4, !alias.scope !38978
  %exitcond.not.i.3 = icmp eq i64 %i.br, 256
  br i1 %exitcond.not.i.3, label %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit, label %scalar.ph361, !llvm.loop !38971

_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit: ; preds = %vector.body363, %scalar.ph361
  %i.bx = load float, ptr %i.j, align 4, !noundef !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 1032
  store float %i.bx, ptr %i.by, align 8, !alias.scope !38985
  %i.bz = icmp ugt i64 %3, %i.ac
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit
  %i.ca = icmp ugt i64 %3, %i.ab
  br i1 %i.ca, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZN6brotli3enc9histogram25HistogramSelfAddHistogram17h7a5ec49492b6b3c9E.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1888) #43
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !45
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ab ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !noundef !45
  %i.cf = add i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %i.cd, align 4
  br i1 %.not85, label %.preheader.preheader, label %.lr.ph65.preheader

.preheader.preheader:                             ; preds = %bb.ai, %bb.j
  br label %.preheader

.lr.ph65.preheader:                               ; preds = %bb.j
  br i1 %min.iters.check336, label %.lr.ph65.preheader372, label %vector.ph337

.lr.ph65.preheader372:                            ; preds = %pred.store.continue356, %.lr.ph65.preheader
  %.ph373 = phi i64 [ 1, %.lr.ph65.preheader ], [ %i.s, %pred.store.continue356 ]
  %.sroa.059.064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec338, %pred.store.continue356 ]
  br label %.lr.ph65

vector.ph337:                                     ; preds = %.lr.ph65.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body339

vector.body339:                                   ; preds = %pred.store.continue356, %vector.ph337
  %index340 = phi i64 [ 0, %vector.ph337 ], [ %index.next357, %pred.store.continue356 ] ; 9 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load341 = load <4 x i32>, ptr %i.cg, align 4
  %wide.load342 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = icmp eq <4 x i32> %wide.load341, %broadcast.splat ; 4 uses
  %i.cj = icmp eq <4 x i32> %wide.load342, %broadcast.splat ; 4 uses
  %i.ck = extractelement <4 x i1> %i.ci, i64 0
  br i1 %i.ck, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body339
  store i32 %i.z, ptr %i.cg, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body339
  %i.cl = extractelement <4 x i1> %i.ci, i64 1
  br i1 %i.cl, label %pred.store.if343.a, label %pred.store.continue344.a

pred.store.if343.a:                               ; preds = %pred.store.continue
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.z, ptr %i.cn, align 4
  br label %pred.store.continue344.a

pred.store.continue344.a:                         ; preds = %pred.store.if343.a, %pred.store.continue
  %i.co = extractelement <4 x i1> %i.ci, i64 2
  br i1 %i.co, label %pred.store.if345.a, label %pred.store.continue346.a

pred.store.if345.a:                               ; preds = %pred.store.continue344.a
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i32 %i.z, ptr %i.cq, align 4
  br label %pred.store.continue346.a

pred.store.continue346.a:                         ; preds = %pred.store.if345.a, %pred.store.continue344.a
  %i.cr = extractelement <4 x i1> %i.ci, i64 3
  br i1 %i.cr, label %pred.store.if347.a, label %pred.store.continue348.a

pred.store.if347.a:                               ; preds = %pred.store.continue346.a
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 %i.z, ptr %i.ct, align 4
  br label %pred.store.continue348.a

pred.store.continue348.a:                         ; preds = %pred.store.if347.a, %pred.store.continue346.a
  %i.cu = extractelement <4 x i1> %i.cj, i64 0
  br i1 %i.cu, label %pred.store.if349.a, label %pred.store.continue350.a

pred.store.if349.a:                               ; preds = %pred.store.continue348.a
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i32 %i.z, ptr %i.cw, align 4
  br label %pred.store.continue350.a

pred.store.continue350.a:                         ; preds = %pred.store.if349.a, %pred.store.continue348.a
  %i.cx = extractelement <4 x i1> %i.cj, i64 1
  br i1 %i.cx, label %pred.store.if351.a, label %pred.store.continue352.a

pred.store.if351.a:                               ; preds = %pred.store.continue350.a
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  store i32 %i.z, ptr %i.cz, align 4
  br label %pred.store.continue352.a

pred.store.continue352.a:                         ; preds = %pred.store.if351.a, %pred.store.continue350.a
  %i.da = extractelement <4 x i1> %i.cj, i64 2
  br i1 %i.da, label %pred.store.if353.a, label %pred.store.continue354.a

pred.store.if353.a:                               ; preds = %pred.store.continue352.a
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %i.z, ptr %i.dc, align 4
  br label %pred.store.continue354.a

pred.store.continue354.a:                         ; preds = %pred.store.if353.a, %pred.store.continue352.a
  %i.dd = extractelement <4 x i1> %i.cj, i64 3
  br i1 %i.dd, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354.a
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index340
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  store i32 %i.z, ptr %i.df, align 4
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354.a
  %index.next357 = add nuw i64 %index340, 8       ; 2 uses
  %i.dg = icmp eq i64 %index.next357, %n.vec338
  br i1 %i.dg, label %.lr.ph65.preheader372, label %vector.body339, !llvm.loop !38974

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ab, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1889) #43
  unreachable

.lr.ph65:                                         ; preds = %.lr.ph65.preheader372, %bb.ai
  %i.dh = phi i64 [ %i.fk, %bb.ai ], [ %.ph373, %.lr.ph65.preheader372 ] ; 4 uses
  %.sroa.059.064 = phi i64 [ %i.dh, %bb.ai ], [ %.sroa.059.064.ph, %.lr.ph65.preheader372 ] ; 2 uses
  %exitcond153.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond153.not, label %bb.ah, label %bb.ag

.preheader:                                       ; preds = %.preheader.preheader, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ %.sroa.0.075, %.preheader.preheader ] ; 2 uses
  %.sroa.016.066 = phi i64 [ %.neg, %bb.n ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond155.not = icmp eq i64 %.sroa.016.066, %7
  br i1 %exitcond155.not, label %bb.m, label %bb.l

.loopexit1:                                       ; preds = %bb.n, %bb.af, %bb.o
  %i.di = add i64 %.sroa.0.075, -1                ; 2 uses
  %i.dj = load i64, ptr %i.b, align 8, !noundef !45 ; 2 uses
  %.not87 = icmp eq i64 %i.dj, 0
  br i1 %.not87, label %.lr.ph74.preheader, label %.lr.ph71

bb.l:                                             ; preds = %.preheader
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.016.066
  %i.dl = load i32, ptr %i.dk, align 4, !noundef !45
  %i.dm = icmp eq i32 %i.dl, %i.aa
  %.neg = add i64 %.sroa.016.066, 1               ; 2 uses
  %.not86 = icmp eq i64 %.sroa.0.075, %.neg       ; 2 uses
  br i1 %i.dm, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.preheader
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %7, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1890) #43
  unreachable

bb.n:                                             ; preds = %bb.l
  %indvars.iv.next = add i64 %indvars.iv, -1
  br i1 %.not86, label %.loopexit1, label %.preheader

bb.o:                                             ; preds = %bb.l
  br i1 %.not86, label %.loopexit1, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.o
  %i.dn = add nuw i64 %.sroa.016.066, 1           ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %6, i64 %.sroa.016.066 ; 2 uses
  %i.do = add i64 %indvar, %.sroa.016.066
  %i.dp = sub i64 %i.u, %i.do
  %i.dq = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.dn)
  %14 = xor i64 %.sroa.016.066, -1
  %i.dr = add i64 %i.dq, %14
  %i.ds = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dr)
  %i.dt = add i64 %i.ds, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.dt, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph68
  %i.du = and i64 %i.dt, 7                        ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  %i.dw = select i1 %i.dv, i64 8, i64 %i.du
  %n.vec = sub i64 %i.dt, %i.dw                   ; 3 uses
  %i.dx = add i64 %n.vec, 1
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <4 x i32>, ptr %i.dz, align 4
  %wide.load331 = load <4 x i32>, ptr %i.ea, align 4
  %i.eb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %wide.load, ptr %i.eb, align 4
  store <4 x i32> %wide.load331, ptr %i.ec, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %scalar.ph.preheader, label %vector.body, !llvm.loop !38975

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph68
  %.ph = phi i64 [ 1, %.lr.ph68 ], [ %i.dx, %vector.body ]
  %.sroa.061.067.ph = phi i64 [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %i.ee = phi i64 [ %i.fg, %bb.af ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.061.067 = phi i64 [ %i.ee, %bb.af ], [ %.sroa.061.067.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ef = add nuw i64 %i.dn, %.sroa.061.067       ; 3 uses
  %i.eg = icmp ult i64 %i.ef, %7
  br i1 %i.eg, label %bb.af, label %bb.ae

.lr.ph74.preheader:                               ; preds = %bb.ad, %.loopexit1
  %.sroa.031.0.lcssa = phi i64 [ 0, %.loopexit1 ], [ %.sroa.031.1, %bb.ad ]
  store i64 %.sroa.031.0.lcssa, ptr %i.b, align 8
  br label %.lr.ph74

.lr.ph71:                                         ; preds = %.loopexit1, %bb.ad
  %.sroa.016.170 = phi i64 [ %i.fd, %bb.ad ], [ 0, %.loopexit1 ] ; 3 uses
  %.sroa.031.069 = phi i64 [ %.sroa.031.1, %bb.ad ], [ 0, %.loopexit1 ] ; 9 uses
  %exitcond161.not = icmp eq i64 %.sroa.016.170, %9
  br i1 %exitcond161.not, label %bb.s, label %bb.r

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.p
  %i.eh = phi i64 [ %i.ek, %bb.p ], [ 1, %.lr.ph74.preheader ] ; 3 uses
  %.sroa.063.072 = phi i64 [ %i.eh, %bb.p ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %exitcond163.not = icmp eq i64 %i.eh, %i.l
  br i1 %exitcond163.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph74
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.063.072
  %i.ej = load i32, ptr %i.ei, align 4, !noundef !45
  call fastcc void @_ZN6brotli3enc7cluster27BrotliCompareAndPushToQueue17h0214dbf8139ad6afE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.z, i32 noundef %i.ej, i64 noundef %13, ptr noalias noundef nonnull align 4 %8, i64 noundef %9, ptr noalias noundef align 8 dereferenceable(8) %i.b)
  %i.ek = add i64 %i.eh, 1                        ; 2 uses
  %exitcond164.not = icmp eq i64 %i.ek, %.sroa.0.075
  br i1 %exitcond164.not, label %.loopexit, label %.lr.ph74

bb.q:                                             ; preds = %.lr.ph74
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.063.072, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1891) #43
  unreachable

bb.r:                                             ; preds = %.lr.ph71
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.016.170 ; 4 uses
  %.sroa.035.0.copyload = load i32, ptr %i.el, align 4 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %.sroa.546.0.copyload = load float, ptr %.sroa.546.0..sroa_idx, align 4 ; 4 uses
  %i.em = icmp eq i32 %.sroa.035.0.copyload, %i.z
  br i1 %i.em, label %bb.ad, label %bb.t

bb.s:                                             ; preds = %.lr.ph71
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %9, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1892) #43
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.en = icmp eq i32 %.sroa.4.0.copyload, %i.z
  %i.eo = icmp eq i32 %.sroa.035.0.copyload, %i.aa
  %or.cond = or i1 %i.eo, %i.en
  %i.ep = icmp eq i32 %.sroa.4.0.copyload, %i.aa
  %or.cond1 = or i1 %i.ep, %or.cond
  br i1 %or.cond1, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = load float, ptr %i.h, align 4, !noundef !45 ; 2 uses
  %i.er = fcmp une float %i.eq, %.sroa.546.0.copyload
  br i1 %i.er, label %.split, label %bb.v

.split:                                           ; preds = %bb.u
  %i.es = fcmp ogt float %i.eq, %.sroa.546.0.copyload
  br i1 %i.es, label %bb.aa, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.et = load i32, ptr %i.i, align 4, !noundef !45
  %i.eu = load i32, ptr %8, align 4, !noundef !45
  %i.ev = sub i32 %i.et, %i.eu
  %i.ew = sub i32 %.sroa.4.0.copyload, %.sroa.035.0.copyload
  %i.ex = icmp ugt i32 %i.ev, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %.split, %bb.v
  %i.ey = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069 ; 4 uses
  store i32 %.sroa.035.0.copyload, ptr %i.ez, align 4
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx38, align 4
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx42, align 4
  %.sroa.546.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store float %.sroa.546.0.copyload, ptr %.sroa.546.0..sroa_idx47, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1893) #43
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.x
  %i.fa = add nuw i64 %.sroa.031.069, 1
  br label %bb.ad

bb.aa:                                            ; preds = %.split, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.035.0.copyload, ptr %8, align 4
  store i32 %.sroa.4.0.copyload, ptr %i.i, align 4
  store i32 %.sroa.5.0.copyload, ptr %i.j, align 4
  store float %.sroa.546.0.copyload, ptr %i.h, align 4
  %i.fb = icmp ult i64 %.sroa.031.069, %9
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.031.069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fc, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.031.069, i64 noundef %9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1894) #43
  unreachable

bb.ad:                                            ; preds = %bb.r, %bb.t, %bb.z
  %.sroa.031.1 = phi i64 [ %.sroa.031.069, %bb.r ], [ %.sroa.031.069, %bb.t ], [ %i.fa, %bb.z ] ; 2 uses
  %i.fd = add nuw i64 %.sroa.016.170, 1           ; 2 uses
  %exitcond162.not = icmp eq i64 %i.fd, %i.dj
  br i1 %exitcond162.not, label %.lr.ph74.preheader, label %.lr.ph71

bb.ae:                                            ; preds = %scalar.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ef, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1895) #43
  unreachable

bb.af:                                            ; preds = %scalar.ph
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ef
  %i.ff = load i32, ptr %i.fe, align 4, !noundef !45
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.sroa.061.067
  store i32 %i.ff, ptr %gep, align 4
  %i.fg = add i64 %i.ee, 1                        ; 2 uses
  %exitcond160.not = icmp eq i64 %i.fg, %indvars.iv
  br i1 %exitcond160.not, label %.loopexit1, label %scalar.ph, !llvm.loop !38976

bb.ag:                                            ; preds = %.lr.ph65
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.059.064 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !noundef !45
  %i.fj = icmp eq i32 %i.fi, %i.aa
  br i1 %i.fj, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph65
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.064, i64 noundef %5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1896) #43
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.aj
  %i.fk = add i64 %i.dh, 1
  %exitcond154.not = icmp eq i64 %i.dh, %11
  br i1 %exitcond154.not, label %.preheader.preheader, label %.lr.ph65, !llvm.loop !38977

bb.aj:                                            ; preds = %bb.ag
  store i32 %i.z, ptr %i.fh, align 4
  br label %bb.ai

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.al
  %.sroa.057.060 = phi i64 [ %i.fl, %bb.al ], [ %.sroa.055.163, %.lr.ph.split.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.057.060, %umax
  br i1 %exitcond.not, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.055.062, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1897) #43
  unreachable

bb.al:                                            ; preds = %.lr.ph.split
end_hunk_5
