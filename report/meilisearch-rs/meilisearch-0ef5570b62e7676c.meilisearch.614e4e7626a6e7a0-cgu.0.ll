inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.ug = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.uc, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !34554 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, null
  br i1 %i.uh, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ui = ptrtoint ptr %i.ug to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i541.i.i = phi i64 [ 4, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i541.i.i, i64 %i.uc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc542.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.noexc542.i.i:                                    ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  %.sroa.10.0.i.i540.i.i = phi i64 [ %i.ui, %bb.cs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i ]
  %i.uj = inttoptr i64 %.sroa.10.0.i.i540.i.i to ptr ; 5 uses
  %i.uk = icmp samesign ult i64 %.sroa.070.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.uk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uj) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2570.i.i) ]
  %.not229.i.i = icmp ugt i64 %.sroa.023.0576.i.i, %.sroa.12.2569.i.i
  br i1 %.not229.i.i, label %bb.cv, label %bb.cw, !prof !2480

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0576.i.i, i64 noundef %.sroa.12.2569.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.bp unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit548.i.i", !noalias !34382

bb.cw:                                            ; preds = %bb.cu
  %i.ul = shl nuw nsw i64 %.sroa.023.0576.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.uj, ptr nonnull readonly align 4 %.sroa.026.2570.i.i, i64 %i.ul, i1 false), !alias.scope !34559, !noalias !34563
  %i.um = icmp eq i64 %.sroa.12.2569.i.i, 0
  br i1 %i.um, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i": ; preds = %bb.cw
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2570.i.i) #38, !noalias !34382
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"

.preheader253.i.i:                                ; preds = %bb.dg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i"
  %.sroa.018.1.lcssa.i.i = phi i64 [ %.sroa.018.0577.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vs, %bb.dg ]
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.0579.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit546.i.i" ], [ %i.vl, %bb.dg ]
  br i1 %.not910.i.i, label %._crit_edge568.i.i, label %.lr.ph567.i.i

.lr.ph567.i.i:                                    ; preds = %.preheader253.i.i
  %i.un = trunc i64 %.sroa.029.0575.i.i to i32
  br label %bb.cx

._crit_edge568.i.i:                               ; preds = %bb.cz, %.preheader253.i.i
  %i.uo = add i64 %i.sv, %.sroa.029.0575.i.i      ; 23 uses
  %i.up = add i64 %.sroa.047.1573.i.i, 64         ; 2 uses
  %i.uq = icmp ult i64 %i.up, %.sroa.0.0.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.uq, label %.split.i.i, label %bb.an

bb.cx:                                            ; preds = %bb.cz, %.lr.ph567.i.i
  %i.ur = phi i64 [ 1, %.lr.ph567.i.i ], [ %i.vc, %bb.cz ] ; 3 uses
  %.sroa.0133.0566.i.i = phi i64 [ 0, %.lr.ph567.i.i ], [ %i.ur, %bb.cz ] ; 2 uses
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0133.0566.i.i
  %i.ut = load i32, ptr %i.us, align 4, !noalias !34382, !noundef !27 ; 2 uses
  %i.uu = zext i32 %i.ut to i64                   ; 2 uses
  %i.uv = icmp ult i32 %i.ut, 64
  br i1 %i.uv, label %bb.cy, label %.invoke3973

bb.cy:                                            ; preds = %bb.cx
  %i.uw = or disjoint i64 %.sroa.0133.0566.i.i, %.sroa.047.1573.i.i ; 3 uses
  %i.ux = icmp ult i64 %i.uw, %.sroa.0.0.i.i
  br i1 %i.ux, label %bb.cz, label %.invoke3973

bb.cz:                                            ; preds = %bb.cy
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.uu
  %i.uz = load i32, ptr %i.uy, align 4, !noalias !34382, !noundef !27
  %i.va = add i32 %i.uz, %i.un
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.uw
  store i32 %i.va, ptr %i.vb, align 4, !noalias !34382
  %i.vc = add nuw nsw i64 %i.ur, 1
  %exitcond837.not.i.i = icmp eq i64 %i.ur, %umax836.i.i
  br i1 %exitcond837.not.i.i, label %._crit_edge568.i.i, label %bb.cx

.lr.ph563.i.i:                                    ; preds = %bb.dg, %.lr.ph563.preheader.i.i
  %i.vd = phi i64 [ %i.vv, %bb.dg ], [ 1, %.lr.ph563.preheader.i.i ] ; 6 uses
  %.sroa.0.1562.i.i = phi i64 [ %i.vl, %bb.dg ], [ %.sroa.0.0579.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.018.1561.i.i = phi i64 [ %i.vs, %bb.dg ], [ %.sroa.018.0577.i.i, %.lr.ph563.preheader.i.i ] ; 3 uses
  %.sroa.0131.0560.i.i = phi i64 [ %i.vd, %bb.dg ], [ 0, %.lr.ph563.preheader.i.i ] ; 2 uses
  %exitcond830.not.i.i = icmp eq i64 %i.vd, 65
  br i1 %exitcond830.not.i.i, label %.invoke3973, label %bb.da

bb.da:                                            ; preds = %.lr.ph563.i.i
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0131.0560.i.i ; 2 uses
  %i.vf = load i32, ptr %i.ve, align 4, !noalias !34382, !noundef !27
  %i.vg = zext i32 %i.vf to i64                   ; 4 uses
  %i.vh = icmp samesign ugt i64 %.sroa.0.0.i422.i.i, %i.vg
  br i1 %i.vh, label %bb.dc, label %.invoke3973

bb.db:                                            ; preds = %bb.dd
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.dc:                                            ; preds = %bb.da
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  %exitcond832.not.i.i = icmp eq i64 %i.vd, %i.ty
  br i1 %exitcond832.not.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1562.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.bp unwind label %bb.db, !noalias !34382

bb.de:                                            ; preds = %bb.dc
  %i.vj = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427915.i.i, i64 %i.vg
  %i.vk = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %.sroa.0.1562.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vk, ptr noundef nonnull align 8 dereferenceable(1040) %i.vj, i64 1040, i1 false), !noalias !34382
  %i.vl = add nuw i64 %.sroa.0.1562.i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %exitcond834.not.i.i = icmp eq i64 %i.vd, %i.tz
  br i1 %exitcond834.not.i.i, label %.invoke3973, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vg
  %i.vn = load i32, ptr %i.vm, align 4, !noalias !34382, !noundef !27
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i, i64 %.sroa.018.1561.i.i
  store i32 %i.vn, ptr %i.vo, align 4, !noalias !34382
  %i.vp = load i32, ptr %i.ve, align 4, !noalias !34382, !noundef !27 ; 2 uses
  %i.vq = zext i32 %i.vp to i64                   ; 2 uses
  %i.vr = icmp ult i32 %i.vp, 64
  br i1 %i.vr, label %bb.dg, label %.invoke3973

bb.dg:                                            ; preds = %bb.df
  %i.vs = add nuw i64 %.sroa.018.1561.i.i, 1      ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vq
  %i.vu = trunc nuw nsw i64 %.sroa.0131.0560.i.i to i32
  store i32 %i.vu, ptr %i.vt, align 4, !noalias !34382
  %i.vv = add nuw nsw i64 %i.vd, 1
  %exitcond835.not.i.i = icmp eq i64 %i.vd, %i.sv
  br i1 %exitcond835.not.i.i, label %.preheader253.i.i, label %.lr.ph563.i.i

.invoke3973:                                      ; preds = %bb.df, %bb.de, %bb.da, %.lr.ph563.i.i, %bb.cy, %bb.cx
  %i.vw = phi i64 [ %i.uw, %bb.cy ], [ %i.uu, %bb.cx ], [ %i.vq, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %i.vg, %bb.da ], [ %.sroa.018.1561.i.i, %bb.de ]
  %i.vx = phi i64 [ %.sroa.0.0.i.i, %bb.cy ], [ 64, %bb.cx ], [ 64, %bb.df ], [ 64, %.lr.ph563.i.i ], [ %.sroa.0.0.i422.i.i, %bb.da ], [ %.sroa.12.5.i.i, %bb.de ]
  %i.vy = phi ptr [ @1558, %bb.cy ], [ @1557, %bb.cx ], [ @1563, %bb.df ], [ @1559, %.lr.ph563.i.i ], [ @1560, %bb.da ], [ @1562, %bb.de ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vw, i64 noundef %i.vx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vy) #43
          to label %.cont3974 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont3974:                                        ; preds = %.invoke3973
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
  br i1 %i.wf, label %bb.dh, label %.invoke3971

bb.dh:                                            ; preds = %.lr.ph557.i.i
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.we
  %i.wh = load i32, ptr %i.wg, align 4, !noalias !34382, !noundef !27 ; 2 uses
  %.not.i168.i = icmp eq i32 %i.wh, 0
  br i1 %.not.i168.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dh
  %i.wi = zext i32 %i.wh to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3555.i.i)
  %i.wj = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i169.i

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
  %.sroa.0127.1.i.i = add nuw nsw i64 %.sroa.0127.1556.i.i, %i.wq
  br i1 %i.wp, label %.lr.ph557.i.i, label %._crit_edge558.i.i

.lr.ph.i169.i:                                    ; preds = %bb.dj, %.lr.ph.preheader.i.i
  %i.wr = phi i64 [ %i.xc, %bb.dj ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ws = phi i64 [ %i.xe, %bb.dj ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4553.i.i = phi i64 [ %i.xd, %bb.dj ], [ %.sroa.043.3555.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond828.not.i.i = icmp eq i64 %i.ws, %i.wj
  br i1 %exitcond828.not.i.i, label %.invoke3971, label %bb.dj

.invoke3971:                                      ; preds = %.lr.ph557.i.i, %.lr.ph.i169.i
  %i.wt = phi i64 [ %.sroa.043.4553.i.i, %.lr.ph.i169.i ], [ %i.we, %.lr.ph557.i.i ]
  %i.wu = phi i64 [ %i.aq, %.lr.ph.i169.i ], [ %.sroa.0.0.i.i, %.lr.ph557.i.i ]
  %i.wv = phi ptr [ @1567, %.lr.ph.i169.i ], [ @1566, %.lr.ph557.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wt, i64 noundef %i.wu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.wv) #43
          to label %.cont3972 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !34382

.cont3972:                                        ; preds = %.invoke3971
  unreachable

bb.dj:                                            ; preds = %.lr.ph.i169.i
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
  br i1 %exitcond829.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i169.i

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

bb.dp:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i166.i", %bb.af, %.thread86.i.i
  %.pn230.pn.pn.pn.pn.pn90.i.i = phi { ptr, i32 } [ %i.ij, %.thread86.i.i ], [ %.pn230.pn.pn.pn.pn100.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i166.i" ], [ %.pn230.pn.pn.pn.i.i, %bb.af ] ; 2 uses
  %i.xr = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xr, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i": ; preds = %bb.dp
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i) #38, !noalias !34382
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i": ; preds = %bb.z
  %i.xs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xt = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.xt, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i555.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i"
  %i.xu = phi ptr [ %i.ho, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.hj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85931.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.thread929.i.i" ], [ %i.xs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit554.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xu) ]
  tail call void @mi_free(ptr noundef nonnull %i.xu) #38, !noalias !34382
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit217.i"

bb.dq:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i, %.split.i
  %.sroa.032.1424.i = phi i64 [ 1, %.split.i ], [ %.sroa.032.1.i, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0423.i = phi i64 [ %spec.store.select.i, %.split.i ], [ %i.ans, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h033cc48a226f8774E.exit.loopexit.i ] ; 21 uses
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
  %i.xx = lshr i64 %i.xw, 3                       ; 9 uses
  %i.xy = icmp eq i64 %.sroa.0.0423.i, 1
  br i1 %i.xy, label %.preheader.i.i.preheader, label %bb.ds

.preheader.i.i.preheader:                         ; preds = %bb.dr
  br i1 %min.iters.check, label %.preheader.i.i.preheader4591, label %vector.body3730

.preheader.i.i.preheader4591:                     ; preds = %vector.body3730, %.preheader.i.i.preheader
  %.ph4592 = phi i64 [ 1, %.preheader.i.i.preheader ], [ %i.hb, %vector.body3730 ]
  %.sroa.066.0449.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %vector.body3730 ]
  br label %.preheader.i.i

vector.body3730:                                  ; preds = %.preheader.i.i.preheader, %vector.body3730
  %index3731 = phi i64 [ %index.next3732, %vector.body3730 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.fp, i64 %index3731 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  store <16 x i8> zeroinitializer, ptr %i.xz, align 1, !alias.scope !34592, !noalias !34594
  store <16 x i8> zeroinitializer, ptr %i.ya, align 1, !alias.scope !34592, !noalias !34594
  %index.next3732 = add nuw i64 %index3731, 32    ; 2 uses
  %i.yb = icmp eq i64 %index.next3732, %n.vec
  br i1 %i.yb, label %.preheader.i.i.preheader4591, label %vector.body3730, !llvm.loop !34595

bb.ds:                                            ; preds = %bb.dr
  %i.yc = shl nuw nsw i64 %.sroa.0.0423.i, 8      ; 2 uses
  %.not121.i.i = icmp samesign ugt i64 %i.yc, %i.ft
  br i1 %.not121.i.i, label %.invoke1149.i, label %.preheader360.i.i, !prof !2480

.invoke1149.i:                                    ; preds = %bb.gd, %.lr.ph403.i.preheader.i, %bb.ds, %bb.ee
  %i.yd = phi i64 [ %i.xx, %bb.ee ], [ %i.yi, %.lr.ph403.i.preheader.i ], [ %i.yc, %bb.ds ], [ %i.ans, %bb.gd ]
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
  %i.yg = phi i64 [ 1, %.preheader360.i.i ], [ %i.anm, %bb.ga ] ; 4 uses
  %.sroa.069.0399.i.i = phi i64 [ 0, %.preheader360.i.i ], [ %i.yg, %bb.ga ] ; 3 uses
  %exitcond.not.i177.i = icmp eq i64 %i.yg, %i.gr
  br i1 %exitcond.not.i177.i, label %.invoke.i, label %bb.fy

.loopexit358.i.i:                                 ; preds = %bb.fx
  %i.yh = icmp eq i64 %i.yj, 0
  br i1 %i.yh, label %.lr.ph403.i.preheader.i, label %.split.i178.i

.lr.ph403.i.preheader.i:                          ; preds = %.loopexit358.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fz, i8 0, i64 %i.fy, i1 false), !alias.scope !34588, !noalias !34597
  %i.yi = mul i64 %i.xx, %i.aq                    ; 4 uses
  %.not124.i.i = icmp ugt i64 %i.yi, %i.ge
  br i1 %.not124.i.i, label %.invoke1149.i, label %bb.du, !prof !2480

.split.i178.i:                                    ; preds = %bb.ga, %.loopexit358.i.i
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
end_hunk_0
begin_hunk_1_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.bmx = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.bmt, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35000 ; 2 uses
  %i.bmy = icmp eq ptr %i.bmx, null
  br i1 %i.bmy, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.bmz = ptrtoint ptr %i.bmx to i64
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kh
  %.sroa.4.0.ph.i.i542.i.i = phi i64 [ 4, %bb.ki ], [ 0, %bb.kh ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i, i64 %i.bmt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.noexc543.i.i:                                    ; preds = %bb.kk
  unreachable

bb.kl:                                            ; preds = %bb.kj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  %.sroa.10.0.i.i541.i.i = phi i64 [ %i.bmz, %bb.kj ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i ]
  %i.bna = inttoptr i64 %.sroa.10.0.i.i541.i.i to ptr ; 5 uses
  %i.bnb = icmp samesign ult i64 %.sroa.070.1.i.i386, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bnb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bna) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i) ]
  %.not229.i.i387 = icmp ugt i64 %.sroa.023.0590.i.i, %.sroa.12.2583.i.i
  br i1 %.not229.i.i387, label %bb.km, label %bb.kn, !prof !2480

bb.km:                                            ; preds = %bb.kl
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i, i64 noundef %.sroa.12.2583.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.jf unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i", !noalias !34822

bb.kn:                                            ; preds = %bb.kl
  %i.bnc = shl nuw nsw i64 %.sroa.023.0590.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bna, ptr nonnull readonly align 4 %.sroa.026.2584.i.i, i64 %i.bnc, i1 false), !alias.scope !35005, !noalias !35009
  %i.bnd = icmp eq i64 %.sroa.12.2583.i.i, 0
  br i1 %i.bnd, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i": ; preds = %bb.kn
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i) #38, !noalias !34822
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"

.preheader253.i.i290:                             ; preds = %bb.kx, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i"
  %.sroa.018.1.lcssa.i.i291 = phi i64 [ %.sroa.018.0591.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.boj, %bb.kx ]
  %.sroa.0.1.lcssa.i.i292 = phi i64 [ %.sroa.0.0593.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i" ], [ %i.boc, %bb.kx ]
  br i1 %.not928.i.i, label %._crit_edge582.i.i, label %.lr.ph581.i.i

.lr.ph581.i.i:                                    ; preds = %.preheader253.i.i290
  %i.bne = trunc i64 %.sroa.029.0589.i.i to i32
  br label %bb.ko

._crit_edge582.i.i:                               ; preds = %bb.kq, %.preheader253.i.i290
  %i.bnf = add i64 %i.blm, %.sroa.029.0589.i.i    ; 23 uses
  %i.bng = add i64 %.sroa.047.1587.i.i, 64        ; 2 uses
  %i.bnh = icmp ult i64 %i.bng, %.sroa.0.0.i.i205
  %indvars.iv.next.i.i293 = add i64 %indvars.iv.i.i272, -64
  br i1 %i.bnh, label %.split.i.i271, label %bb.id

bb.ko:                                            ; preds = %bb.kq, %.lr.ph581.i.i
  %i.bni = phi i64 [ 1, %.lr.ph581.i.i ], [ %i.bnt, %bb.kq ] ; 3 uses
  %.sroa.0133.0580.i.i = phi i64 [ 0, %.lr.ph581.i.i ], [ %i.bni, %bb.kq ] ; 2 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0133.0580.i.i
  %i.bnk = load i32, ptr %i.bnj, align 4, !noalias !34822, !noundef !27 ; 2 uses
  %i.bnl = zext i32 %i.bnk to i64                 ; 2 uses
  %i.bnm = icmp ult i32 %i.bnk, 64
  br i1 %i.bnm, label %bb.kp, label %.invoke3977

bb.kp:                                            ; preds = %bb.ko
  %i.bnn = or disjoint i64 %.sroa.0133.0580.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bno = icmp ult i64 %i.bnn, %.sroa.0.0.i.i205
  br i1 %i.bno, label %bb.kq, label %.invoke3977

bb.kq:                                            ; preds = %bb.kp
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bnl
  %i.bnq = load i32, ptr %i.bnp, align 4, !noalias !34822, !noundef !27
  %i.bnr = add i32 %i.bnq, %i.bne
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.azy, i64 %i.bnn
  store i32 %i.bnr, ptr %i.bns, align 4, !noalias !34822
  %i.bnt = add nuw nsw i64 %i.bni, 1
  %exitcond857.not.i.i = icmp eq i64 %i.bni, %umax856.i.i
  br i1 %exitcond857.not.i.i, label %._crit_edge582.i.i, label %bb.ko

.lr.ph577.i.i:                                    ; preds = %bb.kx, %.lr.ph577.preheader.i.i
  %i.bnu = phi i64 [ %i.bom, %bb.kx ], [ 1, %.lr.ph577.preheader.i.i ] ; 6 uses
  %.sroa.0.1576.i.i = phi i64 [ %i.boc, %bb.kx ], [ %.sroa.0.0593.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.018.1575.i.i = phi i64 [ %i.boj, %bb.kx ], [ %.sroa.018.0591.i.i, %.lr.ph577.preheader.i.i ] ; 3 uses
  %.sroa.0131.0574.i.i = phi i64 [ %i.bnu, %bb.kx ], [ 0, %.lr.ph577.preheader.i.i ] ; 2 uses
  %exitcond850.not.i.i = icmp eq i64 %i.bnu, 65
  br i1 %exitcond850.not.i.i, label %.invoke3977, label %bb.kr

bb.kr:                                            ; preds = %.lr.ph577.i.i
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0131.0574.i.i ; 2 uses
  %i.bnw = load i32, ptr %i.bnv, align 4, !noalias !34822, !noundef !27
  %i.bnx = zext i32 %i.bnw to i64                 ; 4 uses
  %i.bny = icmp samesign ugt i64 %.sroa.0.0.i422.i.i220, %i.bnx
  br i1 %i.bny, label %bb.kt, label %.invoke3977

bb.ks:                                            ; preds = %bb.ku
  %i.bnz = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

bb.kt:                                            ; preds = %bb.kr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  %exitcond852.not.i.i = icmp eq i64 %i.bnu, %i.bmp
  br i1 %exitcond852.not.i.i, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.jf unwind label %bb.ks, !noalias !34822

bb.kv:                                            ; preds = %bb.kt
  %i.boa = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427933.i.i, i64 %i.bnx
  %i.bob = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i285, i64 %.sroa.0.1576.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.bob, ptr noundef nonnull align 8 dereferenceable(2832) %i.boa, i64 2832, i1 false), !noalias !34822
  %i.boc = add nuw i64 %.sroa.0.1576.i.i, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %exitcond854.not.i.i = icmp eq i64 %i.bnu, %i.bmq
  br i1 %exitcond854.not.i.i, label %.invoke3977, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bnx
  %i.boe = load i32, ptr %i.bod, align 4, !noalias !34822, !noundef !27
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i288, i64 %.sroa.018.1575.i.i
  store i32 %i.boe, ptr %i.bof, align 4, !noalias !34822
  %i.bog = load i32, ptr %i.bnv, align 4, !noalias !34822, !noundef !27 ; 2 uses
  %i.boh = zext i32 %i.bog to i64                 ; 2 uses
  %i.boi = icmp ult i32 %i.bog, 64
  br i1 %i.boi, label %bb.kx, label %.invoke3977

bb.kx:                                            ; preds = %bb.kw
  %i.boj = add nuw i64 %.sroa.018.1575.i.i, 1     ; 2 uses
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.boh
  %i.bol = trunc nuw nsw i64 %.sroa.0131.0574.i.i to i32
  store i32 %i.bol, ptr %i.bok, align 4, !noalias !34822
  %i.bom = add nuw nsw i64 %i.bnu, 1
  %exitcond855.not.i.i = icmp eq i64 %i.bnu, %i.blm
  br i1 %exitcond855.not.i.i, label %.preheader253.i.i290, label %.lr.ph577.i.i

.invoke3977:                                      ; preds = %bb.kw, %bb.kv, %bb.kr, %.lr.ph577.i.i, %bb.kp, %bb.ko
  %i.bon = phi i64 [ %i.bnn, %bb.kp ], [ %i.bnl, %bb.ko ], [ %i.boh, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %i.bnx, %bb.kr ], [ %.sroa.018.1575.i.i, %bb.kv ]
  %i.boo = phi i64 [ %.sroa.0.0.i.i205, %bb.kp ], [ 64, %bb.ko ], [ 64, %bb.kw ], [ 64, %.lr.ph577.i.i ], [ %.sroa.0.0.i422.i.i220, %bb.kr ], [ %.sroa.12.5.i.i287, %bb.kv ]
  %i.bop = phi ptr [ @1558, %bb.kp ], [ @1557, %bb.ko ], [ @1563, %bb.kw ], [ @1559, %.lr.ph577.i.i ], [ @1560, %bb.kr ], [ @1562, %bb.kv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bon, i64 noundef %i.boo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bop) #43
          to label %.cont3978 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.cont3978:                                        ; preds = %.invoke3977
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i": ; preds = %bb.km
  %i.boq = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.bna) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17h105715ae4cf45426E.exit551.i.i": ; preds = %bb.ke
  %i.bor = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i240"

.lr.ph571.i.i:                                    ; preds = %.split.i.i271, %bb.kz
  %.sroa.0127.1570.i.i = phi i64 [ %.sroa.0127.1.i.i280, %bb.kz ], [ 1, %.split.i.i271 ] ; 3 uses
  %.sroa.043.3569.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i277, %bb.kz ], [ %.sroa.043.0588.i.i, %.split.i.i271 ] ; 3 uses
  %.sroa.0127.0568.i.i = phi i64 [ %.sroa.0127.1570.i.i, %bb.kz ], [ 0, %.split.i.i271 ] ; 6 uses
  %i.bos = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427933.i.i, i64 %.sroa.0127.0568.i.i ; 5 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 2816 ; 2 uses
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bos, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %i.bos, i8 0, i64 2824, i1 false), !noalias !34822
  store float 3.402000e+38, ptr %i.bou, align 8, !alias.scope !35011, !noalias !34822
  %i.bov = add nuw nsw i64 %.sroa.0127.0568.i.i, %.sroa.047.1587.i.i ; 3 uses
  %i.bow = icmp ult i64 %i.bov, %.sroa.0.0.i.i205
  br i1 %i.bow, label %bb.ky, label %.invoke3975

bb.ky:                                            ; preds = %.lr.ph571.i.i
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i208, i64 %i.bov
  %i.boy = load i32, ptr %i.box, align 4, !noalias !34822, !noundef !27 ; 2 uses
  %.not.i170.i = icmp eq i32 %i.boy, 0
  br i1 %.not.i170.i, label %._crit_edge.i.i276, label %.lr.ph.preheader.i.i274

.lr.ph.preheader.i.i274:                          ; preds = %bb.ky
  %i.boz = zext i32 %i.boy to i64
  %reass.sub.i275 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i)
  %i.bpa = add nuw nsw i64 %reass.sub.i275, 1
  br label %.lr.ph.i171.i

._crit_edge.i.i276:                               ; preds = %bb.lb, %bb.ky
  %.sroa.043.4.lcssa.i.i277 = phi i64 [ %.sroa.043.3569.i.i, %bb.ky ], [ %i.bpv, %bb.lb ] ; 2 uses
  %i.bpb = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17ha8491ed593501ad1E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bos)
          to label %bb.kz unwind label %.thread163.loopexit.i.i278, !noalias !34822

bb.kz:                                            ; preds = %._crit_edge.i.i276
  store float %i.bpb, ptr %i.bou, align 8, !alias.scope !35014, !noalias !34822
  %i.bpc = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0568.i.i
  %i.bpd = trunc nuw nsw i64 %.sroa.0127.0568.i.i to i32 ; 2 uses
  store i32 %i.bpd, ptr %i.bpc, align 4, !noalias !34822
  %i.bpe = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0568.i.i
  store i32 %i.bpd, ptr %i.bpe, align 4, !noalias !34822
  %i.bpf = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0568.i.i
  store i32 1, ptr %i.bpf, align 4, !noalias !34822
  %i.bpg = icmp samesign ult i64 %.sroa.0127.1570.i.i, %.sroa.0.0.i447.i.i273 ; 2 uses
  %i.bph = zext i1 %i.bpg to i64
  %.sroa.0127.1.i.i280 = add nuw nsw i64 %.sroa.0127.1570.i.i, %i.bph
  br i1 %i.bpg, label %.lr.ph571.i.i, label %._crit_edge572.i.i

.lr.ph.i171.i:                                    ; preds = %bb.lb, %.lr.ph.preheader.i.i274
  %i.bpi = phi i64 [ %i.bpw, %bb.lb ], [ 1, %.lr.ph.preheader.i.i274 ] ; 3 uses
  %.sroa.043.4567.i.i = phi i64 [ %i.bpv, %bb.lb ], [ %.sroa.043.3569.i.i, %.lr.ph.preheader.i.i274 ] ; 3 uses
  %exitcond848.not.i.i = icmp eq i64 %i.bpi, %i.bpa
  br i1 %exitcond848.not.i.i, label %.invoke3975, label %bb.la

bb.la:                                            ; preds = %.lr.ph.i171.i
  %i.bpj = getelementptr inbounds nuw [2 x i8], ptr %i.ara, i64 %.sroa.043.4567.i.i
  %i.bpk = load i16, ptr %i.bpj, align 2, !alias.scope !35017, !noalias !34971, !noundef !27 ; 2 uses
  %i.bpl = zext i16 %i.bpk to i64                 ; 2 uses
  %i.bpm = icmp ult i16 %i.bpk, 704
  br i1 %i.bpm, label %bb.lb, label %.invoke3975

.invoke3975:                                      ; preds = %.lr.ph571.i.i, %bb.la, %.lr.ph.i171.i
  %i.bpn = phi i64 [ %.sroa.043.4567.i.i, %.lr.ph.i171.i ], [ %i.bpl, %bb.la ], [ %i.bov, %.lr.ph571.i.i ]
  %i.bpo = phi i64 [ %2, %.lr.ph.i171.i ], [ 704, %bb.la ], [ %.sroa.0.0.i.i205, %.lr.ph571.i.i ]
  %i.bpp = phi ptr [ @1567, %.lr.ph.i171.i ], [ @1932, %bb.la ], [ @1566, %.lr.ph571.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bpn, i64 noundef %i.bpo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpp) #43
          to label %.cont3976 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.cont3976:                                        ; preds = %.invoke3975
  unreachable

bb.lb:                                            ; preds = %bb.la
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bpl ; 2 uses
  %i.bpr = load i32, ptr %i.bpq, align 4, !alias.scope !35020, !noalias !34822, !noundef !27
  %i.bps = add i32 %i.bpr, 1
  store i32 %i.bps, ptr %i.bpq, align 4, !alias.scope !35020, !noalias !34822
  %i.bpt = load i64, ptr %i.bot, align 8, !alias.scope !35023, !noalias !34822, !noundef !27
  %i.bpu = add i64 %i.bpt, 1
  store i64 %i.bpu, ptr %i.bot, align 8, !alias.scope !35026, !noalias !34822
  %i.bpv = add nuw i64 %.sroa.043.4567.i.i, 1     ; 2 uses
  %i.bpw = add nuw nsw i64 %i.bpi, 1
  %exitcond849.not.i.i = icmp eq i64 %i.bpi, %i.boz
  br i1 %exitcond849.not.i.i, label %._crit_edge.i.i276, label %.lr.ph.i171.i

bb.lc:                                            ; preds = %bb.lf, %bb.ib
  %.sroa.047.0565.i.i = phi i64 [ 0, %bb.ib ], [ %i.bqb, %bb.lf ] ; 2 uses
  %.sroa.059.0564.i.i = phi i64 [ 0, %bb.ib ], [ %.sroa.059.1.i.i270, %bb.lf ] ; 5 uses
  %i.bpx = icmp ult i64 %.sroa.059.0564.i.i, %.sroa.0.0.i.i205
  br i1 %i.bpx, label %bb.ld, label %.invoke.i.i230

bb.ld:                                            ; preds = %bb.lc
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i208, i64 %.sroa.059.0564.i.i ; 2 uses
  %i.bpz = load i32, ptr %i.bpy, align 4, !noalias !34822, !noundef !27
  %i.bqa = add i32 %i.bpz, 1
  store i32 %i.bqa, ptr %i.bpy, align 4, !noalias !34822
  %i.bqb = add nuw i64 %.sroa.047.0565.i.i, 1     ; 3 uses
  %i.bqc = icmp eq i64 %i.bqb, %2                 ; 2 uses
  br i1 %i.bqc, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.axz, i64 %.sroa.047.0565.i.i
  %i.bqe = load i8, ptr %i.bqd, align 1, !alias.scope !34808, !noalias !35029, !noundef !27
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.axz, i64 %i.bqb
  %i.bqg = load i8, ptr %i.bqf, align 1, !alias.scope !34808, !noalias !35029, !noundef !27
  %.not238.i.i269 = icmp eq i8 %i.bqe, %i.bqg
  br i1 %.not238.i.i269, label %bb.lf, label %bb.lg

.invoke.i.i230:                                   ; preds = %bb.lc
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i, i64 noundef %.sroa.0.0.i.i205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i268 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i231, !noalias !34822

.cont.i.i268:                                     ; preds = %.invoke.i.i230
  unreachable

bb.lf:                                            ; preds = %bb.lg, %bb.le
  %.sroa.059.1.i.i270 = phi i64 [ %i.bqh, %bb.lg ], [ %.sroa.059.0564.i.i, %bb.le ]
  br i1 %i.bqc, label %.split.i.i271, label %bb.lc

bb.lg:                                            ; preds = %bb.le, %bb.ld
  %i.bqh = add nuw nsw i64 %.sroa.059.0564.i.i, 1
  br label %bb.lf

.thread130.i.i306:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i322, %bb.ic
  %.pn230155.i.i307 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i305, %bb.ic ], [ %.pn.i.i327, %.loopexit.split-lp.i.i322 ], [ %.pn953.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4154.i.i308 = phi ptr [ %.sroa.016.7.i.i285, %bb.ic ], [ %.sroa.016.6.i.i326, %.loopexit.split-lp.i.i322 ], [ %.sroa.016.6952.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4153.i.i309 = phi i64 [ %.sroa.14.7.i.i284, %bb.ic ], [ %.sroa.14.6.i.i325, %.loopexit.split-lp.i.i322 ], [ %.sroa.14.6951.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3152.i.i310 = phi ptr [ %.sroa.026.4.ph162.i.i304, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3151.i.i311 = phi i64 [ %.sroa.12.4.ph161.i.i303, %bb.ic ], [ 0, %.loopexit.split-lp.i.i322 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0148.i.i312 = phi ptr [ %.sroa.044.1.ph160.i.i302, %bb.ic ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i322 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0147.i.i313 = phi i1 [ %.sroa.11.1.ph159.i.i301, %bb.ic ], [ true, %.loopexit.split-lp.i.i322 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.051.0146.i.i314 = phi ptr [ %i.bcu, %bb.ic ], [ %.sroa.051.2.i.i324, %.loopexit.split-lp.i.i322 ], [ %.sroa.051.2950.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0145.i.i315 = phi i64 [ %i.bnf, %bb.ic ], [ %.sroa.1152.2.i.i323, %.loopexit.split-lp.i.i322 ], [ %.sroa.1152.2949.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %i.bqi = icmp eq i64 %.sroa.1152.0145.i.i315, 0
  br i1 %i.bqi, label %bb.jd, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread130.i.i306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i314) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i314) #38, !noalias !34822
  br label %bb.jd

bb.lh:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i", %bb.hv, %.thread86.i.i403
  %.pn230.pn.pn.pn.pn.pn90.i.i266 = phi { ptr, i32 } [ %i.bat, %.thread86.i.i403 ], [ %.pn230.pn.pn.pn.pn100.i.i264, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i" ], [ %.pn230.pn.pn.pn.i.i262, %bb.hv ] ; 2 uses
  %i.bqj = icmp eq i64 %.sroa.0.0.i.i205, 0
  br i1 %i.bqj, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i": ; preds = %bb.lh
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i208) #38, !noalias !34822
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i": ; preds = %bb.hp
  %i.bqk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bql = icmp eq i64 %.sroa.0.0.i.i205, 0
  br i1 %i.bql, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i"
  %i.bqm = phi ptr [ %i.azy, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.azt, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i266, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i" ], [ %i.bqk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bqm) ]
  tail call void @mi_free(ptr noundef nonnull %i.bqm) #38, !noalias !34822
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i"

bb.li:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i, %.split.i77
  %.sroa.032.1442.i = phi i64 [ 1, %.split.i77 ], [ %.sroa.032.1.i207, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i = phi i64 [ %spec.store.select.i44, %.split.i77 ], [ %i.cgk, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h6c59ba65453f6d9bE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35030)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35035)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35041)
  %i.bqn = icmp eq i64 %.sroa.0.0441.i, 0
  br i1 %i.bqn, label %.loopexit.i204, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bqo = add i64 %.sroa.0.0441.i, 7
  %i.bqp = lshr i64 %i.bqo, 3                     ; 9 uses
  %i.bqq = icmp eq i64 %.sroa.0.0441.i, 1
  br i1 %i.bqq, label %.preheader.i.i413.preheader, label %bb.lk

.preheader.i.i413.preheader:                      ; preds = %bb.lj
  br i1 %min.iters.check3812, label %.preheader.i.i413.preheader4377, label %vector.body3815

.preheader.i.i413.preheader4377:                  ; preds = %vector.body3815, %.preheader.i.i413.preheader
  %.ph4378 = phi i64 [ 1, %.preheader.i.i413.preheader ], [ %i.azl, %vector.body3815 ]
  %.sroa.066.0449.i.i414.ph = phi i64 [ 0, %.preheader.i.i413.preheader ], [ %n.vec3814, %vector.body3815 ]
  br label %.preheader.i.i413

vector.body3815:                                  ; preds = %.preheader.i.i413.preheader, %vector.body3815
  %index3816 = phi i64 [ %index.next3817, %vector.body3815 ], [ 0, %.preheader.i.i413.preheader ] ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.axz, i64 %index3816 ; 2 uses
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 16
  store <16 x i8> zeroinitializer, ptr %i.bqr, align 1, !alias.scope !35041, !noalias !35043
  store <16 x i8> zeroinitializer, ptr %i.bqs, align 1, !alias.scope !35041, !noalias !35043
  %index.next3817 = add nuw i64 %index3816, 32    ; 2 uses
  %i.bqt = icmp eq i64 %index.next3817, %n.vec3814
  br i1 %i.bqt, label %.preheader.i.i413.preheader4377, label %vector.body3815, !llvm.loop !35044

bb.lk:                                            ; preds = %bb.lj
  %.not121.i.i80 = icmp ugt i64 %.sroa.0.0441.i, %spec.store.select.i44
  br i1 %.not121.i.i80, label %bb.ll, label %.preheader360.i.i81, !prof !2480

bb.ll:                                            ; preds = %bb.lk
  %i.bqu = mul nuw nsw i64 %.sroa.0.0441.i, 704
  br label %.invoke1203.i

.invoke1203.i:                                    ; preds = %bb.nw, %.lr.ph403.i.preheader.i102, %bb.lx, %bb.ll
  %i.bqv = phi i64 [ %i.bqu, %bb.ll ], [ %i.bqp, %bb.lx ], [ %i.bra, %.lr.ph403.i.preheader.i102 ], [ %i.cgk, %bb.nw ]
  %i.bqw = phi i64 [ %i.ayd, %bb.ll ], [ %i.ayc, %bb.lx ], [ %i.ayo, %.lr.ph403.i.preheader.i102 ], [ %spec.store.select.i44, %bb.nw ]
  %i.bqx = phi ptr [ @1545, %bb.ll ], [ @1577, %bb.lx ], [ @1541, %.lr.ph403.i.preheader.i102 ], [ @1931, %bb.nw ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.bqv, i64 noundef %i.bqw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqx) #43
          to label %.cont1204.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i99", !noalias !34699

.cont1204.i:                                      ; preds = %.invoke1203.i
  unreachable

.preheader360.i.i81:                              ; preds = %bb.lk
  %.idx.i.i82 = mul nuw nsw i64 %.sroa.0.0441.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ayf, i8 0, i64 %.idx.i.i82, i1 false), !alias.scope !35035, !noalias !35045
  br label %bb.lm

bb.lm:                                            ; preds = %bb.nt, %.preheader360.i.i81
  %i.bqy = phi i64 [ 1, %.preheader360.i.i81 ], [ %i.cge, %bb.nt ] ; 4 uses
  %.sroa.069.0399.i.i83 = phi i64 [ 0, %.preheader360.i.i81 ], [ %i.bqy, %bb.nt ] ; 3 uses
  %exitcond.not.i179.i = icmp eq i64 %i.bqy, %i.azb
  br i1 %exitcond.not.i179.i, label %.invoke.i98, label %bb.nr

.loopexit358.i.i101:                              ; preds = %bb.nq
  %i.bqz = icmp eq i64 %i.brb, 0
  br i1 %i.bqz, label %.lr.ph403.i.preheader.i102, label %.split.i180.i

.lr.ph403.i.preheader.i102:                       ; preds = %.loopexit358.i.i101
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ayj, i8 0, i64 %i.ayi, i1 false), !alias.scope !35037, !noalias !35046
  %i.bra = mul i64 %i.bqp, %2                     ; 4 uses
  %.not124.i.i103 = icmp ugt i64 %i.bra, %i.ayo
  br i1 %.not124.i.i103, label %.invoke1203.i, label %bb.ln, !prof !2480

.split.i180.i:                                    ; preds = %bb.nt, %.loopexit358.i.i101
  %.sroa.05.0401.i.i85 = phi i64 [ %i.brb, %.loopexit358.i.i101 ], [ 704, %bb.nt ]
  %i.brb = add nsw i64 %.sroa.05.0401.i.i85, -1   ; 4 uses
  %invariant.gep.i.i86 = getelementptr [4 x i8], ptr %i.atf, i64 %i.brb
  %i.brc = mul i64 %i.brb, %.sroa.0.0441.i
  br label %bb.no

bb.ln:                                            ; preds = %.lr.ph403.i.preheader.i102
  %.not355404.i.i104 = icmp samesign eq i64 %i.bra, 0
end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17h50a45a0a5ab2267aE:bb.a
  %i.ddw = tail call noundef ptr @mi_zalloc_aligned(i64 noundef range(i64 1, 0) %i.dds, i64 noundef range(i64 1, -9223372036854775807) 4) #38, !noalias !35442 ; 2 uses
  %i.ddx = icmp eq ptr %i.ddw, null
  br i1 %i.ddx, label %bb.sg, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.ddy = ptrtoint ptr %i.ddw to i64
  br label %bb.sh

bb.sg:                                            ; preds = %bb.se, %bb.sd
  %.sroa.4.0.ph.i.i542.i.i943 = phi i64 [ 4, %bb.se ], [ 0, %bb.sd ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i943, i64 %i.dds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #43
          to label %.noexc543.i.i944 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.noexc543.i.i944:                                 ; preds = %bb.sg
  unreachable

bb.sh:                                            ; preds = %bb.sf, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938
  %.sroa.10.0.i.i541.i.i939 = phi i64 [ %i.ddy, %bb.sf ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i938 ]
  %i.ddz = inttoptr i64 %.sroa.10.0.i.i541.i.i939 to ptr ; 5 uses
  %i.dea = icmp samesign ult i64 %.sroa.070.1.i.i936, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dea)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ddz) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2584.i.i730) ]
  %.not229.i.i940 = icmp ugt i64 %.sroa.023.0590.i.i724, %.sroa.12.2583.i.i731
  br i1 %.not229.i.i940, label %bb.si, label %bb.sj, !prof !2480

bb.si:                                            ; preds = %bb.sh
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0590.i.i724, i64 noundef %.sroa.12.2583.i.i731, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1564) #43
          to label %bb.rb unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i942", !noalias !35264

bb.sj:                                            ; preds = %bb.sh
  %i.deb = shl nuw nsw i64 %.sroa.023.0590.i.i724, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ddz, ptr nonnull readonly align 4 %.sroa.026.2584.i.i730, i64 %i.deb, i1 false), !alias.scope !35447, !noalias !35451
  %i.dec = icmp eq i64 %.sroa.12.2583.i.i731, 0
  br i1 %i.dec, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i941": ; preds = %bb.sj
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.026.2584.i.i730) #38, !noalias !35264
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"

.preheader253.i.i775:                             ; preds = %bb.st, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759"
  %.sroa.018.1.lcssa.i.i776 = phi i64 [ %.sroa.018.0591.i.i723, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759" ], [ %i.dfi, %bb.st ]
  %.sroa.0.1.lcssa.i.i777 = phi i64 [ %.sroa.0.0593.i.i721, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hd73f7e4c840310d1E.exit547.i.i759" ], [ %i.dfb, %bb.st ]
  br i1 %.not928.i.i734, label %._crit_edge582.i.i781, label %.lr.ph581.i.i778

.lr.ph581.i.i778:                                 ; preds = %.preheader253.i.i775
  %i.ded = trunc i64 %.sroa.029.0589.i.i725 to i32
  br label %bb.sk

._crit_edge582.i.i781:                            ; preds = %bb.sm, %.preheader253.i.i775
  %i.dee = add i64 %i.dcl, %.sroa.029.0589.i.i725 ; 23 uses
  %i.def = add i64 %.sroa.047.1587.i.i727, 64     ; 2 uses
  %i.deg = icmp ult i64 %i.def, %.sroa.0.0.i.i635
  %indvars.iv.next.i.i782 = add i64 %indvars.iv.i.i720, -64
  br i1 %i.deg, label %.split.i.i719, label %bb.pz

bb.sk:                                            ; preds = %bb.sm, %.lr.ph581.i.i778
  %i.deh = phi i64 [ 1, %.lr.ph581.i.i778 ], [ %i.des, %bb.sm ] ; 3 uses
  %.sroa.0133.0580.i.i779 = phi i64 [ 0, %.lr.ph581.i.i778 ], [ %i.deh, %bb.sm ] ; 2 uses
  %i.dei = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0133.0580.i.i779
  %i.dej = load i32, ptr %i.dei, align 4, !noalias !35264, !noundef !27 ; 2 uses
  %i.dek = zext i32 %i.dej to i64                 ; 2 uses
  %i.del = icmp ult i32 %i.dej, 64
  br i1 %i.del, label %bb.sl, label %.invoke3981

bb.sl:                                            ; preds = %bb.sk
  %i.dem = or disjoint i64 %.sroa.0133.0580.i.i779, %.sroa.047.1587.i.i727 ; 3 uses
  %i.den = icmp ult i64 %i.dem, %.sroa.0.0.i.i635
  br i1 %i.den, label %bb.sm, label %.invoke3981

bb.sm:                                            ; preds = %bb.sl
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dek
  %i.dep = load i32, ptr %i.deo, align 4, !noalias !35264, !noundef !27
  %i.deq = add i32 %i.dep, %i.ded
  %i.der = getelementptr inbounds nuw [4 x i8], ptr %i.cqx, i64 %i.dem
  store i32 %i.deq, ptr %i.der, align 4, !noalias !35264
  %i.des = add nuw nsw i64 %i.deh, 1
  %exitcond857.not.i.i780 = icmp eq i64 %i.deh, %umax856.i.i732
  br i1 %exitcond857.not.i.i780, label %._crit_edge582.i.i781, label %bb.sk

.lr.ph577.i.i767:                                 ; preds = %bb.st, %.lr.ph577.preheader.i.i764
  %i.det = phi i64 [ %i.dfl, %bb.st ], [ 1, %.lr.ph577.preheader.i.i764 ] ; 6 uses
  %.sroa.0.1576.i.i768 = phi i64 [ %i.dfb, %bb.st ], [ %.sroa.0.0593.i.i721, %.lr.ph577.preheader.i.i764 ] ; 3 uses
  %.sroa.018.1575.i.i769 = phi i64 [ %i.dfi, %bb.st ], [ %.sroa.018.0591.i.i723, %.lr.ph577.preheader.i.i764 ] ; 3 uses
  %.sroa.0131.0574.i.i770 = phi i64 [ %i.det, %bb.st ], [ 0, %.lr.ph577.preheader.i.i764 ] ; 2 uses
  %exitcond850.not.i.i771 = icmp eq i64 %i.det, 65
  br i1 %exitcond850.not.i.i771, label %.invoke3981, label %bb.sn

bb.sn:                                            ; preds = %.lr.ph577.i.i767
  %i.deu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0131.0574.i.i770 ; 2 uses
  %i.dev = load i32, ptr %i.deu, align 4, !noalias !35264, !noundef !27
  %i.dew = zext i32 %i.dev to i64                 ; 4 uses
  %i.dex = icmp samesign ugt i64 %.sroa.0.0.i422.i.i661, %i.dew
  br i1 %i.dex, label %bb.sp, label %.invoke3981

bb.so:                                            ; preds = %bb.sq
  %i.dey = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

bb.sp:                                            ; preds = %bb.sn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i757) ]
  %exitcond852.not.i.i772 = icmp eq i64 %i.det, %i.ddo
  br i1 %exitcond852.not.i.i772, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1576.i.i768, i64 noundef %.sroa.14.7.i.i756, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1561) #43
          to label %bb.rb unwind label %bb.so, !noalias !35264

bb.sr:                                            ; preds = %bb.sp
  %i.dez = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427933.i.i670, i64 %i.dew
  %i.dfa = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i757, i64 %.sroa.0.1576.i.i768
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dfa, ptr noundef nonnull align 8 dereferenceable(2192) %i.dez, i64 2192, i1 false), !noalias !35264
  %i.dfb = add nuw i64 %.sroa.0.1576.i.i768, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i761) ]
  %exitcond854.not.i.i773 = icmp eq i64 %i.det, %i.ddp
  br i1 %exitcond854.not.i.i773, label %.invoke3981, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  %i.dfc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dew
  %i.dfd = load i32, ptr %i.dfc, align 4, !noalias !35264, !noundef !27
  %i.dfe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i761, i64 %.sroa.018.1575.i.i769
  store i32 %i.dfd, ptr %i.dfe, align 4, !noalias !35264
  %i.dff = load i32, ptr %i.deu, align 4, !noalias !35264, !noundef !27 ; 2 uses
  %i.dfg = zext i32 %i.dff to i64                 ; 2 uses
  %i.dfh = icmp ult i32 %i.dff, 64
  br i1 %i.dfh, label %bb.st, label %.invoke3981

bb.st:                                            ; preds = %bb.ss
  %i.dfi = add nuw i64 %.sroa.018.1575.i.i769, 1  ; 2 uses
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dfg
  %i.dfk = trunc nuw nsw i64 %.sroa.0131.0574.i.i770 to i32
  store i32 %i.dfk, ptr %i.dfj, align 4, !noalias !35264
  %i.dfl = add nuw nsw i64 %i.det, 1
  %exitcond855.not.i.i774 = icmp eq i64 %i.det, %i.dcl
  br i1 %exitcond855.not.i.i774, label %.preheader253.i.i775, label %.lr.ph577.i.i767

.invoke3981:                                      ; preds = %bb.ss, %bb.sr, %bb.sn, %.lr.ph577.i.i767, %bb.sl, %bb.sk
  %i.dfm = phi i64 [ %i.dem, %bb.sl ], [ %i.dek, %bb.sk ], [ %i.dfg, %bb.ss ], [ 64, %.lr.ph577.i.i767 ], [ %i.dew, %bb.sn ], [ %.sroa.018.1575.i.i769, %bb.sr ]
  %i.dfn = phi i64 [ %.sroa.0.0.i.i635, %bb.sl ], [ 64, %bb.sk ], [ 64, %bb.ss ], [ 64, %.lr.ph577.i.i767 ], [ %.sroa.0.0.i422.i.i661, %bb.sn ], [ %.sroa.12.5.i.i760, %bb.sr ]
  %i.dfo = phi ptr [ @1558, %bb.sl ], [ @1557, %bb.sk ], [ @1563, %bb.ss ], [ @1559, %.lr.ph577.i.i767 ], [ @1560, %bb.sn ], [ @1562, %bb.sr ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dfm, i64 noundef %i.dfn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dfo) #43
          to label %.cont3982 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.cont3982:                                        ; preds = %.invoke3981
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit549.i.i942": ; preds = %bb.si
  %i.dfp = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %i.ddz) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17h88549cc0cac5fba0E.exit551.i.i": ; preds = %bb.sa
  %i.dfq = landingpad { ptr, i32 }
          cleanup
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i949) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i683"

.lr.ph571.i.i735:                                 ; preds = %.split.i.i719, %bb.sv
  %.sroa.0127.1570.i.i736 = phi i64 [ %.sroa.0127.1.i.i751, %bb.sv ], [ 1, %.split.i.i719 ] ; 3 uses
  %.sroa.043.3569.i.i737 = phi i64 [ %.sroa.043.4.lcssa.i.i748, %bb.sv ], [ %.sroa.043.0588.i.i726, %.split.i.i719 ] ; 3 uses
  %.sroa.0127.0568.i.i738 = phi i64 [ %.sroa.0127.1570.i.i736, %bb.sv ], [ 0, %.split.i.i719 ] ; 6 uses
  %i.dfr = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427933.i.i670, i64 %.sroa.0127.0568.i.i738 ; 5 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 2176 ; 2 uses
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfr, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2184) %i.dfr, i8 0, i64 2184, i1 false), !noalias !35264
  store float 3.402000e+38, ptr %i.dft, align 8, !alias.scope !35453, !noalias !35264
  %i.dfu = add nuw nsw i64 %.sroa.0127.0568.i.i738, %.sroa.047.1587.i.i727 ; 3 uses
  %i.dfv = icmp ult i64 %i.dfu, %.sroa.0.0.i.i635
  br i1 %i.dfv, label %bb.su, label %.invoke3979

bb.su:                                            ; preds = %.lr.ph571.i.i735
  %i.dfw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i650, i64 %i.dfu
  %i.dfx = load i32, ptr %i.dfw, align 4, !noalias !35264, !noundef !27 ; 2 uses
  %.not.i170.i739 = icmp eq i32 %i.dfx, 0
  br i1 %.not.i170.i739, label %._crit_edge.i.i747, label %.lr.ph.preheader.i.i740

.lr.ph.preheader.i.i740:                          ; preds = %bb.su
  %i.dfy = zext i32 %i.dfx to i64
  %reass.sub.i741 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3569.i.i737)
  %i.dfz = add nuw nsw i64 %reass.sub.i741, 1
  br label %.lr.ph.i171.i742

._crit_edge.i.i747:                               ; preds = %bb.sx, %bb.su
  %.sroa.043.4.lcssa.i.i748 = phi i64 [ %.sroa.043.3569.i.i737, %bb.su ], [ %i.dgu, %bb.sx ] ; 2 uses
  %i.dga = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h6e6faa88087b3713E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dfr)
          to label %bb.sv unwind label %.thread163.loopexit.i.i749, !noalias !35264

bb.sv:                                            ; preds = %._crit_edge.i.i747
  store float %i.dga, ptr %i.dft, align 8, !alias.scope !35456, !noalias !35264
  %i.dgb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0127.0568.i.i738
  %i.dgc = trunc nuw nsw i64 %.sroa.0127.0568.i.i738 to i32 ; 2 uses
  store i32 %i.dgc, ptr %i.dgb, align 4, !noalias !35264
  %i.dgd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0568.i.i738
  store i32 %i.dgc, ptr %i.dgd, align 4, !noalias !35264
  %i.dge = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0568.i.i738
  store i32 1, ptr %i.dge, align 4, !noalias !35264
  %i.dgf = icmp samesign ult i64 %.sroa.0127.1570.i.i736, %.sroa.0.0.i447.i.i733 ; 2 uses
  %i.dgg = zext i1 %i.dgf to i64
  %.sroa.0127.1.i.i751 = add nuw nsw i64 %.sroa.0127.1570.i.i736, %i.dgg
  br i1 %i.dgf, label %.lr.ph571.i.i735, label %._crit_edge572.i.i752

.lr.ph.i171.i742:                                 ; preds = %bb.sx, %.lr.ph.preheader.i.i740
  %i.dgh = phi i64 [ %i.dgv, %bb.sx ], [ 1, %.lr.ph.preheader.i.i740 ] ; 3 uses
  %.sroa.043.4567.i.i743 = phi i64 [ %i.dgu, %bb.sx ], [ %.sroa.043.3569.i.i737, %.lr.ph.preheader.i.i740 ] ; 3 uses
  %exitcond848.not.i.i744 = icmp eq i64 %i.dgh, %i.dfz
  br i1 %exitcond848.not.i.i744, label %.invoke3979, label %bb.sw

bb.sw:                                            ; preds = %.lr.ph.i171.i742
  %i.dgi = getelementptr inbounds nuw [2 x i8], ptr %i.cjn, i64 %.sroa.043.4567.i.i743
  %i.dgj = load i16, ptr %i.dgi, align 2, !alias.scope !35459, !noalias !35413, !noundef !27 ; 2 uses
  %i.dgk = zext i16 %i.dgj to i64                 ; 2 uses
  %i.dgl = icmp ult i16 %i.dgj, 544
  br i1 %i.dgl, label %bb.sx, label %.invoke3979

.invoke3979:                                      ; preds = %.lr.ph571.i.i735, %bb.sw, %.lr.ph.i171.i742
  %i.dgm = phi i64 [ %.sroa.043.4567.i.i743, %.lr.ph.i171.i742 ], [ %i.dgk, %bb.sw ], [ %i.dfu, %.lr.ph571.i.i735 ]
  %i.dgn = phi i64 [ %2, %.lr.ph.i171.i742 ], [ 544, %bb.sw ], [ %.sroa.0.0.i.i635, %.lr.ph571.i.i735 ]
  %i.dgo = phi ptr [ @1567, %.lr.ph.i171.i742 ], [ @1932, %bb.sw ], [ @1566, %.lr.ph571.i.i735 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dgm, i64 noundef %i.dgn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgo) #43
          to label %.cont3980 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.cont3980:                                        ; preds = %.invoke3979
  unreachable

bb.sx:                                            ; preds = %bb.sw
  %i.dgp = getelementptr inbounds nuw [4 x i8], ptr %i.dfr, i64 %i.dgk ; 2 uses
  %i.dgq = load i32, ptr %i.dgp, align 4, !alias.scope !35462, !noalias !35264, !noundef !27
  %i.dgr = add i32 %i.dgq, 1
  store i32 %i.dgr, ptr %i.dgp, align 4, !alias.scope !35462, !noalias !35264
  %i.dgs = load i64, ptr %i.dfs, align 8, !alias.scope !35465, !noalias !35264, !noundef !27
  %i.dgt = add i64 %i.dgs, 1
  store i64 %i.dgt, ptr %i.dfs, align 8, !alias.scope !35468, !noalias !35264
  %i.dgu = add nuw i64 %.sroa.043.4567.i.i743, 1  ; 2 uses
  %i.dgv = add nuw nsw i64 %i.dgh, 1
  %exitcond849.not.i.i746 = icmp eq i64 %i.dgh, %i.dfy
  br i1 %exitcond849.not.i.i746, label %._crit_edge.i.i747, label %.lr.ph.i171.i742

bb.sy:                                            ; preds = %bb.tb, %bb.px
  %.sroa.047.0565.i.i671 = phi i64 [ 0, %bb.px ], [ %i.dha, %bb.tb ] ; 2 uses
  %.sroa.059.0564.i.i672 = phi i64 [ 0, %bb.px ], [ %.sroa.059.1.i.i718, %bb.tb ] ; 5 uses
  %i.dgw = icmp ult i64 %.sroa.059.0564.i.i672, %.sroa.0.0.i.i635
  br i1 %i.dgw, label %bb.sz, label %.invoke.i.i673

bb.sz:                                            ; preds = %bb.sy
  %i.dgx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i650, i64 %.sroa.059.0564.i.i672 ; 2 uses
  %i.dgy = load i32, ptr %i.dgx, align 4, !noalias !35264, !noundef !27
  %i.dgz = add i32 %i.dgy, 1
  store i32 %i.dgz, ptr %i.dgx, align 4, !noalias !35264
  %i.dha = add nuw i64 %.sroa.047.0565.i.i671, 1  ; 3 uses
  %i.dhb = icmp eq i64 %i.dha, %.sroa.01.1        ; 2 uses
  br i1 %i.dhb, label %bb.tc, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.coy, i64 %.sroa.047.0565.i.i671
  %i.dhd = load i8, ptr %i.dhc, align 1, !alias.scope !35250, !noalias !35471, !noundef !27
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.coy, i64 %i.dha
  %i.dhf = load i8, ptr %i.dhe, align 1, !alias.scope !35250, !noalias !35471, !noundef !27
  %.not238.i.i717 = icmp eq i8 %i.dhd, %i.dhf
  br i1 %.not238.i.i717, label %bb.tb, label %bb.tc

.invoke.i.i673:                                   ; preds = %bb.sy
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0564.i.i672, i64 noundef %.sroa.0.0.i.i635, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1568) #43
          to label %.cont.i.i716 unwind label %.thread163.loopexit.split-lp.loopexit.split-lp.i.i674, !noalias !35264

.cont.i.i716:                                     ; preds = %.invoke.i.i673
  unreachable

bb.tb:                                            ; preds = %bb.tc, %bb.ta
  %.sroa.059.1.i.i718 = phi i64 [ %i.dhg, %bb.tc ], [ %.sroa.059.0564.i.i672, %bb.ta ]
  br i1 %i.dhb, label %.split.i.i719, label %bb.sy

bb.tc:                                            ; preds = %bb.ta, %bb.sz
  %i.dhg = add nuw nsw i64 %.sroa.059.0564.i.i672, 1
  br label %bb.tb

.thread130.i.i799:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835", %.loopexit.split-lp.i.i829, %bb.py
  %.pn230155.i.i800 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i798, %bb.py ], [ %.pn.i.i834, %.loopexit.split-lp.i.i829 ], [ %.pn953.i.i836, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.016.4154.i.i801 = phi ptr [ %.sroa.016.7.i.i757, %bb.py ], [ %.sroa.016.6.i.i833, %.loopexit.split-lp.i.i829 ], [ %.sroa.016.6952.i.i837, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.14.4153.i.i802 = phi i64 [ %.sroa.14.7.i.i756, %bb.py ], [ %.sroa.14.6.i.i832, %.loopexit.split-lp.i.i829 ], [ %.sroa.14.6951.i.i838, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.026.3152.i.i803 = phi ptr [ %.sroa.026.4.ph162.i.i797, %bb.py ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i829 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.12.3151.i.i804 = phi i64 [ %.sroa.12.4.ph161.i.i796, %bb.py ], [ 0, %.loopexit.split-lp.i.i829 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.044.0148.i.i805 = phi ptr [ %.sroa.044.1.ph160.i.i795, %bb.py ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i829 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ]
  %.sroa.11.0147.i.i806 = phi i1 [ %.sroa.11.1.ph159.i.i794, %bb.py ], [ true, %.loopexit.split-lp.i.i829 ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ]
  %.sroa.051.0146.i.i807 = phi ptr [ %i.ctt, %bb.py ], [ %.sroa.051.2.i.i831, %.loopexit.split-lp.i.i829 ], [ %.sroa.051.2950.i.i839, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ] ; 2 uses
  %.sroa.1152.0145.i.i808 = phi i64 [ %i.dee, %bb.py ], [ %.sroa.1152.2.i.i830, %.loopexit.split-lp.i.i829 ], [ %.sroa.1152.2949.i.i840, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i835" ]
  %i.dhh = icmp eq i64 %.sroa.1152.0145.i.i808, 0
  br i1 %i.dhh, label %bb.qz, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i809"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i809": ; preds = %.thread130.i.i799
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0146.i.i807) ]
  tail call void @mi_free(ptr noundef nonnull %.sroa.051.0146.i.i807) #38, !noalias !35264
  br label %bb.qz

bb.td:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i707", %bb.pr, %.thread86.i.i971
  %.pn230.pn.pn.pn.pn.pn90.i.i710 = phi { ptr, i32 } [ %i.crs, %.thread86.i.i971 ], [ %.pn230.pn.pn.pn.pn100.i.i708, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i168.i707" ], [ %.pn230.pn.pn.pn.i.i705, %bb.pr ] ; 2 uses
  %i.dhi = icmp eq i64 %.sroa.0.0.i.i635, 0
  br i1 %i.dhi, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i714", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i711"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i711": ; preds = %bb.td
  tail call void @mi_free(ptr noundef nonnull %.sroa.10.0.i.i411.i.i650) #38, !noalias !35264
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i712"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973": ; preds = %bb.pl
  %i.dhj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dhk = icmp eq i64 %.sroa.0.0.i.i635, 0
  br i1 %i.dhk, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i714", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i712"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i712": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i711"
  %i.dhl = phi ptr [ %i.cqx, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i711" ], [ %i.cqs, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85958.i.i713 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i710, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.thread956.i.i711" ], [ %i.dhj, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17h9b85be35385d1483E.exit557.i.i973" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dhl) ]
  tail call void @mi_free(ptr noundef nonnull %i.dhl) #38, !noalias !35264
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17h593fe8489026020eE.exit220.i714"

bb.te:                                            ; preds = %bb.re
  %i.dhm = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.sroa.0109.1.i.i896, ptr %i.dhm, align 8, !alias.scope !35325, !noalias !35326
  %i.dhn = zext i8 %.sroa.0113.1.i.i895 to i64
  %i.dho = add nuw nsw i64 %i.dhn, 1
  %i.dhp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.dho, ptr %i.dhp, align 8, !alias.scope !35325, !noalias !35326
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cuo) #38, !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i650) #38, !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 4 %i.cqx) #38, !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !35264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !35264
  tail call void @mi_free(ptr noundef nonnull align 1 %i.coy) #38, !noalias !35141
  br label %_ZN6brotli3enc14block_splitter15SplitByteVector17h458edd1a9d7c9482E.exit

bb.tf:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i, %.split.i496
  %.sroa.032.1442.i499 = phi i64 [ 1, %.split.i496 ], [ %.sroa.032.1.i646, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0441.i500 = phi i64 [ %spec.store.select.i447, %.split.i496 ], [ %i.dxn, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h8c4688d43053fe9dE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35483)
  %i.dhq = icmp eq i64 %.sroa.0.0441.i500, 0
  br i1 %i.dhq, label %.loopexit.i634, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.dhr = add i64 %.sroa.0.0441.i500, 7
  %i.dhs = lshr i64 %i.dhr, 3                     ; 9 uses
  %i.dht = icmp eq i64 %.sroa.0.0441.i500, 1
  br i1 %i.dht, label %.preheader.i.i986.preheader, label %bb.th

.preheader.i.i986.preheader:                      ; preds = %bb.tg
  br i1 %min.iters.check3897, label %.preheader.i.i986.preheader4142, label %vector.body3900

.preheader.i.i986.preheader4142:                  ; preds = %vector.body3900, %.preheader.i.i986.preheader
  %.ph4143 = phi i64 [ 1, %.preheader.i.i986.preheader ], [ %i.cqk, %vector.body3900 ]
  %.sroa.066.0449.i.i987.ph = phi i64 [ 0, %.preheader.i.i986.preheader ], [ %n.vec3899, %vector.body3900 ]
  br label %.preheader.i.i986

vector.body3900:                                  ; preds = %.preheader.i.i986.preheader, %vector.body3900
  %index3901 = phi i64 [ %index.next3902, %vector.body3900 ], [ 0, %.preheader.i.i986.preheader ] ; 2 uses
  %i.dhu = getelementptr inbounds nuw i8, ptr %i.coy, i64 %index3901 ; 2 uses
  %i.dhv = getelementptr inbounds nuw i8, ptr %i.dhu, i64 16
  store <16 x i8> zeroinitializer, ptr %i.dhu, align 1, !alias.scope !35483, !noalias !35485
  store <16 x i8> zeroinitializer, ptr %i.dhv, align 1, !alias.scope !35483, !noalias !35485
  %index.next3902 = add nuw i64 %index3901, 32    ; 2 uses
  %i.dhw = icmp eq i64 %index.next3902, %n.vec3899
  br i1 %i.dhw, label %.preheader.i.i986.preheader4142, label %vector.body3900, !llvm.loop !35486

bb.th:                                            ; preds = %bb.tg
  %.not121.i.i501 = icmp ugt i64 %.sroa.0.0441.i500, %spec.store.select.i447
  br i1 %.not121.i.i501, label %bb.ti, label %.preheader360.i.i502, !prof !2480

bb.ti:                                            ; preds = %bb.th
  %i.dhx = mul nuw nsw i64 %.sroa.0.0441.i500, 544
  br label %.invoke1203.i980

.invoke1203.i980:                                 ; preds = %bb.vt, %._crit_edge408.i.i534, %.lr.ph403.i.preheader.i530, %bb.tu, %bb.ti
  %i.dhy = phi i64 [ %i.dhx, %bb.ti ], [ %i.dhs, %bb.tu ], [ %.sroa.01.1, %._crit_edge408.i.i534 ], [ %i.did, %.lr.ph403.i.preheader.i530 ], [ %i.dxn, %bb.vt ]
  %i.dhz = phi i64 [ %i.cpc, %bb.ti ], [ %i.cpb, %bb.tu ], [ %2, %._crit_edge408.i.i534 ], [ %i.cpn, %.lr.ph403.i.preheader.i530 ], [ %spec.store.select.i447, %bb.vt ]
  %i.dia = phi ptr [ @1545, %bb.ti ], [ @1577, %bb.tu ], [ @1540, %._crit_edge408.i.i534 ], [ @1541, %.lr.ph403.i.preheader.i530 ], [ @1931, %bb.vt ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.dhy, i64 noundef %i.dhz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dia) #43
          to label %.cont1204.i981 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17ha73f3911df9ebe4dE.exit.loopexit.split-lp.loopexit.split-lp.i525", !noalias !35141

.cont1204.i981:                                   ; preds = %.invoke1203.i980
  unreachable

.preheader360.i.i502:                             ; preds = %bb.th
  %.idx.i.i503 = mul nuw nsw i64 %.sroa.0.0441.i500, 2176
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cpe, i8 0, i64 %.idx.i.i503, i1 false), !alias.scope !35477, !noalias !35487
  br label %bb.tj

bb.tj:                                            ; preds = %bb.vq, %.preheader360.i.i502
  %i.dib = phi i64 [ 1, %.preheader360.i.i502 ], [ %i.dxh, %bb.vq ] ; 4 uses
  %.sroa.069.0399.i.i504 = phi i64 [ 0, %.preheader360.i.i502 ], [ %i.dib, %bb.vq ] ; 3 uses
  %exitcond.not.i179.i505 = icmp eq i64 %i.dib, %i.cqa
  br i1 %exitcond.not.i179.i505, label %.invoke.i524, label %bb.vo

.loopexit358.i.i529:                              ; preds = %bb.vn
  %i.dic = icmp eq i64 %i.die, 0
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc19backward_references2hq11UpdateNodes17h912b83bf12bcd350E:bb.a
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %umax, i64 noundef range(i64 1, 0) %16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1762) #43, !noalias !36356
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load float, ptr %i.ak, align 4, !alias.scope !36356, !noundef !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sroa.011.0.i = phi float [ %i.al, %bb.g ], [ 0.000000e+00, %bb.e ]
  %i.am = fcmp ugt float %.sroa.011.0.i, %.sroa.0.0.i246
  br i1 %i.am, label %_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = add nuw nsw i64 %.sroa.02.0.i245, 1     ; 4 uses
  %i.ao = icmp eq i64 %i.an, %.sroa.09.0.i243     ; 3 uses
  %i.ap = fadd float %.sroa.0.0.i246, 1.000000e+00
  %i.aq = select i1 %i.ao, i64 %.sroa.07.0.i244, i64 0
  %.sroa.09.1.i = add i64 %i.aq, %.sroa.09.0.i243
  %i.ar = zext i1 %i.ao to i64
  %.sroa.07.1.i = shl i64 %.sroa.07.0.i244, %i.ar
  %.sroa.0.1.i = select i1 %i.ao, float %i.ap, float %.sroa.0.0.i246
  %i.as = add i64 %i.an, %2
  %exitcond = icmp eq i64 %i.an, %i.ae
  br i1 %exitcond, label %_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit, label %.lr.ph

_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit: ; preds = %bb.h, %bb.i, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit97"
  %.sroa.02.0.i.lcssa = phi i64 [ 2, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit97" ], [ %i.ae, %bb.i ], [ %.sroa.02.0.i245, %bb.h ] ; 2 uses
  %.sroa.045.0 = select i1 %i.f, i64 1, i64 5
  %.sroa.0.0.i120 = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %.sroa.045.0)
  %.not312 = icmp eq i64 %i.j, 0
  br i1 %.not312, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit
  %i.at = add i64 %.sroa.02.0.i.lcssa, -1         ; 2 uses
  %.not285 = icmp ult i64 %i.at, %i.c
  %i.au = icmp ugt i64 %i.b, %4
  %i.av = sub nuw i64 %4, %i.b
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.b
  %.not92 = icmp eq i64 %6, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.val116 = load i64, ptr %i.ax, align 8         ; 4 uses
  %.val115 = load ptr, ptr %13, align 8, !nonnull !27, !align !603 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.az = icmp ne i64 %10, 0                      ; 2 uses
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 16               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bg = load i32, ptr %i.bf, align 8            ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = add nuw nsw i64 %i.bh, 2
  %i.bj = and i64 %i.bi, 63
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = xor i64 %i.bd, -1
  %invariant.op = add i64 %i.bk, %i.bl
  %i.bm = and i32 %i.bg, 31
  %notmask.i = shl nsw i32 -1, %i.bm
  %i.bn = xor i32 %notmask.i, -1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = and i64 %i.bh, 63
  br label %bb.j

._crit_edge309:                                   ; preds = %.backedge, %_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit
  %.sroa.07.0.lcssa = phi i64 [ 0, %_ZN6brotli3enc19backward_references2hq24ComputeMinimumCopyLength17h93e903b52de1f5e1E.exit ], [ %.sroa.07.0.be, %.backedge ]
  ret i64 %.sroa.07.0.lcssa

bb.j:                                             ; preds = %.lr.ph308, %.backedge
  %.sroa.050.1307 = phi i64 [ 1, %.lr.ph308 ], [ %.sroa.050.1, %.backedge ] ; 3 uses
  %.sroa.07.0306 = phi i64 [ 0, %.lr.ph308 ], [ %.sroa.07.0.be, %.backedge ] ; 2 uses
  %.sroa.050.0305 = phi i64 [ 0, %.lr.ph308 ], [ %.sroa.050.1307, %.backedge ] ; 2 uses
  %i.bq = load i64, ptr %i.i, align 8, !noundef !27
  %i.br = sub i64 %.sroa.050.0305, %i.bq
  %i.bs = and i64 %i.br, 7
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %i.bs ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !27
  %i.bw = sub i64 %2, %i.bv                       ; 10 uses
  %i.bx = icmp ult i64 %i.bw, 6
  br i1 %i.bx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp ult i64 %i.bw, 130
  br i1 %i.by, label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bz = trunc nuw nsw i64 %i.bw to i16
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.ca = icmp ult i64 %i.bw, 2114
  br i1 %i.ca, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = icmp ult i64 %i.bw, 6210
  br i1 %i.cb, label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cc = add nsw i64 %i.bw, -66
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = trunc nuw nsw i64 %i.cd to i16
  %i.cf = xor i16 %i.ce, 63
  %i.cg = add nuw nsw i16 %i.cf, 10
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp ult i64 %i.bw, 22594
  %..i = select i1 %i.ch, i16 22, i16 23
  br label %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread

_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread: ; preds = %bb.l, %bb.o, %bb.p, %bb.n
  %.sroa.0.0.i101.ph = phi i16 [ 21, %bb.n ], [ %..i, %bb.p ], [ %i.cg, %bb.o ], [ %i.bz, %bb.l ] ; 2 uses
  %i.ci = zext nneg i16 %.sroa.0.0.i101.ph to i64
  br label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit"

_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit: ; preds = %bb.k
  %i.cj = add nsw i64 %i.bw, -2                   ; 2 uses
  %i.ck = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cj, i1 false)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = xor i32 %i.cl, 63
  %i.cn = add nsw i32 %i.cm, -1                   ; 2 uses
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = lshr i64 %i.cj, %i.cq
  %i.cs = add nuw nsw i64 %i.cr, %i.cp            ; 2 uses
  %i.ct = trunc nuw nsw i64 %i.cs to i16
  %i.cu = add nuw nsw i16 %i.ct, 2                ; 2 uses
  %i.cv = zext nneg i16 %i.cu to i64              ; 2 uses
  %i.cw = icmp samesign ult i64 %i.cs, 22
  br i1 %i.cw, label %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit", label %bb.q

"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit": ; preds = %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread, %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit
  %i.cx = phi i64 [ %i.ci, %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread ], [ %i.cv, %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit ]
  %.sroa.0.0.i101129 = phi i16 [ %.sroa.0.0.i101.ph, %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit.thread ], [ %i.cu, %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.cz = load float, ptr %i.cy, align 8, !noundef !27
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc9constants9kInsExtra17ha96e67292fcac28eE, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !noundef !27
  %i.dc = uitofp i32 %i.db to float
  %i.dd = fadd float %i.cz, %i.dc
  %i.de = load float, ptr %i.v, align 4, !noundef !27
  %i.df = load float, ptr %.val117, align 4, !noundef !27
  %i.dg = fsub float %i.de, %i.df
  %i.dh = fadd float %i.dd, %i.dg                 ; 4 uses
  br i1 %.not285, label %.lr.ph253.lr.ph, label %.outer._crit_edge

.lr.ph253.lr.ph:                                  ; preds = %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit"
  %i.di = shl nuw nsw i16 %.sroa.0.0.i101129, 3
  %i.dj = and i16 %i.di, 56                       ; 2 uses
  %i.dk = icmp samesign ult i16 %.sroa.0.0.i101129, 8
  %i.dl = lshr i16 %.sroa.0.0.i101129, 3
  %narrow.i103 = mul nuw nsw i16 %i.dl, 3
  %i.dm = trunc i64 %i.bw to i32
  br label %.lr.ph253

bb.q:                                             ; preds = %_ZN6brotli3enc7command19GetInsertLengthCode17h1ca61d45192cbfcfE.exit
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cv, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1736) #43
  unreachable

.loopexit147:                                     ; preds = %bb.ar, %bb.ac
  %.sroa.012.1.lcssa = phi i64 [ %.sroa.012.0.ph287, %bb.ac ], [ %.sroa.0.0279, %bb.ar ] ; 2 uses
  %.sroa.07.2.lcssa = phi i64 [ %.sroa.07.1.ph288, %bb.ac ], [ %.sroa.07.3, %bb.ar ] ; 2 uses
  %.not = icmp ult i64 %.sroa.012.1.lcssa, %i.c
  %i.dn = icmp ult i64 %.sroa.052.1252, 16        ; 2 uses
  %i.do = zext i1 %i.dn to i64
  %.sroa.052.1249 = add nuw nsw i64 %.sroa.052.1252, %i.do
  %or.cond94250 = and i1 %i.dn, %.not
  br i1 %or.cond94250, label %.lr.ph253, label %.outer._crit_edge

.lr.ph253:                                        ; preds = %.lr.ph253.lr.ph, %.loopexit147
  %.sroa.052.1249290 = phi i64 [ 1, %.lr.ph253.lr.ph ], [ %.sroa.052.1249, %.loopexit147 ]
  %.sroa.07.1.ph288 = phi i64 [ %.sroa.07.0306, %.lr.ph253.lr.ph ], [ %.sroa.07.2.lcssa, %.loopexit147 ] ; 4 uses
  %.sroa.012.0.ph287 = phi i64 [ %i.at, %.lr.ph253.lr.ph ], [ %.sroa.012.1.lcssa, %.loopexit147 ] ; 4 uses
  %.sroa.052.0.ph286 = phi i64 [ 0, %.lr.ph253.lr.ph ], [ %.sroa.052.1252, %.loopexit147 ]
  %i.dp = add i64 %.sroa.012.0.ph287, %i.b        ; 4 uses
  %i.dq = icmp ult i64 %i.dp, %4
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp
  br i1 %i.dq, label %.lr.ph253.split, label %bb.r

.lr.ph253.split:                                  ; preds = %.lr.ph253
  %i.ds = icmp ugt i64 %i.dp, %5
  br i1 %i.ds, label %.outer._crit_edge, label %.lr.ph253.split.split.split.preheader

.lr.ph253.split.split.split.preheader:            ; preds = %.lr.ph253.split
  %i.dt = load i8, ptr %i.dr, align 1, !noundef !27
  br label %.lr.ph253.split.split.split

.outer._crit_edge:                                ; preds = %.lr.ph253.split, %.loopexit147, %bb.s, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit"
  %.sroa.07.1.ph.lcssa187 = phi i64 [ %.sroa.07.0306, %"_ZN6brotli3enc19backward_references2hq29ZopfliCostModel$LT$AllocF$GT$17get_literal_costs17hf5624ff4da68ef36E.exit" ], [ %.sroa.07.1.ph288, %bb.s ], [ %.sroa.07.2.lcssa, %.loopexit147 ], [ %.sroa.07.1.ph288, %.lr.ph253.split ] ; 2 uses
  %i.du = icmp samesign ult i64 %.sroa.050.0305, 2
  %brmerge.not = and i1 %i.du, %i.az
  br i1 %brmerge.not, label %.lr.ph303, label %.backedge

.backedge:                                        ; preds = %.loopexit, %.outer._crit_edge
  %.sroa.07.0.be = phi i64 [ %.sroa.07.1.ph.lcssa187, %.outer._crit_edge ], [ %.sroa.07.5.lcssa, %.loopexit ] ; 2 uses
  %i.dv = icmp samesign ult i64 %.sroa.050.1307, %.sroa.0.0.i120 ; 2 uses
  %i.dw = zext i1 %i.dv to i64
  %.sroa.050.1 = add nuw nsw i64 %.sroa.050.1307, %i.dw
  br i1 %i.dv, label %bb.j, label %._crit_edge309

.lr.ph303:                                        ; preds = %.outer._crit_edge
  %i.dx = shl nuw nsw i16 %.sroa.0.0.i101129, 3
  %i.dy = and i16 %i.dx, 56
  %i.dz = lshr i16 %.sroa.0.0.i101129, 3
  %narrow.i = mul nuw nsw i16 %i.dz, 3
  %i.ea = trunc i64 %i.bw to i32
  br label %bb.at

.lr.ph253.split.split.split:                      ; preds = %.lr.ph253.split.split.split.preheader, %bb.s
  %.sroa.052.1252 = phi i64 [ %.sroa.052.1, %bb.s ], [ %.sroa.052.1249290, %.lr.ph253.split.split.split.preheader ] ; 6 uses
  %.sroa.052.0251 = phi i64 [ %.sroa.052.1252, %bb.s ], [ %.sroa.052.0.ph286, %.lr.ph253.split.split.split.preheader ] ; 7 uses
  %i.eb = getelementptr inbounds nuw i8, ptr @257, i64 %.sroa.052.0251
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !27
  %i.ed = and i8 %i.ec, 3
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !noundef !27
  %i.eh = getelementptr inbounds nuw i8, ptr @258, i64 %.sroa.052.0251
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !27
  %i.ej = sext i8 %i.ei to i32
  %i.ek = add i32 %i.eg, %i.ej                    ; 2 uses
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %i.em = sub i64 %i.a, %i.el                     ; 2 uses
  %i.en = icmp ult i64 %.sroa.0.0.i119, %i.el
  %i.eo = icmp uge i64 %i.em, %i.a
  %or.cond2 = or i1 %i.en, %i.eo
  br i1 %or.cond2, label %bb.s, label %bb.t

bb.r:                                             ; preds = %.lr.ph253
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dp, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1737) #43
  unreachable

bb.s:                                             ; preds = %bb.t, %bb.v, %.lr.ph253.split.split.split
  %i.ep = icmp ult i64 %.sroa.052.1252, 16        ; 2 uses
  %i.eq = zext i1 %i.ep to i64
  %.sroa.052.1 = add nuw nsw i64 %.sroa.052.1252, %i.eq
  br i1 %i.ep, label %.lr.ph253.split.split.split, label %.outer._crit_edge

bb.t:                                             ; preds = %.lr.ph253.split.split.split
  %i.er = and i64 %i.em, %5                       ; 8 uses
  %i.es = add i64 %i.er, %.sroa.012.0.ph287       ; 4 uses
  %i.et = icmp ugt i64 %i.es, %5
  br i1 %i.et, label %bb.s, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eu = icmp ult i64 %i.es, %4
  br i1 %i.eu, label %bb.v, label %.split.us

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 %i.es
  %i.ew = load i8, ptr %i.ev, align 1, !noundef !27
  %.not91 = icmp eq i8 %i.dt, %i.ew
  br i1 %.not91, label %.split259.us, label %bb.s

.split.us:                                        ; preds = %bb.u
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.es, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1738) #43
  unreachable

.split259.us:                                     ; preds = %bb.v
  %i.ex = icmp ugt i64 %i.er, %4
  br i1 %i.ex, label %bb.x, label %bb.w, !prof !29

bb.w:                                             ; preds = %.split259.us
  br i1 %i.au, label %bb.z, label %bb.y, !prof !29

bb.x:                                             ; preds = %.split259.us
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.er, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1744) #43
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 %i.er
  %i.ez = sub nuw i64 %4, %i.er
  %i.fa = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ey, i64 noundef %i.ez, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aw, i64 noundef %i.av, i64 noundef %i.c) ; 3 uses
  br i1 %.not92, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.b, i64 noundef %4, i64 noundef %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1743) #43
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.fb = icmp ult i64 %i.er, %6
  %i.fc = add i64 %i.fa, %i.er
  %i.fd = icmp ugt i64 %i.fc, %6
  %or.cond4 = and i1 %i.fb, %i.fd
  %i.fe = sub i64 %6, %i.er
  %spec.select = select i1 %or.cond4, i64 %i.fe, i64 %i.fa
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.sroa.027.0 = phi i64 [ %i.fa, %bb.y ], [ %spec.select, %bb.aa ] ; 3 uses
  %i.ff = icmp ult i64 %.sroa.052.0251, %.val116
  br i1 %i.ff, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.val115, i64 %.sroa.052.0251
  %i.fh = load float, ptr %i.fg, align 4, !noundef !27
  %i.fi = fadd float %i.dh, %i.fh
  %i.fj = add i64 %.sroa.012.0.ph287, 1           ; 2 uses
  %.not.i122278 = icmp ugt i64 %i.fj, %.sroa.027.0
  br i1 %.not.i122278, label %.loopexit147, label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.ac
  %i.fk = icmp eq i64 %.sroa.052.0251, 0
  %or.cond.i = and i1 %i.dk, %i.fk
  %.sroa.052.0.tr = trunc nuw nsw i64 %.sroa.052.0251 to i32
  %i.fl = shl nuw nsw i32 %.sroa.052.0.tr, 27
  %i.fm = add nuw i32 %i.fl, 134217728
  %i.fn = or i32 %i.fm, %i.dm
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.052.0251, i64 noundef %.val116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1739) #43
  unreachable

bb.ae:                                            ; preds = %.lr.ph282, %bb.ar
  %.sroa.07.2280 = phi i64 [ %.sroa.07.1.ph288, %.lr.ph282 ], [ %.sroa.07.3, %bb.ar ] ; 2 uses
  %.sroa.0.0279 = phi i64 [ %i.fj, %.lr.ph282 ], [ %spec.select145, %bb.ar ] ; 12 uses
  %i.fo = icmp uge i64 %.sroa.0.0279, %.sroa.027.0 ; 2 uses
  %not. = xor i1 %i.fo, true
  %i.fp = zext i1 %not. to i64
  %spec.select145 = add i64 %.sroa.0.0279, %i.fp  ; 2 uses
  %i.fq = icmp ult i64 %.sroa.0.0279, 10
  br i1 %i.fq, label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit100, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fr = icmp ult i64 %.sroa.0.0279, 134
  br i1 %i.fr, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fs = icmp ult i64 %.sroa.0.0279, 2118
  br i1 %i.fs, label %bb.ai, label %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.ft = add nsw i64 %.sroa.0.0279, -6           ; 2 uses
  %i.fu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ft, i1 false)
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = xor i32 %i.fv, 63
  %i.fx = add nsw i32 %i.fw, -1                   ; 2 uses
  %i.fy = shl nuw nsw i32 %i.fx, 1
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = zext nneg i32 %i.fx to i64
  %i.gb = lshr i64 %i.ft, %i.ga
  %i.gc = add nuw nsw i64 %i.gb, %i.fz
  br label %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit100

bb.ai:                                            ; preds = %bb.ag
  %i.gd = add nsw i64 %.sroa.0.0279, -70
  %i.ge = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gd, i1 false)
  %i.gf = trunc nuw nsw i64 %i.ge to i16
  %i.gg = xor i16 %i.gf, 63
  %i.gh = add nuw nsw i16 %i.gg, 12
  br label %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread

_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread: ; preds = %bb.ag, %bb.ai
  %.sroa.0.0.i99.ph = phi i16 [ 23, %bb.ag ], [ %i.gh, %bb.ai ] ; 3 uses
  %i.gi = and i16 %.sroa.0.0.i99.ph, 7
  %i.gj = or disjoint i16 %i.gi, %i.dj
  %i.gk = zext nneg i16 %.sroa.0.0.i99.ph to i64
  br label %bb.aj

_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit100: ; preds = %bb.ae, %bb.ah
  %.sroa.0.0279.sink = phi i64 [ %i.gc, %bb.ah ], [ %.sroa.0.0279, %bb.ae ]
  %.sink500 = phi i16 [ 4, %bb.ah ], [ -2, %bb.ae ]
  %i.gl = trunc nuw nsw i64 %.sroa.0.0279.sink to i16
  %i.gm = add nsw i16 %.sink500, %i.gl            ; 7 uses
  %i.gn = and i16 %i.gm, 7
  %i.go = or disjoint i16 %i.gn, %i.dj            ; 2 uses
  %i.gp = icmp ult i16 %i.gm, 16
  %or.cond1.i = and i1 %or.cond.i, %i.gp
  br i1 %or.cond1.i, label %.thread, label %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit

.thread:                                          ; preds = %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit100
  %i.gq = shl nuw nsw i16 %i.gm, 3
  %i.gr = and i16 %i.gq, 64
  %spec.select.i = or disjoint i16 %i.go, %i.gr
  %i.gs = zext nneg i16 %i.gm to i64
  %i.gt = zext nneg i16 %spec.select.i to i64
  br label %bb.al

_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit: ; preds = %_ZN6brotli3enc7command17GetCopyLengthCode17h0e9c4af72170ff0cE.exit100
  %i.gu = zext i16 %i.gm to i64                   ; 2 uses
  %i.gv = icmp ult i16 %i.gm, 24
  br i1 %i.gv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit
  %i.gw = phi i64 [ %i.gk, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread ], [ %i.gu, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit ]
  %.sroa.0.0.i99431433 = phi i16 [ %.sroa.0.0.i99.ph, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread ], [ %i.gm, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit ]
  %i.gx = phi i16 [ %i.gj, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit.thread ], [ %i.go, %_ZN6brotli3enc7command20combine_length_codes17h931ddf81d3f771e2E.exit ]
  %i.gy = lshr i16 %.sroa.0.0.i99431433, 3
  %narrow2.i104 = add nuw nsw i16 %i.gy, %narrow.i103
  %i.gz = zext nneg i16 %narrow2.i104 to i32      ; 2 uses
  %i.ha = shl nuw nsw i32 %i.gz, 6
  %i.hb = add nuw nsw i32 %i.ha, 64
  %i.hc = shl nuw nsw i32 %i.gz, 1
  %i.hd = and i32 %i.hc, 30
  %i.he = lshr i32 5377344, %i.hd
  %i.hf = and i32 %i.he, 192
  %i.hg = add nuw nsw i32 %i.hb, %i.hf
end_hunk_3
begin_hunk_4_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1cc17ae5e0fe2548E":bb.a
  %i.ac = add nuw nsw i64 %.sroa.4.0.i.ph16.i, 16 ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", !prof !3784

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !42336
  %i.ag = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !42336 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !42336
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.aj = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ad), !noalias !42336
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ak = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !42341
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ab ; 9 uses
  %i.am = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 6 uses
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.ao = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.02.0.i.i = select i1 %i.an, i64 %i.am, i64 %i.ap
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i8 -1, i64 %i.ac, i1 false), !noalias !42341
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = icmp eq i64 %i.b, 0
  br i1 %i.ar, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !42342, !noalias !42345
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge64

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit
  %i.as = load ptr, ptr %0, align 8, !alias.scope !42347, !noalias !42350, !nonnull !27, !noundef !27 ; 5 uses
  %.val649 = load <16 x i8>, ptr %i.as, align 16
  %i.at = icmp sgt <16 x i8> %.val649, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !42352, !noundef !27
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.av, align 8, !noalias !42352, !noundef !27
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ak, %bb.j ], [ %i.aj, %bb.i ], [ %i.ai, %bb.h ]
  %.sroa.7.047 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.sroa.032.063 = phi ptr [ %i.as, %.preheader.lr.ph ], [ %.sroa.032.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.5.062 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.9.061 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bu, %bb.m ]
  %.sroa.13.060 = phi i16 [ %i.au, %.preheader.lr.ph ], [ %i.bs, %bb.m ] ; 2 uses
  %.not.i255 = icmp eq i16 %.sroa.13.060, 0
  br i1 %.not.i255, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.032.157 = phi ptr [ %i.aw, %.noexc3 ], [ %.sroa.032.063, %.preheader ] ; 2 uses
  %.sroa.5.156 = phi i64 [ %i.az, %.noexc3 ], [ %.sroa.5.062, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.157) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.032.157, i64 16 ; 3 uses
  %.val550 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val550, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16          ; 2 uses
  %i.az = add i64 %.sroa.5.156, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ay, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge64:                                    ; preds = %bb.m, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.._crit_edge64_crit_edge ], [ %i.as, %bb.m ] ; 2 uses
  %i.ba = sub i64 %.sroa.02.0.i.i, %i.b
  store i64 %i.aq, ptr %0, align 8, !alias.scope !42342, !noalias !42345
  store i64 %i.am, ptr %i.e, align 8, !alias.scope !42358, !noalias !42360
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !alias.scope !42362, !noalias !42364
  %i.bc = icmp eq i64 %i.f, 0
  br i1 %i.bc, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge64
  %i.bd = shl i64 %i.f, 3                         ; 2 uses
  %i.be = add i64 %i.bd, 8
  %i.bf = add i64 %i.bd, 23                       ; 2 uses
  %i.bg = icmp uge i64 %i.bf, %i.be
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = and i64 %i.bf, -16                      ; 3 uses
  %i.bi = add i64 %i.f, 17
  %i.bj = add i64 %i.bi, %i.bh                    ; 3 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  %i.bl = icmp ult i64 %i.bj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bk)
  tail call void @llvm.assume(i1 %i.bl)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bn = sub nsw i64 0, %i.bh
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bn
  tail call void @mi_free(ptr noundef nonnull %i.bo) #38, !noalias !42366
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.060, %.preheader ], [ %i.ay, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.062, %.preheader ], [ %i.az, %.noexc3 ] ; 2 uses
  %.sroa.032.1.lcssa = phi ptr [ %.sroa.032.063, %.preheader ], [ %i.aw, %.noexc3 ]
  %i.bp = add i16 %.sroa.13.1.lcssa, -1
  %i.bq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.br = zext nneg i16 %i.bq to i64
  %i.bs = and i16 %i.bp, %.sroa.13.1.lcssa
  %i.bt = add i64 %.sroa.5.1.lcssa, %i.br         ; 2 uses
  %i.bu = add i64 %.sroa.9.061, -1                ; 2 uses
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.by = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h33fb7f3f7faa971dE(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bx), !noalias !42371 ; 2 uses
  %.sroa.0.04.i.i = and i64 %i.by, %i.am          ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bz, align 1, !noalias !42372
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.cb, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !42375

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %._crit_edge ]
  %i.cc = phi i64 [ %i.cd, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.cd = add i64 %i.cc, 16                       ; 2 uses
  %i.ce = add i64 %i.cd, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.ce, %i.am         ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cf, align 1, !noalias !42372
  %i.cg = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ch, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !42376

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %._crit_edge ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.cb, %._crit_edge ], [ %i.ch, %.lr.ph.i.i ]
  %i.ci = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cj
  %i.cl = and i64 %i.ck, %i.am                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !27
  %i.co = icmp sgt i8 %i.cn, -1
  br i1 %i.co, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.al, align 16
  %i.cp = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.cq = bitcast <16 x i1> %i.cp to i16          ; 2 uses
  %i.cr = icmp ne i16 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cq, i1 true)
  %i.ct = zext nneg i16 %i.cs to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ct, %bb.l ], [ %i.cl, %._crit_edge.i.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.0.0.i5.i.i
  %i.cv = lshr i64 %i.by, 57
  %i.cw = trunc nuw nsw i64 %i.cv to i8           ; 2 uses
  %i.cx = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.cy = and i64 %i.cx, %i.am
  store i8 %i.cw, ptr %i.cu, align 1
  %i.cz = getelementptr i8, ptr %i.al, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store i8 %i.cw, ptr %i.da, align 1
  %i.db = shl i64 %i.bt, 3
  %i.dc = sub nuw nsw i64 -8, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.as, i64 %i.dc
  %i.de = shl i64 %.sroa.0.0.i5.i.i, 3
  %i.df = sub nuw nsw i64 -8, %i.de
  %i.dg = getelementptr inbounds i8, ptr %i.al, i64 %i.df
  %i.dh = load i64, ptr %i.dd, align 1
  store i64 %i.dh, ptr %i.dg, align 1
  %i.di = icmp eq i64 %i.bu, 0
  br i1 %i.di, label %._crit_edge64, label %.preheader

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42377)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !42377 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i13

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

.lr.ph.i.i13:                                     ; preds = %bb.n
  %i.dj = lshr i64 %i.h, 4                        ; 2 uses
  %i.dk = and i64 %i.h, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dk, 0
  %i.dl = zext i1 %.not9.i.i.i.i to i64           ; 2 uses
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dj, %i.dl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %3 = add nuw nsw i64 %i.dj, %i.dl
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dm = icmp eq i64 %3, 1
  br i1 %i.dm, label %.epil.preheader, label %.lr.ph.i.i13.new

.lr.ph.i.i13.new:                                 ; preds = %.lr.ph.i.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.o

._crit_edge.i.i14.unr-lcssa:                      ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i14.unr-lcssa, %.lr.ph.i.i13
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13 ], [ %i.dv, %._crit_edge.i.i14.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dn, align 16, !noalias !42377
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.do = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dp = or <2 x i64> %i.do, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dp, ptr %i.dn, align 16, !noalias !42377
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i14.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.29.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %.val10.i, i64 %.29.i, i1 false), !noalias !42377
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dr, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i13.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %i.dv, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %niter.next.1, %bb.o ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ds, align 16, !noalias !42377
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !42377
  %i.dv = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dx, align 16, !noalias !42377
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dy = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dz = or <2 x i64> %i.dy, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dz, ptr %i.dx, align 16, !noalias !42377
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i14.unr-lcssa, label %bb.o

bb.p:                                             ; preds = %bb.x, %._crit_edge.i.i14
  %.sroa.0.17.i = phi i64 [ 1, %._crit_edge.i.i14 ], [ %.sroa.0.1.i, %bb.x ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i14 ], [ %.sroa.0.17.i, %bb.x ] ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.06.i ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !42377, !noundef !27
  %.not.i15 = icmp eq i8 %i.eb, -128
  br i1 %.not.i15, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ec = shl i64 %.sroa.0.06.i, 3
  %i.ed = sub nuw nsw i64 -8, %i.ec
  %i.ee = getelementptr inbounds i8, ptr %.val10.i, i64 %i.ed ; 3 uses
  %i.ef = sub nsw i64 0, %.sroa.0.06.i
  %i.eg = getelementptr inbounds [8 x i8], ptr %.val10.i, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -8
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %i.ei = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h33fb7f3f7faa971dE(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eh), !noalias !42380 ; 3 uses
  %.sroa.0.04.i.i19 = and i64 %i.ei, %i.f         ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.ej, align 1, !noalias !42384
  %i.ek = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.el, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !42375

.lr.ph.i13.i:                                     ; preds = %bb.r, %.lr.ph.i13.i
  %.sroa.0.07.i.i28 = phi i64 [ %.sroa.0.0.i.i29, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i19, %bb.r ]
  %i.em = phi i64 [ %i.en, %.lr.ph.i13.i ], [ 0, %bb.r ]
  %i.en = add i64 %i.em, 16                       ; 2 uses
  %i.eo = add i64 %i.en, %.sroa.0.07.i.i28
  %.sroa.0.0.i.i29 = and i64 %i.eo, %i.f          ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i.i29
  %.sroa.0.0.copyload.i3.i.i30 = load <16 x i8>, ptr %i.ep, align 1, !noalias !42384
  %i.eq = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i30, zeroinitializer
  %i.er = bitcast <16 x i1> %i.eq to i16          ; 2 uses
  %.not.not.i.not.i.i31 = icmp eq i16 %i.er, 0
  br i1 %.not.not.i.not.i.i31, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !42376

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %bb.r
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %bb.r ], [ %.sroa.0.0.i.i29, %.lr.ph.i13.i ]
  %.lcssa.i.i23 = phi i16 [ %i.el, %bb.r ], [ %i.er, %.lr.ph.i13.i ]
  %i.es = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.et = zext nneg i16 %i.es to i64
  %i.eu = add i64 %.sroa.0.0.lcssa.i.i22, %i.et
  %i.ev = and i64 %i.eu, %i.f                     ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !42377, !noundef !27
  %i.ey = icmp sgt i8 %i.ex, -1
  br i1 %i.ey, label %bb.s, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !29

bb.s:                                             ; preds = %._crit_edge.i12.i
  %.val62.i.i.i27 = load <16 x i8>, ptr %.val10.i, align 16, !noalias !42377
  %i.ez = icmp slt <16 x i8> %.val62.i.i.i27, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %i.fb = icmp ne i16 %i.fa, 0
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fa, i1 true)
  %i.fd = zext nneg i16 %i.fc to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.s, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fd, %bb.s ], [ %i.ev, %._crit_edge.i12.i ] ; 4 uses
  %i.fe = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.ff = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fg = xor i64 %i.ff, %i.fe
  %.unshifted.i = and i64 %i.fg, %i.f
  %i.fh = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fh, label %bb.u, label %bb.t, !prof !222

bb.t:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fi = shl i64 %.sroa.0.0.i5.i.i24, 3
  %i.fj = sub nuw nsw i64 -8, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %.val10.i, i64 %i.fj ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !42377, !noundef !27
  %i.fn = lshr i64 %i.ei, 57
  %i.fo = trunc nuw nsw i64 %i.fn to i8           ; 2 uses
  %i.fp = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fq = and i64 %i.fp, %i.f
  store i8 %i.fo, ptr %i.fl, align 1, !noalias !42377
  %i.fr = getelementptr i8, ptr %.val10.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 %i.fo, ptr %i.fs, align 1, !noalias !42377
  %i.ft = icmp eq i8 %i.fm, -1
  br i1 %i.ft, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fu = lshr i64 %i.ei, 57
  %i.fv = trunc nuw nsw i64 %i.fu to i8           ; 2 uses
  %i.fw = add i64 %.sroa.0.06.i, -16
  %i.fx = and i64 %i.fw, %i.f
  store i8 %i.fv, ptr %i.ea, align 1, !noalias !42377
  %i.fy = getelementptr i8, ptr %.val10.i, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 16
  store i8 %i.fv, ptr %i.fz, align 1, !noalias !42377
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ga = add i64 %.sroa.0.06.i, -16
  %i.gb = and i64 %i.ga, %i.f
  store i8 -1, ptr %i.ea, align 1, !noalias !42377
  %i.gc = getelementptr i8, ptr %.val10.i, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store i8 -1, ptr %i.gd, align 1, !noalias !42377
  %i.ge = load i64, ptr %i.ee, align 1, !noalias !42377
  store i64 %i.ge, ptr %i.fk, align 1, !noalias !42377
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42390)
  %.sroa.0.0.copyload.i.i.i.i.i25 = load i64, ptr %i.ee, align 1, !alias.scope !42387, !noalias !42392
  %.sroa.02.0.copyload.i.i.i.i.i26 = load i64, ptr %i.fk, align 1, !alias.scope !42390, !noalias !42393
  store i64 %.sroa.02.0.copyload.i.i.i.i.i26, ptr %i.ee, align 1, !alias.scope !42387, !noalias !42392
  store i64 %.sroa.0.0.copyload.i.i.i.i.i25, ptr %i.fk, align 1, !alias.scope !42390, !noalias !42393
  br label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.p
  %i.gf = icmp ult i64 %.sroa.0.17.i, %i.h        ; 2 uses
  %i.gg = zext i1 %i.gf to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gg
  br i1 %i.gf, label %bb.p, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.x, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.gh = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.sroa.03.0.i, %bb.x ]
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = sub i64 %i.gh, %i.b
  store i64 %i.gj, ptr %i.gi, align 8, !alias.scope !42377
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h233deac8f02ba69cE.exit: ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread, %._crit_edge64, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.k, %bb.c
  %.merged.i = phi i64 [ %i.m, %bb.c ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ], [ %.sroa.7.047, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd30adc59b05e473eE.exit.thread ], [ -9223372036854775807, %._crit_edge64 ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ -9223372036854775807, %bb.k ]
  ret i64 %.merged.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN9once_cell3imp17OnceCell$LT$T$GT$10initialize17h371ec2d6b3ffe43cE"() unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @_ZN9actix_web10middleware8compress26SUPPORTED_ENCODINGS_STRING17h11edd66dfcc8a6b7E, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
end_hunk_4
