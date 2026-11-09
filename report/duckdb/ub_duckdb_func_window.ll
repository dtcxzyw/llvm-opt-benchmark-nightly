Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_window?download=true
inline.NumInlined: 11766
inline.NumDeleted: 5032
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb21WindowBoundariesState6BoundsERNS_9DataChunkEmNS_12optional_ptrINS_12WindowCursorELb1EEEmRNS_21WindowInputExpressionES7_RKNS_12ValidityMaskESA_:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !649 ; 2 uses
  %i.fy = urem i64 6, %i.fx                       ; 2 uses
  %i.fz = load ptr, ptr %0, align 8, !tbaa !648
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !658 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i.i132, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread, label %bb.al

bb.al:                                            ; preds = %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit130.thread.thread
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !657 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !660
  %i.gg = icmp eq i64 %i.gf, 6
  %i.gh = load i8, ptr %i.gd, align 8
  %i.gi = icmp eq i8 %i.gh, 6
  %i.gj = select i1 %i.gg, i1 %i.gi, i1 false
  br i1 %i.gj, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread, label %.lr.ph.i.i.i.i.i133

bb.am:                                            ; preds = %bb.an
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gl = icmp eq i64 %i.gr, 6
  %i.gm = load i8, ptr %i.gk, align 8
  %i.gn = icmp eq i8 %i.gm, 6
  %i.go = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %i.go, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread, label %.lr.ph.i.i.i.i.i133, !llvm.loop !14

.lr.ph.i.i.i.i.i133:                              ; preds = %bb.al, %bb.am
  %.020.i.i.i.i.i134 = phi ptr [ %i.gp, %bb.am ], [ %i.gc, %bb.al ]
  %i.gp = load ptr, ptr %.020.i.i.i.i.i134, align 8, !tbaa !657 ; 4 uses
  %.not18.i.i.i.i.i135 = icmp eq ptr %i.gp, null
  br i1 %.not18.i.i.i.i.i135, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i133
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !660 ; 2 uses
  %i.gs = urem i64 %i.gr, %i.fx
  %.not19.i.i.i.i.i136 = icmp eq i64 %i.gs, %i.fy
  br i1 %.not19.i.i.i.i.i136, label %bb.am, label %..loopexit_crit_edge21.i.i.i.i.i137, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i137:              ; preds = %bb.an
  br label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread, !llvm.loop !14

_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread: ; preds = %bb.am, %bb.ak, %bb.al
  %i.gt = ptrtoint ptr %3 to i64
  tail call void @_ZN6duckdb21WindowBoundariesState10FrameBeginERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %i.gt)
  %.pre250 = load i64, ptr %i.d, align 8, !tbaa !656
  %i.gu = icmp eq i64 %.pre250, 0
  br i1 %i.gu, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread293, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread

_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread293: ; preds = %bb.aj, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread293
  %.sroa.06.0.in.i.i.i155 = phi ptr [ %i.gv, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread293 ], [ %.sroa.06.0.i.i.i156, %bb.ap ]
  %.sroa.06.0.i.i.i156 = load ptr, ptr %.sroa.06.0.in.i.i.i155, align 8, !tbaa !657 ; 3 uses
  %.not.i.i.i157 = icmp eq ptr %.sroa.06.0.i.i.i156, null
  br i1 %.not.i.i.i157, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i156, i64 8
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !653
  %i.gy = icmp eq i8 %i.gx, 7
  br i1 %i.gy, label %.loopexit, label %bb.ao, !llvm.loop !13

_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread: ; preds = %.lr.ph.i.i.i.i.i133, %..loopexit_crit_edge21.i.i.i.i.i137, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit130.thread.thread, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !649 ; 2 uses
  %i.hb = urem i64 7, %i.ha                       ; 2 uses
  %i.hc = load ptr, ptr %0, align 8, !tbaa !648
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !658 ; 2 uses
  %.not.i.i.i.i.i146 = icmp eq ptr %i.he, null
  br i1 %.not.i.i.i.i.i146, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !657 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !660
  %i.hj = icmp eq i64 %i.hi, 7
  %i.hk = load i8, ptr %i.hg, align 8
  %i.hl = icmp eq i8 %i.hk, 7
  %i.hm = select i1 %i.hj, i1 %i.hl, i1 false
  br i1 %i.hm, label %.loopexit, label %.lr.ph.i.i.i.i.i147

bb.ar:                                            ; preds = %bb.as
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ho = icmp eq i64 %i.hu, 7
  %i.hp = load i8, ptr %i.hn, align 8
  %i.hq = icmp eq i8 %i.hp, 7
  %i.hr = select i1 %i.ho, i1 %i.hq, i1 false
  br i1 %i.hr, label %.loopexit, label %.lr.ph.i.i.i.i.i147, !llvm.loop !14

.lr.ph.i.i.i.i.i147:                              ; preds = %bb.aq, %bb.ar
  %.020.i.i.i.i.i148 = phi ptr [ %i.hs, %bb.ar ], [ %i.hf, %bb.aq ]
  %i.hs = load ptr, ptr %.020.i.i.i.i.i148, align 8, !tbaa !657 ; 4 uses
  %.not18.i.i.i.i.i149 = icmp eq ptr %i.hs, null
  br i1 %.not18.i.i.i.i.i149, label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i147
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !660 ; 2 uses
  %i.hv = urem i64 %i.hu, %i.ha
  %.not19.i.i.i.i.i150 = icmp eq i64 %i.hv, %i.hb
  br i1 %.not19.i.i.i.i.i150, label %bb.ar, label %..loopexit_crit_edge21.i.i.i.i.i151, !llvm.loop !14

..loopexit_crit_edge21.i.i.i.i.i151:              ; preds = %bb.as
  br label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread, !llvm.loop !14

.loopexit:                                        ; preds = %bb.ar, %bb.ap, %bb.aq
  %i.hw = ptrtoint ptr %3 to i64
  tail call void @_ZN6duckdb21WindowBoundariesState8FrameEndERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 %i.hw)
  br label %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread

_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit158.thread: ; preds = %.lr.ph.i.i.i.i.i147, %bb.ao, %_ZNKSt13unordered_setIN6duckdb12WindowBoundsENS0_16WindowBoundsHashESt8equal_toIS1_ESaIS1_EE5countERKS1_.exit144.thread.thread, %..loopexit_crit_edge21.i.i.i.i.i151, %.loopexit
  %i.hx = load i64, ptr %i.a, align 8, !tbaa !1318
  %i.hy = add i64 %i.hx, %4
  store i64 %i.hy, ptr %i.a, align 8, !tbaa !1318
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %4, ptr %i.hz, align 8, !tbaa !698
  ret void
}

declare void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState14PartitionBeginERNS_9DataChunkEmmbRKNS_12ValidityMaskE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 !guid !1322 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !572  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !680
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !681
  %i.h = sub i64 0, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  %.not38 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.a
  br i1 %.not38, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader28
  %i.j = load ptr, ptr %5, align 8, !tbaa !644    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not38, label %.loopexit, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.l = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.l, i1 false), !tbaa !507
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.034 = phi i64 [ 0, %.lr.ph ], [ %i.az, %bb.g ] ; 2 uses
  %.133 = phi i64 [ %2, %.lr.ph ], [ %i.ba, %bb.g ] ; 6 uses
  %.02432 = phi i1 [ %4, %.lr.ph ], [ false, %bb.g ] ; 2 uses
  %i.m = lshr i64 %.133, 6
  %i.n = and i64 %.133, 63
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.m
  %i.p = load i64, ptr %i.o, align 8, !tbaa !507
  %i.q = shl nuw i64 1, %i.n
  %i.r = and i64 %i.p, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %or.cond = or i1 %.02432, %i.s
  br i1 %or.cond, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.k, align 8, !tbaa !1323
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.02432, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.c
  %i.t = add i64 %.133, 1                         ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader.i, %.loopexit.i
  %.02547.i = phi i64 [ %.227.i, %.loopexit.i ], [ %i.t, %.preheader.i ] ; 5 uses
  %i.u = add i64 %.02547.i, -1                    ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = and i64 %i.u, 63                         ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !507  ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = icmp eq i64 %i.w, 63
  %or.cond.i = and i1 %i.aa, %i.z
  br i1 %or.cond.i, label %bb.d, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ab = add nuw nsw i64 %i.w, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.w, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ab, 112                     ; 4 uses
  %i.ac = sub nsw i64 %i.w, %n.vec
  %i.ad = sub i64 %.02547.i, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <16 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat49 = shufflevector <16 x i64> %broadcast.splatinsert48, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ae = add nsw <16 x i64> %broadcast.splat49, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.ae, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.af = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.ag = and <16 x i64> %i.af, %broadcast.splat
  %.fr = freeze <16 x i64> %i.ag
  %i.ah = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not51 = icmp eq i16 %i.ai, 0
  br i1 %.not51, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1319

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader52

.lr.ph.i.preheader52:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %i.w, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.12646.i.ph = phi i64 [ %.02547.i, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.ak = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ah, i1 false)
  %i.al = add i64 %index, %i.ak
  %i.am = sub i64 %.02547.i, %i.al
  br label %.thread.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.an = add i64 %.02547.i, -64
  br label %.loopexit.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader52, %bb.e
  %i.ao = phi i64 [ %i.at, %bb.e ], [ %.ph, %.lr.ph.i.preheader52 ] ; 3 uses
  %.12646.i = phi i64 [ %i.as, %bb.e ], [ %.12646.i.ph, %.lr.ph.i.preheader52 ] ; 2 uses
  %i.ap = shl nuw i64 1, %i.ao
  %i.aq = and i64 %i.ap, %i.y
  %.not42.i = icmp eq i64 %i.aq, 0
  br i1 %.not42.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %vector.early.exit
  %.12646.i.lcssa = phi i64 [ %i.am, %vector.early.exit ], [ %.12646.i, %.lr.ph.i ]
  %i.ar = add i64 %.12646.i.lcssa, -1
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.as = add i64 %.12646.i, -1                   ; 3 uses
  %i.at = add nsw i64 %i.ao, -1
  %i.au = icmp ne i64 %i.ao, 0
  %i.av = icmp ne i64 %i.as, 0
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1320

.loopexit.i:                                      ; preds = %bb.e, %middle.block, %bb.d
  %.227.i = phi i64 [ %i.an, %bb.d ], [ %i.ad, %middle.block ], [ %i.as, %bb.e ] ; 2 uses
  %.not27 = icmp eq i64 %.227.i, 0
  br i1 %.not27, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.preheader.i, %.thread.i
  %.2.i = phi i64 [ 0, %.preheader.i ], [ %i.ar, %.thread.i ], [ 0, %.loopexit.i ] ; 2 uses
  store i64 %.2.i, ptr %i.k, align 8, !tbaa !1323
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  store i64 %.133, ptr %i.k, align 8, !tbaa !1323
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, %bb.f
  %i.ax = phi i64 [ %.pre, %._crit_edge ], [ %.2.i, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit ], [ %.133, %bb.f ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.034
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !507
  %i.az = add nuw i64 %.034, 1                    ; 2 uses
  %i.ba = add i64 %.133, 1
  %exitcond.not = icmp eq i64 %i.az, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1321

.loopexit:                                        ; preds = %bb.g, %.lr.ph36.preheader, %.preheader28, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState12PartitionEndERNS_9DataChunkEmmbRKNS_12ValidityMaskE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 !guid !1329 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !572  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !680
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !681
  %i.h = sub i64 0, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  br i1 %i.i, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %.loopexit, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre44 = load i64, ptr %i.j, align 8, !tbaa !677 ; 2 uses
  %min.iters.check61 = icmp ult i64 %3, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph36
  %n.vec63 = and i64 %3, -4                       ; 3 uses
  %broadcast.splatinsert64 = insertelement <2 x i64> poison, i64 %.pre44, i64 0
  %broadcast.splat65 = shufflevector <2 x i64> %broadcast.splatinsert64, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph62
  %index67 = phi i64 [ 0, %vector.ph62 ], [ %index.next68, %vector.body66 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index67 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %broadcast.splat65, ptr %i.k, align 8, !tbaa !507
  store <2 x i64> %broadcast.splat65, ptr %i.l, align 8, !tbaa !507
  %index.next68 = add nuw i64 %index67, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.m, label %middle.block69, label %vector.body66, !llvm.loop !1324

middle.block69:                                   ; preds = %vector.body66
  %cmp.n70 = icmp eq i64 %3, %n.vec63
  br i1 %cmp.n70, label %.loopexit, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph36, %middle.block69
  %.02435.ph = phi i64 [ 0, %.lr.ph36 ], [ %n.vec63, %middle.block69 ]
  br label %scalar.ph60

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %.02435 = phi i64 [ %i.o, %scalar.ph60 ], [ %.02435.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02435
  store i64 %.pre44, ptr %i.n, align 8, !tbaa !507
  %i.o = add nuw i64 %.02435, 1                   ; 2 uses
  %exitcond43.not = icmp eq i64 %i.o, %3
  br i1 %exitcond43.not, label %.loopexit, label %scalar.ph60, !llvm.loop !1325

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !572
  %.not37 = icmp eq i64 %3, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.s = load ptr, ptr %5, align 8, !tbaa !644    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.134 = phi i64 [ %2, %.lr.ph ], [ %i.bq, %bb.g ] ; 3 uses
  %.02333 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %bb.g ] ; 3 uses
  %.02532 = phi i1 [ %4, %.lr.ph ], [ false, %bb.g ]
  %i.v = lshr i64 %.134, 6
  %i.w = and i64 %.134, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !507
  %i.z = shl nuw i64 1, %i.w
  %i.aa = and i64 %i.y, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %or.cond = or i1 %.02532, %i.ab
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.u, align 8, !tbaa !1330
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !677 ; 9 uses
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !1330
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !680
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.g, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.02333
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !507
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.ac
  br i1 %i.ah, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader40.i, %.loopexit.i
  %.02445.i = phi i64 [ %.226.i, %.loopexit.i ], [ %i.ag, %.preheader40.i ] ; 9 uses
  %i.ai = lshr i64 %.02445.i, 6
  %i.aj = and i64 %.02445.i, 63                   ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ai
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !507 ; 3 uses
  %i.am = or i64 %i.al, %i.aj
  %or.cond.not.i = icmp eq i64 %i.am, 0
  br i1 %or.cond.not.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.an = icmp ult i64 %.02445.i, %i.ac
  br i1 %i.an, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ao = xor i64 %.02445.i, -1
  %i.ap = add i64 %i.ac, %i.ao
  %i.aq = freeze i64 %i.ap
  %i.ar = xor i64 %i.aj, 63
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.ar) ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.as, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.at, 112                     ; 4 uses
  %i.au = add i64 %.02445.i, %n.vec               ; 2 uses
  %i.av = add nuw nsw i64 %i.aj, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <16 x i64> poison, i64 %i.aj, i64 0
  %broadcast.splat58 = shufflevector <16 x i64> %broadcast.splatinsert57, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat58, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.aw = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.ax = and <16 x i64> %i.aw, %broadcast.splat
  %.fr = freeze <16 x i64> %i.ax
  %i.ay = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.az = bitcast <16 x i1> %i.ay to i16
  %.not72 = icmp eq i16 %i.az, 0
  br i1 %.not72, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !1326

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader73

.lr.ph.i.preheader73:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.12544.i.ph = phi i64 [ %.02445.i, %.lr.ph.i.preheader ], [ %i.au, %middle.block ]
  %.03643.i.ph = phi i64 [ %i.aj, %.lr.ph.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.bb = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ay, i1 false)
  %i.bc = add i64 %index, %i.bb
  %i.bd = add i64 %.02445.i, %i.bc
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.be = add i64 %.02445.i, 64
  br label %.loopexit.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader73, %bb.f
  %.12544.i = phi i64 [ %i.bi, %bb.f ], [ %.12544.i.ph, %.lr.ph.i.preheader73 ] ; 2 uses
  %.03643.i = phi i64 [ %i.bh, %bb.f ], [ %.03643.i.ph, %.lr.ph.i.preheader73 ] ; 3 uses
  %i.bf = shl nuw i64 1, %.03643.i
  %i.bg = and i64 %i.bf, %i.al
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %bb.f, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.bh = add nuw nsw i64 %.03643.i, 1
  %i.bi = add nuw i64 %.12544.i, 1                ; 3 uses
  %i.bj = icmp samesign ult i64 %.03643.i, 63
  %i.bk = icmp ult i64 %i.bi, %i.ac
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1327

.loopexit.i:                                      ; preds = %bb.f, %middle.block, %bb.e, %.preheader.i
  %.226.i = phi i64 [ %i.be, %bb.e ], [ %.02445.i, %.preheader.i ], [ %i.au, %middle.block ], [ %i.bi, %bb.f ] ; 2 uses
  %i.bm = icmp ult i64 %.226.i, %i.ac
  br i1 %i.bm, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.lr.ph.i, %vector.early.exit, %.preheader40.i
  %.2.i = phi i64 [ %.12544.i, %.lr.ph.i ], [ %i.ac, %.preheader40.i ], [ %i.bd, %vector.early.exit ], [ %i.ac, %.loopexit.i ] ; 2 uses
  store i64 %.2.i, ptr %i.u, align 8, !tbaa !1330
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.d, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit
  %i.bn = phi i64 [ %.pre, %._crit_edge ], [ %i.ac, %bb.d ], [ %.2.i, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.02333
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !507
  %i.bp = add nuw i64 %.02333, 1                  ; 2 uses
  %i.bq = add i64 %.134, 1
  %exitcond.not = icmp eq i64 %i.bp, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !1328

.loopexit:                                        ; preds = %bb.g, %scalar.ph60, %middle.block69, %bb.b, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState9PeerBeginERNS_9DataChunkEmmbRKNS_12ValidityMaskES5_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6) local_unnamed_addr #0 align 2 !guid !1334 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !572  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !680
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !681
  %i.h = sub i64 0, %i.g
  %i.i = icmp eq i64 %i.e, %i.h
  %.not43 = icmp eq i64 %3, 0                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader33

.preheader33:                                     ; preds = %bb.a
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader33
  %i.j = load ptr, ptr %5, align 8, !tbaa !644
  %i.k = load ptr, ptr %6, align 8, !tbaa !644    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  br i1 %.not43, label %.loopexit, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.m = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.c, i8 0, i64 %i.m, i1 false), !tbaa !507
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.039 = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.i ] ; 2 uses
  %.138 = phi i64 [ %2, %.lr.ph ], [ %i.be, %bb.i ] ; 8 uses
  %.02837 = phi i1 [ %4, %.lr.ph ], [ false, %bb.i ] ; 2 uses
  %i.n = lshr i64 %.138, 6                        ; 2 uses
  %i.o = and i64 %.138, 63
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !507
  %i.r = shl nuw i64 1, %i.o                      ; 2 uses
  %i.s = and i64 %i.q, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %or.cond = or i1 %.02837, %i.t
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %.02837, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.c
  %i.u = add i64 %.138, 1                         ; 2 uses
  %.not31 = icmp eq i64 %i.u, 0
  br i1 %.not31, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader.i, %.loopexit.i
  %.02547.i = phi i64 [ %.227.i, %.loopexit.i ], [ %i.u, %.preheader.i ] ; 5 uses
  %i.v = add i64 %.02547.i, -1                    ; 2 uses
  %i.w = lshr i64 %i.v, 6
  %i.x = and i64 %i.v, 63                         ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.w
  %i.z = load i64, ptr %i.y, align 8, !tbaa !507  ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  %i.ab = icmp eq i64 %i.x, 63
  %or.cond.i = and i1 %i.ab, %i.aa
  br i1 %or.cond.i, label %bb.d, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ac = add nuw nsw i64 %i.x, 1                 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.x, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ac, 112                     ; 4 uses
  %i.ad = sub nsw i64 %i.x, %n.vec
  %i.ae = sub i64 %.02547.i, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <16 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat54 = shufflevector <16 x i64> %broadcast.splatinsert53, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.af = add nsw <16 x i64> %broadcast.splat54, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.af, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ag = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.ah = and <16 x i64> %i.ag, %broadcast.splat
  %.fr = freeze <16 x i64> %i.ah
  %i.ai = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %.not56 = icmp eq i16 %i.aj, 0
  br i1 %.not56, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1331

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader57

.lr.ph.i.preheader57:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ %i.ad, %middle.block ]
  %.12646.i.ph = phi i64 [ %.02547.i, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.al = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ai, i1 false)
  %i.am = add i64 %index, %i.al
  %i.an = sub i64 %.02547.i, %i.am
  br label %.thread.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ao = add i64 %.02547.i, -64
  br label %.loopexit.i, !llvm.loop !11

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader57, %bb.e
  %i.ap = phi i64 [ %i.au, %bb.e ], [ %.ph, %.lr.ph.i.preheader57 ] ; 3 uses
  %.12646.i = phi i64 [ %i.at, %bb.e ], [ %.12646.i.ph, %.lr.ph.i.preheader57 ] ; 2 uses
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = and i64 %i.aq, %i.z
  %.not42.i = icmp eq i64 %i.ar, 0
  br i1 %.not42.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %vector.early.exit
  %.12646.i.lcssa = phi i64 [ %i.an, %vector.early.exit ], [ %.12646.i, %.lr.ph.i ]
  %i.as = add i64 %.12646.i.lcssa, -1
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.at = add i64 %.12646.i, -1                   ; 3 uses
  %i.au = add nsw i64 %i.ap, -1
  %i.av = icmp ne i64 %i.ap, 0
  %i.aw = icmp ne i64 %i.at, 0
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1332

.loopexit.i:                                      ; preds = %bb.e, %middle.block, %bb.d
  %.227.i = phi i64 [ %i.ao, %bb.d ], [ %i.ae, %middle.block ], [ %i.at, %bb.e ] ; 2 uses
  %.not32 = icmp eq i64 %.227.i, 0
  br i1 %.not32, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.preheader.i, %.thread.i
  %.2.i = phi i64 [ 0, %.preheader.i ], [ %i.as, %.thread.i ], [ 0, %.loopexit.i ] ; 2 uses
  store i64 %.2.i, ptr %i.l, align 8, !tbaa !1335
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i64 %.138, ptr %i.l, align 8, !tbaa !1335
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !507
  %i.ba = and i64 %i.az, %i.r
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i64, ptr %i.l, align 8, !tbaa !1335
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %.138, ptr %i.l, align 8, !tbaa !1335
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, %bb.f, %bb.h
  %i.bb = phi i64 [ %.pre, %._crit_edge ], [ %.2.i, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit ], [ %.138, %bb.f ], [ %.138, %bb.h ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.039
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !507
  %i.bd = add nuw i64 %.039, 1                    ; 2 uses
  %i.be = add i64 %.138, 1
  %exitcond.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !1333

.loopexit:                                        ; preds = %bb.i, %.lr.ph41.preheader, %.preheader33, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState7PeerEndERNS_9DataChunkEmmRKNS_12ValidityMaskES5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 %2, i64 noundef %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5) local_unnamed_addr #0 align 2 !guid !1339 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !681
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3)
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
  tail call void @_ZN6duckdb6Vector9ReferenceERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !572
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !572  ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !572
  %.not32 = icmp eq i64 %3, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.n = load i64, ptr %i.j, align 8, !tbaa !507
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit
  %.02231 = phi i64 [ %i.bc, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.02330 = phi i64 [ %.1, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.02231
  %i.p = load i64, ptr %i.o, align 8, !tbaa !507  ; 2 uses
  %.not25 = icmp ult i64 %i.p, %.02330
  br i1 %.not25, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.02231
  %i.r = load i64, ptr %i.q, align 8, !tbaa !507  ; 8 uses
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = load ptr, ptr %5, align 8, !tbaa !644    ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.e, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.d
  %i.u = icmp ult i64 %i.s, %i.r
  br i1 %i.u, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.r)
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader40.i, %.loopexit.i
  %.02445.i = phi i64 [ %.226.i, %.loopexit.i ], [ %i.s, %.preheader40.i ] ; 9 uses
  %i.w = lshr i64 %.02445.i, 6
  %i.x = and i64 %.02445.i, 63                    ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  %i.z = load i64, ptr %i.y, align 8, !tbaa !507  ; 3 uses
  %i.aa = or i64 %i.z, %i.x
  %or.cond.not.i = icmp eq i64 %i.aa, 0
  br i1 %or.cond.not.i, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ab = icmp ult i64 %.02445.i, %i.r
  br i1 %i.ab, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ac = xor i64 %.02445.i, -1
  %i.ad = add i64 %i.r, %i.ac
  %i.ae = freeze i64 %i.ad
  %i.af = xor i64 %i.x, 63
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ag, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ah, 112                     ; 4 uses
  %i.ai = add i64 %.02445.i, %n.vec               ; 2 uses
  %i.aj = add nuw nsw i64 %i.x, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert48 = insertelement <16 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat49 = shufflevector <16 x i64> %broadcast.splatinsert48, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat49, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ak = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.al = and <16 x i64> %i.ak, %broadcast.splat
  %.fr = freeze <16 x i64> %i.al
  %i.am = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.an = bitcast <16 x i1> %i.am to i16
  %.not51 = icmp eq i16 %i.an, 0
  br i1 %.not51, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !1336

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader52

.lr.ph.i.preheader52:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.12544.i.ph = phi i64 [ %.02445.i, %.lr.ph.i.preheader ], [ %i.ai, %middle.block ]
  %.03643.i.ph = phi i64 [ %i.x, %.lr.ph.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.ap = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.am, i1 false)
  %i.aq = add i64 %index, %i.ap
  %i.ar = add i64 %.02445.i, %i.aq
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.f:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.as = add i64 %.02445.i, 64
  br label %.loopexit.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader52, %bb.g
  %.12544.i = phi i64 [ %i.aw, %bb.g ], [ %.12544.i.ph, %.lr.ph.i.preheader52 ] ; 2 uses
  %.03643.i = phi i64 [ %i.av, %bb.g ], [ %.03643.i.ph, %.lr.ph.i.preheader52 ] ; 3 uses
  %i.at = shl nuw i64 1, %.03643.i
  %i.au = and i64 %i.at, %i.z
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.g, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.av = add nuw nsw i64 %.03643.i, 1
  %i.aw = add nuw i64 %.12544.i, 1                ; 3 uses
  %i.ax = icmp samesign ult i64 %.03643.i, 63
  %i.ay = icmp ult i64 %i.aw, %i.r
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1337

.loopexit.i:                                      ; preds = %bb.g, %middle.block, %bb.f, %.preheader.i
  %.226.i = phi i64 [ %i.as, %bb.f ], [ %.02445.i, %.preheader.i ], [ %i.ai, %middle.block ], [ %i.aw, %bb.g ] ; 2 uses
  %i.ba = icmp ult i64 %.226.i, %i.r
  br i1 %i.ba, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.lr.ph.i, %vector.early.exit, %bb.e, %.preheader40.i, %.lr.ph
  %.1 = phi i64 [ %.02330, %.lr.ph ], [ %i.v, %bb.e ], [ %i.r, %.preheader40.i ], [ %.12544.i, %.lr.ph.i ], [ %i.ar, %vector.early.exit ], [ %i.r, %.loopexit.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.02231
  store i64 %.1, ptr %i.bb, align 8, !tbaa !507
  %i.bc = add nuw i64 %.02231, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %3
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1338

.loopexit:                                        ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState10ValidBeginERNS_9DataChunkEmmbRKNS_12ValidityMaskES5_NS_12optional_ptrINS_12WindowCursorELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i64 %7) local_unnamed_addr #0 align 2 !guid !1343 {
bb.a:
  %8 = alloca %"class.duckdb::optional_ptr.330", align 8 ; 3 uses
  %i.a = inttoptr i64 %7 to ptr
  store ptr %i.a, ptr %8, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !572
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !572
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !572
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread ] ; 4 uses
  %.02128 = phi i64 [ %2, %.lr.ph ], [ %i.cm, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread ] ; 3 uses
  %i.l = lshr i64 %.02128, 6
  %i.m = and i64 %.02128, 63
  %i.n = load ptr, ptr %5, align 8, !tbaa !644
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !tbaa !507
  %i.q = shl nuw i64 1, %i.m
  %i.r = and i64 %i.p, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %or.cond = or i1 %4, %i.s
  br i1 %or.cond, label %bb.c, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.029
  %i.u = load i64, ptr %i.t, align 8, !tbaa !507  ; 2 uses
  store i64 %i.u, ptr %i.k, align 8, !tbaa !1344
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.029
  %i.w = load i64, ptr %i.v, align 8, !tbaa !507  ; 9 uses
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @_ZNK6duckdb12optional_ptrINS_12WindowCursorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.y = load ptr, ptr %8, align 8, !tbaa !701    ; 6 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !1344 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !712
  %i.ac = icmp ult i64 %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp ule i64 %i.ae, %i.z
  %i.ag = select i1 %i.ac, i1 %i.af, i1 false
  br i1 %i.ag, label %_ZN6duckdb12WindowCursor4SeekEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !713, !nonnull !344, !align !494
  %i.ai = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.al = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ai, i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(72) %i.ak) ; 0 uses
  %.pre.i.i = load i64, ptr %i.ad, align 8, !tbaa !714
  br label %_ZN6duckdb12WindowCursor4SeekEm.exit.i

_ZN6duckdb12WindowCursor4SeekEm.exit.i:           ; preds = %bb.e, %bb.d
  %i.am = phi i64 [ %.pre.i.i, %bb.e ], [ %i.ae, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ao = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef 0)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !644 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit

_ZN6duckdb12WindowCursor10CellIsNullEmm.exit:     ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit.i
  %i.ar = sub i64 %i.z, %i.am                     ; 2 uses
  %i.as = lshr i64 %i.ar, 6
  %i.at = and i64 %i.as, 67108863
  %i.au = and i64 %i.ar, 63
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !507
  %i.ax = shl nuw i64 1, %i.au
  %i.ay = and i64 %i.aw, %i.ax
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.f, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.f:                                             ; preds = %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit
  %i.ba = load i64, ptr %i.k, align 8, !tbaa !1344
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !644   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.g, label %.preheader40.i

.preheader40.i:                                   ; preds = %bb.f
  %i.bd = icmp ult i64 %i.bb, %i.w
  br i1 %i.bd, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.g:                                             ; preds = %bb.f
  %i.be = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.w)
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %.preheader40.i, %.loopexit.i
  %.02445.i = phi i64 [ %.226.i, %.loopexit.i ], [ %i.bb, %.preheader40.i ] ; 9 uses
  %i.bf = lshr i64 %.02445.i, 6
  %i.bg = and i64 %.02445.i, 63                   ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !507 ; 3 uses
  %i.bj = or i64 %i.bi, %i.bg
  %or.cond.not.i = icmp eq i64 %i.bj, 0
  br i1 %or.cond.not.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.bk = icmp ult i64 %.02445.i, %i.w
  br i1 %i.bk, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bl = xor i64 %.02445.i, -1
  %i.bm = add i64 %i.w, %i.bl
  %i.bn = xor i64 %i.bg, 63
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bn) ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bo, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader49, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bp, 112                     ; 4 uses
  %i.bq = add i64 %.02445.i, %n.vec               ; 2 uses
  %i.br = add nuw nsw i64 %i.bg, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <16 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat46 = shufflevector <16 x i64> %broadcast.splatinsert45, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat46, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.bs = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.bt = and <16 x i64> %i.bs, %broadcast.splat
  %.fr = freeze <16 x i64> %i.bt
  %i.bu = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %.not48 = icmp eq i16 %i.bv, 0
  br i1 %.not48, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1340

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader49

.lr.ph.i.preheader49:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.12544.i.ph = phi i64 [ %.02445.i, %.lr.ph.i.preheader ], [ %i.bq, %middle.block ]
  %.03643.i.ph = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %i.br, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.bx = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bu, i1 false)
  %i.by = add i64 %index, %i.bx
  %i.bz = add i64 %.02445.i, %i.by
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.ca = add i64 %.02445.i, 64
  br label %.loopexit.i, !llvm.loop !9

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader49, %bb.i
  %.12544.i = phi i64 [ %i.ce, %bb.i ], [ %.12544.i.ph, %.lr.ph.i.preheader49 ] ; 2 uses
  %.03643.i = phi i64 [ %i.cd, %bb.i ], [ %.03643.i.ph, %.lr.ph.i.preheader49 ] ; 3 uses
  %i.cb = shl nuw i64 1, %.03643.i
  %i.cc = and i64 %i.cb, %i.bi
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %bb.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.cd = add nuw nsw i64 %.03643.i, 1
  %i.ce = add nuw i64 %.12544.i, 1                ; 3 uses
  %i.cf = icmp samesign ult i64 %.03643.i, 63
  %i.cg = icmp ult i64 %i.ce, %i.w
  %i.ch = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %i.ch, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1341

.loopexit.i:                                      ; preds = %bb.i, %middle.block, %bb.h, %.preheader.i
  %.226.i = phi i64 [ %i.ca, %bb.h ], [ %.02445.i, %.preheader.i ], [ %i.bq, %middle.block ], [ %i.ce, %bb.i ] ; 2 uses
  %i.ci = icmp ult i64 %.226.i, %i.w
  br i1 %i.ci, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.lr.ph.i, %vector.early.exit, %.preheader40.i, %bb.g
  %.2.i = phi i64 [ %i.be, %bb.g ], [ %i.w, %.preheader40.i ], [ %.12544.i, %.lr.ph.i ], [ %i.bz, %vector.early.exit ], [ %i.w, %.loopexit.i ]
  store i64 %.2.i, ptr %i.k, align 8, !tbaa !1344
  br label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread: ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit.i, %bb.c, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit, %bb.b
  %i.cj = load i64, ptr %i.k, align 8, !tbaa !1344
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.029
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !507
  %i.cl = add nuw i64 %.029, 1                    ; 2 uses
  %i.cm = add i64 %.02128, 1
  %exitcond.not = icmp eq i64 %i.cl, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1342
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState8ValidEndERNS_9DataChunkEmmbRKNS_12ValidityMaskES5_NS_12optional_ptrINS_12WindowCursorELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %6, i64 %7) local_unnamed_addr #0 align 2 !guid !1348 {
bb.a:
  %8 = alloca %"class.duckdb::optional_ptr.330", align 8 ; 3 uses
  %i.a = inttoptr i64 %7 to ptr
  store ptr %i.a, ptr %8, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !572
  %i.e = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !572
  %i.h = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 5) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !572
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.cr, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread ] ; 4 uses
  %.02127 = phi i64 [ %2, %.lr.ph ], [ %i.cs, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread ] ; 3 uses
  %i.l = lshr i64 %.02127, 6
  %i.m = and i64 %.02127, 63
  %i.n = load ptr, ptr %5, align 8, !tbaa !644
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.l
  %i.p = load i64, ptr %i.o, align 8, !tbaa !507
  %i.q = shl nuw i64 1, %i.m
  %i.r = and i64 %i.p, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %or.cond = or i1 %4, %i.s
  br i1 %or.cond, label %bb.c, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.028
  %i.u = load i64, ptr %i.t, align 8, !tbaa !507  ; 10 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.028
  %i.w = load i64, ptr %i.v, align 8, !tbaa !507  ; 2 uses
  store i64 %i.w, ptr %i.k, align 8, !tbaa !715
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @_ZNK6duckdb12optional_ptrINS_12WindowCursorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %i.y = load ptr, ptr %8, align 8, !tbaa !701    ; 6 uses
  %i.z = load i64, ptr %i.k, align 8, !tbaa !715
  %i.aa = add i64 %i.z, -1                        ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !712
  %i.ad = icmp ult i64 %i.aa, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 104 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp ule i64 %i.af, %i.aa
  %i.ah = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZN6duckdb12WindowCursor4SeekEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !713, !nonnull !344, !align !494
  %i.aj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.am = call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.aj, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(144) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) %i.al) ; 0 uses
  %.pre.i.i = load i64, ptr %i.ae, align 8, !tbaa !714
  br label %_ZN6duckdb12WindowCursor4SeekEm.exit.i

_ZN6duckdb12WindowCursor4SeekEm.exit.i:           ; preds = %bb.e, %bb.d
  %i.an = phi i64 [ %.pre.i.i, %bb.e ], [ %i.af, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.ap = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef 0)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !644 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit

_ZN6duckdb12WindowCursor10CellIsNullEmm.exit:     ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit.i
  %i.as = sub i64 %i.aa, %i.an                    ; 2 uses
  %i.at = lshr i64 %i.as, 6
  %i.au = and i64 %i.at, 67108863
  %i.av = and i64 %i.as, 63
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.au
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !507
  %i.ay = shl nuw i64 1, %i.av
  %i.az = and i64 %i.ax, %i.ay
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.f, label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

bb.f:                                             ; preds = %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !715 ; 4 uses
  %i.bc = load ptr, ptr %6, align 8, !tbaa !644   ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.bd = icmp ult i64 %i.u, %i.bb
  br i1 %i.bd, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader: ; preds = %.preheader.i
  %i.be = xor i64 %i.u, -1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bf = add nuw i64 %i.u, 1
  %.not.i = icmp ugt i64 %i.bb, %i.bf
  %i.bg = add i64 %i.bb, -1
  %i.bh = select i1 %.not.i, i64 %i.bg, i64 %i.u
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader, %.loopexit.i
  %.02547.i = phi i64 [ %.227.i, %.loopexit.i ], [ %i.bb, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader ] ; 8 uses
  %i.bi = add i64 %.02547.i, -1                   ; 2 uses
  %i.bj = lshr i64 %i.bi, 6
  %i.bk = and i64 %i.bi, 63                       ; 5 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bj
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !507 ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 0
  %i.bo = icmp eq i64 %i.bk, 63
  %or.cond.i = and i1 %i.bo, %i.bn
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.bp = add i64 %.02547.i, -64
  br label %.loopexit.i, !llvm.loop !11

bb.i:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i
  %i.bq = icmp ult i64 %i.u, %.02547.i
  br i1 %i.bq, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.br = add i64 %.02547.i, %i.be
  %i.bs = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bk) ; 2 uses
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bs, 31
  br i1 %min.iters.check, label %.lr.ph.i.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bt, 112                     ; 4 uses
  %i.bu = sub nsw i64 %i.bk, %n.vec
  %i.bv = sub i64 %.02547.i, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.bm, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert41 = insertelement <16 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat42 = shufflevector <16 x i64> %broadcast.splatinsert41, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.bw = add nsw <16 x i64> %broadcast.splat42, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.bw, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.bx = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.by = and <16 x i64> %i.bx, %broadcast.splat
  %.fr = freeze <16 x i64> %i.by
  %i.bz = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %.not44 = icmp eq i16 %i.ca, 0
  br i1 %.not44, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !1345

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader45

.lr.ph.i.preheader45:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %i.bk, %.lr.ph.i.preheader ], [ %i.bu, %middle.block ]
  %.12646.i.ph = phi i64 [ %.02547.i, %.lr.ph.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i

vector.early.exit:                                ; preds = %vector.body
  %i.cc = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bz, i1 false)
  %i.cd = add i64 %index, %i.cc
  %i.ce = sub i64 %.02547.i, %i.cd
  br label %.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader45, %bb.j
  %i.cf = phi i64 [ %i.ck, %bb.j ], [ %.ph, %.lr.ph.i.preheader45 ] ; 3 uses
  %.12646.i = phi i64 [ %i.cj, %bb.j ], [ %.12646.i.ph, %.lr.ph.i.preheader45 ] ; 2 uses
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.bm
  %.not42.i = icmp eq i64 %i.ch, 0
  br i1 %.not42.i, label %bb.j, label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i, %vector.early.exit
  %.12646.i.lcssa = phi i64 [ %i.ce, %vector.early.exit ], [ %.12646.i, %.lr.ph.i ]
  %i.ci = add i64 %.12646.i.lcssa, -1
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.cj = add i64 %.12646.i, -1                   ; 3 uses
  %i.ck = add nsw i64 %i.cf, -1
  %i.cl = icmp ne i64 %i.cf, 0
  %i.cm = icmp ult i64 %i.u, %i.cj
  %i.cn = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %i.cn, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1346

.loopexit.i:                                      ; preds = %bb.j, %middle.block, %bb.i, %bb.h
  %.227.i = phi i64 [ %i.bp, %bb.h ], [ %.02547.i, %bb.i ], [ %i.bv, %middle.block ], [ %i.cj, %bb.j ] ; 2 uses
  %i.co = icmp ult i64 %i.u, %.227.i
  br i1 %i.co, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit: ; preds = %.loopexit.i, %.preheader.i, %bb.g, %.thread.i
  %.2.i = phi i64 [ %i.bh, %bb.g ], [ %i.ci, %.thread.i ], [ %i.u, %.preheader.i ], [ %i.u, %.loopexit.i ]
  store i64 %.2.i, ptr %i.k, align 8, !tbaa !715
  br label %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread

_ZN6duckdb12WindowCursor10CellIsNullEmm.exit.thread: ; preds = %_ZN6duckdb12WindowCursor4SeekEm.exit.i, %bb.c, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit, %_ZN6duckdb12WindowCursor10CellIsNullEmm.exit, %bb.b
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !715
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.028
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !507
  %i.cr = add nuw i64 %.028, 1                    ; 2 uses
  %i.cs = add i64 %.02127, 1
  %exitcond.not = icmp eq i64 %i.cr, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1347
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21WindowBoundariesState10FrameBeginERNS_9DataChunkEmmRNS_21WindowInputExpressionERKNS_12ValidityMaskENS_12optional_ptrINS_12WindowCursorELb1EEE(ptr noundef nonnull align 8 dereferenceable(184) initializes((152, 168)) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %5, i64 %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1365 {
bb.a:
  %7 = alloca %"class.duckdb::unique_ptr.291", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.c = inttoptr i64 %6 to ptr
  %i.d = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !572  ; 12 uses
  %i.g = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !572  ; 7 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572  ; 7 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 4) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !572  ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 5) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !572  ; 3 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !572  ; 17 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !507  ; 2 uses
  %i.w = load i64, ptr %i.o, align 8, !tbaa !507
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  store i64 %i.w, ptr %i.x, align 8, !tbaa !716
  %i.y = load i64, ptr %i.r, align 8, !tbaa !507
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store i64 %i.y, ptr %i.z, align 8, !tbaa !717
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !684, !range !343, !noundef !344
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !685, !range !343, !noundef !344
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !701
  %.not = icmp eq ptr %i.ah, %i.c
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %6, ptr %i.ag, align 8, !tbaa !638
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @_ZNK6duckdb12optional_ptrINS_12WindowCursorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !701 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !713, !noalias !1366, !nonnull !344, !align !494
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  call void @_ZN6duckdb9make_uniqINS_12WindowCursorEJRKNS_16WindowCollectionERKNS_6vectorImLb1ESaImEEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.291") align 8 %7, ptr noundef nonnull align 8 dereferenceable(184) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %7, align 8, !tbaa !638
  store ptr null, ptr %7, align 8, !tbaa !638
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !638 ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !638
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ao) #29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ap) #29
  call void @_ZdlPv(ptr noundef nonnull %i.an) #30
  %.pr = load ptr, ptr %7, align 8, !tbaa !638    ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12WindowCursorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12WindowCursorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.pr, i64 152
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.aq) #29
  %i.ar = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  call void @_ZN6duckdb19ColumnDataScanStateD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ar) #29
  call void @_ZdlPv(ptr noundef nonnull %.pr) #30
  br label %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb12WindowCursorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb12WindowCursorESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !678
  switch i8 %i.at, label %.loopexit [
    i8 1, label %bb.f
    i8 4, label %.preheader
    i8 3, label %bb.g
    i8 9, label %bb.g
    i8 5, label %.preheader253
    i8 6, label %.preheader255
    i8 7, label %.preheader257
    i8 8, label %.preheader259
    i8 10, label %.preheader261
    i8 11, label %.preheader264
    i8 2, label %bb.bg
end_hunk_0
begin_hunk_1_@_ZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE:bb.a
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.an)
  %i.as = tail call noundef i64 @llvm.umax.i64(i64 %i.ar, i64 %i.al)
  %i.at = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0) ; 2 uses
  store i64 %i.al, ptr %i.at, align 8, !tbaa !507
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.as, ptr %.sroa.465.0..sroa_idx.i, align 8, !tbaa !507
  br i1 %i.ad, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.au = tail call noundef i64 @llvm.umax.i64(i64 %.05978.i, i64 %i.al)
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.an)
  %i.aw = add i64 %.05978.i, 1
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.an)
  %i.ay = tail call noundef i64 @llvm.umax.i64(i64 %i.ax, i64 %i.al)
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1) ; 2 uses
  store i64 %i.av, ptr %i.az, align 8, !tbaa !507
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ay, ptr %.sroa.463.0..sroa_idx.i, align 8, !tbaa !507
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.05978.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %.070.i = phi i64 [ 2, %.thread.i ], [ 1, %bb.f ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.06077.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !507
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.069.i = phi i64 [ 1, %bb.g ], [ %.070.i, %bb.h ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bc, %bb.h ]
  %i.be = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 %i.al)
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.an)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.069.sink.i = phi i64 [ %.069.i, %bb.i ], [ 0, %bb.b ]
  %.sink105.i = phi i64 [ %i.bf, %bb.i ], [ %i.al, %bb.b ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.069.sink.i) ; 2 uses
  store i64 %.sink105.i, ptr %i.bg, align 8, !tbaa !507
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !507
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !965
  %.not47.i.i = icmp eq ptr %i.bh, null
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !988 ; 7 uses
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = load ptr, ptr %i.af, align 8, !tbaa !988 ; 4 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %.not4856.i.i = icmp eq ptr %i.bi, %i.bk        ; 2 uses
  br i1 %.not47.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not4856.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %i.bm = add i64 %i.bl, -16
  %i.bn = sub i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = lshr i64 %i.bn, 4
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.bn, 48
  br i1 %min.iters.check58, label %.lr.ph.i.i.preheader75, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec60 = and i64 %i.bp, 2305843009213693948   ; 3 uses
  %i.bq = shl i64 %n.vec60, 4
  %i.br = getelementptr i8, ptr %i.bi, i64 %i.bq
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph59
  %index62 = phi i64 [ 0, %vector.ph59 ], [ %index.next69, %vector.body61 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph59 ], [ %i.bw, %vector.body61 ]
  %vec.phi63 = phi <2 x i64> [ zeroinitializer, %vector.ph59 ], [ %i.bx, %vector.body61 ]
  %i.bs = shl i64 %index62, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bs
  %i.bt = getelementptr i8, ptr %i.bi, i64 %i.bs
  %next.gep64 = getelementptr i8, ptr %i.bt, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !507 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec65 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec66 = load <4 x i64>, ptr %next.gep64, align 8, !tbaa !507 ; 2 uses
  %strided.vec67 = shufflevector <4 x i64> %wide.vec66, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec68 = shufflevector <4 x i64> %wide.vec66, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.bu = add <2 x i64> %strided.vec65, %vec.phi
  %i.bv = add <2 x i64> %strided.vec68, %vec.phi63
  %i.bw = sub <2 x i64> %i.bu, %strided.vec       ; 2 uses
  %i.bx = sub <2 x i64> %i.bv, %strided.vec67     ; 2 uses
  %index.next69 = add nuw i64 %index62, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next69, %n.vec60
  br i1 %i.by, label %middle.block70, label %vector.body61, !llvm.loop !2093

middle.block70:                                   ; preds = %vector.body61
  %bin.rdx = add <2 x i64> %i.bx, %i.bw
  %i.bz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n71 = icmp eq i64 %i.bp, %n.vec60
  br i1 %cmp.n71, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader75

.lr.ph.i.i.preheader75:                           ; preds = %.lr.ph.i.i.preheader, %middle.block70
  %.02255.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bz, %middle.block70 ]
  %.sroa.034.054.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.br, %middle.block70 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block70
  %.lcssa = phi i64 [ %i.bz, %middle.block70 ], [ %i.cf, %.lr.ph.i.i ]
  %i.ca = icmp eq i64 %.lcssa, 0
  br i1 %i.ca, label %._crit_edge.thread.i.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader75, %.lr.ph.i.i
  %.02255.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.02255.i.i.ph, %.lr.ph.i.i.preheader75 ]
  %.sroa.034.054.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %.sroa.034.054.i.i.ph, %.lr.ph.i.i.preheader75 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.034.054.i.i, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !940
  %i.cd = load i64, ptr %.sroa.034.054.i.i, align 8, !tbaa !939
  %i.ce = add i64 %i.cc, %.02255.i.i
  %i.cf = sub i64 %i.ce, %i.cd                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.034.054.i.i, i64 16 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.cg, %i.bk
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2094

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ch = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.ci = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  %i.cj = extractvalue { i64, i64 } %i.ci, 0      ; 5 uses
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !713, !nonnull !344, !align !494 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !760
  %i.cn = icmp ult i64 %i.cj, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.ag, align 8, !tbaa !712
  %i.cp = icmp ult i64 %i.cj, %i.co
  %i.cq = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.cr = icmp ule i64 %i.cq, %i.cj
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck)
  %i.cu = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj) ; 0 uses
  %.pre.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !714
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cv = phi i64 [ %.pre.i.i.i.i, %bb.n ], [ %i.cq, %bb.m ]
  %i.cw = sub i64 %i.cj, %i.cv
  %i.cx = and i64 %i.cw, 4294967295               ; 2 uses
  %i.cy = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  %i.cz = add nuw nsw i64 %i.cx, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.cy, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.cz, i64 noundef %i.cx, i64 noundef %.06077.i)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06077.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06077.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.p:                                             ; preds = %bb.j
  br i1 %.not4856.i.i, label %._crit_edge60.i.i, label %.lr.ph59.i.i

.lr.ph59.i.i:                                     ; preds = %bb.p, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i
  %.sroa.030.057.i.i = phi ptr [ %i.eq, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i ], [ %i.bi, %bb.p ] ; 3 uses
  %i.da = load i64, ptr %.sroa.030.057.i.i, align 8, !tbaa !939 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.030.057.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !940 ; 5 uses
  %.not.i.i = icmp ult i64 %i.da, %i.dc
  br i1 %.not.i.i, label %bb.q, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i

bb.q:                                             ; preds = %.lr.ph59.i.i
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !644 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.q, %.loopexit.i.i.i
  %.02445.i.i.i = phi i64 [ %.226.i.i.i, %.loopexit.i.i.i ], [ %i.da, %bb.q ] ; 9 uses
  %i.de = lshr i64 %.02445.i.i.i, 6
  %i.df = and i64 %.02445.i.i.i, 63               ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !507 ; 3 uses
  %i.di = or i64 %i.dh, %i.df
  %or.cond.not.i.i.i = icmp eq i64 %i.di, 0
  br i1 %or.cond.not.i.i.i, label %bb.r, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dj = icmp ult i64 %.02445.i.i.i, %i.dc
  br i1 %i.dj, label %.lr.ph.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.dk = xor i64 %.02445.i.i.i, -1
  %i.dl = add i64 %i.dc, %i.dk
  %i.dm = xor i64 %i.df, 63
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.dm) ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dn, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.do, 112                     ; 4 uses
  %i.dp = add i64 %.02445.i.i.i, %n.vec           ; 2 uses
  %i.dq = add nuw nsw i64 %i.df, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <16 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat55 = shufflevector <16 x i64> %broadcast.splatinsert54, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat55, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.dr = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.ds = and <16 x i64> %i.dr, %broadcast.splat
  %.fr = freeze <16 x i64> %i.ds
  %i.dt = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.du = bitcast <16 x i1> %i.dt to i16
  %.not = icmp eq i16 %i.du, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !2095

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.do, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader73

.lr.ph.i.i.i.preheader73:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.12544.i.i.i.ph = phi i64 [ %.02445.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.03643.i.i.i.ph = phi i64 [ %i.df, %.lr.ph.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.dw = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.dt, i1 false)
  %i.dx = add i64 %index, %i.dw
  %i.dy = add i64 %.02445.i.i.i, %i.dx
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dz = add i64 %.02445.i.i.i, 64
  br label %.loopexit.i.i.i, !llvm.loop !9

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader73, %bb.s
  %.12544.i.i.i = phi i64 [ %i.ed, %bb.s ], [ %.12544.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 2 uses
  %.03643.i.i.i = phi i64 [ %i.ec, %bb.s ], [ %.03643.i.i.i.ph, %.lr.ph.i.i.i.preheader73 ] ; 3 uses
  %i.ea = shl nuw i64 1, %.03643.i.i.i
  %i.eb = and i64 %i.ea, %i.dh
  %.not.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i, label %bb.s, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = add nuw nsw i64 %.03643.i.i.i, 1
  %i.ed = add nuw i64 %.12544.i.i.i, 1            ; 3 uses
  %i.ee = icmp samesign ult i64 %.03643.i.i.i, 63
  %i.ef = icmp ult i64 %i.ed, %i.dc
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !2096

.loopexit.i.i.i:                                  ; preds = %bb.s, %middle.block, %bb.r, %.preheader.i.i.i
  %.226.i.i.i = phi i64 [ %i.dz, %bb.r ], [ %.02445.i.i.i, %.preheader.i.i.i ], [ %i.dp, %middle.block ], [ %i.ed, %bb.s ] ; 2 uses
  %i.eh = icmp ult i64 %.226.i.i.i, %i.dc
  br i1 %i.eh, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i: ; preds = %bb.q, %.lr.ph.i.i.i, %vector.early.exit
  %.2.i43.i.i = phi i64 [ %.12544.i.i.i, %.lr.ph.i.i.i ], [ %i.dy, %vector.early.exit ], [ %i.da, %bb.q ] ; 4 uses
  %i.ei = load i64, ptr %i.ag, align 8, !tbaa !712
  %i.ej = icmp ult i64 %.2.i43.i.i, %i.ei
  %i.ek = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.el = icmp ule i64 %i.ek, %.2.i43.i.i
  %i.em = select i1 %i.ej, i1 %i.el, i1 false
  br i1 %i.em, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !713, !nonnull !344, !align !494
  %i.eo = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.en)
  %i.ep = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.eo, i64 noundef %.2.i43.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj) ; 0 uses
  %.pre.i.i26.i.i = load i64, ptr %i.ah, align 8, !tbaa !714
  br label %bb.u

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i: ; preds = %.loopexit.i.i.i, %.lr.ph59.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.030.057.i.i, i64 16 ; 2 uses
  %.not48.i.i = icmp eq ptr %i.eq, %i.bk
  br i1 %.not48.i.i, label %._crit_edge60.i.i, label %.lr.ph59.i.i

bb.u:                                             ; preds = %bb.t, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i
  %i.er = phi i64 [ %.pre.i.i26.i.i, %bb.t ], [ %i.ek, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i ]
  %i.es = sub i64 %.2.i43.i.i, %i.er
  %i.et = and i64 %i.es, 4294967295               ; 2 uses
  %i.eu = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  %i.ev = add nuw nsw i64 %i.et, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.eu, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.ev, i64 noundef %i.et, i64 noundef %.06077.i)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge60.i.i:                                ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i, %bb.p
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06077.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i": ; preds = %._crit_edge60.i.i, %bb.u, %._crit_edge.thread.i.i, %bb.o, %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i
  %i.ew = add nuw i64 %.06077.i, 1                ; 2 uses
  %i.ex = add i64 %.05978.i, 1
  %exitcond.not.i = icmp eq i64 %i.ew, %4
  br i1 %exitcond.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %bb.b, !llvm.loop !2097

"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit": ; preds = %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23WindowLastValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 104)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 !guid !2099 {
bb.a:
  tail call void @_ZN6duckdb19WindowValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb23WindowLastValueExecutorE, i64 16), ptr %0, align 8, !tbaa !437
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 !guid !2104 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !501, !nonnull !344, !align !494 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502, !nonnull !344, !align !494 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1109
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !942, !nonnull !344, !align !494
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !493, !nonnull !344, !align !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.o = load i8, ptr %i.n, align 4, !tbaa !447   ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !572
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !572
  %i.v = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !572
  %i.y = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !572
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = icmp eq i8 %i.o, 0
  %i.ac = icmp eq i8 %i.o, 1                      ; 2 uses
  %i.ad = icmp eq i8 %i.o, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 376 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i", %.lr.ph.i
  %.05974.i = phi i64 [ %5, %.lr.ph.i ], [ %i.fa, %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 5 uses
  %.06073.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ez, %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 10 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.06073.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !507 ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.06073.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !507 ; 5 uses
  br i1 %i.ab, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.06073.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !507
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i64 [ %i.ap, %bb.d ], [ %.05974.i, %bb.c ]
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.an)
  %i.as = tail call noundef i64 @llvm.umax.i64(i64 %i.ar, i64 %i.al)
  %i.at = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0) ; 2 uses
  store i64 %i.al, ptr %i.at, align 8, !tbaa !507
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.as, ptr %.sroa.465.0..sroa_idx.i, align 8, !tbaa !507
  br i1 %i.ad, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.au = tail call noundef i64 @llvm.umax.i64(i64 %.05974.i, i64 %i.al)
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.an)
  %i.aw = add i64 %.05974.i, 1
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.an)
  %i.ay = tail call noundef i64 @llvm.umax.i64(i64 %i.ax, i64 %i.al)
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1) ; 2 uses
  store i64 %i.av, ptr %i.az, align 8, !tbaa !507
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ay, ptr %.sroa.463.0..sroa_idx.i, align 8, !tbaa !507
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.05974.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %.070.i = phi i64 [ 2, %.thread.i ], [ 1, %bb.f ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.06073.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !507
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.069.i = phi i64 [ 1, %bb.g ], [ %.070.i, %bb.h ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bc, %bb.h ]
  %i.be = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 %i.al)
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.an)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.069.sink.i = phi i64 [ %.069.i, %bb.i ], [ 0, %bb.b ]
  %.sink94.i = phi i64 [ %i.bf, %bb.i ], [ %i.al, %bb.b ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.069.sink.i) ; 2 uses
  store i64 %.sink94.i, ptr %i.bg, align 8, !tbaa !507
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !507
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !965
  %.not56.i.i = icmp eq ptr %i.bh, null
  br i1 %.not56.i.i, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !988 ; 2 uses
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !988 ; 2 uses
  %.not5761.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not5761.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.not31.i.i = icmp eq i64 %.026.fr.i.i, 0
  br i1 %.not31.i.i, label %._crit_edge.thread.i.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.026.fr63.i.i = phi i64 [ %.026.fr.i.i, %.lr.ph.i.i ], [ 0, %bb.k ]
  %.sroa.043.062.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %i.bi, %bb.k ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !940
  %i.bm = load i64, ptr %.sroa.043.062.i.i, align 8, !tbaa !939
  %i.bn = add i64 %i.bl, %.026.fr63.i.i
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.043.062.i.i, i64 16 ; 2 uses
  %.026.fr.i.i = freeze i64 %i.bo                 ; 3 uses
  %.not57.i.i = icmp eq ptr %i.bp, %i.bj
  br i1 %.not57.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bq = add i64 %.026.fr.i.i, -1                ; 3 uses
  %i.br = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.bs = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bq) ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 1      ; 3 uses
  %i.bu = add i64 %i.bt, -1
  %or.cond.not.i.i = icmp ult i64 %i.bu, %i.bq
  br i1 %or.cond.not.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bv = sub nuw i64 %i.bq, %i.bt
  %i.bw = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.bx = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.bv) ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.6.0.i.i = phi i64 [ %i.bt, %bb.l ], [ %i.by, %bb.m ]
  %.pn.i.i = phi { i64, i64 } [ %i.bs, %bb.l ], [ %i.bx, %bb.m ]
  %.sroa.040.0.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 5 uses
  %.not34.i.i = icmp eq i64 %.sroa.6.0.i.i, 0
  br i1 %.not34.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !713, !nonnull !344, !align !494 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !760
  %.not35.i.i = icmp ult i64 %.sroa.040.0.i.i, %i.cb
  br i1 %.not35.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06073.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.q:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.ag, align 8, !tbaa !712
  %i.cd = icmp ult i64 %.sroa.040.0.i.i, %i.cc
  %i.ce = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.cf = icmp ule i64 %i.ce, %.sroa.040.0.i.i
  %i.cg = select i1 %i.cd, i1 %i.cf, i1 false
  br i1 %i.cg, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bz)
  %i.ci = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.ch, i64 noundef %.sroa.040.0.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj) ; 0 uses
  %.pre.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !714
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.cj = phi i64 [ %.pre.i.i.i.i, %bb.r ], [ %i.ce, %bb.q ]
  %i.ck = sub i64 %.sroa.040.0.i.i, %i.cj
  %i.cl = and i64 %i.ck, 4294967295               ; 2 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  %i.cn = add nuw nsw i64 %i.cl, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.cm, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.cn, i64 noundef %i.cl, i64 noundef %.06073.i)
  br label %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06073.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.s:                                             ; preds = %bb.j
  %i.co = load ptr, ptr %i.af, align 8, !tbaa !636 ; 2 uses
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !637 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.co, %i.cp
  br i1 %.not64.i.i, label %._crit_edge67.i.i, label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %bb.s
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = ashr exact i64 %i.cs, 4
  br label %bb.t

bb.t:                                             ; preds = %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i, %.lr.ph66.i.i
  %.in.i.i = phi i64 [ %i.ct, %.lr.ph66.i.i ], [ %i.cu, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i ]
  %i.cu = add i64 %.in.i.i, -1                    ; 3 uses
  %i.cv = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cu) ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !939 ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !940 ; 5 uses
  %.not29.i.i = icmp ult i64 %i.cw, %i.cy
  br i1 %.not29.i.i, label %bb.u, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i, !llvm.loop !2100

bb.u:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !644 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader: ; preds = %bb.u
  %i.da = xor i64 %i.cw, -1
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader, %.loopexit.i.i.i
  %.02547.i.i.i = phi i64 [ %.227.i.i.i, %.loopexit.i.i.i ], [ %i.cy, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i.preheader ] ; 8 uses
  %i.db = add i64 %.02547.i.i.i, -1               ; 2 uses
  %i.dc = lshr i64 %i.db, 6
  %i.dd = and i64 %i.db, 63                       ; 5 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dc
  %i.df = load i64, ptr %i.de, align 8, !tbaa !507 ; 3 uses
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = icmp eq i64 %i.dd, 63
  %or.cond.i.i.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.di = add i64 %.02547.i.i.i, -64
  br label %.loopexit.i.i.i, !llvm.loop !11

bb.w:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dj = icmp ult i64 %i.cw, %.02547.i.i.i
  br i1 %i.dj, label %.lr.ph.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.w
  %i.dk = add i64 %.02547.i.i.i, %i.da
  %i.dl = tail call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dd) ; 2 uses
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dl, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.dm, 112                     ; 4 uses
  %i.dn = sub nsw i64 %i.dd, %n.vec
  %i.do = sub i64 %.02547.i.i.i, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.df, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <16 x i64> poison, i64 %i.dd, i64 0
  %broadcast.splat40 = shufflevector <16 x i64> %broadcast.splatinsert39, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.dp = add nsw <16 x i64> %broadcast.splat40, <i64 0, i64 -1, i64 -2, i64 -3, i64 -4, i64 -5, i64 -6, i64 -7, i64 -8, i64 -9, i64 -10, i64 -11, i64 -12, i64 -13, i64 -14, i64 -15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %i.dp, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.dq = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.dr = and <16 x i64> %i.dq, %broadcast.splat
  %.fr = freeze <16 x i64> %i.dr
  %i.ds = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %.not = icmp eq i16 %i.dt, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nsw <16 x i64> %vec.ind, splat (i64 -16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !2101

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader42

.lr.ph.i.i.i.preheader42:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %i.dd, %.lr.ph.i.i.i.preheader ], [ %i.dn, %middle.block ]
  %.12646.i.i.i.ph = phi i64 [ %.02547.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.dv = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ds, i1 false)
  %i.dw = add i64 %index, %i.dv
  %i.dx = sub i64 %.02547.i.i.i, %i.dw
  br label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader42, %bb.x
  %i.dy = phi i64 [ %i.ed, %bb.x ], [ %.ph, %.lr.ph.i.i.i.preheader42 ] ; 3 uses
  %.12646.i.i.i = phi i64 [ %i.ec, %bb.x ], [ %.12646.i.i.i.ph, %.lr.ph.i.i.i.preheader42 ] ; 2 uses
  %i.dz = shl nuw i64 1, %i.dy
  %i.ea = and i64 %i.dz, %i.df
  %.not42.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not42.i.i.i, label %bb.x, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i: ; preds = %.lr.ph.i.i.i, %vector.early.exit
  %.12646.i.i.i.lcssa = phi i64 [ %i.dx, %vector.early.exit ], [ %.12646.i.i.i, %.lr.ph.i.i.i ]
  %i.eb = add i64 %.12646.i.i.i.lcssa, -1
  br label %.loopexit.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %i.ec = add i64 %.12646.i.i.i, -1               ; 3 uses
  %i.ed = add nsw i64 %i.dy, -1
  %i.ee = icmp ne i64 %i.dy, 0
  %i.ef = icmp ult i64 %i.cw, %i.ec
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !2102

.loopexit.i.i.i:                                  ; preds = %bb.x, %middle.block, %bb.w, %bb.v
  %.227.i.i.i = phi i64 [ %i.di, %bb.v ], [ %.02547.i.i.i, %bb.w ], [ %i.do, %middle.block ], [ %i.ec, %bb.x ] ; 2 uses
  %i.eh = icmp ult i64 %i.cw, %.227.i.i.i
  br i1 %i.eh, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.i.i: ; preds = %bb.u
  %i.ei = add nuw i64 %i.cw, 1
  %.not.i.i.i = icmp ugt i64 %i.cy, %i.ei
  %i.ej = add i64 %i.cy, -1
  %i.ek = select i1 %.not.i.i.i, i64 %i.ej, i64 %i.cw ; 2 uses
  %reass.sub68.i.i = sub i64 %i.ek, %i.cy
  %i.el = icmp eq i64 %reass.sub68.i.i, -1
  br i1 %i.el, label %.loopexit.i.i, label %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i

.loopexit.i.i:                                    ; preds = %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.i.i, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i
  %.2.i52.i.i = phi i64 [ %i.eb, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i ], [ %i.ek, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.i.i ] ; 4 uses
  %i.em = load i64, ptr %i.ag, align 8, !tbaa !712
  %i.en = icmp ult i64 %.2.i52.i.i, %i.em
  %i.eo = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ep = icmp ule i64 %i.eo, %.2.i52.i.i
  %i.eq = select i1 %i.en, i1 %i.ep, i1 false
  br i1 %i.eq, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i
  %i.er = load ptr, ptr %i.e, align 8, !tbaa !713, !nonnull !344, !align !494
  %i.es = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
  %i.et = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.es, i64 noundef %.2.i52.i.i, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj) ; 0 uses
  %.pre.i.i36.i.i = load i64, ptr %i.ah, align 8, !tbaa !714
  br label %bb.z

_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i: ; preds = %.loopexit.i.i.i, %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.i.i, %bb.t
  %.not.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i, label %._crit_edge67.i.i, label %bb.t

bb.z:                                             ; preds = %bb.y, %.loopexit.i.i
  %i.eu = phi i64 [ %.pre.i.i36.i.i, %bb.y ], [ %i.eo, %.loopexit.i.i ]
  %i.ev = sub i64 %.2.i52.i.i, %i.eu
  %i.ew = and i64 %i.ev, 4294967295               ; 2 uses
  %i.ex = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  %i.ey = add nuw nsw i64 %i.ew, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ex, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.ey, i64 noundef %i.ew, i64 noundef %.06073.i)
  br label %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge67.i.i:                                ; preds = %_ZN6duckdb21WindowBoundariesState13FindPrevStartERKNS_12ValidityMaskEmmRm.exit.thread86.i.i, %bb.s
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.06073.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i": ; preds = %._crit_edge67.i.i, %bb.z, %._crit_edge.thread.i.i, %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i, %bb.p
  %i.ez = add nuw i64 %.06073.i, 1                ; 2 uses
  %i.fa = add i64 %.05974.i, 1
  %exitcond.not.i = icmp eq i64 %i.ez, %4
  br i1 %exitcond.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %bb.b, !llvm.loop !2103

"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit": ; preds = %"_ZZNK6duckdb23WindowLastValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22WindowNthValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 104)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 !guid !2105 {
bb.a:
  tail call void @_ZN6duckdb19WindowValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb22WindowNthValueExecutorE, i64 16), ptr %0, align 8, !tbaa !437
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 !guid !2109 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !501, !nonnull !344, !align !494 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !502, !nonnull !344, !align !494 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1109
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !942, !nonnull !344, !align !494
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !493, !nonnull !344, !align !494
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.o = load i8, ptr %i.n, align 4, !tbaa !447   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1104 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !723
  %i.t = load ptr, ptr %2, align 8, !tbaa !724
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 104
  %i.y = icmp ult i64 %i.q, %i.x
  br i1 %i.y, label %bb.b, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.z = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.q) ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !945  ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2                     ; 3 uses
  switch i8 %i.aa, label %bb.c [
    i8 2, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
    i8 0, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !698
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 noundef %i.ad)
  br label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit

_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit: ; preds = %bb.a, %bb.b, %bb.b, %bb.c
  %.sroa.4.0.shrunk = phi i1 [ %i.ab, %bb.c ], [ %i.ab, %bb.b ], [ %i.ab, %bb.b ], [ true, %bb.a ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !572
  %i.ah = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !572
  %i.ak = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !572
  %i.an = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !572
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
  %i.aq = icmp eq i8 %i.o, 0
end_hunk_1
