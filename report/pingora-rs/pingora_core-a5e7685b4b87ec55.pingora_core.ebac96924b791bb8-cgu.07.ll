Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.07?download=true
inline.NumInlined: 958
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %.thread122.i

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.bz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit432.i.i
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %i.eb, i64 noundef %i.ec)
          to label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramLiteralNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllochECskeugdADtBsi_12pingora_core.exit unwind label %.body.thread1104

bb.eu:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECskeugdADtBsi_12pingora_core.exit.i, %.split569.i
  %.sroa.0.0571.i = phi i64 [ %spec.store.select.i, %.split569.i ], [ %i.akt, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.021.0570.i = phi i64 [ 0, %.split569.i ], [ %i.alg, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramLiteralhECskeugdADtBsi_12pingora_core.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !812)
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.ui = icmp eq i64 %.sroa.0.0571.i, 0
  br i1 %i.ui, label %.loopexit143.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.uj = add nsw i64 %.sroa.0.0571.i, 7
  %i.uk = lshr i64 %i.uj, 3                       ; 8 uses
  %i.ul = icmp eq i64 %.sroa.0.0571.i, 1
  br i1 %i.ul, label %.preheader.i151.i.preheader, label %bb.ew

.preheader.i151.i.preheader:                      ; preds = %bb.ev
  br i1 %min.iters.check, label %.preheader.i151.i.preheader6827, label %vector.body5849

.preheader.i151.i.preheader6827:                  ; preds = %vector.body5849, %.preheader.i151.i.preheader
  %.sroa.04.2391.i.i.ph = phi i64 [ 0, %.preheader.i151.i.preheader ], [ %n.vec, %vector.body5849 ]
  br label %.preheader.i151.i

vector.body5849:                                  ; preds = %.preheader.i151.i.preheader, %vector.body5849
  %index5850 = phi i64 [ %index.next5851, %vector.body5849 ], [ 0, %.preheader.i151.i.preheader ] ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.eb, i64 %index5850 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  store <16 x i8> zeroinitializer, ptr %i.um, align 1, !alias.scope !817, !noalias !818
  store <16 x i8> zeroinitializer, ptr %i.un, align 1, !alias.scope !817, !noalias !818
  %index.next5851 = add nuw i64 %index5850, 32    ; 2 uses
  %i.uo = icmp eq i64 %index.next5851, %n.vec
  br i1 %i.uo, label %.preheader.i151.i.preheader6827, label %vector.body5849, !llvm.loop !531

bb.ew:                                            ; preds = %bb.ev
  %i.up = shl nuw nsw i64 %.sroa.0.0571.i, 8      ; 2 uses
  %.not109.i.i = icmp samesign ugt i64 %i.up, %i.ej
  br i1 %.not109.i.i, label %.invoke1453.i, label %.preheader308.split.i.i, !prof !27

.invoke1453.i:                                    ; preds = %._crit_edge355.i.i, %._crit_edge.i.i, %bb.ew, %bb.fz
  %i.uq = phi i64 [ %i.uk, %bb.fz ], [ %i.uy, %._crit_edge.i.i ], [ %i.up, %bb.ew ], [ %.sroa.0.0.lcssa, %._crit_edge355.i.i ]
  %i.ur = phi i64 [ %i.en, %bb.fz ], [ %i.es, %._crit_edge.i.i ], [ %i.ej, %bb.ew ], [ %i.bh, %._crit_edge355.i.i ]
  %i.us = phi ptr [ @134, %bb.fz ], [ @27, %._crit_edge.i.i ], [ @30, %bb.ew ], [ @26, %._crit_edge355.i.i ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.uq, i64 noundef range(i64 0, -9223372036854775808) %i.ur, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.us) #24
          to label %.cont1454.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !766

.cont1454.i:                                      ; preds = %.invoke1453.i
  unreachable

.preheader308.split.i.i:                          ; preds = %bb.ew
  %.idx.i147.i = shl nuw nsw i64 %.sroa.0.0571.i, 10
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ei, i8 0, i64 %.idx.i147.i, i1 false), !alias.scope !814, !noalias !819
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ha, %.preheader308.split.i.i
  %.sroa.04.0347.i.i = phi i64 [ 0, %.preheader308.split.i.i ], [ %i.ako, %bb.ha ] ; 4 uses
  %exitcond.not.i148.i = icmp eq i64 %.sroa.04.0347.i.i, %i.bv
  br i1 %exitcond.not.i148.i, label %.invoke.i, label %bb.gy

.loopexit306.i.i:                                 ; preds = %bb.gx
  %i.ut = icmp eq i64 %i.uu, 0
  br i1 %i.ut, label %bb.ey, label %.split.i149.i

bb.ey:                                            ; preds = %.loopexit306.i.i
  br i1 %i.ez, label %._crit_edge.i.i, label %.lr.ph351.i.i

.split.i149.i:                                    ; preds = %bb.ha, %.loopexit306.i.i
  %.sroa.04.1349.i.i = phi i64 [ %i.uu, %.loopexit306.i.i ], [ 256, %bb.ha ]
  %i.uu = add nsw i64 %.sroa.04.1349.i.i, -1      ; 4 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.bu, i64 %i.uu
  %i.uv = mul nuw nsw i64 %i.uu, %.sroa.0.0571.i
  br label %bb.gs

.lr.ph351.i.i:                                    ; preds = %bb.ey, %.noexc154.i
  %.sroa.024.0350.i.i = phi ptr [ %i.uw, %.noexc154.i ], [ %i.em, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !820
  invoke void @_RNvXsX_NtCskKLDkoKarTP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.v)
          to label %.noexc154.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !766

.noexc154.i:                                      ; preds = %.lr.ph351.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.024.0350.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.024.0350.i.i, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !821
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !820
  %i.ux = icmp eq ptr %i.uw, %i.ey
  br i1 %i.ux, label %._crit_edge.i.i, label %.lr.ph351.i.i

._crit_edge.i.i:                                  ; preds = %.noexc154.i, %bb.ey
  %i.uy = mul i64 %i.uk, %.sroa.0.0.lcssa         ; 4 uses
  %.not110.i.i = icmp ugt i64 %i.uy, %i.es
  br i1 %.not110.i.i, label %.invoke1453.i, label %bb.ez, !prof !27

bb.ez:                                            ; preds = %._crit_edge.i.i
  %i.uz = icmp samesign eq i64 %i.uy, 0
  br i1 %i.uz, label %._crit_edge355.i.i, label %.lr.ph354.preheader.i.i

.lr.ph354.preheader.i.i:                          ; preds = %bb.ez
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.er, i8 0, i64 %i.uy, i1 false), !alias.scope !816, !noalias !822
  br label %._crit_edge355.i.i

._crit_edge355.i.i:                               ; preds = %.lr.ph354.preheader.i.i, %bb.ez
  br i1 %.not111.i.i, label %.invoke1453.i, label %.lr.ph376.i.i, !prof !27

.lr.ph376.i.i:                                    ; preds = %._crit_edge355.i.i
  %i.va = lshr i64 %.sroa.0.0571.i, 3             ; 3 uses
  %.not.i125.i.i = icmp samesign ugt i64 %i.va, %i.en
  %.idx393.i.i = shl nuw nsw i64 %i.va, 5
  %i.vb = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx393.i.i
  %i.vc = icmp eq i64 %i.va, 0
  %i.vd = and i64 %.sroa.0.0571.i, 36028797018963960 ; 15 uses
  %i.ve = and i64 %.sroa.0.0571.i, 7              ; 8 uses
  %.not.i.i.i = icmp samesign ugt i64 %i.uk, %i.en
  %.idx394.i.i = shl i64 %i.uk, 5                 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx394.i.i
  br i1 %.not.i125.i.i, label %.lr.ph376.split.us.i.i, label %.lr.ph376.split.preheader.i.i, !prof !10

.lr.ph376.split.preheader.i.i:                    ; preds = %.lr.ph376.i.i
  %i.vg = icmp eq i64 %i.ve, 0
  %i.vh = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.vi = icmp samesign ult i64 %i.vh, %i.en
  %i.vj = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.vh ; 2 uses
  %i.vk = trunc i64 %i.vd to i8
  %i.vl = icmp eq i64 %i.ve, 1
  %i.vm = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.vn = icmp samesign ult i64 %i.vm, %i.en
  %i.vo = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.vm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 4 ; 2 uses
  %i.vq = trunc i64 %i.vd to i8
  %i.vr = or disjoint i8 %i.vq, 1
  %i.vs = icmp eq i64 %i.ve, 2
  %i.vt = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.vu = icmp samesign ult i64 %i.vt, %i.en
  %i.vv = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.vt
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8 ; 2 uses
  %i.vx = trunc i64 %i.vd to i8
  %i.vy = or disjoint i8 %i.vx, 2
  %i.vz = icmp eq i64 %i.ve, 3
  %i.wa = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.wb = icmp samesign ult i64 %i.wa, %i.en
  %i.wc = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.wa
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 12 ; 2 uses
  %i.we = trunc i64 %i.vd to i8
  %i.wf = or disjoint i8 %i.we, 3
  %i.wg = icmp eq i64 %i.ve, 4
  %i.wh = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.wi = icmp samesign ult i64 %i.wh, %i.en
  %i.wj = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.wh
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 16 ; 2 uses
  %i.wl = trunc i64 %i.vd to i8
  %i.wm = or disjoint i8 %i.wl, 4
  %i.wn = icmp eq i64 %i.ve, 5
  %i.wo = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.wp = icmp samesign ult i64 %i.wo, %i.en
  %i.wq = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.wo
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 20 ; 2 uses
  %i.ws = trunc i64 %i.vd to i8
  %i.wt = or disjoint i8 %i.ws, 5
  %i.wu = icmp eq i64 %i.ve, 6
  %i.wv = lshr exact i64 %i.vd, 3                 ; 3 uses
  %i.ww = icmp samesign ult i64 %i.wv, %i.en
  %i.wx = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.wv
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24 ; 2 uses
  %i.wz = trunc i64 %i.vd to i8
  %i.xa = or disjoint i8 %i.wz, 6
  %i.xb = add i64 %.idx394.i.i, -32
  %i.xc = lshr exact i64 %i.xb, 5
  br label %.lr.ph376.split.i.i

.lr.ph376.split.us.i.i:                           ; preds = %.lr.ph376.i.i
  %.not396.i.i = icmp eq i64 %i.ec, 0
  br i1 %.not396.i.i, label %.invoke.i, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph376.split.us.i.i
  %i.xd = load i8, ptr %i.bg, align 1, !alias.scope !823, !noalias !824, !noundef !7
  %i.xe = zext i8 %i.xd to i64
  %i.xf = mul nuw nsw i64 %.sroa.0.0571.i, %i.xe
  %.not.i124.us.i.i = icmp samesign ugt i64 %i.xf, %i.ej
  br i1 %.not.i124.us.i.i, label %.split380.us.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i, %._crit_edge362.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i, %.lr.ph361.i.i, %.split380.us.i.i, %bb.fa
  %i.xg = phi ptr [ @23, %.lr.ph361.i.i ], [ @18, %.split380.us.i.i ], [ @19, %bb.fa ], [ @24, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i ], [ @20, %._crit_edge362.i.i ], [ @21, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @97, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xg) #24
          to label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !766

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i: ; preds = %bb.ga
  %i.xh = icmp eq ptr %i.xi, %i.fa
  br i1 %i.xh, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i, label %.lr.ph376.split.i.i

.lr.ph376.split.i.i:                              ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i, %.lr.ph376.split.preheader.i.i
  %.sroa.0.0288374.i.i = phi ptr [ %i.xi, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ %i.bg, %.lr.ph376.split.preheader.i.i ] ; 2 uses
  %.sroa.7.0373.i.i = phi i64 [ %i.xj, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i ], [ 0, %.lr.ph376.split.preheader.i.i ] ; 7 uses
  %15 = mul i64 %i.uk, %.sroa.7.0373.i.i
  %i.xi = getelementptr inbounds nuw i8, ptr %.sroa.0.0288374.i.i, i64 1 ; 2 uses
  %i.xj = add nuw nsw i64 %.sroa.7.0373.i.i, 1
  %exitcond424.not.i.i = icmp eq i64 %.sroa.7.0373.i.i, %i.ec
  br i1 %exitcond424.not.i.i, label %.invoke.i, label %bb.fe

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i
  br i1 %i.fj, label %.lr.ph389.preheader.i.i, label %.invoke.i

.lr.ph389.preheader.i.i:                          ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i
  %i.xk = load i8, ptr %i.fk, align 1, !alias.scope !817, !noalias !818, !noundef !7
  %i.xl = mul i64 %i.uk, %i.fi
  br label %.lr.ph389.i.i

.lr.ph389.i.i:                                    ; preds = %bb.fd, %.lr.ph389.preheader.i.i
  %.sroa.0.1388.i.i = phi i64 [ %.sroa.0.2.i.i, %bb.fd ], [ 1, %.lr.ph389.preheader.i.i ] ; 2 uses
  %.sroa.066.0387.i.i = phi i8 [ %.sroa.066.1.i.i, %bb.fd ], [ %i.xk, %.lr.ph389.preheader.i.i ] ; 4 uses
  %.sroa.064.0386.i.i = phi i64 [ %i.xn, %bb.fd ], [ %i.xl, %.lr.ph389.preheader.i.i ]
  %.sroa.057.0385.i.i = phi i64 [ %i.xm, %bb.fd ], [ %i.fi, %.lr.ph389.preheader.i.i ]
  %i.xm = add nsw i64 %.sroa.057.0385.i.i, -1     ; 4 uses
  %i.xn = sub i64 %.sroa.064.0386.i.i, %i.uk      ; 2 uses
  %i.xo = lshr i8 %.sroa.066.0387.i.i, 3
  %i.xp = zext nneg i8 %i.xo to i64
  %i.xq = add i64 %i.xn, %i.xp                    ; 3 uses
  %i.xr = icmp ult i64 %i.xq, %i.es
  br i1 %i.xr, label %bb.fb, label %.invoke.i

bb.fb:                                            ; preds = %.lr.ph389.i.i
  %i.xs = and i8 %.sroa.066.0387.i.i, 7
  %i.xt = shl nuw i8 1, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.xq
  %i.xv = load i8, ptr %i.xu, align 1, !alias.scope !816, !noalias !822, !noundef !7
  %i.xw = and i8 %i.xv, %i.xt
  %i.xx = icmp eq i8 %i.xw, 0
  br i1 %i.xx, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.xy = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.xm
  %i.xz = load i8, ptr %i.xy, align 1, !alias.scope !817, !noalias !818, !noundef !7 ; 2 uses
  %.not114.i.i = icmp ne i8 %.sroa.066.0387.i.i, %i.xz
  %i.ya = zext i1 %.not114.i.i to i64
  %spec.select116.i.i = add i64 %.sroa.0.1388.i.i, %i.ya
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.sroa.066.1.i.i = phi i8 [ %.sroa.066.0387.i.i, %bb.fb ], [ %i.xz, %bb.fc ] ; 2 uses
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.1388.i.i, %bb.fb ], [ %spec.select116.i.i, %bb.fc ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.xm
  store i8 %.sroa.066.1.i.i, ptr %i.yb, align 1, !alias.scope !817, !noalias !818
  %.not113.i.i = icmp eq i64 %i.xm, 0
  br i1 %.not113.i.i, label %.loopexit143.i, label %.lr.ph389.i.i

bb.fe:                                            ; preds = %.lr.ph376.split.i.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.7.0373.i.i ; 15 uses
  %i.yd = mul i64 %.sroa.7.0373.i.i, %i.uk        ; 3 uses
  %i.ye = load i8, ptr %.sroa.0.0288374.i.i, align 1, !alias.scope !823, !noalias !824, !noundef !7
  %i.yf = zext i8 %i.ye to i64
  %i.yg = mul nuw nsw i64 %.sroa.0.0571.i, %i.yf  ; 4 uses
  %.not.i124.i.i = icmp samesign ugt i64 %i.yg, %i.ej
  br i1 %.not.i124.i.i, label %.split380.us.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i, !prof !10

.split380.us.i.i:                                 ; preds = %bb.fe, %bb.fa
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i: ; preds = %bb.fe
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.yg
  %i.yi = sub nuw nsw i64 %i.ej, %i.yg            ; 2 uses
  br i1 %i.vc, label %._crit_edge362.i.i, label %.lr.ph361.i.i

.lr.ph361.i.i:                                    ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i, %bb.gr
  %.sroa.054.0360.i.i = phi float [ %.sroa.054.4.7.i.i, %bb.gr ], [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i ] ; 2 uses
  %.sroa.0159.0359.i.i = phi ptr [ %i.yj, %bb.gr ], [ %i.em, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i ] ; 10 uses
  %.sroa.7161.0358.i.i = phi i64 [ %i.yk, %bb.gr ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !820
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.u, i8 0, i64 32, i1 false), !noalias !820
  %i.yj = getelementptr inbounds nuw i8, ptr %.sroa.0159.0359.i.i, i64 32 ; 2 uses
  %i.yk = add nuw nsw i64 %.sroa.7161.0358.i.i, 1
  %i.yl = shl nuw nsw i64 %.sroa.7161.0358.i.i, 3 ; 11 uses
  %.not.i144.i.i = icmp samesign ugt i64 %i.yl, %i.yi
  br i1 %.not.i144.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i, !prof !10

._crit_edge362.i.i:                               ; preds = %bb.gr, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i
  %.sroa.054.0.lcssa.i.i = phi float [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i ], [ %.sroa.054.4.7.i.i, %bb.gr ] ; 3 uses
  %i.ym = add nuw nsw i64 %i.yg, %i.vd            ; 3 uses
  %.not.i131.i.i = icmp samesign ugt i64 %i.ym, %i.ej
  br i1 %.not.i131.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i: ; preds = %._crit_edge362.i.i
  %i.yn = sub nuw nsw i64 %i.ej, %i.ym
  %.not.i136.i.i = icmp samesign ugt i64 %i.ve, %i.yn
  br i1 %.not.i136.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ym ; 7 uses
  br i1 %i.vg, label %._crit_edge367.i.i, label %.lr.ph366.i.i

.lr.ph366.i.i:                                    ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 4
  br i1 %i.vi, label %bb.ff, label %.invoke.i

._crit_edge367.i.i:                               ; preds = %bb.fw, %bb.fx, %bb.fg, %bb.fj, %bb.fm, %bb.fp, %bb.fs, %bb.fv, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i
  %.sroa.054.1.lcssa.i.i = phi float [ %.sroa.054.0.lcssa.i.i, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i ], [ %.sroa.054.2.i.i, %bb.fg ], [ %.sroa.054.2.i.i.1, %bb.fj ], [ %.sroa.054.2.i.i.2, %bb.fm ], [ %.sroa.054.2.i.i.3, %bb.fp ], [ %.sroa.054.2.i.i.4, %bb.fs ], [ %.sroa.054.2.i.i.5, %bb.fv ], [ %i.zw, %bb.fx ], [ %.sroa.054.2.i.i.5, %bb.fw ] ; 2 uses
  %i.yq = icmp samesign ult i64 %.sroa.7.0373.i.i, 2000
  br i1 %i.yq, label %bb.gb, label %bb.fz

bb.ff:                                            ; preds = %.lr.ph366.i.i
  %i.yr = load float, ptr %i.yo, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.ys = load float, ptr %i.vj, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.yt = fadd float %i.yr, %i.ys                 ; 3 uses
  store float %i.yt, ptr %i.vj, align 4, !alias.scope !815, !noalias !821
  %i.yu = fcmp olt float %i.yt, %.sroa.054.0.lcssa.i.i
  br i1 %i.yu, label %bb.fy, label %bb.fg

bb.fg:                                            ; preds = %bb.fy, %bb.ff
  %.sroa.054.2.i.i = phi float [ %i.yt, %bb.fy ], [ %.sroa.054.0.lcssa.i.i, %bb.ff ] ; 3 uses
  br i1 %i.vl, label %._crit_edge367.i.i, label %.lr.ph366.i.i.1

.lr.ph366.i.i.1:                                  ; preds = %bb.fg
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  br i1 %i.vn, label %bb.fh, label %.invoke.i

bb.fh:                                            ; preds = %.lr.ph366.i.i.1
  %i.yw = load float, ptr %i.yp, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.yx = load float, ptr %i.vp, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.yy = fadd float %i.yw, %i.yx                 ; 3 uses
  store float %i.yy, ptr %i.vp, align 4, !alias.scope !815, !noalias !821
  %i.yz = fcmp olt float %i.yy, %.sroa.054.2.i.i
  br i1 %i.yz, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store i8 %i.vr, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.sroa.054.2.i.i.1 = phi float [ %i.yy, %bb.fi ], [ %.sroa.054.2.i.i, %bb.fh ] ; 3 uses
  br i1 %i.vs, label %._crit_edge367.i.i, label %.lr.ph366.i.i.2

.lr.ph366.i.i.2:                                  ; preds = %bb.fj
  %i.za = getelementptr inbounds nuw i8, ptr %i.yo, i64 12
  br i1 %i.vu, label %bb.fk, label %.invoke.i

bb.fk:                                            ; preds = %.lr.ph366.i.i.2
  %i.zb = load float, ptr %i.yv, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.zc = load float, ptr %i.vw, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.zd = fadd float %i.zb, %i.zc                 ; 3 uses
  store float %i.zd, ptr %i.vw, align 4, !alias.scope !815, !noalias !821
  %i.ze = fcmp olt float %i.zd, %.sroa.054.2.i.i.1
  br i1 %i.ze, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i8 %i.vy, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %.sroa.054.2.i.i.2 = phi float [ %i.zd, %bb.fl ], [ %.sroa.054.2.i.i.1, %bb.fk ] ; 3 uses
  br i1 %i.vz, label %._crit_edge367.i.i, label %.lr.ph366.i.i.3

.lr.ph366.i.i.3:                                  ; preds = %bb.fm
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  br i1 %i.wb, label %bb.fn, label %.invoke.i

bb.fn:                                            ; preds = %.lr.ph366.i.i.3
  %i.zg = load float, ptr %i.za, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.zh = load float, ptr %i.wd, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.zi = fadd float %i.zg, %i.zh                 ; 3 uses
  store float %i.zi, ptr %i.wd, align 4, !alias.scope !815, !noalias !821
  %i.zj = fcmp olt float %i.zi, %.sroa.054.2.i.i.2
  br i1 %i.zj, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i8 %i.wf, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %.sroa.054.2.i.i.3 = phi float [ %i.zi, %bb.fo ], [ %.sroa.054.2.i.i.2, %bb.fn ] ; 3 uses
  br i1 %i.wg, label %._crit_edge367.i.i, label %.lr.ph366.i.i.4

.lr.ph366.i.i.4:                                  ; preds = %bb.fp
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yo, i64 20
  br i1 %i.wi, label %bb.fq, label %.invoke.i

bb.fq:                                            ; preds = %.lr.ph366.i.i.4
  %i.zl = load float, ptr %i.zf, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.zm = load float, ptr %i.wk, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.zn = fadd float %i.zl, %i.zm                 ; 3 uses
  store float %i.zn, ptr %i.wk, align 4, !alias.scope !815, !noalias !821
  %i.zo = fcmp olt float %i.zn, %.sroa.054.2.i.i.3
  br i1 %i.zo, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i8 %i.wm, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.054.2.i.i.4 = phi float [ %i.zn, %bb.fr ], [ %.sroa.054.2.i.i.3, %bb.fq ] ; 3 uses
  br i1 %i.wn, label %._crit_edge367.i.i, label %.lr.ph366.i.i.5

.lr.ph366.i.i.5:                                  ; preds = %bb.fs
  %i.zp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  br i1 %i.wp, label %bb.ft, label %.invoke.i

bb.ft:                                            ; preds = %.lr.ph366.i.i.5
  %i.zq = load float, ptr %i.zk, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.zr = load float, ptr %i.wr, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.zs = fadd float %i.zq, %i.zr                 ; 3 uses
  store float %i.zs, ptr %i.wr, align 4, !alias.scope !815, !noalias !821
  %i.zt = fcmp olt float %i.zs, %.sroa.054.2.i.i.4
  br i1 %i.zt, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i8 %i.wt, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.054.2.i.i.5 = phi float [ %i.zs, %bb.fu ], [ %.sroa.054.2.i.i.4, %bb.ft ] ; 3 uses
  br i1 %i.wu, label %._crit_edge367.i.i, label %.lr.ph366.i.i.6

.lr.ph366.i.i.6:                                  ; preds = %bb.fv
  br i1 %i.ww, label %bb.fw, label %.invoke.i

bb.fw:                                            ; preds = %.lr.ph366.i.i.6
  %i.zu = load float, ptr %i.zp, align 4, !alias.scope !814, !noalias !819, !noundef !7
  %i.zv = load float, ptr %i.wy, align 4, !alias.scope !815, !noalias !821, !noundef !7
  %i.zw = fadd float %i.zu, %i.zv                 ; 3 uses
  store float %i.zw, ptr %i.wy, align 4, !alias.scope !815, !noalias !821
  %i.zx = fcmp olt float %i.zw, %.sroa.054.2.i.i.5
  br i1 %i.zx, label %bb.fx, label %._crit_edge367.i.i

bb.fx:                                            ; preds = %bb.fw
  store i8 %i.xa, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %._crit_edge367.i.i

bb.fy:                                            ; preds = %bb.ff
  store i8 %i.vk, ptr %i.yc, align 1, !alias.scope !817, !noalias !818
  br label %bb.fg

bb.fz:                                            ; preds = %bb.gb, %._crit_edge367.i.i
  %.sroa.035.0.i.i = phi float [ %i.ahl, %bb.gb ], [ 2.810000e+01, %._crit_edge367.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !825)
  br i1 %.not.i.i.i, label %.invoke1453.i, label %.lr.ph372.i.i.preheader, !prof !27

.lr.ph372.i.i.preheader:                          ; preds = %bb.fz
  %i.zy = call i64 @llvm.umax.i64(i64 %i.es, i64 %i.yd)
  %i.zz = sub i64 %i.zy, %15
  %i.aaa = call i64 @llvm.umin.i64(i64 %i.xc, i64 %i.zz) ; 2 uses
  %min.iters.check5854 = icmp samesign ult i64 %i.aaa, 4
  br i1 %min.iters.check5854, label %.lr.ph372.i.i.preheader6819, label %vector.ph5855

vector.ph5855:                                    ; preds = %.lr.ph372.i.i.preheader
  %i.aab = add nuw nsw i64 %i.aaa, 1              ; 2 uses
  %i.aac = and i64 %i.aab, 3                      ; 2 uses
  %i.aad = icmp eq i64 %i.aac, 0
  %i.aae = select i1 %i.aad, i64 4, i64 %i.aac
  %n.vec5856 = sub nsw i64 %i.aab, %i.aae         ; 3 uses
  %i.aaf = shl i64 %n.vec5856, 5
  %i.aag = getelementptr i8, ptr %i.em, i64 %i.aaf
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert5857 = insertelement <4 x float> poison, float %.sroa.035.0.i.i, i64 0 ; 5 uses
  %broadcast.splat5858 = shufflevector <4 x float> %broadcast.splatinsert5857, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep = getelementptr i8, ptr %i.er, i64 %i.yd
  %i.aah = shufflevector <4 x float> %broadcast.splatinsert5857, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aai = shufflevector <4 x float> %broadcast.splatinsert5857, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aaj = shufflevector <4 x float> %broadcast.splatinsert5857, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aak = shufflevector <4 x float> %broadcast.splatinsert5857, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body5859

vector.body5859:                                  ; preds = %vector.body5859, %vector.ph5855
  %index5860 = phi i64 [ 0, %vector.ph5855 ], [ %index.next5865, %vector.body5859 ] ; 3 uses
  %i.aal = shl i64 %index5860, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.aal ; 9 uses
  %i.aam = getelementptr i8, ptr %i.em, i64 %i.aal ; 8 uses
  %next.gep5861 = getelementptr i8, ptr %i.aam, i64 32
  %i.aan = getelementptr i8, ptr %i.em, i64 %i.aal ; 8 uses
  %next.gep5862 = getelementptr i8, ptr %i.aan, i64 64
  %i.aao = getelementptr i8, ptr %i.em, i64 %i.aal ; 8 uses
  %next.gep5863 = getelementptr i8, ptr %i.aao, i64 96
  %i.aap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aaq = getelementptr i8, ptr %i.aam, i64 36
  %i.aar = getelementptr i8, ptr %i.aan, i64 68
  %i.aas = getelementptr i8, ptr %i.aao, i64 100
  %i.aat = load float, ptr %i.aap, align 4, !alias.scope !815, !noalias !826
  %i.aau = load float, ptr %i.aaq, align 4, !alias.scope !815, !noalias !826
  %i.aav = load float, ptr %i.aar, align 4, !alias.scope !815, !noalias !826
  %i.aaw = load float, ptr %i.aas, align 4, !alias.scope !815, !noalias !826
  %i.aax = insertelement <4 x float> poison, float %i.aat, i64 0
  %i.aay = insertelement <4 x float> %i.aax, float %i.aau, i64 1
  %i.aaz = insertelement <4 x float> %i.aay, float %i.aav, i64 2
  %i.aba = insertelement <4 x float> %i.aaz, float %i.aaw, i64 3
  %i.abb = fsub <4 x float> %i.aba, %broadcast.splat ; 3 uses
  %i.abc = fcmp oge <4 x float> %i.abb, %broadcast.splat5858
  %i.abd = select <4 x i1> %i.abc, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.abe = load float, ptr %next.gep, align 4, !alias.scope !815, !noalias !826
  %i.abf = load float, ptr %next.gep5861, align 4, !alias.scope !815, !noalias !826
  %i.abg = load float, ptr %next.gep5862, align 4, !alias.scope !815, !noalias !826
  %i.abh = load float, ptr %next.gep5863, align 4, !alias.scope !815, !noalias !826
  %i.abi = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abj = insertelement <4 x float> %i.abi, float %i.abf, i64 1
  %i.abk = insertelement <4 x float> %i.abj, float %i.abg, i64 2
  %i.abl = insertelement <4 x float> %i.abk, float %i.abh, i64 3
  %i.abm = fsub <4 x float> %i.abl, %broadcast.splat ; 3 uses
  %i.abn = fcmp oge <4 x float> %i.abm, %broadcast.splat5858
  %i.abo = zext <4 x i1> %i.abn to <4 x i8>
  %i.abp = or disjoint <4 x i8> %i.abd, %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.abr = getelementptr i8, ptr %i.aam, i64 40
  %i.abs = getelementptr i8, ptr %i.aan, i64 72
  %i.abt = getelementptr i8, ptr %i.aao, i64 104
  %i.abu = load float, ptr %i.abq, align 4, !alias.scope !815, !noalias !826
  %i.abv = load float, ptr %i.abr, align 4, !alias.scope !815, !noalias !826
  %i.abw = load float, ptr %i.abs, align 4, !alias.scope !815, !noalias !826
  %i.abx = load float, ptr %i.abt, align 4, !alias.scope !815, !noalias !826
  %i.aby = insertelement <4 x float> poison, float %i.abu, i64 0
  %i.abz = insertelement <4 x float> %i.aby, float %i.abv, i64 1
  %i.aca = insertelement <4 x float> %i.abz, float %i.abw, i64 2
  %i.acb = insertelement <4 x float> %i.aca, float %i.abx, i64 3
  %i.acc = fsub <4 x float> %i.acb, %broadcast.splat ; 3 uses
  %i.acd = fcmp oge <4 x float> %i.acc, %broadcast.splat5858
  %i.ace = select <4 x i1> %i.acd, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.acf = or disjoint <4 x i8> %i.abp, %i.ace
  %i.acg = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ach = getelementptr i8, ptr %i.aam, i64 44
  %i.aci = getelementptr i8, ptr %i.aan, i64 76
  %i.acj = getelementptr i8, ptr %i.aao, i64 108
  %i.ack = load float, ptr %i.acg, align 4, !alias.scope !815, !noalias !826
  %i.acl = load float, ptr %i.ach, align 4, !alias.scope !815, !noalias !826
  %i.acm = load float, ptr %i.aci, align 4, !alias.scope !815, !noalias !826
  %i.acn = load float, ptr %i.acj, align 4, !alias.scope !815, !noalias !826
  %i.aco = insertelement <4 x float> poison, float %i.ack, i64 0
  %i.acp = insertelement <4 x float> %i.aco, float %i.acl, i64 1
  %i.acq = insertelement <4 x float> %i.acp, float %i.acm, i64 2
  %i.acr = insertelement <4 x float> %i.acq, float %i.acn, i64 3
  %i.acs = fsub <4 x float> %i.acr, %broadcast.splat ; 3 uses
  %i.act = fcmp oge <4 x float> %i.acs, %broadcast.splat5858
  %i.acu = select <4 x i1> %i.act, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.acv = or disjoint <4 x i8> %i.acf, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.acx = getelementptr i8, ptr %i.aam, i64 48
  %i.acy = getelementptr i8, ptr %i.aan, i64 80
  %i.acz = getelementptr i8, ptr %i.aao, i64 112
  %i.ada = load float, ptr %i.acw, align 4, !alias.scope !815, !noalias !826
  %i.adb = load float, ptr %i.acx, align 4, !alias.scope !815, !noalias !826
  %i.adc = load float, ptr %i.acy, align 4, !alias.scope !815, !noalias !826
  %i.add = load float, ptr %i.acz, align 4, !alias.scope !815, !noalias !826
  %i.ade = insertelement <4 x float> poison, float %i.ada, i64 0
  %i.adf = insertelement <4 x float> %i.ade, float %i.adb, i64 1
  %i.adg = insertelement <4 x float> %i.adf, float %i.adc, i64 2
  %i.adh = insertelement <4 x float> %i.adg, float %i.add, i64 3
  %i.adi = fsub <4 x float> %i.adh, %broadcast.splat ; 3 uses
  %i.adj = fcmp oge <4 x float> %i.adi, %broadcast.splat5858
  %i.adk = select <4 x i1> %i.adj, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.adl = or disjoint <4 x i8> %i.acv, %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.adn = getelementptr i8, ptr %i.aam, i64 52
  %i.ado = getelementptr i8, ptr %i.aan, i64 84
  %i.adp = getelementptr i8, ptr %i.aao, i64 116
  %i.adq = load float, ptr %i.adm, align 4, !alias.scope !815, !noalias !826
  %i.adr = load float, ptr %i.adn, align 4, !alias.scope !815, !noalias !826
  %i.ads = load float, ptr %i.ado, align 4, !alias.scope !815, !noalias !826
  %i.adt = load float, ptr %i.adp, align 4, !alias.scope !815, !noalias !826
  %i.adu = insertelement <4 x float> poison, float %i.adq, i64 0
  %i.adv = insertelement <4 x float> %i.adu, float %i.adr, i64 1
  %i.adw = insertelement <4 x float> %i.adv, float %i.ads, i64 2
  %i.adx = insertelement <4 x float> %i.adw, float %i.adt, i64 3
  %i.ady = fsub <4 x float> %i.adx, %broadcast.splat ; 3 uses
  %i.adz = fcmp oge <4 x float> %i.ady, %broadcast.splat5858
  %i.aea = select <4 x i1> %i.adz, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.aeb = or disjoint <4 x i8> %i.adl, %i.aea
  %i.aec = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.aed = getelementptr i8, ptr %i.aam, i64 56
  %i.aee = getelementptr i8, ptr %i.aan, i64 88
  %i.aef = getelementptr i8, ptr %i.aao, i64 120
  %i.aeg = load float, ptr %i.aec, align 4, !alias.scope !815, !noalias !826
  %i.aeh = load float, ptr %i.aed, align 4, !alias.scope !815, !noalias !826
  %i.aei = load float, ptr %i.aee, align 4, !alias.scope !815, !noalias !826
  %i.aej = load float, ptr %i.aef, align 4, !alias.scope !815, !noalias !826
  %i.aek = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.ael = insertelement <4 x float> %i.aek, float %i.aeh, i64 1
  %i.aem = insertelement <4 x float> %i.ael, float %i.aei, i64 2
  %i.aen = insertelement <4 x float> %i.aem, float %i.aej, i64 3
  %i.aeo = fsub <4 x float> %i.aen, %broadcast.splat ; 3 uses
  %i.aep = fcmp oge <4 x float> %i.aeo, %broadcast.splat5858
  %i.aeq = select <4 x i1> %i.aep, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.aer = or disjoint <4 x i8> %i.aeb, %i.aeq
  %i.aes = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.aet = getelementptr i8, ptr %i.aam, i64 60
  %i.aeu = getelementptr i8, ptr %i.aan, i64 92
  %i.aev = getelementptr i8, ptr %i.aao, i64 124
  %i.aew = load float, ptr %i.aes, align 4, !alias.scope !815, !noalias !826
  %i.aex = load float, ptr %i.aet, align 4, !alias.scope !815, !noalias !826
  %i.aey = load float, ptr %i.aeu, align 4, !alias.scope !815, !noalias !826
  %i.aez = load float, ptr %i.aev, align 4, !alias.scope !815, !noalias !826
  %i.afa = insertelement <4 x float> poison, float %i.aew, i64 0
  %i.afb = insertelement <4 x float> %i.afa, float %i.aex, i64 1
  %i.afc = insertelement <4 x float> %i.afb, float %i.aey, i64 2
  %i.afd = insertelement <4 x float> %i.afc, float %i.aez, i64 3
  %i.afe = fsub <4 x float> %i.afd, %broadcast.splat ; 3 uses
  %i.aff = fcmp oge <4 x float> %i.afe, %broadcast.splat5858
  %i.afg = select <4 x i1> %i.aff, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.afh = add nuw <4 x i8> %i.aer, %i.afg
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index5860 ; 2 uses
  %wide.load5864 = load <4 x i8>, ptr %gep, align 1, !alias.scope !827, !noalias !828
  %i.afi = or <4 x i8> %i.afh, %wide.load5864
  store <4 x i8> %i.afi, ptr %gep, align 1, !alias.scope !827, !noalias !828
  %i.afj = shufflevector <4 x float> %i.abm, <4 x float> %i.abb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afk = shufflevector <4 x float> %i.acc, <4 x float> %i.acs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afl = shufflevector <8 x float> %i.afj, <8 x float> %i.afk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afm = fcmp olt <16 x float> %i.afl, %i.aah
  %i.afn = shufflevector <4 x float> %i.abm, <4 x float> %i.abb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afo = shufflevector <4 x float> %i.acc, <4 x float> %i.acs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afp = shufflevector <8 x float> %i.afn, <8 x float> %i.afo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afq = select <16 x i1> %i.afm, <16 x float> %i.afp, <16 x float> %i.aai
  %i.afr = shufflevector <4 x float> %i.adi, <4 x float> %i.ady, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afs = shufflevector <4 x float> %i.aeo, <4 x float> %i.afe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aft = shufflevector <8 x float> %i.afr, <8 x float> %i.afs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afu = fcmp olt <16 x float> %i.aft, %i.aaj
  %i.afv = shufflevector <4 x float> %i.adi, <4 x float> %i.ady, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afw = shufflevector <4 x float> %i.aeo, <4 x float> %i.afe, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afx = shufflevector <8 x float> %i.afv, <8 x float> %i.afw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afy = select <16 x i1> %i.afu, <16 x float> %i.afx, <16 x float> %i.aak
  %interleaved.vec = shufflevector <16 x float> %i.afq, <16 x float> %i.afy, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !815, !noalias !826
  %index.next5865 = add nuw i64 %index5860, 4     ; 2 uses
  %i.afz = icmp eq i64 %index.next5865, %n.vec5856
  br i1 %i.afz, label %.lr.ph372.i.i.preheader6819, label %vector.body5859, !llvm.loop !537

.lr.ph372.i.i.preheader6819:                      ; preds = %vector.body5859, %.lr.ph372.i.i.preheader
  %.sroa.0178.0370.i.i.ph = phi ptr [ %i.em, %.lr.ph372.i.i.preheader ], [ %i.aag, %vector.body5859 ]
  %.sroa.7180.0369.i.i.ph = phi i64 [ 0, %.lr.ph372.i.i.preheader ], [ %n.vec5856, %vector.body5859 ]
  %i.aga = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i, i64 0
  %i.agb = shufflevector <4 x float> %i.aga, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agc = insertelement <4 x float> poison, float %.sroa.035.0.i.i, i64 0
  %i.agd = shufflevector <4 x float> %i.agc, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph372.i.i

.lr.ph372.i.i:                                    ; preds = %.lr.ph372.i.i.preheader6819, %bb.ga
  %.sroa.0178.0370.i.i = phi ptr [ %i.agh, %bb.ga ], [ %.sroa.0178.0370.i.i.ph, %.lr.ph372.i.i.preheader6819 ] ; 4 uses
  %.sroa.7180.0369.i.i = phi i64 [ %i.agg, %bb.ga ], [ %.sroa.7180.0369.i.i.ph, %.lr.ph372.i.i.preheader6819 ] ; 2 uses
  %i.age = add nuw nsw i64 %.sroa.7180.0369.i.i, %i.yd ; 3 uses
  %i.agf = icmp ult i64 %i.age, %i.es
  br i1 %i.agf, label %bb.ga, label %.invoke.i

bb.ga:                                            ; preds = %.lr.ph372.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %.thread122.i85

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram16HistogramCommandNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.lg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit432.i.i493
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %i.ari, i64 noundef %i.arj)
          to label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram16HistogramCommandNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit unwind label %.body548.thread1112

bb.ob:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECskeugdADtBsi_12pingora_core.exit.i, %.split577.i
  %.sroa.0.0579.i = phi i64 [ %spec.store.select.i51, %.split577.i ], [ %i.bya, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.021.0578.i = phi i64 [ 0, %.split577.i ], [ %i.byn, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram16HistogramCommandtECskeugdADtBsi_12pingora_core.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.bhp = icmp eq i64 %.sroa.0.0579.i, 0
  br i1 %i.bhp, label %.loopexit143.i222, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bhq = add nsw i64 %.sroa.0.0579.i, 7
  %i.bhr = lshr i64 %i.bhq, 3                     ; 8 uses
  %i.bhs = icmp eq i64 %.sroa.0.0579.i, 1
  br i1 %i.bhs, label %.preheader.i151.i530.preheader, label %bb.od

.preheader.i151.i530.preheader:                   ; preds = %bb.oc
  br i1 %min.iters.check5934, label %.preheader.i151.i530.preheader6565, label %vector.body5937

.preheader.i151.i530.preheader6565:               ; preds = %vector.body5937, %.preheader.i151.i530.preheader
  %.sroa.04.2391.i.i531.ph = phi i64 [ 0, %.preheader.i151.i530.preheader ], [ %n.vec5936, %vector.body5937 ]
  br label %.preheader.i151.i530

vector.body5937:                                  ; preds = %.preheader.i151.i530.preheader, %vector.body5937
  %index5938 = phi i64 [ %index.next5939, %vector.body5937 ], [ 0, %.preheader.i151.i530.preheader ] ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.ari, i64 %index5938 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bht, i64 16
  store <16 x i8> zeroinitializer, ptr %i.bht, align 1, !alias.scope !889, !noalias !890
  store <16 x i8> zeroinitializer, ptr %i.bhu, align 1, !alias.scope !889, !noalias !890
  %index.next5939 = add nuw i64 %index5938, 32    ; 2 uses
  %i.bhv = icmp eq i64 %index.next5939, %n.vec5936
  br i1 %i.bhv, label %.preheader.i151.i530.preheader6565, label %vector.body5937, !llvm.loop !641

bb.od:                                            ; preds = %bb.oc
  %i.bhw = mul nuw nsw i64 %.sroa.0.0579.i, 704   ; 2 uses
  %.not109.i.i105 = icmp ugt i64 %i.bhw, %i.arq
  br i1 %.not109.i.i105, label %.invoke1468.i, label %.lr.ph.preheader.i.i, !prof !27

.invoke1468.i:                                    ; preds = %._crit_edge355.i.i137, %._crit_edge.i.i134, %bb.od, %bb.pg
  %i.bhx = phi i64 [ %i.bhr, %bb.pg ], [ %i.bif, %._crit_edge.i.i134 ], [ %i.bhw, %bb.od ], [ %3, %._crit_edge355.i.i137 ]
  %i.bhy = phi i64 [ %i.aru, %bb.pg ], [ %i.arz, %._crit_edge.i.i134 ], [ %i.arq, %bb.od ], [ %i.amv, %._crit_edge355.i.i137 ]
  %i.bhz = phi ptr [ @134, %bb.pg ], [ @27, %._crit_edge.i.i134 ], [ @30, %bb.od ], [ @26, %._crit_edge355.i.i137 ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bhx, i64 noundef range(i64 0, -9223372036854775808) %i.bhy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bhz) #24
          to label %.cont1469.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i117, !noalias !839

.cont1469.i:                                      ; preds = %.invoke1468.i
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.od
  %.idx.i147.i106 = mul nuw nsw i64 %.sroa.0.0579.i, 2816
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.arp, i8 0, i64 %.idx.i147.i106, i1 false), !alias.scope !886, !noalias !891
  br label %bb.oe

bb.oe:                                            ; preds = %bb.qh, %.lr.ph.preheader.i.i
  %.sroa.04.0347.i.i107 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bxv, %bb.qh ] ; 4 uses
  %exitcond.not.i148.i108 = icmp eq i64 %.sroa.04.0347.i.i107, %i.apc
  br i1 %exitcond.not.i148.i108, label %.invoke.i116, label %bb.qf

.loopexit306.i.i128:                              ; preds = %bb.qe
  %i.bia = icmp eq i64 %i.bib, 0
  br i1 %i.bia, label %bb.of, label %.split.i149.i110

bb.of:                                            ; preds = %.loopexit306.i.i128
  br i1 %i.asg, label %._crit_edge.i.i134, label %.lr.ph351.i.i129

.split.i149.i110:                                 ; preds = %bb.qh, %.loopexit306.i.i128
  %.sroa.04.1349.i.i111 = phi i64 [ %i.bib, %.loopexit306.i.i128 ], [ 704, %bb.qh ]
  %i.bib = add nsw i64 %.sroa.04.1349.i.i111, -1  ; 4 uses
  %invariant.gep.i.i112 = getelementptr [4 x i8], ptr %i.apb, i64 %i.bib
  %i.bic = mul i64 %i.bib, %.sroa.0.0579.i
  br label %bb.pz

.lr.ph351.i.i129:                                 ; preds = %bb.of, %.noexc154.i133
  %.sroa.024.0350.i.i130 = phi ptr [ %i.bid, %.noexc154.i133 ], [ %i.art, %bb.of ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !892
  invoke void @_RNvXsX_NtCskKLDkoKarTP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.l)
          to label %.noexc154.i133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i131, !noalias !839

.noexc154.i133:                                   ; preds = %.lr.ph351.i.i129
  %i.bid = getelementptr inbounds nuw i8, ptr %.sroa.024.0350.i.i130, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.024.0350.i.i130, ptr noundef nonnull align 4 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !892
  %i.bie = icmp eq ptr %i.bid, %i.asf
  br i1 %i.bie, label %._crit_edge.i.i134, label %.lr.ph351.i.i129

._crit_edge.i.i134:                               ; preds = %.noexc154.i133, %bb.of
  %i.bif = mul i64 %i.bhr, %3                     ; 4 uses
  %.not110.i.i135 = icmp ugt i64 %i.bif, %i.arz
  br i1 %.not110.i.i135, label %.invoke1468.i, label %bb.og, !prof !27

bb.og:                                            ; preds = %._crit_edge.i.i134
  %i.big = icmp samesign eq i64 %i.bif, 0
  br i1 %i.big, label %._crit_edge355.i.i137, label %.lr.ph354.preheader.i.i136

.lr.ph354.preheader.i.i136:                       ; preds = %bb.og
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ary, i8 0, i64 %i.bif, i1 false), !alias.scope !888, !noalias !894
  br label %._crit_edge355.i.i137

._crit_edge355.i.i137:                            ; preds = %.lr.ph354.preheader.i.i136, %bb.og
  br i1 %.not111.i.i104, label %.invoke1468.i, label %.lr.ph376.i.i138, !prof !27

.lr.ph376.i.i138:                                 ; preds = %._crit_edge355.i.i137
  %i.bih = lshr i64 %.sroa.0.0579.i, 3            ; 3 uses
  %.not.i125.i.i139 = icmp samesign ugt i64 %i.bih, %i.aru
  %.idx394.i.i140 = shl nuw nsw i64 %i.bih, 5
  %i.bii = getelementptr inbounds nuw i8, ptr %i.art, i64 %.idx394.i.i140
  %i.bij = icmp eq i64 %i.bih, 0
  %i.bik = and i64 %.sroa.0.0579.i, 36028797018963960 ; 15 uses
  %i.bil = and i64 %.sroa.0.0579.i, 7             ; 8 uses
  %.not.i.i.i141 = icmp samesign ugt i64 %i.bhr, %i.aru
  %.idx395.i.i142 = shl i64 %i.bhr, 5             ; 2 uses
  %i.bim = getelementptr inbounds nuw i8, ptr %i.art, i64 %.idx395.i.i142
  br i1 %.not.i125.i.i139, label %.lr.ph376.split.us.i.i528, label %.lr.ph376.split.preheader.i.i143, !prof !10

.lr.ph376.split.preheader.i.i143:                 ; preds = %.lr.ph376.i.i138
  %i.bin = icmp eq i64 %i.bil, 0
  %i.bio = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bip = icmp samesign ult i64 %i.bio, %i.aru
  %i.biq = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bio ; 2 uses
  %i.bir = trunc i64 %i.bik to i8
  %i.bis = icmp eq i64 %i.bil, 1
  %i.bit = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.biu = icmp samesign ult i64 %i.bit, %i.aru
  %i.biv = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bit
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 4 ; 2 uses
  %i.bix = trunc i64 %i.bik to i8
  %i.biy = or disjoint i8 %i.bix, 1
  %i.biz = icmp eq i64 %i.bil, 2
  %i.bja = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bjb = icmp samesign ult i64 %i.bja, %i.aru
  %i.bjc = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bja
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bjc, i64 8 ; 2 uses
  %i.bje = trunc i64 %i.bik to i8
  %i.bjf = or disjoint i8 %i.bje, 2
  %i.bjg = icmp eq i64 %i.bil, 3
  %i.bjh = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bji = icmp samesign ult i64 %i.bjh, %i.aru
  %i.bjj = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bjh
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 12 ; 2 uses
  %i.bjl = trunc i64 %i.bik to i8
  %i.bjm = or disjoint i8 %i.bjl, 3
  %i.bjn = icmp eq i64 %i.bil, 4
  %i.bjo = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bjp = icmp samesign ult i64 %i.bjo, %i.aru
  %i.bjq = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bjo
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjq, i64 16 ; 2 uses
  %i.bjs = trunc i64 %i.bik to i8
  %i.bjt = or disjoint i8 %i.bjs, 4
  %i.bju = icmp eq i64 %i.bil, 5
  %i.bjv = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bjw = icmp samesign ult i64 %i.bjv, %i.aru
  %i.bjx = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bjv
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bjx, i64 20 ; 2 uses
  %i.bjz = trunc i64 %i.bik to i8
  %i.bka = or disjoint i8 %i.bjz, 5
  %i.bkb = icmp eq i64 %i.bil, 6
  %i.bkc = lshr exact i64 %i.bik, 3               ; 3 uses
  %i.bkd = icmp samesign ult i64 %i.bkc, %i.aru
  %i.bke = getelementptr inbounds nuw [32 x i8], ptr %i.art, i64 %i.bkc
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 24 ; 2 uses
  %i.bkg = trunc i64 %i.bik to i8
  %i.bkh = or disjoint i8 %i.bkg, 6
  %i.bki = add i64 %.idx395.i.i142, -32
  %i.bkj = lshr exact i64 %i.bki, 5
  br label %.lr.ph376.split.i.i144

.lr.ph376.split.us.i.i528:                        ; preds = %.lr.ph376.i.i138
  %.not397.i.i = icmp eq i64 %i.arj, 0
  br i1 %.not397.i.i, label %.invoke.i116, label %bb.oh

bb.oh:                                            ; preds = %.lr.ph376.split.us.i.i528
  %i.bkk = load i16, ptr %i.amu, align 2, !alias.scope !895, !noalias !896, !noundef !7
  %i.bkl = zext i16 %i.bkk to i64
  %i.bkm = mul nuw nsw i64 %.sroa.0.0579.i, %i.bkl
  %.not.i124.us.i.i529 = icmp ugt i64 %i.bkm, %i.arq
  br i1 %.not.i124.us.i.i529, label %.split380.us.i.i527, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i171, %._crit_edge362.i.i168, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i154, %.lr.ph361.i.i149, %.split380.us.i.i527, %bb.oh
  %i.bkn = phi ptr [ @23, %.lr.ph361.i.i149 ], [ @18, %.split380.us.i.i527 ], [ @19, %bb.oh ], [ @24, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i154 ], [ @20, %._crit_edge362.i.i168 ], [ @21, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i171 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @97, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bkn) #24
          to label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i526 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i117, !noalias !839

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i526: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i209: ; preds = %bb.ph
  %i.bko = icmp eq ptr %i.bkp, %i.ash
  br i1 %i.bko, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i210, label %.lr.ph376.split.i.i144

.lr.ph376.split.i.i144:                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i209, %.lr.ph376.split.preheader.i.i143
  %.sroa.0.0288374.i.i145 = phi ptr [ %i.bkp, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i209 ], [ %i.amu, %.lr.ph376.split.preheader.i.i143 ] ; 2 uses
  %.sroa.7.0373.i.i146 = phi i64 [ %i.bkq, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i209 ], [ 0, %.lr.ph376.split.preheader.i.i143 ] ; 7 uses
  %16 = mul i64 %i.bhr, %.sroa.7.0373.i.i146
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sroa.0.0288374.i.i145, i64 2 ; 2 uses
  %i.bkq = add nuw i64 %.sroa.7.0373.i.i146, 1
  %exitcond429.not.i.i = icmp eq i64 %.sroa.7.0373.i.i146, %i.arj
  br i1 %exitcond429.not.i.i, label %.invoke.i116, label %bb.ol

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i210: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i209
  br i1 %i.asq, label %.lr.ph389.preheader.i.i211, label %.invoke.i116

.lr.ph389.preheader.i.i211:                       ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i210
  %i.bkr = load i8, ptr %i.asr, align 1, !alias.scope !889, !noalias !890, !noundef !7
  %i.bks = mul i64 %i.bhr, %i.asp
  br label %.lr.ph389.i.i212

.lr.ph389.i.i212:                                 ; preds = %bb.ok, %.lr.ph389.preheader.i.i211
  %.sroa.0.1388.i.i213 = phi i64 [ %.sroa.0.2.i.i220, %bb.ok ], [ 1, %.lr.ph389.preheader.i.i211 ] ; 2 uses
  %.sroa.066.0387.i.i214 = phi i8 [ %.sroa.066.1.i.i219, %bb.ok ], [ %i.bkr, %.lr.ph389.preheader.i.i211 ] ; 4 uses
  %.sroa.064.0386.i.i215 = phi i64 [ %i.bku, %bb.ok ], [ %i.bks, %.lr.ph389.preheader.i.i211 ]
  %.sroa.057.0385.i.i216 = phi i64 [ %i.bkt, %bb.ok ], [ %i.asp, %.lr.ph389.preheader.i.i211 ]
  %i.bkt = add nsw i64 %.sroa.057.0385.i.i216, -1 ; 4 uses
  %i.bku = sub i64 %.sroa.064.0386.i.i215, %i.bhr ; 2 uses
  %i.bkv = lshr i8 %.sroa.066.0387.i.i214, 3
  %i.bkw = zext nneg i8 %i.bkv to i64
  %i.bkx = add i64 %i.bku, %i.bkw                 ; 3 uses
  %i.bky = icmp ult i64 %i.bkx, %i.arz
  br i1 %i.bky, label %bb.oi, label %.invoke.i116

bb.oi:                                            ; preds = %.lr.ph389.i.i212
  %i.bkz = and i8 %.sroa.066.0387.i.i214, 7
  %i.bla = shl nuw i8 1, %i.bkz
  %i.blb = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.bkx
  %i.blc = load i8, ptr %i.blb, align 1, !alias.scope !888, !noalias !894, !noundef !7
  %i.bld = and i8 %i.blc, %i.bla
  %i.ble = icmp eq i8 %i.bld, 0
  br i1 %i.ble, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.bkt
  %i.blg = load i8, ptr %i.blf, align 1, !alias.scope !889, !noalias !890, !noundef !7 ; 2 uses
  %.not114.i.i217 = icmp ne i8 %.sroa.066.0387.i.i214, %i.blg
  %i.blh = zext i1 %.not114.i.i217 to i64
  %spec.select116.i.i218 = add i64 %.sroa.0.1388.i.i213, %i.blh
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %.sroa.066.1.i.i219 = phi i8 [ %.sroa.066.0387.i.i214, %bb.oi ], [ %i.blg, %bb.oj ] ; 2 uses
  %.sroa.0.2.i.i220 = phi i64 [ %.sroa.0.1388.i.i213, %bb.oi ], [ %spec.select116.i.i218, %bb.oj ] ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.bkt
  store i8 %.sroa.066.1.i.i219, ptr %i.bli, align 1, !alias.scope !889, !noalias !890
  %.not113.i.i221 = icmp eq i64 %i.bkt, 0
  br i1 %.not113.i.i221, label %.loopexit143.i222, label %.lr.ph389.i.i212

bb.ol:                                            ; preds = %.lr.ph376.split.i.i144
  %i.blj = getelementptr inbounds nuw i8, ptr %i.ari, i64 %.sroa.7.0373.i.i146 ; 15 uses
  %i.blk = mul i64 %.sroa.7.0373.i.i146, %i.bhr   ; 3 uses
  %i.bll = load i16, ptr %.sroa.0.0288374.i.i145, align 2, !alias.scope !895, !noalias !896, !noundef !7
  %i.blm = zext i16 %i.bll to i64
  %i.bln = mul nuw nsw i64 %.sroa.0.0579.i, %i.blm ; 4 uses
  %.not.i124.i.i147 = icmp ugt i64 %i.bln, %i.arq
  br i1 %.not.i124.i.i147, label %.split380.us.i.i527, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148, !prof !10

.split380.us.i.i527:                              ; preds = %bb.ol, %bb.oh
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148: ; preds = %bb.ol
  %i.blo = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %i.bln
  %i.blp = sub nuw nsw i64 %i.arq, %i.bln         ; 2 uses
  br i1 %i.bij, label %._crit_edge362.i.i168, label %.lr.ph361.i.i149

.lr.ph361.i.i149:                                 ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148, %bb.py
  %.sroa.054.0360.i.i150 = phi float [ %.sroa.054.4.7.i.i167, %bb.py ], [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148 ] ; 2 uses
  %.sroa.0159.0359.i.i151 = phi ptr [ %i.blq, %bb.py ], [ %i.art, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148 ] ; 10 uses
  %.sroa.7161.0358.i.i152 = phi i64 [ %i.blr, %bb.py ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.k, i8 0, i64 32, i1 false), !noalias !892
  %i.blq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0359.i.i151, i64 32 ; 2 uses
  %i.blr = add nuw nsw i64 %.sroa.7161.0358.i.i152, 1
  %i.bls = shl nuw nsw i64 %.sroa.7161.0358.i.i152, 3 ; 11 uses
  %.not.i144.i.i153 = icmp samesign ugt i64 %i.bls, %i.blp
  br i1 %.not.i144.i.i153, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i154, !prof !10

._crit_edge362.i.i168:                            ; preds = %bb.py, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148
  %.sroa.054.0.lcssa.i.i169 = phi float [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i148 ], [ %.sroa.054.4.7.i.i167, %bb.py ] ; 3 uses
  %i.blt = add nuw nsw i64 %i.bln, %i.bik         ; 3 uses
  %.not.i131.i.i170 = icmp ugt i64 %i.blt, %i.arq
  br i1 %.not.i131.i.i170, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i171, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i171: ; preds = %._crit_edge362.i.i168
  %i.blu = sub nuw nsw i64 %i.arq, %i.blt
  %.not.i136.i.i172 = icmp samesign ugt i64 %i.bil, %i.blu
  br i1 %.not.i136.i.i172, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i525, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i173, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i173: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i171
  %i.blv = getelementptr inbounds nuw [4 x i8], ptr %i.arp, i64 %i.blt ; 7 uses
  br i1 %i.bin, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174

.lr.ph366.i.i174:                                 ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i173
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 4
  br i1 %i.bip, label %bb.om, label %.invoke.i116

._crit_edge367.i.i179:                            ; preds = %bb.pd, %bb.pe, %bb.on, %bb.oq, %bb.ot, %bb.ow, %bb.oz, %bb.pc, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i173
  %.sroa.054.1.lcssa.i.i180 = phi float [ %.sroa.054.0.lcssa.i.i169, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i173 ], [ %.sroa.054.2.i.i178, %bb.on ], [ %.sroa.054.2.i.i178.1, %bb.oq ], [ %.sroa.054.2.i.i178.2, %bb.ot ], [ %.sroa.054.2.i.i178.3, %bb.ow ], [ %.sroa.054.2.i.i178.4, %bb.oz ], [ %.sroa.054.2.i.i178.5, %bb.pc ], [ %i.bnd, %bb.pe ], [ %.sroa.054.2.i.i178.5, %bb.pd ] ; 2 uses
  %i.blx = icmp samesign ult i64 %.sroa.7.0373.i.i146, 2000
  br i1 %i.blx, label %bb.pi, label %bb.pg

bb.om:                                            ; preds = %.lr.ph366.i.i174
  %i.bly = load float, ptr %i.blv, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.blz = load float, ptr %i.biq, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bma = fadd float %i.bly, %i.blz              ; 3 uses
  store float %i.bma, ptr %i.biq, align 4, !alias.scope !887, !noalias !893
  %i.bmb = fcmp olt float %i.bma, %.sroa.054.0.lcssa.i.i169
  br i1 %i.bmb, label %bb.pf, label %bb.on

bb.on:                                            ; preds = %bb.pf, %bb.om
  %.sroa.054.2.i.i178 = phi float [ %i.bma, %bb.pf ], [ %.sroa.054.0.lcssa.i.i169, %bb.om ] ; 3 uses
  br i1 %i.bis, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.1

.lr.ph366.i.i174.1:                               ; preds = %bb.on
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blv, i64 8
  br i1 %i.biu, label %bb.oo, label %.invoke.i116

bb.oo:                                            ; preds = %.lr.ph366.i.i174.1
  %i.bmd = load float, ptr %i.blw, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bme = load float, ptr %i.biw, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bmf = fadd float %i.bmd, %i.bme              ; 3 uses
  store float %i.bmf, ptr %i.biw, align 4, !alias.scope !887, !noalias !893
  %i.bmg = fcmp olt float %i.bmf, %.sroa.054.2.i.i178
  br i1 %i.bmg, label %bb.op, label %bb.oq

bb.op:                                            ; preds = %bb.oo
  store i8 %i.biy, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %.sroa.054.2.i.i178.1 = phi float [ %i.bmf, %bb.op ], [ %.sroa.054.2.i.i178, %bb.oo ] ; 3 uses
  br i1 %i.biz, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.2

.lr.ph366.i.i174.2:                               ; preds = %bb.oq
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.blv, i64 12
  br i1 %i.bjb, label %bb.or, label %.invoke.i116

bb.or:                                            ; preds = %.lr.ph366.i.i174.2
  %i.bmi = load float, ptr %i.bmc, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bmj = load float, ptr %i.bjd, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bmk = fadd float %i.bmi, %i.bmj              ; 3 uses
  store float %i.bmk, ptr %i.bjd, align 4, !alias.scope !887, !noalias !893
  %i.bml = fcmp olt float %i.bmk, %.sroa.054.2.i.i178.1
  br i1 %i.bml, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  store i8 %i.bjf, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.ot

bb.ot:                                            ; preds = %bb.os, %bb.or
  %.sroa.054.2.i.i178.2 = phi float [ %i.bmk, %bb.os ], [ %.sroa.054.2.i.i178.1, %bb.or ] ; 3 uses
  br i1 %i.bjg, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.3

.lr.ph366.i.i174.3:                               ; preds = %bb.ot
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  br i1 %i.bji, label %bb.ou, label %.invoke.i116

bb.ou:                                            ; preds = %.lr.ph366.i.i174.3
  %i.bmn = load float, ptr %i.bmh, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bmo = load float, ptr %i.bjk, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bmp = fadd float %i.bmn, %i.bmo              ; 3 uses
  store float %i.bmp, ptr %i.bjk, align 4, !alias.scope !887, !noalias !893
  %i.bmq = fcmp olt float %i.bmp, %.sroa.054.2.i.i178.2
  br i1 %i.bmq, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bb.ou
  store i8 %i.bjm, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %.sroa.054.2.i.i178.3 = phi float [ %i.bmp, %bb.ov ], [ %.sroa.054.2.i.i178.2, %bb.ou ] ; 3 uses
  br i1 %i.bjn, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.4

.lr.ph366.i.i174.4:                               ; preds = %bb.ow
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.blv, i64 20
  br i1 %i.bjp, label %bb.ox, label %.invoke.i116

bb.ox:                                            ; preds = %.lr.ph366.i.i174.4
  %i.bms = load float, ptr %i.bmm, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bmt = load float, ptr %i.bjr, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bmu = fadd float %i.bms, %i.bmt              ; 3 uses
  store float %i.bmu, ptr %i.bjr, align 4, !alias.scope !887, !noalias !893
  %i.bmv = fcmp olt float %i.bmu, %.sroa.054.2.i.i178.3
  br i1 %i.bmv, label %bb.oy, label %bb.oz

bb.oy:                                            ; preds = %bb.ox
  store i8 %i.bjt, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox
  %.sroa.054.2.i.i178.4 = phi float [ %i.bmu, %bb.oy ], [ %.sroa.054.2.i.i178.3, %bb.ox ] ; 3 uses
  br i1 %i.bju, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.5

.lr.ph366.i.i174.5:                               ; preds = %bb.oz
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.blv, i64 24
  br i1 %i.bjw, label %bb.pa, label %.invoke.i116

bb.pa:                                            ; preds = %.lr.ph366.i.i174.5
  %i.bmx = load float, ptr %i.bmr, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bmy = load float, ptr %i.bjy, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bmz = fadd float %i.bmx, %i.bmy              ; 3 uses
  store float %i.bmz, ptr %i.bjy, align 4, !alias.scope !887, !noalias !893
  %i.bna = fcmp olt float %i.bmz, %.sroa.054.2.i.i178.4
  br i1 %i.bna, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  store i8 %i.bka, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %bb.pa
  %.sroa.054.2.i.i178.5 = phi float [ %i.bmz, %bb.pb ], [ %.sroa.054.2.i.i178.4, %bb.pa ] ; 3 uses
  br i1 %i.bkb, label %._crit_edge367.i.i179, label %.lr.ph366.i.i174.6

.lr.ph366.i.i174.6:                               ; preds = %bb.pc
  br i1 %i.bkd, label %bb.pd, label %.invoke.i116

bb.pd:                                            ; preds = %.lr.ph366.i.i174.6
  %i.bnb = load float, ptr %i.bmw, align 4, !alias.scope !886, !noalias !891, !noundef !7
  %i.bnc = load float, ptr %i.bkf, align 4, !alias.scope !887, !noalias !893, !noundef !7
  %i.bnd = fadd float %i.bnb, %i.bnc              ; 3 uses
  store float %i.bnd, ptr %i.bkf, align 4, !alias.scope !887, !noalias !893
  %i.bne = fcmp olt float %i.bnd, %.sroa.054.2.i.i178.5
  br i1 %i.bne, label %bb.pe, label %._crit_edge367.i.i179

bb.pe:                                            ; preds = %bb.pd
  store i8 %i.bkh, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %._crit_edge367.i.i179

bb.pf:                                            ; preds = %bb.om
  store i8 %i.bir, ptr %i.blj, align 1, !alias.scope !889, !noalias !890
  br label %bb.on

bb.pg:                                            ; preds = %bb.pi, %._crit_edge367.i.i179
  %.sroa.035.0.i.i181 = phi float [ %i.bus, %bb.pi ], [ 1.350000e+01, %._crit_edge367.i.i179 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  br i1 %.not.i.i.i141, label %.invoke1468.i, label %.lr.ph372.i.i182.preheader, !prof !27

.lr.ph372.i.i182.preheader:                       ; preds = %bb.pg
  %i.bnf = call i64 @llvm.umax.i64(i64 %i.arz, i64 %i.blk)
  %i.bng = sub i64 %i.bnf, %16
  %i.bnh = call i64 @llvm.umin.i64(i64 %i.bkj, i64 %i.bng) ; 2 uses
  %min.iters.check5943 = icmp samesign ult i64 %i.bnh, 4
  br i1 %min.iters.check5943, label %.lr.ph372.i.i182.preheader6557, label %vector.ph5944

vector.ph5944:                                    ; preds = %.lr.ph372.i.i182.preheader
  %i.bni = add nuw nsw i64 %i.bnh, 1              ; 2 uses
  %i.bnj = and i64 %i.bni, 3                      ; 2 uses
  %i.bnk = icmp eq i64 %i.bnj, 0
  %i.bnl = select i1 %i.bnk, i64 4, i64 %i.bnj
  %n.vec5945 = sub nsw i64 %i.bni, %i.bnl         ; 3 uses
  %i.bnm = shl i64 %n.vec5945, 5
  %i.bnn = getelementptr i8, ptr %i.art, i64 %i.bnm
  %broadcast.splatinsert5946 = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i180, i64 0
  %broadcast.splat5947 = shufflevector <4 x float> %broadcast.splatinsert5946, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert5948 = insertelement <4 x float> poison, float %.sroa.035.0.i.i181, i64 0 ; 5 uses
  %broadcast.splat5949 = shufflevector <4 x float> %broadcast.splatinsert5948, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep7548 = getelementptr i8, ptr %i.ary, i64 %i.blk
  %i.bno = shufflevector <4 x float> %broadcast.splatinsert5948, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bnp = shufflevector <4 x float> %broadcast.splatinsert5948, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bnq = shufflevector <4 x float> %broadcast.splatinsert5948, <4 x float> poison, <16 x i32> zeroinitializer
  %i.bnr = shufflevector <4 x float> %broadcast.splatinsert5948, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body5950

vector.body5950:                                  ; preds = %vector.body5950, %vector.ph5944
  %index5951 = phi i64 [ 0, %vector.ph5944 ], [ %index.next5958, %vector.body5950 ] ; 3 uses
  %i.bns = shl i64 %index5951, 5                  ; 4 uses
  %next.gep5952 = getelementptr i8, ptr %i.art, i64 %i.bns ; 9 uses
  %i.bnt = getelementptr i8, ptr %i.art, i64 %i.bns ; 8 uses
  %next.gep5953 = getelementptr i8, ptr %i.bnt, i64 32
  %i.bnu = getelementptr i8, ptr %i.art, i64 %i.bns ; 8 uses
  %next.gep5954 = getelementptr i8, ptr %i.bnu, i64 64
  %i.bnv = getelementptr i8, ptr %i.art, i64 %i.bns ; 8 uses
  %next.gep5955 = getelementptr i8, ptr %i.bnv, i64 96
  %i.bnw = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 4
  %i.bnx = getelementptr i8, ptr %i.bnt, i64 36
  %i.bny = getelementptr i8, ptr %i.bnu, i64 68
  %i.bnz = getelementptr i8, ptr %i.bnv, i64 100
  %i.boa = load float, ptr %i.bnw, align 4, !alias.scope !887, !noalias !898
  %i.bob = load float, ptr %i.bnx, align 4, !alias.scope !887, !noalias !898
  %i.boc = load float, ptr %i.bny, align 4, !alias.scope !887, !noalias !898
  %i.bod = load float, ptr %i.bnz, align 4, !alias.scope !887, !noalias !898
  %i.boe = insertelement <4 x float> poison, float %i.boa, i64 0
  %i.bof = insertelement <4 x float> %i.boe, float %i.bob, i64 1
  %i.bog = insertelement <4 x float> %i.bof, float %i.boc, i64 2
  %i.boh = insertelement <4 x float> %i.bog, float %i.bod, i64 3
  %i.boi = fsub <4 x float> %i.boh, %broadcast.splat5947 ; 3 uses
  %i.boj = fcmp oge <4 x float> %i.boi, %broadcast.splat5949
  %i.bok = select <4 x i1> %i.boj, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.bol = load float, ptr %next.gep5952, align 4, !alias.scope !887, !noalias !898
  %i.bom = load float, ptr %next.gep5953, align 4, !alias.scope !887, !noalias !898
  %i.bon = load float, ptr %next.gep5954, align 4, !alias.scope !887, !noalias !898
  %i.boo = load float, ptr %next.gep5955, align 4, !alias.scope !887, !noalias !898
  %i.bop = insertelement <4 x float> poison, float %i.bol, i64 0
  %i.boq = insertelement <4 x float> %i.bop, float %i.bom, i64 1
  %i.bor = insertelement <4 x float> %i.boq, float %i.bon, i64 2
  %i.bos = insertelement <4 x float> %i.bor, float %i.boo, i64 3
  %i.bot = fsub <4 x float> %i.bos, %broadcast.splat5947 ; 3 uses
  %i.bou = fcmp oge <4 x float> %i.bot, %broadcast.splat5949
  %i.bov = zext <4 x i1> %i.bou to <4 x i8>
  %i.bow = or disjoint <4 x i8> %i.bok, %i.bov
  %i.box = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 8
  %i.boy = getelementptr i8, ptr %i.bnt, i64 40
  %i.boz = getelementptr i8, ptr %i.bnu, i64 72
  %i.bpa = getelementptr i8, ptr %i.bnv, i64 104
  %i.bpb = load float, ptr %i.box, align 4, !alias.scope !887, !noalias !898
  %i.bpc = load float, ptr %i.boy, align 4, !alias.scope !887, !noalias !898
  %i.bpd = load float, ptr %i.boz, align 4, !alias.scope !887, !noalias !898
  %i.bpe = load float, ptr %i.bpa, align 4, !alias.scope !887, !noalias !898
  %i.bpf = insertelement <4 x float> poison, float %i.bpb, i64 0
  %i.bpg = insertelement <4 x float> %i.bpf, float %i.bpc, i64 1
  %i.bph = insertelement <4 x float> %i.bpg, float %i.bpd, i64 2
  %i.bpi = insertelement <4 x float> %i.bph, float %i.bpe, i64 3
  %i.bpj = fsub <4 x float> %i.bpi, %broadcast.splat5947 ; 3 uses
  %i.bpk = fcmp oge <4 x float> %i.bpj, %broadcast.splat5949
  %i.bpl = select <4 x i1> %i.bpk, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.bpm = or disjoint <4 x i8> %i.bow, %i.bpl
  %i.bpn = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 12
  %i.bpo = getelementptr i8, ptr %i.bnt, i64 44
  %i.bpp = getelementptr i8, ptr %i.bnu, i64 76
  %i.bpq = getelementptr i8, ptr %i.bnv, i64 108
  %i.bpr = load float, ptr %i.bpn, align 4, !alias.scope !887, !noalias !898
  %i.bps = load float, ptr %i.bpo, align 4, !alias.scope !887, !noalias !898
  %i.bpt = load float, ptr %i.bpp, align 4, !alias.scope !887, !noalias !898
  %i.bpu = load float, ptr %i.bpq, align 4, !alias.scope !887, !noalias !898
  %i.bpv = insertelement <4 x float> poison, float %i.bpr, i64 0
  %i.bpw = insertelement <4 x float> %i.bpv, float %i.bps, i64 1
  %i.bpx = insertelement <4 x float> %i.bpw, float %i.bpt, i64 2
  %i.bpy = insertelement <4 x float> %i.bpx, float %i.bpu, i64 3
  %i.bpz = fsub <4 x float> %i.bpy, %broadcast.splat5947 ; 3 uses
  %i.bqa = fcmp oge <4 x float> %i.bpz, %broadcast.splat5949
  %i.bqb = select <4 x i1> %i.bqa, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.bqc = or disjoint <4 x i8> %i.bpm, %i.bqb
  %i.bqd = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 16
  %i.bqe = getelementptr i8, ptr %i.bnt, i64 48
  %i.bqf = getelementptr i8, ptr %i.bnu, i64 80
  %i.bqg = getelementptr i8, ptr %i.bnv, i64 112
  %i.bqh = load float, ptr %i.bqd, align 4, !alias.scope !887, !noalias !898
  %i.bqi = load float, ptr %i.bqe, align 4, !alias.scope !887, !noalias !898
  %i.bqj = load float, ptr %i.bqf, align 4, !alias.scope !887, !noalias !898
  %i.bqk = load float, ptr %i.bqg, align 4, !alias.scope !887, !noalias !898
  %i.bql = insertelement <4 x float> poison, float %i.bqh, i64 0
  %i.bqm = insertelement <4 x float> %i.bql, float %i.bqi, i64 1
  %i.bqn = insertelement <4 x float> %i.bqm, float %i.bqj, i64 2
  %i.bqo = insertelement <4 x float> %i.bqn, float %i.bqk, i64 3
  %i.bqp = fsub <4 x float> %i.bqo, %broadcast.splat5947 ; 3 uses
  %i.bqq = fcmp oge <4 x float> %i.bqp, %broadcast.splat5949
  %i.bqr = select <4 x i1> %i.bqq, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.bqs = or disjoint <4 x i8> %i.bqc, %i.bqr
  %i.bqt = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 20
  %i.bqu = getelementptr i8, ptr %i.bnt, i64 52
  %i.bqv = getelementptr i8, ptr %i.bnu, i64 84
  %i.bqw = getelementptr i8, ptr %i.bnv, i64 116
  %i.bqx = load float, ptr %i.bqt, align 4, !alias.scope !887, !noalias !898
  %i.bqy = load float, ptr %i.bqu, align 4, !alias.scope !887, !noalias !898
  %i.bqz = load float, ptr %i.bqv, align 4, !alias.scope !887, !noalias !898
  %i.bra = load float, ptr %i.bqw, align 4, !alias.scope !887, !noalias !898
  %i.brb = insertelement <4 x float> poison, float %i.bqx, i64 0
  %i.brc = insertelement <4 x float> %i.brb, float %i.bqy, i64 1
  %i.brd = insertelement <4 x float> %i.brc, float %i.bqz, i64 2
  %i.bre = insertelement <4 x float> %i.brd, float %i.bra, i64 3
  %i.brf = fsub <4 x float> %i.bre, %broadcast.splat5947 ; 3 uses
  %i.brg = fcmp oge <4 x float> %i.brf, %broadcast.splat5949
  %i.brh = select <4 x i1> %i.brg, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.bri = or disjoint <4 x i8> %i.bqs, %i.brh
  %i.brj = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 24
  %i.brk = getelementptr i8, ptr %i.bnt, i64 56
  %i.brl = getelementptr i8, ptr %i.bnu, i64 88
  %i.brm = getelementptr i8, ptr %i.bnv, i64 120
  %i.brn = load float, ptr %i.brj, align 4, !alias.scope !887, !noalias !898
  %i.bro = load float, ptr %i.brk, align 4, !alias.scope !887, !noalias !898
  %i.brp = load float, ptr %i.brl, align 4, !alias.scope !887, !noalias !898
  %i.brq = load float, ptr %i.brm, align 4, !alias.scope !887, !noalias !898
  %i.brr = insertelement <4 x float> poison, float %i.brn, i64 0
  %i.brs = insertelement <4 x float> %i.brr, float %i.bro, i64 1
  %i.brt = insertelement <4 x float> %i.brs, float %i.brp, i64 2
  %i.bru = insertelement <4 x float> %i.brt, float %i.brq, i64 3
  %i.brv = fsub <4 x float> %i.bru, %broadcast.splat5947 ; 3 uses
  %i.brw = fcmp oge <4 x float> %i.brv, %broadcast.splat5949
  %i.brx = select <4 x i1> %i.brw, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.bry = or disjoint <4 x i8> %i.bri, %i.brx
  %i.brz = getelementptr inbounds nuw i8, ptr %next.gep5952, i64 28
  %i.bsa = getelementptr i8, ptr %i.bnt, i64 60
  %i.bsb = getelementptr i8, ptr %i.bnu, i64 92
  %i.bsc = getelementptr i8, ptr %i.bnv, i64 124
  %i.bsd = load float, ptr %i.brz, align 4, !alias.scope !887, !noalias !898
  %i.bse = load float, ptr %i.bsa, align 4, !alias.scope !887, !noalias !898
  %i.bsf = load float, ptr %i.bsb, align 4, !alias.scope !887, !noalias !898
  %i.bsg = load float, ptr %i.bsc, align 4, !alias.scope !887, !noalias !898
  %i.bsh = insertelement <4 x float> poison, float %i.bsd, i64 0
  %i.bsi = insertelement <4 x float> %i.bsh, float %i.bse, i64 1
  %i.bsj = insertelement <4 x float> %i.bsi, float %i.bsf, i64 2
  %i.bsk = insertelement <4 x float> %i.bsj, float %i.bsg, i64 3
  %i.bsl = fsub <4 x float> %i.bsk, %broadcast.splat5947 ; 3 uses
  %i.bsm = fcmp oge <4 x float> %i.bsl, %broadcast.splat5949
  %i.bsn = select <4 x i1> %i.bsm, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.bso = add nuw <4 x i8> %i.bry, %i.bsn
  %gep7549 = getelementptr i8, ptr %invariant.gep7548, i64 %index5951 ; 2 uses
  %wide.load5956 = load <4 x i8>, ptr %gep7549, align 1, !alias.scope !899, !noalias !900
  %i.bsp = or <4 x i8> %i.bso, %wide.load5956
  store <4 x i8> %i.bsp, ptr %gep7549, align 1, !alias.scope !899, !noalias !900
  %i.bsq = shufflevector <4 x float> %i.bot, <4 x float> %i.boi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsr = shufflevector <4 x float> %i.bpj, <4 x float> %i.bpz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bss = shufflevector <8 x float> %i.bsq, <8 x float> %i.bsr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bst = fcmp olt <16 x float> %i.bss, %i.bno
  %i.bsu = shufflevector <4 x float> %i.bot, <4 x float> %i.boi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsv = shufflevector <4 x float> %i.bpj, <4 x float> %i.bpz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsw = shufflevector <8 x float> %i.bsu, <8 x float> %i.bsv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bsx = select <16 x i1> %i.bst, <16 x float> %i.bsw, <16 x float> %i.bnp
  %i.bsy = shufflevector <4 x float> %i.bqp, <4 x float> %i.brf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bsz = shufflevector <4 x float> %i.brv, <4 x float> %i.bsl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bta = shufflevector <8 x float> %i.bsy, <8 x float> %i.bsz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btb = fcmp olt <16 x float> %i.bta, %i.bnq
  %i.btc = shufflevector <4 x float> %i.bqp, <4 x float> %i.brf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.btd = shufflevector <4 x float> %i.brv, <4 x float> %i.bsl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bte = shufflevector <8 x float> %i.btc, <8 x float> %i.btd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.btf = select <16 x i1> %i.btb, <16 x float> %i.bte, <16 x float> %i.bnr
  %interleaved.vec5957 = shufflevector <16 x float> %i.bsx, <16 x float> %i.btf, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec5957, ptr %next.gep5952, align 4, !alias.scope !887, !noalias !898
  %index.next5958 = add nuw i64 %index5951, 4     ; 2 uses
  %i.btg = icmp eq i64 %index.next5958, %n.vec5945
  br i1 %i.btg, label %.lr.ph372.i.i182.preheader6557, label %vector.body5950, !llvm.loop !647

.lr.ph372.i.i182.preheader6557:                   ; preds = %vector.body5950, %.lr.ph372.i.i182.preheader
  %.sroa.0178.0370.i.i183.ph = phi ptr [ %i.art, %.lr.ph372.i.i182.preheader ], [ %i.bnn, %vector.body5950 ]
  %.sroa.7180.0369.i.i184.ph = phi i64 [ 0, %.lr.ph372.i.i182.preheader ], [ %n.vec5945, %vector.body5950 ]
  %i.bth = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i180, i64 0
  %i.bti = shufflevector <4 x float> %i.bth, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.btj = insertelement <4 x float> poison, float %.sroa.035.0.i.i181, i64 0
  %i.btk = shufflevector <4 x float> %i.btj, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph372.i.i182

.lr.ph372.i.i182:                                 ; preds = %.lr.ph372.i.i182.preheader6557, %bb.ph
  %.sroa.0178.0370.i.i183 = phi ptr [ %i.bto, %bb.ph ], [ %.sroa.0178.0370.i.i183.ph, %.lr.ph372.i.i182.preheader6557 ] ; 4 uses
  %.sroa.7180.0369.i.i184 = phi i64 [ %i.btn, %bb.ph ], [ %.sroa.7180.0369.i.i184.ph, %.lr.ph372.i.i182.preheader6557 ] ; 2 uses
  %i.btl = add nuw nsw i64 %.sroa.7180.0369.i.i184, %i.blk ; 3 uses
  %i.btm = icmp ult i64 %i.btl, %i.arz
  br i1 %i.btm, label %bb.ph, label %.invoke.i116

bb.ph:                                            ; preds = %.lr.ph372.i.i182
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter16BrotliSplitBlockNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAllocECskeugdADtBsi_12pingora_core:bb.a
  br label %.thread122.i590

_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter13ClusterBlocksNtNtB4_9histogram17HistogramDistanceNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.un, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsc389t4z7aPt_12alloc_stdlib10heap_alloc7WrapBoxmEECskeugdADtBsi_12pingora_core.exit432.i.i1015
  invoke void @_RNvXNtCsc389t4z7aPt_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCsLfzX5BYWvK_15alloc_no_stdlib15stack_allocator9AllocatorhE9free_cellCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull %0, ptr noalias noundef nonnull %i.ccv, i64 noundef %i.ccw)
          to label %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter15SplitByteVectorNtNtB4_9histogram17HistogramDistanceNtNtCsc389t4z7aPt_12alloc_stdlib9std_alloc13StandardAlloctECskeugdADtBsi_12pingora_core.exit unwind label %.body1079.thread1120

bb.xi:                                            ; preds = %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECskeugdADtBsi_12pingora_core.exit.i, %.split577.i608
  %.sroa.0.0579.i612 = phi i64 [ %spec.store.select.i556, %.split577.i608 ], [ %i.djn, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECskeugdADtBsi_12pingora_core.exit.i ] ; 14 uses
  %.sroa.021.0578.i613 = phi i64 [ 0, %.split577.i608 ], [ %i.dka, %_RINvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter20BuildBlockHistogramsNtNtB4_9histogram17HistogramDistancetECskeugdADtBsi_12pingora_core.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.ctc = icmp eq i64 %.sroa.0.0579.i612, 0
  br i1 %i.ctc, label %.loopexit143.i737, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.ctd = add nsw i64 %.sroa.0.0579.i612, 7
  %i.cte = lshr i64 %i.ctd, 3                     ; 8 uses
  %i.ctf = icmp eq i64 %.sroa.0.0579.i612, 1
  br i1 %i.ctf, label %.preheader.i151.i1055.preheader, label %bb.xk

.preheader.i151.i1055.preheader:                  ; preds = %bb.xj
  br i1 %min.iters.check6016, label %.preheader.i151.i1055.preheader6303, label %vector.body6019

.preheader.i151.i1055.preheader6303:              ; preds = %vector.body6019, %.preheader.i151.i1055.preheader
  %.sroa.04.2391.i.i1056.ph = phi i64 [ 0, %.preheader.i151.i1055.preheader ], [ %n.vec6018, %vector.body6019 ]
  br label %.preheader.i151.i1055

vector.body6019:                                  ; preds = %.preheader.i151.i1055.preheader, %vector.body6019
  %index6020 = phi i64 [ %index.next6021, %vector.body6019 ], [ 0, %.preheader.i151.i1055.preheader ] ; 2 uses
  %i.ctg = getelementptr inbounds nuw i8, ptr %i.ccv, i64 %index6020 ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %i.ctg, i64 16
  store <16 x i8> zeroinitializer, ptr %i.ctg, align 1, !alias.scope !959, !noalias !960
  store <16 x i8> zeroinitializer, ptr %i.cth, align 1, !alias.scope !959, !noalias !960
  %index.next6021 = add nuw i64 %index6020, 32    ; 2 uses
  %i.cti = icmp eq i64 %index.next6021, %n.vec6018
  br i1 %i.cti, label %.preheader.i151.i1055.preheader6303, label %vector.body6019, !llvm.loop !747

bb.xk:                                            ; preds = %bb.xj
  %i.ctj = mul nuw nsw i64 %.sroa.0.0579.i612, 544 ; 2 uses
  %.not109.i.i614 = icmp ugt i64 %i.ctj, %i.cdd
  br i1 %.not109.i.i614, label %.invoke1468.i1047, label %.lr.ph.preheader.i.i615, !prof !27

.invoke1468.i1047:                                ; preds = %._crit_edge355.i.i650, %._crit_edge.i.i647, %bb.xk, %bb.yn
  %i.ctk = phi i64 [ %i.cte, %bb.yn ], [ %i.cts, %._crit_edge.i.i647 ], [ %i.ctj, %bb.xk ], [ %.sroa.04.1, %._crit_edge355.i.i650 ]
  %i.ctl = phi i64 [ %i.cdh, %bb.yn ], [ %i.cdm, %._crit_edge.i.i647 ], [ %i.cdd, %bb.xk ], [ %i.cac, %._crit_edge355.i.i650 ]
  %i.ctm = phi ptr [ @134, %bb.yn ], [ @27, %._crit_edge.i.i647 ], [ @30, %bb.xk ], [ @26, %._crit_edge355.i.i650 ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ctk, i64 noundef range(i64 0, -9223372036854775808) %i.ctl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ctm) #24
          to label %.cont1469.i1048 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i630, !noalias !909

.cont1469.i1048:                                  ; preds = %.invoke1468.i1047
  unreachable

.lr.ph.preheader.i.i615:                          ; preds = %bb.xk
  %.idx.i147.i616 = mul nuw nsw i64 %.sroa.0.0579.i612, 2176
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cdc, i8 0, i64 %.idx.i147.i616, i1 false), !alias.scope !956, !noalias !961
  br label %bb.xl

bb.xl:                                            ; preds = %bb.zo, %.lr.ph.preheader.i.i615
  %.sroa.04.0347.i.i617 = phi i64 [ 0, %.lr.ph.preheader.i.i615 ], [ %i.dji, %bb.zo ] ; 4 uses
  %exitcond.not.i148.i618 = icmp eq i64 %.sroa.04.0347.i.i617, %i.cap
  br i1 %exitcond.not.i148.i618, label %.invoke.i629, label %bb.zm

.loopexit306.i.i641:                              ; preds = %bb.zl
  %i.ctn = icmp eq i64 %i.cto, 0
  br i1 %i.ctn, label %bb.xm, label %.split.i149.i622

bb.xm:                                            ; preds = %.loopexit306.i.i641
  br i1 %i.cdt, label %._crit_edge.i.i647, label %.lr.ph351.i.i642

.split.i149.i622:                                 ; preds = %bb.zo, %.loopexit306.i.i641
  %.sroa.04.1349.i.i623 = phi i64 [ %i.cto, %.loopexit306.i.i641 ], [ 544, %bb.zo ]
  %i.cto = add nsw i64 %.sroa.04.1349.i.i623, -1  ; 4 uses
  %invariant.gep.i.i624 = getelementptr [4 x i8], ptr %i.cao, i64 %i.cto
  %i.ctp = mul nuw i64 %i.cto, %.sroa.0.0579.i612
  br label %bb.zg

.lr.ph351.i.i642:                                 ; preds = %bb.xm, %.noexc154.i646
  %.sroa.024.0350.i.i643 = phi ptr [ %i.ctq, %.noexc154.i646 ], [ %i.cdg, %bb.xm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !962
  invoke void @_RNvXsX_NtCskKLDkoKarTP_4core5arrayAfj8_NtNtB7_7default7Default7defaultCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(none) dereferenceable(32) %i.b)
          to label %.noexc154.i646 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i644, !noalias !909

.noexc154.i646:                                   ; preds = %.lr.ph351.i.i642
  %i.ctq = getelementptr inbounds nuw i8, ptr %.sroa.024.0350.i.i643, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.024.0350.i.i643, ptr noundef nonnull align 4 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !962
  %i.ctr = icmp eq ptr %i.ctq, %i.cds
  br i1 %i.ctr, label %._crit_edge.i.i647, label %.lr.ph351.i.i642

._crit_edge.i.i647:                               ; preds = %.noexc154.i646, %bb.xm
  %i.cts = mul i64 %i.cte, %.sroa.04.1            ; 4 uses
  %.not110.i.i648 = icmp ugt i64 %i.cts, %i.cdm
  br i1 %.not110.i.i648, label %.invoke1468.i1047, label %bb.xn, !prof !27

bb.xn:                                            ; preds = %._crit_edge.i.i647
  %i.ctt = icmp samesign eq i64 %i.cts, 0
  br i1 %i.ctt, label %._crit_edge355.i.i650, label %.lr.ph354.preheader.i.i649

.lr.ph354.preheader.i.i649:                       ; preds = %bb.xn
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cdl, i8 0, i64 %i.cts, i1 false), !alias.scope !958, !noalias !964
  br label %._crit_edge355.i.i650

._crit_edge355.i.i650:                            ; preds = %.lr.ph354.preheader.i.i649, %bb.xn
  br i1 %.not111.i.i611, label %.invoke1468.i1047, label %.lr.ph376.i.i651, !prof !27

.lr.ph376.i.i651:                                 ; preds = %._crit_edge355.i.i650
  %i.ctu = lshr i64 %.sroa.0.0579.i612, 3         ; 3 uses
  %.not.i125.i.i652 = icmp samesign ugt i64 %i.ctu, %i.cdh
  %.idx394.i.i653 = shl nuw nsw i64 %i.ctu, 5
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.cdg, i64 %.idx394.i.i653
  %i.ctw = icmp eq i64 %i.ctu, 0
  %i.ctx = and i64 %.sroa.0.0579.i612, 36028797018963960 ; 15 uses
  %i.cty = and i64 %.sroa.0.0579.i612, 7          ; 8 uses
  %.not.i.i.i654 = icmp samesign ugt i64 %i.cte, %i.cdh
  %.idx395.i.i655 = shl i64 %i.cte, 5             ; 2 uses
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.cdg, i64 %.idx395.i.i655
  br i1 %.not.i125.i.i652, label %.lr.ph376.split.us.i.i1052, label %.lr.ph376.split.preheader.i.i656, !prof !10

.lr.ph376.split.preheader.i.i656:                 ; preds = %.lr.ph376.i.i651
  %i.cua = icmp eq i64 %i.cty, 0
  %i.cub = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cuc = icmp samesign ult i64 %i.cub, %i.cdh
  %i.cud = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cub ; 2 uses
  %i.cue = trunc i64 %i.ctx to i8
  %i.cuf = icmp eq i64 %i.cty, 1
  %i.cug = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cuh = icmp samesign ult i64 %i.cug, %i.cdh
  %i.cui = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cug
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cui, i64 4 ; 2 uses
  %i.cuk = trunc i64 %i.ctx to i8
  %i.cul = or disjoint i8 %i.cuk, 1
  %i.cum = icmp eq i64 %i.cty, 2
  %i.cun = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cuo = icmp samesign ult i64 %i.cun, %i.cdh
  %i.cup = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cun
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cup, i64 8 ; 2 uses
  %i.cur = trunc i64 %i.ctx to i8
  %i.cus = or disjoint i8 %i.cur, 2
  %i.cut = icmp eq i64 %i.cty, 3
  %i.cuu = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cuv = icmp samesign ult i64 %i.cuu, %i.cdh
  %i.cuw = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cuu
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuw, i64 12 ; 2 uses
  %i.cuy = trunc i64 %i.ctx to i8
  %i.cuz = or disjoint i8 %i.cuy, 3
  %i.cva = icmp eq i64 %i.cty, 4
  %i.cvb = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cvc = icmp samesign ult i64 %i.cvb, %i.cdh
  %i.cvd = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cvb
  %i.cve = getelementptr inbounds nuw i8, ptr %i.cvd, i64 16 ; 2 uses
  %i.cvf = trunc i64 %i.ctx to i8
  %i.cvg = or disjoint i8 %i.cvf, 4
  %i.cvh = icmp eq i64 %i.cty, 5
  %i.cvi = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cvj = icmp samesign ult i64 %i.cvi, %i.cdh
  %i.cvk = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cvi
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 20 ; 2 uses
  %i.cvm = trunc i64 %i.ctx to i8
  %i.cvn = or disjoint i8 %i.cvm, 5
  %i.cvo = icmp eq i64 %i.cty, 6
  %i.cvp = lshr exact i64 %i.ctx, 3               ; 3 uses
  %i.cvq = icmp samesign ult i64 %i.cvp, %i.cdh
  %i.cvr = getelementptr inbounds nuw [32 x i8], ptr %i.cdg, i64 %i.cvp
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvr, i64 24 ; 2 uses
  %i.cvt = trunc i64 %i.ctx to i8
  %i.cvu = or disjoint i8 %i.cvt, 6
  %i.cvv = add i64 %.idx395.i.i655, -32
  %i.cvw = lshr exact i64 %i.cvv, 5
  br label %.lr.ph376.split.i.i658

.lr.ph376.split.us.i.i1052:                       ; preds = %.lr.ph376.i.i651
  %.not397.i.i1053 = icmp eq i64 %i.ccw, 0
  br i1 %.not397.i.i1053, label %.invoke.i629, label %bb.xo

bb.xo:                                            ; preds = %.lr.ph376.split.us.i.i1052
  %i.cvx = load i16, ptr %i.cab, align 2, !alias.scope !965, !noalias !966, !noundef !7
  %i.cvy = zext i16 %i.cvx to i64
  %i.cvz = mul nuw nsw i64 %.sroa.0.0579.i612, %i.cvy
  %.not.i124.us.i.i1054 = icmp ugt i64 %i.cvz, %i.cdd
  br i1 %.not.i124.us.i.i1054, label %.split380.us.i.i1051, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i686, %._crit_edge362.i.i683, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i669, %.lr.ph361.i.i664, %.split380.us.i.i1051, %bb.xo
  %i.cwa = phi ptr [ @23, %.lr.ph361.i.i664 ], [ @18, %.split380.us.i.i1051 ], [ @19, %bb.xo ], [ @24, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i669 ], [ @20, %._crit_edge362.i.i683 ], [ @21, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i686 ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @97, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cwa) #24
          to label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i1050 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i630, !noalias !909

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.cont.i1050: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049
  unreachable

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i724: ; preds = %bb.yo
  %i.cwb = icmp eq ptr %i.cwc, %i.cdu
  br i1 %i.cwb, label %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i725, label %.lr.ph376.split.i.i658

.lr.ph376.split.i.i658:                           ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i724, %.lr.ph376.split.preheader.i.i656
  %.sroa.0.0288374.i.i659 = phi ptr [ %i.cwc, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i724 ], [ %i.cab, %.lr.ph376.split.preheader.i.i656 ] ; 2 uses
  %.sroa.7.0373.i.i660 = phi i64 [ %i.cwd, %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i724 ], [ 0, %.lr.ph376.split.preheader.i.i656 ] ; 7 uses
  %17 = mul i64 %i.cte, %.sroa.7.0373.i.i660
  %i.cwc = getelementptr inbounds nuw i8, ptr %.sroa.0.0288374.i.i659, i64 2 ; 2 uses
  %i.cwd = add nuw i64 %.sroa.7.0373.i.i660, 1
  %exitcond429.not.i.i661 = icmp eq i64 %.sroa.7.0373.i.i660, %i.ccw
  br i1 %exitcond429.not.i.i661, label %.invoke.i629, label %bb.xs

_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i725: ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit.loopexit.i.i724
  br i1 %i.ced, label %.lr.ph389.preheader.i.i726, label %.invoke.i629

.lr.ph389.preheader.i.i726:                       ; preds = %_RNvNtNtCsiRgJJXJ4lb7_6brotli3enc14block_splitter22update_cost_and_signal.exit._crit_edge.i.i725
  %i.cwe = load i8, ptr %i.cee, align 1, !alias.scope !959, !noalias !960, !noundef !7
  %i.cwf = mul i64 %i.cte, %i.cec
  br label %.lr.ph389.i.i727

.lr.ph389.i.i727:                                 ; preds = %bb.xr, %.lr.ph389.preheader.i.i726
  %.sroa.0.1388.i.i728 = phi i64 [ %.sroa.0.2.i.i735, %bb.xr ], [ 1, %.lr.ph389.preheader.i.i726 ] ; 2 uses
  %.sroa.066.0387.i.i729 = phi i8 [ %.sroa.066.1.i.i734, %bb.xr ], [ %i.cwe, %.lr.ph389.preheader.i.i726 ] ; 4 uses
  %.sroa.064.0386.i.i730 = phi i64 [ %i.cwh, %bb.xr ], [ %i.cwf, %.lr.ph389.preheader.i.i726 ]
  %.sroa.057.0385.i.i731 = phi i64 [ %i.cwg, %bb.xr ], [ %i.cec, %.lr.ph389.preheader.i.i726 ]
  %i.cwg = add nsw i64 %.sroa.057.0385.i.i731, -1 ; 4 uses
  %i.cwh = sub i64 %.sroa.064.0386.i.i730, %i.cte ; 2 uses
  %i.cwi = lshr i8 %.sroa.066.0387.i.i729, 3
  %i.cwj = zext nneg i8 %i.cwi to i64
  %i.cwk = add i64 %i.cwh, %i.cwj                 ; 3 uses
  %i.cwl = icmp ult i64 %i.cwk, %i.cdm
  br i1 %i.cwl, label %bb.xp, label %.invoke.i629

bb.xp:                                            ; preds = %.lr.ph389.i.i727
  %i.cwm = and i8 %.sroa.066.0387.i.i729, 7
  %i.cwn = shl nuw i8 1, %i.cwm
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cdl, i64 %i.cwk
  %i.cwp = load i8, ptr %i.cwo, align 1, !alias.scope !958, !noalias !964, !noundef !7
  %i.cwq = and i8 %i.cwp, %i.cwn
  %i.cwr = icmp eq i8 %i.cwq, 0
  br i1 %i.cwr, label %bb.xr, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  %i.cws = getelementptr inbounds nuw i8, ptr %i.ccv, i64 %i.cwg
  %i.cwt = load i8, ptr %i.cws, align 1, !alias.scope !959, !noalias !960, !noundef !7 ; 2 uses
  %.not114.i.i732 = icmp ne i8 %.sroa.066.0387.i.i729, %i.cwt
  %i.cwu = zext i1 %.not114.i.i732 to i64
  %spec.select116.i.i733 = add i64 %.sroa.0.1388.i.i728, %i.cwu
  br label %bb.xr

bb.xr:                                            ; preds = %bb.xq, %bb.xp
  %.sroa.066.1.i.i734 = phi i8 [ %.sroa.066.0387.i.i729, %bb.xp ], [ %i.cwt, %bb.xq ] ; 2 uses
  %.sroa.0.2.i.i735 = phi i64 [ %.sroa.0.1388.i.i728, %bb.xp ], [ %spec.select116.i.i733, %bb.xq ] ; 2 uses
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.ccv, i64 %i.cwg
  store i8 %.sroa.066.1.i.i734, ptr %i.cwv, align 1, !alias.scope !959, !noalias !960
  %.not113.i.i736 = icmp eq i64 %i.cwg, 0
  br i1 %.not113.i.i736, label %.loopexit143.i737, label %.lr.ph389.i.i727

bb.xs:                                            ; preds = %.lr.ph376.split.i.i658
  %i.cww = getelementptr inbounds nuw i8, ptr %i.ccv, i64 %.sroa.7.0373.i.i660 ; 15 uses
  %i.cwx = mul i64 %.sroa.7.0373.i.i660, %i.cte   ; 3 uses
  %i.cwy = load i16, ptr %.sroa.0.0288374.i.i659, align 2, !alias.scope !965, !noalias !966, !noundef !7
  %i.cwz = zext i16 %i.cwy to i64
  %i.cxa = mul nuw nsw i64 %.sroa.0.0579.i612, %i.cwz ; 4 uses
  %.not.i124.i.i662 = icmp ugt i64 %i.cxa, %i.cdd
  br i1 %.not.i124.i.i662, label %.split380.us.i.i1051, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663, !prof !10

.split380.us.i.i1051:                             ; preds = %bb.xs, %bb.xo
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663: ; preds = %bb.xs
  %i.cxb = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %i.cxa
  %i.cxc = sub nuw nsw i64 %i.cdd, %i.cxa         ; 2 uses
  br i1 %i.ctw, label %._crit_edge362.i.i683, label %.lr.ph361.i.i664

.lr.ph361.i.i664:                                 ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663, %bb.zf
  %.sroa.054.0360.i.i665 = phi float [ %.sroa.054.4.7.i.i682, %bb.zf ], [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663 ] ; 2 uses
  %.sroa.0159.0359.i.i666 = phi ptr [ %i.cxd, %bb.zf ], [ %i.cdg, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663 ] ; 10 uses
  %.sroa.7161.0358.i.i667 = phi i64 [ %i.cxe, %bb.zf ], [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !962
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !noalias !962
  %i.cxd = getelementptr inbounds nuw i8, ptr %.sroa.0159.0359.i.i666, i64 32 ; 2 uses
  %i.cxe = add nuw nsw i64 %.sroa.7161.0358.i.i667, 1
  %i.cxf = shl nuw nsw i64 %.sroa.7161.0358.i.i667, 3 ; 11 uses
  %.not.i144.i.i668 = icmp samesign ugt i64 %i.cxf, %i.cxc
  br i1 %.not.i144.i.i668, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit148.i.i669, !prof !10

._crit_edge362.i.i683:                            ; preds = %bb.zf, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663
  %.sroa.054.0.lcssa.i.i684 = phi float [ f0x7E967699, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.i.i663 ], [ %.sroa.054.4.7.i.i682, %bb.zf ] ; 3 uses
  %i.cxg = add nuw nsw i64 %i.cxa, %i.ctx         ; 3 uses
  %.not.i131.i.i685 = icmp ugt i64 %i.cxg, %i.cdd
  br i1 %.not.i131.i.i685, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i686, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i686: ; preds = %._crit_edge362.i.i683
  %i.cxh = sub nuw nsw i64 %i.cdd, %i.cxg
  %.not.i136.i.i687 = icmp samesign ugt i64 %i.cty, %i.cxh
  br i1 %.not.i136.i.i687, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit.us.i.invoke.i1049, label %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i688, !prof !10

_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i688: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit135.i.i686
  %i.cxi = getelementptr inbounds nuw [4 x i8], ptr %i.cdc, i64 %i.cxg ; 7 uses
  br i1 %i.cua, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689

.lr.ph366.i.i689:                                 ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i688
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 4
  br i1 %i.cuc, label %bb.xt, label %.invoke.i629

._crit_edge367.i.i694:                            ; preds = %bb.yk, %bb.yl, %bb.xu, %bb.xx, %bb.ya, %bb.yd, %bb.yg, %bb.yj, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i688
  %.sroa.054.1.lcssa.i.i695 = phi float [ %.sroa.054.0.lcssa.i.i684, %_RNvMNtCskKLDkoKarTP_4core5sliceSf8split_atCskeugdADtBsi_12pingora_core.exit140.i.i688 ], [ %.sroa.054.2.i.i693, %bb.xu ], [ %.sroa.054.2.i.i693.1, %bb.xx ], [ %.sroa.054.2.i.i693.2, %bb.ya ], [ %.sroa.054.2.i.i693.3, %bb.yd ], [ %.sroa.054.2.i.i693.4, %bb.yg ], [ %.sroa.054.2.i.i693.5, %bb.yj ], [ %i.cyq, %bb.yl ], [ %.sroa.054.2.i.i693.5, %bb.yk ] ; 2 uses
  %i.cxk = icmp samesign ult i64 %.sroa.7.0373.i.i660, 2000
  br i1 %i.cxk, label %bb.yp, label %bb.yn

bb.xt:                                            ; preds = %.lr.ph366.i.i689
  %i.cxl = load float, ptr %i.cxi, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cxm = load float, ptr %i.cud, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cxn = fadd float %i.cxl, %i.cxm              ; 3 uses
  store float %i.cxn, ptr %i.cud, align 4, !alias.scope !957, !noalias !963
  %i.cxo = fcmp olt float %i.cxn, %.sroa.054.0.lcssa.i.i684
  br i1 %i.cxo, label %bb.ym, label %bb.xu

bb.xu:                                            ; preds = %bb.ym, %bb.xt
  %.sroa.054.2.i.i693 = phi float [ %i.cxn, %bb.ym ], [ %.sroa.054.0.lcssa.i.i684, %bb.xt ] ; 3 uses
  br i1 %i.cuf, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.1

.lr.ph366.i.i689.1:                               ; preds = %bb.xu
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxi, i64 8
  br i1 %i.cuh, label %bb.xv, label %.invoke.i629

bb.xv:                                            ; preds = %.lr.ph366.i.i689.1
  %i.cxq = load float, ptr %i.cxj, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cxr = load float, ptr %i.cuj, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cxs = fadd float %i.cxq, %i.cxr              ; 3 uses
  store float %i.cxs, ptr %i.cuj, align 4, !alias.scope !957, !noalias !963
  %i.cxt = fcmp olt float %i.cxs, %.sroa.054.2.i.i693
  br i1 %i.cxt, label %bb.xw, label %bb.xx

bb.xw:                                            ; preds = %bb.xv
  store i8 %i.cul, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.xx

bb.xx:                                            ; preds = %bb.xw, %bb.xv
  %.sroa.054.2.i.i693.1 = phi float [ %i.cxs, %bb.xw ], [ %.sroa.054.2.i.i693, %bb.xv ] ; 3 uses
  br i1 %i.cum, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.2

.lr.ph366.i.i689.2:                               ; preds = %bb.xx
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cxi, i64 12
  br i1 %i.cuo, label %bb.xy, label %.invoke.i629

bb.xy:                                            ; preds = %.lr.ph366.i.i689.2
  %i.cxv = load float, ptr %i.cxp, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cxw = load float, ptr %i.cuq, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cxx = fadd float %i.cxv, %i.cxw              ; 3 uses
  store float %i.cxx, ptr %i.cuq, align 4, !alias.scope !957, !noalias !963
  %i.cxy = fcmp olt float %i.cxx, %.sroa.054.2.i.i693.1
  br i1 %i.cxy, label %bb.xz, label %bb.ya

bb.xz:                                            ; preds = %bb.xy
  store i8 %i.cus, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.ya

bb.ya:                                            ; preds = %bb.xz, %bb.xy
  %.sroa.054.2.i.i693.2 = phi float [ %i.cxx, %bb.xz ], [ %.sroa.054.2.i.i693.1, %bb.xy ] ; 3 uses
  br i1 %i.cut, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.3

.lr.ph366.i.i689.3:                               ; preds = %bb.ya
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cxi, i64 16
  br i1 %i.cuv, label %bb.yb, label %.invoke.i629

bb.yb:                                            ; preds = %.lr.ph366.i.i689.3
  %i.cya = load float, ptr %i.cxu, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cyb = load float, ptr %i.cux, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cyc = fadd float %i.cya, %i.cyb              ; 3 uses
  store float %i.cyc, ptr %i.cux, align 4, !alias.scope !957, !noalias !963
  %i.cyd = fcmp olt float %i.cyc, %.sroa.054.2.i.i693.2
  br i1 %i.cyd, label %bb.yc, label %bb.yd

bb.yc:                                            ; preds = %bb.yb
  store i8 %i.cuz, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.yd

bb.yd:                                            ; preds = %bb.yc, %bb.yb
  %.sroa.054.2.i.i693.3 = phi float [ %i.cyc, %bb.yc ], [ %.sroa.054.2.i.i693.2, %bb.yb ] ; 3 uses
  br i1 %i.cva, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.4

.lr.ph366.i.i689.4:                               ; preds = %bb.yd
  %i.cye = getelementptr inbounds nuw i8, ptr %i.cxi, i64 20
  br i1 %i.cvc, label %bb.ye, label %.invoke.i629

bb.ye:                                            ; preds = %.lr.ph366.i.i689.4
  %i.cyf = load float, ptr %i.cxz, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cyg = load float, ptr %i.cve, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cyh = fadd float %i.cyf, %i.cyg              ; 3 uses
  store float %i.cyh, ptr %i.cve, align 4, !alias.scope !957, !noalias !963
  %i.cyi = fcmp olt float %i.cyh, %.sroa.054.2.i.i693.3
  br i1 %i.cyi, label %bb.yf, label %bb.yg

bb.yf:                                            ; preds = %bb.ye
  store i8 %i.cvg, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.yg

bb.yg:                                            ; preds = %bb.yf, %bb.ye
  %.sroa.054.2.i.i693.4 = phi float [ %i.cyh, %bb.yf ], [ %.sroa.054.2.i.i693.3, %bb.ye ] ; 3 uses
  br i1 %i.cvh, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.5

.lr.ph366.i.i689.5:                               ; preds = %bb.yg
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cxi, i64 24
  br i1 %i.cvj, label %bb.yh, label %.invoke.i629

bb.yh:                                            ; preds = %.lr.ph366.i.i689.5
  %i.cyk = load float, ptr %i.cye, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cyl = load float, ptr %i.cvl, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cym = fadd float %i.cyk, %i.cyl              ; 3 uses
  store float %i.cym, ptr %i.cvl, align 4, !alias.scope !957, !noalias !963
  %i.cyn = fcmp olt float %i.cym, %.sroa.054.2.i.i693.4
  br i1 %i.cyn, label %bb.yi, label %bb.yj

bb.yi:                                            ; preds = %bb.yh
  store i8 %i.cvn, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.yj

bb.yj:                                            ; preds = %bb.yi, %bb.yh
  %.sroa.054.2.i.i693.5 = phi float [ %i.cym, %bb.yi ], [ %.sroa.054.2.i.i693.4, %bb.yh ] ; 3 uses
  br i1 %i.cvo, label %._crit_edge367.i.i694, label %.lr.ph366.i.i689.6

.lr.ph366.i.i689.6:                               ; preds = %bb.yj
  br i1 %i.cvq, label %bb.yk, label %.invoke.i629

bb.yk:                                            ; preds = %.lr.ph366.i.i689.6
  %i.cyo = load float, ptr %i.cyj, align 4, !alias.scope !956, !noalias !961, !noundef !7
  %i.cyp = load float, ptr %i.cvs, align 4, !alias.scope !957, !noalias !963, !noundef !7
  %i.cyq = fadd float %i.cyo, %i.cyp              ; 3 uses
  store float %i.cyq, ptr %i.cvs, align 4, !alias.scope !957, !noalias !963
  %i.cyr = fcmp olt float %i.cyq, %.sroa.054.2.i.i693.5
  br i1 %i.cyr, label %bb.yl, label %._crit_edge367.i.i694

bb.yl:                                            ; preds = %bb.yk
  store i8 %i.cvu, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %._crit_edge367.i.i694

bb.ym:                                            ; preds = %bb.xt
  store i8 %i.cue, ptr %i.cww, align 1, !alias.scope !959, !noalias !960
  br label %bb.xu

bb.yn:                                            ; preds = %bb.yp, %._crit_edge367.i.i694
  %.sroa.035.0.i.i696 = phi float [ %i.dgf, %bb.yp ], [ 1.460000e+01, %._crit_edge367.i.i694 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  br i1 %.not.i.i.i654, label %.invoke1468.i1047, label %.lr.ph372.i.i697.preheader, !prof !27

.lr.ph372.i.i697.preheader:                       ; preds = %bb.yn
  %i.cys = call i64 @llvm.umax.i64(i64 %i.cdm, i64 %i.cwx)
  %i.cyt = sub i64 %i.cys, %17
  %i.cyu = call i64 @llvm.umin.i64(i64 %i.cvw, i64 %i.cyt) ; 2 uses
  %min.iters.check6025 = icmp samesign ult i64 %i.cyu, 4
  br i1 %min.iters.check6025, label %.lr.ph372.i.i697.preheader6295, label %vector.ph6026

vector.ph6026:                                    ; preds = %.lr.ph372.i.i697.preheader
  %i.cyv = add nuw nsw i64 %i.cyu, 1              ; 2 uses
  %i.cyw = and i64 %i.cyv, 3                      ; 2 uses
  %i.cyx = icmp eq i64 %i.cyw, 0
  %i.cyy = select i1 %i.cyx, i64 4, i64 %i.cyw
  %n.vec6027 = sub nsw i64 %i.cyv, %i.cyy         ; 3 uses
  %i.cyz = shl i64 %n.vec6027, 5
  %i.cza = getelementptr i8, ptr %i.cdg, i64 %i.cyz
  %broadcast.splatinsert6028 = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i695, i64 0
  %broadcast.splat6029 = shufflevector <4 x float> %broadcast.splatinsert6028, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert6030 = insertelement <4 x float> poison, float %.sroa.035.0.i.i696, i64 0 ; 5 uses
  %broadcast.splat6031 = shufflevector <4 x float> %broadcast.splatinsert6030, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %invariant.gep7550 = getelementptr i8, ptr %i.cdl, i64 %i.cwx
  %i.czb = shufflevector <4 x float> %broadcast.splatinsert6030, <4 x float> poison, <16 x i32> zeroinitializer
  %i.czc = shufflevector <4 x float> %broadcast.splatinsert6030, <4 x float> poison, <16 x i32> zeroinitializer
  %i.czd = shufflevector <4 x float> %broadcast.splatinsert6030, <4 x float> poison, <16 x i32> zeroinitializer
  %i.cze = shufflevector <4 x float> %broadcast.splatinsert6030, <4 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body6032

vector.body6032:                                  ; preds = %vector.body6032, %vector.ph6026
  %index6033 = phi i64 [ 0, %vector.ph6026 ], [ %index.next6040, %vector.body6032 ] ; 3 uses
  %i.czf = shl i64 %index6033, 5                  ; 4 uses
  %next.gep6034 = getelementptr i8, ptr %i.cdg, i64 %i.czf ; 9 uses
  %i.czg = getelementptr i8, ptr %i.cdg, i64 %i.czf ; 8 uses
  %next.gep6035 = getelementptr i8, ptr %i.czg, i64 32
  %i.czh = getelementptr i8, ptr %i.cdg, i64 %i.czf ; 8 uses
  %next.gep6036 = getelementptr i8, ptr %i.czh, i64 64
  %i.czi = getelementptr i8, ptr %i.cdg, i64 %i.czf ; 8 uses
  %next.gep6037 = getelementptr i8, ptr %i.czi, i64 96
  %i.czj = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 4
  %i.czk = getelementptr i8, ptr %i.czg, i64 36
  %i.czl = getelementptr i8, ptr %i.czh, i64 68
  %i.czm = getelementptr i8, ptr %i.czi, i64 100
  %i.czn = load float, ptr %i.czj, align 4, !alias.scope !957, !noalias !968
  %i.czo = load float, ptr %i.czk, align 4, !alias.scope !957, !noalias !968
  %i.czp = load float, ptr %i.czl, align 4, !alias.scope !957, !noalias !968
  %i.czq = load float, ptr %i.czm, align 4, !alias.scope !957, !noalias !968
  %i.czr = insertelement <4 x float> poison, float %i.czn, i64 0
  %i.czs = insertelement <4 x float> %i.czr, float %i.czo, i64 1
  %i.czt = insertelement <4 x float> %i.czs, float %i.czp, i64 2
  %i.czu = insertelement <4 x float> %i.czt, float %i.czq, i64 3
  %i.czv = fsub <4 x float> %i.czu, %broadcast.splat6029 ; 3 uses
  %i.czw = fcmp oge <4 x float> %i.czv, %broadcast.splat6031
  %i.czx = select <4 x i1> %i.czw, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.czy = load float, ptr %next.gep6034, align 4, !alias.scope !957, !noalias !968
  %i.czz = load float, ptr %next.gep6035, align 4, !alias.scope !957, !noalias !968
  %i.daa = load float, ptr %next.gep6036, align 4, !alias.scope !957, !noalias !968
  %i.dab = load float, ptr %next.gep6037, align 4, !alias.scope !957, !noalias !968
  %i.dac = insertelement <4 x float> poison, float %i.czy, i64 0
  %i.dad = insertelement <4 x float> %i.dac, float %i.czz, i64 1
  %i.dae = insertelement <4 x float> %i.dad, float %i.daa, i64 2
  %i.daf = insertelement <4 x float> %i.dae, float %i.dab, i64 3
  %i.dag = fsub <4 x float> %i.daf, %broadcast.splat6029 ; 3 uses
  %i.dah = fcmp oge <4 x float> %i.dag, %broadcast.splat6031
  %i.dai = zext <4 x i1> %i.dah to <4 x i8>
  %i.daj = or disjoint <4 x i8> %i.czx, %i.dai
  %i.dak = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 8
  %i.dal = getelementptr i8, ptr %i.czg, i64 40
  %i.dam = getelementptr i8, ptr %i.czh, i64 72
  %i.dan = getelementptr i8, ptr %i.czi, i64 104
  %i.dao = load float, ptr %i.dak, align 4, !alias.scope !957, !noalias !968
  %i.dap = load float, ptr %i.dal, align 4, !alias.scope !957, !noalias !968
  %i.daq = load float, ptr %i.dam, align 4, !alias.scope !957, !noalias !968
  %i.dar = load float, ptr %i.dan, align 4, !alias.scope !957, !noalias !968
  %i.das = insertelement <4 x float> poison, float %i.dao, i64 0
  %i.dat = insertelement <4 x float> %i.das, float %i.dap, i64 1
  %i.dau = insertelement <4 x float> %i.dat, float %i.daq, i64 2
  %i.dav = insertelement <4 x float> %i.dau, float %i.dar, i64 3
  %i.daw = fsub <4 x float> %i.dav, %broadcast.splat6029 ; 3 uses
  %i.dax = fcmp oge <4 x float> %i.daw, %broadcast.splat6031
  %i.day = select <4 x i1> %i.dax, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.daz = or disjoint <4 x i8> %i.daj, %i.day
  %i.dba = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 12
  %i.dbb = getelementptr i8, ptr %i.czg, i64 44
  %i.dbc = getelementptr i8, ptr %i.czh, i64 76
  %i.dbd = getelementptr i8, ptr %i.czi, i64 108
  %i.dbe = load float, ptr %i.dba, align 4, !alias.scope !957, !noalias !968
  %i.dbf = load float, ptr %i.dbb, align 4, !alias.scope !957, !noalias !968
  %i.dbg = load float, ptr %i.dbc, align 4, !alias.scope !957, !noalias !968
  %i.dbh = load float, ptr %i.dbd, align 4, !alias.scope !957, !noalias !968
  %i.dbi = insertelement <4 x float> poison, float %i.dbe, i64 0
  %i.dbj = insertelement <4 x float> %i.dbi, float %i.dbf, i64 1
  %i.dbk = insertelement <4 x float> %i.dbj, float %i.dbg, i64 2
  %i.dbl = insertelement <4 x float> %i.dbk, float %i.dbh, i64 3
  %i.dbm = fsub <4 x float> %i.dbl, %broadcast.splat6029 ; 3 uses
  %i.dbn = fcmp oge <4 x float> %i.dbm, %broadcast.splat6031
  %i.dbo = select <4 x i1> %i.dbn, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.dbp = or disjoint <4 x i8> %i.daz, %i.dbo
  %i.dbq = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 16
  %i.dbr = getelementptr i8, ptr %i.czg, i64 48
  %i.dbs = getelementptr i8, ptr %i.czh, i64 80
  %i.dbt = getelementptr i8, ptr %i.czi, i64 112
  %i.dbu = load float, ptr %i.dbq, align 4, !alias.scope !957, !noalias !968
  %i.dbv = load float, ptr %i.dbr, align 4, !alias.scope !957, !noalias !968
  %i.dbw = load float, ptr %i.dbs, align 4, !alias.scope !957, !noalias !968
  %i.dbx = load float, ptr %i.dbt, align 4, !alias.scope !957, !noalias !968
  %i.dby = insertelement <4 x float> poison, float %i.dbu, i64 0
  %i.dbz = insertelement <4 x float> %i.dby, float %i.dbv, i64 1
  %i.dca = insertelement <4 x float> %i.dbz, float %i.dbw, i64 2
  %i.dcb = insertelement <4 x float> %i.dca, float %i.dbx, i64 3
  %i.dcc = fsub <4 x float> %i.dcb, %broadcast.splat6029 ; 3 uses
  %i.dcd = fcmp oge <4 x float> %i.dcc, %broadcast.splat6031
  %i.dce = select <4 x i1> %i.dcd, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.dcf = or disjoint <4 x i8> %i.dbp, %i.dce
  %i.dcg = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 20
  %i.dch = getelementptr i8, ptr %i.czg, i64 52
  %i.dci = getelementptr i8, ptr %i.czh, i64 84
  %i.dcj = getelementptr i8, ptr %i.czi, i64 116
  %i.dck = load float, ptr %i.dcg, align 4, !alias.scope !957, !noalias !968
  %i.dcl = load float, ptr %i.dch, align 4, !alias.scope !957, !noalias !968
  %i.dcm = load float, ptr %i.dci, align 4, !alias.scope !957, !noalias !968
  %i.dcn = load float, ptr %i.dcj, align 4, !alias.scope !957, !noalias !968
  %i.dco = insertelement <4 x float> poison, float %i.dck, i64 0
  %i.dcp = insertelement <4 x float> %i.dco, float %i.dcl, i64 1
  %i.dcq = insertelement <4 x float> %i.dcp, float %i.dcm, i64 2
  %i.dcr = insertelement <4 x float> %i.dcq, float %i.dcn, i64 3
  %i.dcs = fsub <4 x float> %i.dcr, %broadcast.splat6029 ; 3 uses
  %i.dct = fcmp oge <4 x float> %i.dcs, %broadcast.splat6031
  %i.dcu = select <4 x i1> %i.dct, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.dcv = or disjoint <4 x i8> %i.dcf, %i.dcu
  %i.dcw = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 24
  %i.dcx = getelementptr i8, ptr %i.czg, i64 56
  %i.dcy = getelementptr i8, ptr %i.czh, i64 88
  %i.dcz = getelementptr i8, ptr %i.czi, i64 120
  %i.dda = load float, ptr %i.dcw, align 4, !alias.scope !957, !noalias !968
  %i.ddb = load float, ptr %i.dcx, align 4, !alias.scope !957, !noalias !968
  %i.ddc = load float, ptr %i.dcy, align 4, !alias.scope !957, !noalias !968
  %i.ddd = load float, ptr %i.dcz, align 4, !alias.scope !957, !noalias !968
  %i.dde = insertelement <4 x float> poison, float %i.dda, i64 0
  %i.ddf = insertelement <4 x float> %i.dde, float %i.ddb, i64 1
  %i.ddg = insertelement <4 x float> %i.ddf, float %i.ddc, i64 2
  %i.ddh = insertelement <4 x float> %i.ddg, float %i.ddd, i64 3
  %i.ddi = fsub <4 x float> %i.ddh, %broadcast.splat6029 ; 3 uses
  %i.ddj = fcmp oge <4 x float> %i.ddi, %broadcast.splat6031
  %i.ddk = select <4 x i1> %i.ddj, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.ddl = or disjoint <4 x i8> %i.dcv, %i.ddk
  %i.ddm = getelementptr inbounds nuw i8, ptr %next.gep6034, i64 28
  %i.ddn = getelementptr i8, ptr %i.czg, i64 60
  %i.ddo = getelementptr i8, ptr %i.czh, i64 92
  %i.ddp = getelementptr i8, ptr %i.czi, i64 124
  %i.ddq = load float, ptr %i.ddm, align 4, !alias.scope !957, !noalias !968
  %i.ddr = load float, ptr %i.ddn, align 4, !alias.scope !957, !noalias !968
  %i.dds = load float, ptr %i.ddo, align 4, !alias.scope !957, !noalias !968
  %i.ddt = load float, ptr %i.ddp, align 4, !alias.scope !957, !noalias !968
  %i.ddu = insertelement <4 x float> poison, float %i.ddq, i64 0
  %i.ddv = insertelement <4 x float> %i.ddu, float %i.ddr, i64 1
  %i.ddw = insertelement <4 x float> %i.ddv, float %i.dds, i64 2
  %i.ddx = insertelement <4 x float> %i.ddw, float %i.ddt, i64 3
  %i.ddy = fsub <4 x float> %i.ddx, %broadcast.splat6029 ; 3 uses
  %i.ddz = fcmp oge <4 x float> %i.ddy, %broadcast.splat6031
  %i.dea = select <4 x i1> %i.ddz, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.deb = add nuw <4 x i8> %i.ddl, %i.dea
  %gep7551 = getelementptr i8, ptr %invariant.gep7550, i64 %index6033 ; 2 uses
  %wide.load6038 = load <4 x i8>, ptr %gep7551, align 1, !alias.scope !969, !noalias !970
  %i.dec = or <4 x i8> %i.deb, %wide.load6038
  store <4 x i8> %i.dec, ptr %gep7551, align 1, !alias.scope !969, !noalias !970
  %i.ded = shufflevector <4 x float> %i.dag, <4 x float> %i.czv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dee = shufflevector <4 x float> %i.daw, <4 x float> %i.dbm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.def = shufflevector <8 x float> %i.ded, <8 x float> %i.dee, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.deg = fcmp olt <16 x float> %i.def, %i.czb
  %i.deh = shufflevector <4 x float> %i.dag, <4 x float> %i.czv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dei = shufflevector <4 x float> %i.daw, <4 x float> %i.dbm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dej = shufflevector <8 x float> %i.deh, <8 x float> %i.dei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dek = select <16 x i1> %i.deg, <16 x float> %i.dej, <16 x float> %i.czc
  %i.del = shufflevector <4 x float> %i.dcc, <4 x float> %i.dcs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dem = shufflevector <4 x float> %i.ddi, <4 x float> %i.ddy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.den = shufflevector <8 x float> %i.del, <8 x float> %i.dem, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.deo = fcmp olt <16 x float> %i.den, %i.czd
  %i.dep = shufflevector <4 x float> %i.dcc, <4 x float> %i.dcs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.deq = shufflevector <4 x float> %i.ddi, <4 x float> %i.ddy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.der = shufflevector <8 x float> %i.dep, <8 x float> %i.deq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.des = select <16 x i1> %i.deo, <16 x float> %i.der, <16 x float> %i.cze
  %interleaved.vec6039 = shufflevector <16 x float> %i.dek, <16 x float> %i.des, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec6039, ptr %next.gep6034, align 4, !alias.scope !957, !noalias !968
  %index.next6040 = add nuw i64 %index6033, 4     ; 2 uses
  %i.det = icmp eq i64 %index.next6040, %n.vec6027
  br i1 %i.det, label %.lr.ph372.i.i697.preheader6295, label %vector.body6032, !llvm.loop !753

.lr.ph372.i.i697.preheader6295:                   ; preds = %vector.body6032, %.lr.ph372.i.i697.preheader
  %.sroa.0178.0370.i.i698.ph = phi ptr [ %i.cdg, %.lr.ph372.i.i697.preheader ], [ %i.cza, %vector.body6032 ]
  %.sroa.7180.0369.i.i699.ph = phi i64 [ 0, %.lr.ph372.i.i697.preheader ], [ %n.vec6027, %vector.body6032 ]
  %i.deu = insertelement <4 x float> poison, float %.sroa.054.1.lcssa.i.i695, i64 0
  %i.dev = shufflevector <4 x float> %i.deu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dew = insertelement <4 x float> poison, float %.sroa.035.0.i.i696, i64 0
  %i.dex = shufflevector <4 x float> %i.dew, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.lr.ph372.i.i697

.lr.ph372.i.i697:                                 ; preds = %.lr.ph372.i.i697.preheader6295, %bb.yo
  %.sroa.0178.0370.i.i698 = phi ptr [ %i.dfb, %bb.yo ], [ %.sroa.0178.0370.i.i698.ph, %.lr.ph372.i.i697.preheader6295 ] ; 4 uses
  %.sroa.7180.0369.i.i699 = phi i64 [ %i.dfa, %bb.yo ], [ %.sroa.7180.0369.i.i699.ph, %.lr.ph372.i.i697.preheader6295 ] ; 2 uses
  %i.dey = add nuw nsw i64 %.sroa.7180.0369.i.i699, %i.cwx ; 3 uses
  %i.dez = icmp ult i64 %i.dey, %i.cdm
  br i1 %i.dez, label %bb.yo, label %.invoke.i629

bb.yo:                                            ; preds = %.lr.ph372.i.i697
end_hunk_2
