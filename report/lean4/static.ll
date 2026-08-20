inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL19mi_arenas_try_purgebb:bb.a
  %i.o = sdiv i64 %i.n, 1000000
  %i.p = add nsw i64 %i.o, %i.l                   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #55
  %i.q = load atomic i64, ptr @_ZL22mi_arenas_purge_expire acquire, align 64 ; 2 uses
  br i1 %0, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %i.q, 0
  %i.s = icmp slt i64 %i.q, %i.p
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = load atomic i64, ptr @_ZL14mi_arena_count acquire, align 64 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.v = select i1 %1, i64 %i.t, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = cmpxchg ptr @_ZZL19mi_arenas_try_purgebbE11purge_guard, i64 0, i64 1 acq_rel acquire, align 8
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.preheader
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.i, label %mi_option_get.exit.i29, !prof !19

bb.i:                                             ; preds = %bb.h
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i29

mi_option_get.exit.i29:                           ; preds = %bb.i, %bb.h
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 776), align 8, !tbaa !111
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %_ZL20mi_arena_purge_delayv.exit30, !prof !19

bb.j:                                             ; preds = %mi_option_get.exit.i29
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768)), !inline_history !121
  br label %_ZL20mi_arena_purge_delayv.exit30

_ZL20mi_arena_purge_delayv.exit30:                ; preds = %mi_option_get.exit.i29, %bb.j
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 768), align 16, !tbaa !116
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = add nsw i64 %i.af, %i.p
  store atomic i64 %i.ag, ptr @_ZL22mi_arenas_purge_expire release, align 64
  br label %bb.k

bb.k:                                             ; preds = %_ZL20mi_arena_purge_delayv.exit30, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread
  %.053 = phi i64 [ 0, %_ZL20mi_arena_purge_delayv.exit30 ], [ %i.mw, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread ] ; 2 uses
  %.02152 = phi i64 [ %i.v, %_ZL20mi_arena_purge_delayv.exit30 ], [ %.223.ph, %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread ] ; 8 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.053
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8 ; 8 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !149, !range !91, !noundef !92
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 144 ; 3 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8 ; 3 uses
  br i1 %0, label %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = icmp sgt i64 %i.an, %i.p
  %or.cond.i = or i1 %i.ao, %i.ap
  br i1 %or.cond.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i

_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i: ; preds = %bb.n, %bb.m
  %i.aq = cmpxchg ptr %i.am, i64 %i.an, i64 0 acq_rel acquire, align 8 ; 0 uses
  %i.ar = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 344), i64 1 monotonic, align 8 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !110 ; 2 uses
  %.not156.i = icmp eq i64 %i.at, 0
  br i1 %.not156.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt39atomic_compare_exchange_strong_explicitIlEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 168 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 160 ; 3 uses
  br label %bb.o

._crit_edge.i:                                    ; preds = %.loopexit137.i
  br i1 %.4.i, label %_ZL18mi_arena_try_purgeP10mi_arena_slb.exit, label %bb.br

bb.o:                                             ; preds = %.loopexit137.i, %.lr.ph.i
  %i.ay = phi i64 [ %i.at, %.lr.ph.i ], [ %i.mc, %.loopexit137.i ]
  %.049153.i = phi i64 [ 0, %.lr.ph.i ], [ %i.md, %.loopexit137.i ] ; 5 uses
  %.050152.i = phi i1 [ true, %.lr.ph.i ], [ %.4.i, %.loopexit137.i ] ; 2 uses
  %.052151.i = phi i1 [ false, %.lr.ph.i ], [ %.355.i, %.loopexit137.i ] ; 2 uses
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !162
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.049153.i
  %i.bb = load atomic i64, ptr %i.ba monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %.loopexit137.i, label %.preheader136.i

.preheader136.i:                                  ; preds = %bb.o
  %i.bc = shl i64 %.049153.i, 6
  %i.bd = and i64 %.049153.i, 288230376151711743
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bd ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge62.i, %.preheader136.i
  %.046149.i = phi i64 [ 0, %.preheader136.i ], [ %i.ma, %.critedge62.i ] ; 7 uses
  %.047148.i = phi i64 [ %i.bb, %.preheader136.i ], [ %.148.i, %.critedge62.i ] ; 3 uses
  %.151147.i = phi i1 [ %.050152.i, %.preheader136.i ], [ %.3.i, %.critedge62.i ] ; 3 uses
  %.153146.i = phi i1 [ %.052151.i, %.preheader136.i ], [ %.254.i, %.critedge62.i ] ; 2 uses
  %i.bf = sub nuw nsw i64 64, %.046149.i          ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader.i
  %.044143.i = phi i64 [ 0, %.preheader.i ], [ %i.bj, %bb.q ] ; 4 uses
  %i.bg = add nuw nsw i64 %.044143.i, %.046149.i
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = and i64 %i.bh, %.047148.i
  %.not59.i = icmp eq i64 %i.bi, 0
  br i1 %.not59.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = add nuw nsw i64 %.044143.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.bf
  br i1 %exitcond.not.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader, label %bb.p, !llvm.loop !163

.critedge.i:                                      ; preds = %bb.p
  %.not60144.i = icmp eq i64 %.044143.i, 0
  br i1 %.not60144.i, label %.critedge62.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader

_ZL15mi_bitmap_mask_mm.exit.i.i.preheader:        ; preds = %bb.q, %.critedge.i
  %.145145.i.ph = phi i64 [ %.044143.i, %.critedge.i ], [ %i.bf, %bb.q ]
  br label %_ZL15mi_bitmap_mask_mm.exit.i.i

_ZL15mi_bitmap_mask_mm.exit.i.i:                  ; preds = %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader, %.loopexit.i
  %.145145.i = phi i64 [ %i.bu, %.loopexit.i ], [ %.145145.i.ph, %_ZL15mi_bitmap_mask_mm.exit.i.i.preheader ] ; 6 uses
  %i.bk = icmp ugt i64 %.145145.i, 63             ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %.145145.i
  %i.bl = xor i64 %notmask.i.i.i, -1
  %i.bm = shl i64 %i.bl, %.046149.i               ; 2 uses
  %.0.i.i.i = select i1 %i.bk, i64 -1, i64 %i.bm  ; 3 uses
  %i.bn = load atomic i64, ptr %i.be monotonic, align 8 ; 2 uses
  %i.bo = and i64 %.0.i.i.i, %i.bn
  %.not13.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not13.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %_ZL15mi_bitmap_mask_mm.exit.i.i, %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i
  %.014.i.i = phi i64 [ %i.bs, %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i ], [ %i.bn, %_ZL15mi_bitmap_mask_mm.exit.i.i ] ; 2 uses
  %i.bp = or i64 %.014.i.i, %.0.i.i.i
  %i.bq = cmpxchg ptr %i.be, i64 %.014.i.i, i64 %i.bp acq_rel acquire, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i, label %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i

_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.bs = extractvalue { i64, i1 } %i.bq, 0       ; 2 uses
  %i.bt = and i64 %i.bs, %.0.i.i.i
  %.not.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !164

.loopexit.i:                                      ; preds = %_ZSt39atomic_compare_exchange_strong_explicitImEbPSt6atomicIT_EPNSt15__type_identityIS1_E4typeES6_St12memory_orderS8_.exit.i.i, %_ZL15mi_bitmap_mask_mm.exit.i.i
  %i.bu = add nsw i64 %.145145.i, -1              ; 2 uses
  %.not60.i = icmp eq i64 %i.bu, 0
  br i1 %.not60.i, label %.critedge62.i, label %_ZL15mi_bitmap_mask_mm.exit.i.i, !llvm.loop !165

_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i:  ; preds = %.lr.ph.i.i
  %i.bv = load ptr, ptr %i.au, align 8, !tbaa !162
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.049153.i
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 3 uses
  %i.by = add i64 %.145145.i, %.046149.i          ; 4 uses
  %i.bz = icmp ult i64 %.046149.i, %i.by
  br i1 %i.bz, label %.preheader.i.i.preheader, label %_ZL20mi_arena_purge_rangeP10mi_arena_smmmm.exit.thread.i

.preheader.i.i.preheader:                         ; preds = %_Z20_mi_bitmap_try_claimPSt6atomicImEmmm.exit.i
  %broadcast.splatinsert108 = insertelement <16 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat109 = shufflevector <16 x i64> %broadcast.splatinsert108, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %bb.bq
  %.02229.i.i = phi i1 [ %.2.i.i, %bb.bq ], [ false, %.preheader.i.i.preheader ] ; 2 uses
  %.02328.i.i = phi i64 [ %i.lt, %bb.bq ], [ %.046149.i, %.preheader.i.i.preheader ] ; 8 uses
  %i.ca = add i64 %.02328.i.i, 1
  %i.cb = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.ca)
  %i.cc = sub i64 %i.cb, %.02328.i.i              ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %n.vec = and i64 %i.cc, -16                     ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.02328.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.cd = add <16 x i64> %vec.ind, %broadcast.splat
  %i.ce = shl nuw <16 x i64> splat (i64 1), %i.cd
  %i.cf = and <16 x i64> %i.ce, %broadcast.splat109
  %.fr = freeze <16 x i64> %i.cf
  %i.cg = icmp eq <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %.not110 = icmp eq i16 %i.ch, 0
  br i1 %.not110, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %.critedge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %.027.i.i.ph = phi i64 [ 0, %.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.cj = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.cg, i1 false)
  %i.ck = add i64 %index, %i.cj
  br label %.critedge.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.r
  %.027.i.i = phi i64 [ %i.co, %bb.r ], [ %.027.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cl = add i64 %.027.i.i, %.02328.i.i
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = and i64 %i.cm, %i.bx
  %.not.i64.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i64.i, label %.critedge.i.i, label %bb.r

bb.r:                                             ; preds = %scalar.ph
  %i.co = add i64 %.027.i.i, 1                    ; 3 uses
  %i.cp = add i64 %i.co, %.02328.i.i
  %i.cq = icmp ult i64 %i.cp, %i.by
  br i1 %i.cq, label %scalar.ph, label %.critedge.i.i, !llvm.loop !169

.critedge.i.i:                                    ; preds = %bb.r, %scalar.ph, %vector.early.exit, %middle.block
  %.0.lcssa.i.i = phi i64 [ %n.vec, %middle.block ], [ %i.ck, %vector.early.exit ], [ %i.co, %bb.r ], [ %.027.i.i, %scalar.ph ] ; 11 uses
  %.not26.i.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not26.i.i, label %bb.bq, label %bb.s

bb.s:                                             ; preds = %.critedge.i.i
  %i.cr = add i64 %.02328.i.i, %i.bc              ; 2 uses
  %i.cs = shl i64 %.0.lcssa.i.i, 25               ; 17 uses
  %i.ct = load atomic ptr, ptr %i.aw seq_cst, align 8 ; 4 uses
  %i.cu = shl i64 %i.cr, 25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu ; 6 uses
  %i.cw = load ptr, ptr %i.ax, align 8, !tbaa !150
  %i.cx = lshr i64 %i.cr, 6                       ; 6 uses
  %i.cy = and i64 %.02328.i.i, 63                 ; 9 uses
  %i.cz = add i64 %.0.lcssa.i.i, %i.cy
  %i.da = icmp ult i64 %i.cz, 65                  ; 2 uses
  br i1 %i.da, label %bb.t, label %_ZL15mi_bitmap_mask_mm.exit24.i.i.i, !prof !26

bb.t:                                             ; preds = %bb.s
  %i.db = icmp ugt i64 %.0.lcssa.i.i, 63
  br i1 %i.db, label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %notmask.i.i.i.i = shl nsw i64 -1, %.0.lcssa.i.i
  %i.dc = xor i64 %notmask.i.i.i.i, -1
  %i.dd = shl i64 %i.dc, %i.cy
  br label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i

_ZL15mi_bitmap_mask_mm.exit24.i.i.i:              ; preds = %bb.s
  %i.de = sub nuw nsw i64 64, %i.cy               ; 2 uses
  %i.df = icmp eq i64 %i.cy, 0
  %notmask.i22.i.i.i = shl nsw i64 -1, %i.de
  %i.dg = xor i64 %notmask.i22.i.i.i, -1
  %i.dh = shl i64 %i.dg, %i.cy
  %.0.i23.i.i.i = select i1 %i.df, i64 -1, i64 %i.dh ; 2 uses
  %i.di = sub i64 %.0.lcssa.i.i, %i.de            ; 2 uses
  %i.dj = lshr i64 %i.di, 6                       ; 2 uses
  %i.dk = and i64 %i.di, 63                       ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i, label %_ZL15mi_bitmap_mask_mm.exit27.i.i.i

_ZL15mi_bitmap_mask_mm.exit27.i.i.i:              ; preds = %_ZL15mi_bitmap_mask_mm.exit24.i.i.i
  %notmask.i25.i.i.i = shl nsw i64 -1, %i.dk
  %i.dm = xor i64 %notmask.i25.i.i.i, -1
  br label %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i

_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i:     ; preds = %_ZL15mi_bitmap_mask_mm.exit27.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i, %bb.u, %bb.t
  %.069.i.i = phi i64 [ %.0.i23.i.i.i, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ %.0.i23.i.i.i, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ %i.dd, %bb.u ], [ -1, %bb.t ] ; 2 uses
  %.068.i.i = phi i64 [ -1, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ -1, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %storemerge.i.i.i = phi i64 [ %i.dm, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ 0, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %.0.i.i85.i = phi i64 [ %i.dj, %_ZL15mi_bitmap_mask_mm.exit27.i.i.i ], [ %i.dj, %_ZL15mi_bitmap_mask_mm.exit24.i.i.i ], [ 0, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.do = load atomic i64, ptr %i.dn monotonic, align 8
  %i.dp = and i64 %i.do, %.069.i.i                ; 3 uses
  %.not.i86.i = icmp eq i64 %i.dp, %.069.i.i      ; 2 uses
  %switch.tableidx = add i64 %i.dp, 1             ; 2 uses
  %i.dq = icmp ult i64 %switch.tableidx, 3
  br i1 %i.dq, label %switch.lookup, label %bb.v

bb.v:                                             ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i
  %i.dr = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dp)
  br label %_ZL11mi_popcountm.exit.i.i

switch.lookup:                                    ; preds = %_ZL21mi_bitmap_mask_acrossmmmPmS_S_.exit.i.i
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm, i64 %switch.tableidx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZL11mi_popcountm.exit.i.i

_ZL11mi_popcountm.exit.i.i:                       ; preds = %switch.lookup, %bb.v
  %.028.i.i = phi i64 [ %switch.ext, %switch.lookup ], [ %i.dr, %bb.v ] ; 2 uses
  %.071.i.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not4472.i.i = icmp eq i64 %.0.i.i85.i, 0
  br i1 %.not4472.i.i, label %._crit_edge.i.i, label %.lr.ph.i87.i

.lr.ph.i87.i:                                     ; preds = %_ZL11mi_popcountm.exit.i.i, %bb.x
  %.in.i.i = phi i64 [ %i.ds, %bb.x ], [ %.0.i.i85.i, %_ZL11mi_popcountm.exit.i.i ]
  %.076.i.i = phi ptr [ %.0.i89.i, %bb.x ], [ %.071.i.i, %_ZL11mi_popcountm.exit.i.i ] ; 2 uses
  %.175.i.i = phi i64 [ %.2.i88.i, %bb.x ], [ %.028.i.i, %_ZL11mi_popcountm.exit.i.i ] ; 2 uses
  %.13473.i.i = phi i1 [ %spec.select52.i.i, %bb.x ], [ %.not.i86.i, %_ZL11mi_popcountm.exit.i.i ]
  %i.ds = add nsw i64 %.in.i.i, -1                ; 2 uses
  %i.dt = load atomic i64, ptr %.076.i.i monotonic, align 8
  %i.du = and i64 %i.dt, %.068.i.i                ; 4 uses
  %.not50.i.i = icmp eq i64 %i.du, %.068.i.i
  %spec.select52.i.i = select i1 %.not50.i.i, i1 %.13473.i.i, i1 false ; 2 uses
  switch i64 %i.du, label %bb.w [
    i64 0, label %bb.x
    i64 1, label %_ZL11mi_popcountm.exit58.i.i
    i64 -1, label %_ZL11mi_popcountm.exit58.fold.split.i.i
  ]

bb.w:                                             ; preds = %.lr.ph.i87.i
  %i.dv = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.du)
  br label %_ZL11mi_popcountm.exit58.i.i

_ZL11mi_popcountm.exit58.fold.split.i.i:          ; preds = %.lr.ph.i87.i
  br label %_ZL11mi_popcountm.exit58.i.i

_ZL11mi_popcountm.exit58.i.i:                     ; preds = %_ZL11mi_popcountm.exit58.fold.split.i.i, %bb.w, %.lr.ph.i87.i
  %.0.i57.i.i = phi i64 [ %i.dv, %bb.w ], [ %i.du, %.lr.ph.i87.i ], [ 64, %_ZL11mi_popcountm.exit58.fold.split.i.i ]
  %i.dw = add i64 %.0.i57.i.i, %.175.i.i
  br label %bb.x

bb.x:                                             ; preds = %_ZL11mi_popcountm.exit58.i.i, %.lr.ph.i87.i
  %.2.i88.i = phi i64 [ %i.dw, %_ZL11mi_popcountm.exit58.i.i ], [ %.175.i.i, %.lr.ph.i87.i ] ; 2 uses
  %.0.i89.i = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 8 ; 2 uses
  %.not44.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not44.i.i, label %._crit_edge.i.i, label %.lr.ph.i87.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %bb.x, %_ZL11mi_popcountm.exit.i.i
  %.134.lcssa.i.i = phi i1 [ %.not.i86.i, %_ZL11mi_popcountm.exit.i.i ], [ %spec.select52.i.i, %bb.x ] ; 2 uses
  %.1.lcssa.i.i = phi i64 [ %.028.i.i, %_ZL11mi_popcountm.exit.i.i ], [ %.2.i88.i, %bb.x ] ; 2 uses
  %.0.lcssa.i90.i = phi ptr [ %.071.i.i, %_ZL11mi_popcountm.exit.i.i ], [ %.0.i89.i, %bb.x ]
  %.not45.i.i = icmp eq i64 %storemerge.i.i.i, 0
  br i1 %.not45.i.i, label %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.dx = load atomic i64, ptr %.0.lcssa.i90.i monotonic, align 8
  %i.dy = and i64 %i.dx, %storemerge.i.i.i        ; 4 uses
  %.not46.i.i = icmp eq i64 %i.dy, %storemerge.i.i.i
  %spec.select53.i.i = select i1 %.not46.i.i, i1 %.134.lcssa.i.i, i1 false ; 2 uses
  switch i64 %i.dy, label %bb.z [
    i64 0, label %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i
    i64 1, label %_ZL11mi_popcountm.exit61.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.dz = call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 range(i64 1, 0) %i.dy)
  br label %_ZL11mi_popcountm.exit61.i.i

_ZL11mi_popcountm.exit61.i.i:                     ; preds = %bb.z, %bb.y
  %.0.i60.i.i = phi i64 [ %i.dz, %bb.z ], [ %i.dy, %bb.y ]
  %i.ea = add i64 %.0.i60.i.i, %.1.lcssa.i.i
  br i1 %spec.select53.i.i, label %bb.aa, label %bb.ay

_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i: ; preds = %bb.y, %._crit_edge.i.i
  %.4.i.i = phi i1 [ %.134.lcssa.i.i, %._crit_edge.i.i ], [ %spec.select53.i.i, %bb.y ]
  br i1 %.4.i.i, label %bb.aa, label %bb.ay

bb.aa:                                            ; preds = %_ZL28mi_bitmap_is_claimedx_acrossPSt6atomicImEmmmPbPm.exit.i, %_ZL11mi_popcountm.exit61.i.i
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 488), align 8, !tbaa !111
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.ab, label %mi_option_get.exit.i74.i, !prof !19

bb.ab:                                            ; preds = %bb.aa
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480)), !inline_history !121
  br label %mi_option_get.exit.i74.i

mi_option_get.exit.i74.i:                         ; preds = %bb.ab, %bb.aa
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 480), align 16, !tbaa !116
  %i.ee = icmp slt i64 %i.ed, 0
  br i1 %i.ee, label %_Z15_mi_os_purge_exPvmbm.exit84.i, label %bb.ac

bb.ac:                                            ; preds = %mi_option_get.exit.i74.i
  %i.ef = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 296), i64 1 monotonic, align 8 ; 0 uses
  %i.eg = icmp eq i64 %i.cs, 0                    ; 3 uses
  br i1 %i.eg, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eh = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 120), i64 %i.cs monotonic, align 8
  %i.ei = add nsw i64 %i.eh, %i.cs                ; 3 uses
  %i.ej = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112) monotonic, align 16 ; 2 uses
  %.old3.i.i.i.i75.i = icmp slt i64 %i.ej, %i.ei
  br i1 %.old3.i.i.i.i75.i, label %.preheader.i.i.i.i81.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i

.preheader.i.i.i.i81.i:                           ; preds = %bb.ad, %.preheader.i.i.i.i81.i
  %.0.i.i.i.i82.i = phi i64 [ %i.em, %.preheader.i.i.i.i81.i ], [ %i.ej, %bb.ad ]
  %i.ek = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 112), i64 %.0.i.i.i.i82.i, i64 %i.ei release monotonic, align 8 ; 2 uses
  %i.el = extractvalue { i64, i1 } %i.ek, 1
  %i.em = extractvalue { i64, i1 } %i.ek, 0       ; 2 uses
  %i.en = icmp sge i64 %i.em, %i.ei
  %or.cond.not.i.i.i.i83.i = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond.not.i.i.i.i83.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i, label %.preheader.i.i.i.i81.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i: ; preds = %.preheader.i.i.i.i81.i, %bb.ad
  %i.eo = icmp sgt i64 %i.cs, 0
  br i1 %i.eo, label %bb.ae, label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i

bb.ae:                                            ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i
  %i.ep = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 104), i64 %i.cs monotonic, align 8 ; 0 uses
  br label %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i

_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i: ; preds = %bb.ae, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i76.i, %bb.ac
  %i.eq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 168), align 8, !tbaa !111
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %bb.af, label %mi_option_is_enabled.exit.i78.i, !prof !19

bb.af:                                            ; preds = %_Z17_mi_stat_increaseP15mi_stat_count_sm.exit.i77.i
  call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 160)), !inline_history !115
end_hunk_0
