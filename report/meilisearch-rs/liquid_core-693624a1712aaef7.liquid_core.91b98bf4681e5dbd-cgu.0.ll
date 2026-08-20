inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4core5slice4sort8unstable9quicksort9quicksort17hc327c0f35e0eb2fcE:bb.a
  %i.h = icmp eq i32 %i.bt, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph120

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.14.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.14.0.be, %.backedge ] ; 8 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11287
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11293)
  %i.i = icmp samesign ult i64 %.sroa.14.0.lcssa, 2
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.j = lshr i64 %.sroa.14.0.lcssa, 1            ; 9 uses
  %i.k = icmp samesign ugt i64 %.sroa.14.0.lcssa, 15
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i64 %.sroa.14.0.lcssa, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.14.0.lcssa ; 5 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h796489c0d919fce2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !11295
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h796489c0d919fce2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !11295
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h3b4aa5bb891eff8aE(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !11296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !11296
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx132 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx132 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !11296
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val11.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  %.val12.i.1.i.i = load i64, ptr %i.ae, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 5 uses
  %.val13.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.af = getelementptr i8, ptr %i.ac, i64 -8
  %.val14.i.1.i.i = load i64, ptr %i.af, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val14.i.1.i.i)
  %i.ag = sub i64 %.val12.i.1.i.i, %.val14.i.1.i.i
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i.i, ptr nonnull readonly align 1 %.val13.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !11297, !noalias !11307 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %.preheader.1.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.al = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.al, label %._crit_edge129, label %.lr.ph128

.preheader.1.i.i:                                 ; preds = %.lr.ph128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i127, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.am = icmp eq ptr %i.an, %i.z
  br i1 %i.am, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i29.1.i.i127 = phi ptr [ %i.an, %.preheader.1.i.i ], [ %i.ad, %.preheader.1.i.i.preheader ] ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i127, i64 -16 ; 4 uses
  %.val9.i.1.i.i = load ptr, ptr %i.an, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.ao = getelementptr i8, ptr %.sroa.0.0.i29.1.i.i127, i64 -8
  %.val10.i.1.i.i = load i64, ptr %i.ao, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val10.i.1.i.i)
  %i.ap = sub i64 %.val12.i.1.i.i, %.val10.i.1.i.i
  %i.aq = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i.i, ptr nonnull readonly align 1 %.val9.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !11308, !noalias !11307 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.as, i64 %i.ap, i64 %i.ar
  %i.at = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.at, label %.preheader.1.i.i, label %._crit_edge129

._crit_edge129:                                   ; preds = %.preheader.1.i.i, %.lr.ph128, %.preheader.1.i.i.preheader
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %.preheader.1.i.i.preheader ], [ %i.z, %.preheader.1.i.i ], [ %.sroa.0.0.i29.1.i.i127, %.lr.ph128 ] ; 2 uses
  store ptr %.val11.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !11293, !noalias !11318
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store i64 %.val12.i.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !11293, !noalias !11318
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i: ; preds = %._crit_edge129, %.lr.ph.1.i.i
  %i.au = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.av = zext i1 %i.au to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.av
  br i1 %i.au, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h796489c0d919fce2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit unwind label %bb.h

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.h:                                             ; preds = %.loopexit.1.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.ax, i1 false), !alias.scope !11296, !noalias !11323
  resume { ptr, i32 } %i.aw

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !alias.scope !11296
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 3 uses
  %.val11.i.i.i = load ptr, ptr %i.az, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val12.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 5 uses
  %.val13.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.bc = getelementptr i8, ptr %i.az, i64 -8
  %.val14.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val14.i.i.i)
  %i.bd = sub i64 %.val12.i.i.i, %.val14.i.i.i
  %i.be = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i, ptr nonnull readonly align 1 %.val13.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !11297, !noalias !11307 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.be, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.bg, i64 %i.bd, i64 %i.bf
  %i.bh = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %.preheader.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.bi = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bi, label %._crit_edge124, label %.lr.ph123

.preheader.i.i:                                   ; preds = %.lr.ph123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i122, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.bj = icmp eq ptr %i.bk, %i.e
  br i1 %i.bj, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i29.i.i122 = phi ptr [ %i.bk, %.preheader.i.i ], [ %i.ba, %.preheader.i.i.preheader ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i122, i64 -16 ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.bl = getelementptr i8, ptr %.sroa.0.0.i29.i.i122, i64 -8
  %.val10.i.i.i = load i64, ptr %i.bl, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val10.i.i.i)
  %i.bm = sub i64 %.val12.i.i.i, %.val10.i.i.i
  %i.bn = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i, ptr nonnull readonly align 1 %.val9.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !11308, !noalias !11307 ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp eq i32 %i.bn, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bp, i64 %i.bm, i64 %i.bo
  %i.bq = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bq, label %.preheader.i.i, label %._crit_edge124

._crit_edge124:                                   ; preds = %.preheader.i.i, %.lr.ph123, %.preheader.i.i.preheader
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %.preheader.i.i.preheader ], [ %i.e, %.preheader.i.i ], [ %.sroa.0.0.i29.i.i122, %.lr.ph123 ] ; 2 uses
  store ptr %.val11.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !11293, !noalias !11318
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store i64 %.val12.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !11293, !noalias !11318
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i: ; preds = %._crit_edge124, %.lr.ph.i.i
  %i.br = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bs = zext i1 %i.br to i64
  %.sroa.08.1.i.i = add nuw nsw i64 %.sroa.08.16.i.i, %i.bs
  br i1 %i.br, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11287
  br label %bb.l

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h3dffb04160f4ba02E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa, ptr noalias nonnull align 1 poison)
  br label %bb.l

.lr.ph120:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.066119 = phi i32 [ %i.bt, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.067118 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.14.068117 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.069116 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 33 uses
  %i.bt = add nsw i32 %.sroa.024.066119, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11328)
  %i.bu = lshr i64 %.sroa.14.068117, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bu, 6
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.bu, 112
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %.idx2.i ; 4 uses
  %i.bx = icmp ult i64 %.sroa.14.068117, 64
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph120
  %i.by = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdb86dc0ab8b87605E(ptr noundef nonnull readonly align 8 %.sroa.0.069116, ptr noundef readonly %i.bv, ptr noundef readonly %i.bw, i64 noundef %i.bu)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit

bb.j:                                             ; preds = %.lr.ph120
  %.val10.i = load ptr, ptr %.sroa.0.069116, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.bz = getelementptr i8, ptr %.sroa.0.069116, i64 8
  %.val11.i = load i64, ptr %i.bz, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %.val12.i = load ptr, ptr %i.bv, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bv, i64 8
  %.val13.i = load i64, ptr %i.ca, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.cb = sub i64 %.val11.i, %.val13.i
  %i.cc = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i), !alias.scope !11331, !noalias !11328 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp eq i32 %i.cc, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ce, i64 %i.cb, i64 %i.cd ; 2 uses
  %.val8.i = load ptr, ptr %i.bw, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 8
  %.val9.i = load i64, ptr %i.cf, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %..i.i.i.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.cg = sub i64 %.val11.i, %.val9.i
  %i.ch = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i14.i), !alias.scope !11341, !noalias !11328 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp eq i32 %i.ch, 0
  %spec.store.select.i.i.i.i.i15.i = select i1 %i.cj, i64 %i.cg, i64 %i.ci
  %i.ck = xor i64 %spec.store.select.i.i.i.i.i15.i, %spec.store.select.i.i.i.i.i.i
  %i.cl = icmp slt i64 %i.ck, 0
  br i1 %i.cl, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %..i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.cm = sub i64 %.val13.i, %.val9.i
  %i.cn = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i16.i), !alias.scope !11351, !noalias !11328 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %spec.store.select.i.i.i.i.i17.i = select i1 %i.cp, i64 %i.cm, i64 %i.co
  %i.cq = xor i64 %spec.store.select.i.i.i.i.i17.i, %spec.store.select.i.i.i.i.i.i
  %i.cr = icmp slt i64 %i.cq, 0
  %..i.i = select i1 %i.cr, ptr %i.bw, ptr %i.bv
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit: ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i.sink.i = phi ptr [ %i.by, %bb.i ], [ %.sroa.0.069116, %bb.j ], [ %..i.i, %bb.k ]
  %i.cs = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ct = ptrtoint ptr %.sroa.0.069116 to i64
  %i.cu = sub nuw i64 %i.cs, %i.ct                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cu, 4
  %i.cv = icmp ult i64 %.sroa.0.0.i, %.sroa.14.068117
  tail call void @llvm.assume(i1 %i.cv)
  %.not = icmp eq ptr %.sroa.021.067118, null
  br i1 %.not, label %bb.m, label %bb.o

bb.l:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit
  ret void

bb.m:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit, %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %i.cu ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !alias.scope !11364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 16 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11370)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !11372, !noalias !11370, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !alias.scope !11372, !noalias !11370, !noundef !3 ; 3 uses
  %i.db = getelementptr [16 x i8], ptr %.sroa.0.069116, i64 %.sroa.14.068117 ; 3 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -16    ; 2 uses
  %.sroa.15.060.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 32 ; 3 uses
  %i.dd = icmp ult ptr %.sroa.15.060.i.i, %i.dc
  %.val2.i21.pre.pre.i.i = load ptr, ptr %.sroa.0.069116, align 8, !alias.scope !11373, !noalias !11367 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 8
  %.val3.i29.i.i = load i64, ptr %i.de, align 8, !alias.scope !11373, !noalias !11367 ; 8 uses
  br i1 %i.dd, label %.lr.ph.i.i36, label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %.lr.ph.i.i36, %bb.m
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %i.ed, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.040.0.lcssa.i.i = phi ptr [ %i.cx, %bb.m ], [ %i.dw, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.060.i.i, %bb.m ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.df = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.db
  br i1 %i.df, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i, label %.lr.ph69.i.i

.lr.ph69.i.i:                                     ; preds = %.preheader.i.i33, %.lr.ph69.i.i
  %.sroa.040.168.i.i = phi ptr [ %.sroa.15.167.i.i, %.lr.ph69.i.i ], [ %.sroa.040.0.lcssa.i.i, %.preheader.i.i33 ]
  %.sroa.15.167.i.i = phi ptr [ %i.dn, %.lr.ph69.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i33 ] ; 6 uses
  %.sroa.27.166.i.i = phi i64 [ %i.dm, %.lr.ph69.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i33 ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.15.167.i.i, align 8, !alias.scope !11372, !noalias !11374, !nonnull !3, !align !28, !noundef !3
  %i.dg = getelementptr i8, ptr %.sroa.15.167.i.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.dg, align 8, !alias.scope !11372, !noalias !11374, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i29.i.i)
  %i.dh = sub i64 %.val1.i.i.i, %.val3.i29.i.i
  %i.di = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !11377, !noalias !11387 ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp eq i32 %i.di, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dk, i64 %i.dh, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.27.166.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.168.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !alias.scope !11372, !noalias !11374
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.167.i.i, i64 16, i1 false), !alias.scope !11372, !noalias !11374
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.dm = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.166.i.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.15.167.i.i, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.db
  br i1 %i.do, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i, label %.lr.ph69.i.i

.lr.ph.i.i36:                                     ; preds = %bb.m, %.lr.ph.i.i36
  %.sroa.15.063.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.060.i.i, %bb.m ] ; 3 uses
  %.sroa.040.062.i.i = phi ptr [ %i.dw, %.lr.ph.i.i36 ], [ %i.cx, %bb.m ] ; 5 uses
  %.sroa.27.061.i.i = phi i64 [ %i.ed, %.lr.ph.i.i36 ], [ 0, %bb.m ] ; 2 uses
  %.val.i26.i.i = load ptr, ptr %.sroa.15.063.i.i, align 8, !alias.scope !11372, !noalias !11388, !nonnull !3, !align !28, !noundef !3
  %i.dp = getelementptr i8, ptr %.sroa.040.062.i.i, i64 24
  %.val1.i27.i.i = load i64, ptr %i.dp, align 8, !alias.scope !11372, !noalias !11388, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i30.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i27.i.i, i64 %.val3.i29.i.i)
  %i.dq = sub i64 %.val1.i27.i.i, %.val3.i29.i.i
  %i.dr = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i26.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i30.i.i), !alias.scope !11391, !noalias !11401 ; 2 uses
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp eq i32 %i.dr, 0
  %spec.store.select.i.i.i.i.i.i31.i.i = select i1 %i.dt, i64 %i.dq, i64 %i.ds
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.27.061.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.062.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.du, i64 16, i1 false), !alias.scope !11372, !noalias !11388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.063.i.i, i64 16, i1 false), !alias.scope !11372, !noalias !11388
  %spec.store.select.i.i.i.i.i.lobit.i32.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i31.i.i, 63
  %i.dv = add i64 %spec.store.select.i.i.i.i.i.lobit.i32.i.i, %.sroa.27.061.i.i ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.040.062.i.i, i64 32 ; 4 uses
  %.val.i33.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !11372, !noalias !11402, !nonnull !3, !align !28, !noundef !3
  %i.dx = getelementptr i8, ptr %.sroa.040.062.i.i, i64 40
  %.val1.i34.i.i = load i64, ptr %i.dx, align 8, !alias.scope !11372, !noalias !11402, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i37.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i34.i.i, i64 %.val3.i29.i.i)
  %i.dy = sub i64 %.val1.i34.i.i, %.val3.i29.i.i
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i33.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i37.i.i), !alias.scope !11405, !noalias !11415 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %spec.store.select.i.i.i.i.i.i38.i.i = select i1 %i.eb, i64 %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.dv ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.063.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !alias.scope !11372, !noalias !11402
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i64 16, i1 false), !alias.scope !11372, !noalias !11402
  %spec.store.select.i.i.i.i.i.lobit.i39.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i38.i.i, 63
  %i.ed = add i64 %spec.store.select.i.i.i.i.i.lobit.i39.i.i, %i.dv ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.040.062.i.i, i64 48 ; 3 uses
  %i.ee = icmp ult ptr %.sroa.15.0.i.i, %i.dc
  br i1 %i.ee, label %.lr.ph.i.i36, label %.preheader.i.i33

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i: ; preds = %.lr.ph69.i.i, %.preheader.i.i33
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i33 ], [ %i.dm, %.lr.ph69.i.i ] ; 2 uses
  %.sroa.040.1.lcssa.i.i = phi ptr [ %.sroa.040.0.lcssa.i.i, %.preheader.i.i33 ], [ %.sroa.15.167.i.i, %.lr.ph69.i.i ]
  %..i.i.i.i.i.i23.i.i = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %.val3.i29.i.i)
  %i.ef = sub i64 %i.da, %.val3.i29.i.i
  %i.eg = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.cy, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i23.i.i), !alias.scope !11416, !noalias !11426 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i.i.i24.i.i = select i1 %i.ei, i64 %i.ef, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.27.1.lcssa.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !alias.scope !11372, !noalias !11429
  store ptr %i.cy, ptr %i.ej, align 8, !alias.scope !11372, !noalias !11429
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11372, !noalias !11429
  %spec.store.select.i.i.i.i.i.lobit.i25.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i24.i.i, 63
  %i.ek = add i64 %spec.store.select.i.i.i.i.i.lobit.i25.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.ek, %.sroa.14.068117
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h39db364789227f87E.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h39db364789227f87E.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069116, i64 %i.ek ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !alias.scope !11430
end_hunk_0
begin_hunk_1_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h486ec4222435d0efE":bb.a
bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sroa.4.0.i.ph16.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.w, %bb.f ] ; 5 uses
  %i.y = shl nuw i64 %.sroa.4.0.i.ph16.i, 5       ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.4.0.i.ph16.i, 16  ; 2 uses
  %i.aa = add i64 %i.z, %i.y                      ; 4 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = icmp ugt i64 %i.aa, 9223372036854775792
  %or.cond.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", !prof !130

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !17280
  %i.ad = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !17280 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !17280
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.ag = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.aa), !noalias !17280
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ah = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext %3), !noalias !17285
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y ; 9 uses
  %i.aj = add nsw i64 %.sroa.4.0.i.ph16.i, -1     ; 6 uses
  %i.ak = icmp samesign ult i64 %.sroa.4.0.i.ph16.i, 9
  %i.al = lshr i64 %.sroa.4.0.i.ph16.i, 3
  %i.am = mul nuw nsw i64 %i.al, 7
  %.sroa.02.0.i.i = select i1 %i.ak, i64 %i.aj, i64 %i.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ai, i8 -1, i64 %i.z, i1 false), !noalias !17285
  %i.an = ptrtoint ptr %i.ai to i64
  %i.ao = icmp eq i64 %i.b, 0
  br i1 %i.ao, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.._crit_edge65_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.._crit_edge65_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !17286, !noalias !17289
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge65

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !17291, !noalias !17294, !nonnull !3, !noundef !3 ; 5 uses
  %.val451 = load <16 x i8>, ptr %i.ap, align 16
  %i.aq = icmp sgt <16 x i8> %.val451, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ah, %bb.j ], [ %i.ag, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %.sroa.12.048 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.049 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.sroa.034.064 = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %.sroa.034.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.5.063 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.9.062 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bq, %bb.m ]
  %.sroa.13.061 = phi i16 [ %i.ar, %.preheader.lr.ph ], [ %i.bo, %bb.m ] ; 2 uses
  %.not.i256 = icmp eq i16 %.sroa.13.061, 0
  br i1 %.not.i256, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.034.158 = phi ptr [ %i.as, %.noexc3 ], [ %.sroa.034.064, %.preheader ] ; 2 uses
  %.sroa.5.157 = phi i64 [ %i.av, %.noexc3 ], [ %.sroa.5.063, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.158) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.034.158, i64 16 ; 3 uses
  %.val52 = load <16 x i8>, ptr %i.as, align 16
  %i.at = icmp sgt <16 x i8> %.val52, splat (i8 -1)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %i.av = add i64 %.sroa.5.157, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.au, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge65:                                    ; preds = %bb.m, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.._crit_edge65_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.._crit_edge65_crit_edge ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aw = sub i64 %.sroa.02.0.i.i, %i.b
  store i64 %i.an, ptr %0, align 8, !alias.scope !17286, !noalias !17289
  store i64 %i.aj, ptr %i.e, align 8, !alias.scope !17296, !noalias !17298
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !alias.scope !17300, !noalias !17302
  %i.ay = icmp eq i64 %i.f, 0
  br i1 %i.ay, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge65
  %i.az = shl i64 %i.f, 5                         ; 2 uses
  %i.ba = add i64 %i.az, 32
  %i.bb = add i64 %i.az, 47                       ; 2 uses
  %i.bc = icmp uge i64 %i.bb, %i.ba
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = and i64 %i.bb, -32                      ; 3 uses
  %i.be = add i64 %i.f, 17
  %i.bf = add i64 %i.be, %i.bd                    ; 4 uses
  %i.bg = icmp uge i64 %i.bf, %i.bd
  %i.bh = icmp ult i64 %i.bf, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bg)
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bi = icmp eq i64 %i.bf, 0
  br i1 %i.bi, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bj = sub nsw i64 0, %i.bd
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bk, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !17304
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.061, %.preheader ], [ %i.au, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.063, %.preheader ], [ %i.av, %.noexc3 ] ; 2 uses
  %.sroa.034.1.lcssa = phi ptr [ %.sroa.034.064, %.preheader ], [ %i.as, %.noexc3 ]
  %i.bl = add i16 %.sroa.13.1.lcssa, -1
  %i.bm = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bn = zext nneg i16 %i.bm to i64
  %i.bo = and i16 %i.bl, %.sroa.13.1.lcssa
  %i.bp = add i64 %.sroa.5.1.lcssa, %i.bn         ; 2 uses
  %i.bq = add i64 %.sroa.9.062, -1                ; 2 uses
  %i.br = sub nsw i64 0, %i.bp
  %i.bs = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %.val.i = load i64, ptr %i.bt, align 1, !alias.scope !17309, !noalias !17312 ; 2 uses
  %.sroa.0.04.i.i = and i64 %.val.i, %i.aj        ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bu, align 1, !noalias !17317
  %i.bv = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.bw, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !823

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i9, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %._crit_edge ]
  %i.bx = phi i64 [ %i.by, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.by = add i64 %i.bx, 16                       ; 2 uses
  %i.bz = add i64 %i.by, %.sroa.0.07.i.i
  %.sroa.0.0.i.i9 = and i64 %i.bz, %i.aj          ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.0.i.i9
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.ca, align 1, !noalias !17317
  %i.cb = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !824

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %._crit_edge ], [ %.sroa.0.0.i.i9, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bw, %._crit_edge ], [ %i.cc, %.lr.ph.i.i ]
  %i.cd = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.ce = zext nneg i16 %i.cd to i64
  %i.cf = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.ce
  %i.cg = and i64 %i.cf, %i.aj                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !3
  %i.cj = icmp sgt i8 %i.ci, -1
  br i1 %i.cj, label %bb.l, label %bb.m, !prof !48

bb.l:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.ai, align 16
  %i.ck = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.cl = bitcast <16 x i1> %i.ck to i16          ; 2 uses
  %i.cm = icmp ne i16 %i.cl, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cl, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.co, %bb.l ], [ %i.cg, %._crit_edge.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.0.0.i5.i.i
  %i.cq = lshr i64 %.val.i, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 2 uses
  %i.cs = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.ct = and i64 %i.cs, %i.aj
  store i8 %i.cr, ptr %i.cp, align 1
  %i.cu = getelementptr i8, ptr %i.ai, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 16
  store i8 %i.cr, ptr %i.cv, align 1
  %i.cw = shl i64 %i.bp, 5
  %i.cx = sub nuw nsw i64 -32, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.ap, i64 %i.cx
  %i.cz = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.da = sub nuw nsw i64 -32, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.ai, i64 %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.db, ptr noundef nonnull align 1 dereferenceable(32) %i.cy, i64 32, i1 false)
  %i.dc = icmp eq i64 %i.bq, 0
  br i1 %i.dc, label %._crit_edge65, label %.preheader

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17320)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !17320 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i10

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

.lr.ph.i.i10:                                     ; preds = %bb.n
  %i.dd = lshr i64 %i.h, 4                        ; 2 uses
  %i.de = and i64 %i.h, 15
  %.not9.i.i.i.i = icmp ne i64 %i.de, 0
  %i.df = zext i1 %.not9.i.i.i.i to i64           ; 2 uses
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dd, %i.df ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %4 = add nuw nsw i64 %i.dd, %i.df
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dg = icmp eq i64 %4, 1
  br i1 %i.dg, label %.epil.preheader, label %.lr.ph.i.i10.new

.lr.ph.i.i10.new:                                 ; preds = %.lr.ph.i.i10
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.o

._crit_edge.i.i11.unr-lcssa:                      ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i11, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i11.unr-lcssa, %.lr.ph.i.i10
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i10 ], [ %i.do, %._crit_edge.i.i11.unr-lcssa ]
  %lcmp.mod105 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.dh = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dh, align 16, !noalias !17320
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.di = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dj = or <2 x i64> %i.di, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dj, ptr %i.dh, align 16, !noalias !17320
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %._crit_edge.i.i11.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.22.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.dk = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dk, ptr nonnull align 1 %.val10.i, i64 %.22.i, i1 false), !noalias !17320
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i10.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i10.new ], [ %i.do, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i10.new ], [ %niter.next.1, %bb.o ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dl, align 16, !noalias !17320
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dm = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dn, ptr %i.dl, align 16, !noalias !17320
  %i.do = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dq, align 16, !noalias !17320
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !17320
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i11.unr-lcssa, label %bb.o

bb.p:                                             ; preds = %bb.x, %._crit_edge.i.i11
  %.sroa.0.17.i = phi i64 [ 1, %._crit_edge.i.i11 ], [ %.sroa.0.1.i, %bb.x ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i11 ], [ %.sroa.0.17.i, %bb.x ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.06.i ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !noalias !17320, !noundef !3
  %.not.i12 = icmp eq i8 %i.du, -128
  br i1 %.not.i12, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.dv = shl i64 %.sroa.0.06.i, 5
  %i.dw = sub nuw nsw i64 -32, %i.dv
  %i.dx = getelementptr inbounds i8, ptr %.val10.i, i64 %i.dw ; 4 uses
  %i.dy = sub nsw i64 0, %.sroa.0.06.i
  %i.dz = getelementptr inbounds [32 x i8], ptr %.val10.i, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %.val.i.i14 = load i64, ptr %i.ea, align 1, !alias.scope !17323, !noalias !17326 ; 3 uses
  %.sroa.0.04.i.i15 = and i64 %.val.i.i14, %i.f   ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.04.i.i15
  %.sroa.0.0.copyload.i35.i.i16 = load <16 x i8>, ptr %i.ec, align 1, !noalias !17331
  %i.ed = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i16, zeroinitializer
  %i.ee = bitcast <16 x i1> %i.ed to i16          ; 2 uses
  %.not.not.i.not6.i.i17 = icmp eq i16 %i.ee, 0
  br i1 %.not.not.i.not6.i.i17, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !823

.lr.ph.i13.i:                                     ; preds = %bb.r, %.lr.ph.i13.i
  %.sroa.0.07.i.i30 = phi i64 [ %.sroa.0.0.i.i31, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i15, %bb.r ]
  %i.ef = phi i64 [ %i.eg, %.lr.ph.i13.i ], [ 0, %bb.r ]
  %i.eg = add i64 %i.ef, 16                       ; 2 uses
  %i.eh = add i64 %i.eg, %.sroa.0.07.i.i30
  %.sroa.0.0.i.i31 = and i64 %i.eh, %i.f          ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i.i31
  %.sroa.0.0.copyload.i3.i.i32 = load <16 x i8>, ptr %i.ei, align 1, !noalias !17331
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i32, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.not.i.not.i.i33 = icmp eq i16 %i.ek, 0
  br i1 %.not.not.i.not.i.i33, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !824

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %bb.r
  %.sroa.0.0.lcssa.i.i18 = phi i64 [ %.sroa.0.04.i.i15, %bb.r ], [ %.sroa.0.0.i.i31, %.lr.ph.i13.i ]
  %.lcssa.i.i19 = phi i16 [ %i.ee, %bb.r ], [ %i.ek, %.lr.ph.i13.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i19, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.0.lcssa.i.i18, %i.em
  %i.eo = and i64 %i.en, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !17320, !noundef !3
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.s, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !48

bb.s:                                             ; preds = %._crit_edge.i12.i
  %.val2.i.i.i29 = load <16 x i8>, ptr %.val10.i, align 16, !noalias !17320
  %i.es = icmp slt <16 x i8> %.val2.i.i.i29, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %i.eu = icmp ne i16 %i.et, 0
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ew = zext nneg i16 %i.ev to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.s, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i20 = phi i64 [ %i.ew, %bb.s ], [ %i.eo, %._crit_edge.i12.i ] ; 4 uses
  %i.ex = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i15
  %i.ey = sub i64 %.sroa.0.0.i5.i.i20, %.sroa.0.04.i.i15
  %i.ez = xor i64 %i.ey, %i.ex
  %.unshifted.i = and i64 %i.ez, %i.f
  %i.fa = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fa, label %bb.u, label %bb.t, !prof !609

bb.t:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fb = shl i64 %.sroa.0.0.i5.i.i20, 5
  %i.fc = sub nuw nsw i64 -32, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %.val10.i, i64 %i.fc ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i5.i.i20 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !17320, !noundef !3
  %i.fg = lshr i64 %.val.i.i14, 57
  %i.fh = trunc nuw nsw i64 %i.fg to i8           ; 2 uses
  %i.fi = add i64 %.sroa.0.0.i5.i.i20, -16
  %i.fj = and i64 %i.fi, %i.f
  store i8 %i.fh, ptr %i.fe, align 1, !noalias !17320
  %i.fk = getelementptr i8, ptr %.val10.i, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  store i8 %i.fh, ptr %i.fl, align 1, !noalias !17320
  %i.fm = icmp eq i8 %i.ff, -1
  br i1 %i.fm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fn = lshr i64 %.val.i.i14, 57
  %i.fo = trunc nuw nsw i64 %i.fn to i8           ; 2 uses
  %i.fp = add i64 %.sroa.0.06.i, -16
  %i.fq = and i64 %i.fp, %i.f
  store i8 %i.fo, ptr %i.dt, align 1, !noalias !17320
  %i.fr = getelementptr i8, ptr %.val10.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %i.fr, i64 16
  store i8 %i.fo, ptr %i.fs, align 1, !noalias !17320
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ft = add i64 %.sroa.0.06.i, -16
  %i.fu = and i64 %i.ft, %i.f
  store i8 -1, ptr %i.dt, align 1, !noalias !17320
  %i.fv = getelementptr i8, ptr %.val10.i, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  store i8 -1, ptr %i.fw, align 1, !noalias !17320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fd, ptr noundef nonnull align 1 dereferenceable(32) %i.dx, i64 32, i1 false), !noalias !17320
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.fx = load <2 x i64>, ptr %i.dx, align 1, !alias.scope !17334, !noalias !17320
  %i.fy = load <2 x i64>, ptr %i.fd, align 1, !alias.scope !17338, !noalias !17320
  store <2 x i64> %i.fy, ptr %i.dx, align 1, !alias.scope !17334, !noalias !17320
  store <2 x i64> %i.fx, ptr %i.fd, align 1, !alias.scope !17338, !noalias !17320
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.ga = load <2 x i64>, ptr %i.eb, align 1, !alias.scope !17341, !noalias !17320
  %i.gb = load <2 x i64>, ptr %i.fz, align 1, !alias.scope !17344, !noalias !17320
  store <2 x i64> %i.gb, ptr %i.eb, align 1, !alias.scope !17341, !noalias !17320
  store <2 x i64> %i.ga, ptr %i.fz, align 1, !alias.scope !17344, !noalias !17320
  br label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.p
  %i.gc = icmp ult i64 %.sroa.0.17.i, %i.h        ; 2 uses
  %i.gd = zext i1 %i.gc to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gd
  br i1 %i.gc, label %bb.p, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.x, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.ge = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.sroa.03.0.i, %bb.x ]
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gg = sub i64 %i.ge, %i.b
  store i64 %i.gg, ptr %i.gf, align 8, !alias.scope !17320
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i

_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i: ; preds = %bb.k, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %._crit_edge65, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit
  %.sroa.4.0.i = phi i64 [ undef, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ], [ %.sroa.12.048, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread ], [ undef, %._crit_edge65 ], [ undef, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ undef, %bb.k ]
  %.sroa.0.0.i = phi i64 [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ], [ %.sroa.7.049, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hdcaf2fa6446afca6E.exit.thread ], [ -9223372036854775807, %._crit_edge65 ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ -9223372036854775807, %bb.k ]
  %i.gh = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gi = insertvalue { i64, i64 } %i.gh, i64 %.sroa.4.0.i, 1
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hacdc05abbbe71950E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hacdc05abbbe71950E.exit: ; preds = %bb.c, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i
  %.merged.i = phi { i64, i64 } [ %i.l, %bb.c ], [ %i.gi, %_ZN9hashbrown3raw13RawTableInner12resize_inner17h7da0a1f5cd496b1bE.exit.i ]
  ret { i64, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN9itertools4free4join17h99997d1fd8e5ac17E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
