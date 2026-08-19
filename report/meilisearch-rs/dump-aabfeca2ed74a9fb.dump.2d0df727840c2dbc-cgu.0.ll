inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE:bb.a
  %i.al = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val9.i.1.i, i64 %..i.i.i.i.i15.i.1.i), !alias.scope !61562, !noalias !61552 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %spec.store.select.i.i.i.i.i16.i.1.i = select i1 %i.an, i64 %i.ak, i64 %i.am
  %i.ao = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.j, %.lr.ph269, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %.sroa.5.0.i.1.i266, %.lr.ph269 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.sroa.0.0.i31.1.i267, %.lr.ph269 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i31.lcssa.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -96
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -88
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false), !alias.scope !61555
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i: ; preds = %._crit_edge270, %.lr.ph.1.i
  %i.ap = icmp ult i64 %.sroa.08.110.1.i, %i.r    ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !61571)
  %i.ar = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.ar
  %i.at = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.q, i64 -104
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bx, i64 104    ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bw, i64 104
  %i.ax = and i64 %.sroa.15.0.lcssa, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.06.09.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %i.q, %.loopexit.1.i ] ; 4 uses
  %.sroa.010.08.i.i = phi ptr [ %i.bm, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa97, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %i.au, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.at, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.az = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.06.09.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bb = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val24.i.i = load i64, ptr %i.bb, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.0.010.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bd = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val25.i.i = load i64, ptr %i.bd, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.0.val24.i.i, i64 %.sroa.0.0.val25.i.i)
  %i.be = sub i64 %.sroa.06.0.val24.i.i, %.sroa.0.0.val25.i.i
  %i.bf = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.06.0.val.i.i, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !61575, !noalias !61579 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.bh, i64 %i.be, i64 %i.bg ; 2 uses
  %i.bi = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bi, ptr %.sroa.0.010.i.i, ptr %.sroa.06.09.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(104) %..i23.i.i, i64 104, i1 false), !alias.scope !61555, !noalias !61580
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.bj = getelementptr inbounds nuw [104 x i8], ptr %.sroa.06.09.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 4 uses
  %i.bk = zext i1 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.010.i.i, i64 %i.bk ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 104 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bo = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val26.i.i = load i64, ptr %i.bo, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.013.07.i.i, i64 8
  %.sroa.013.0.val.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bq = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val27.i.i = load i64, ptr %i.bq, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.015.0.val26.i.i, i64 %.sroa.013.0.val27.i.i)
  %i.br = sub i64 %.sroa.015.0.val26.i.i, %.sroa.013.0.val27.i.i
  %i.bs = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.015.0.val.i.i, ptr nonnull readonly align 1 %.sroa.013.0.val.i.i, i64 %..i.i.i.i.i28.i.i), !alias.scope !61584, !noalias !61579 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %spec.store.select.i.i.i.i.i29.i.i = select i1 %i.bu, i64 %i.br, i64 %i.bt ; 2 uses
  %i.bv = icmp sgt i64 %spec.store.select.i.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bv, ptr %.sroa.015.06.i.i, ptr %.sroa.013.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(104) %..i.i.i, i64 104, i1 false), !alias.scope !61555, !noalias !61588
  %.neg.i.i.i = sext i1 %i.bv to i64
  %i.bw = getelementptr [104 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit.i.i = ashr i64 %spec.store.select.i.i.i.i.i29.i.i, 63
  %i.bx = getelementptr [104 x i8], ptr %.sroa.013.07.i.i, i64 %spec.store.select.i.i.i.i.i29.lobit.i.i ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -104
  %exitcond.not.i.i = icmp eq i64 %i.az, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bz = icmp ult ptr %i.bl, %i.av               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.bz, ptr %i.bl, ptr %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bm, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0..sroa.06.0.i.i, i64 104, i1 false), !alias.scope !61555
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %i.bl, i64 %i.ca
  %i.cc = xor i1 %i.bz, true
  %i.cd = zext i1 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [104 x i8], ptr %i.bj, i64 %i.cd
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.ce, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.bl, %._crit_edge.i.i ], [ %i.cb, %bb.k ]
  %i.cf = icmp ne ptr %.sroa.0.1.i.i, %i.av
  %i.cg = icmp ne ptr %.sroa.06.1.i.i, %i.aw
  %or.cond.i.i = select i1 %i.cf, i1 true, i1 %i.cg, !prof !8053
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit, !prof !8053

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #41
          to label %.noexc.i unwind label %bb.n, !noalias !61552

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = mul nuw nsw i64 %.sroa.15.0.lcssa, 104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr nonnull align 8 %2, i64 %i.ci, i1 false), !alias.scope !61555, !noalias !61592
  resume { ptr, i32 } %i.ch

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 104
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ck, ptr noundef nonnull align 8 dereferenceable(104) %i.cj, i64 104, i1 false), !alias.scope !61555
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val11.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13 ; 3 uses
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val12.i.i = load i64, ptr %i.cm, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 5 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 -96
  %.val13.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %i.co = getelementptr i8, ptr %i.ck, i64 -88
  %.val14.i.i = load i64, ptr %i.co, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i29.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val14.i.i)
  %i.cp = sub i64 %.val12.i.i, %.val14.i.i
  %i.cq = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val13.i.i, i64 %..i.i.i.i.i.i29.i), !alias.scope !61558, !noalias !61552 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp eq i32 %i.cq, 0
  %spec.store.select.i.i.i.i.i.i30.i = select i1 %i.cs, i64 %i.cp, i64 %i.cr
  %i.ct = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.i, 0
  br i1 %i.ct, label %bb.o, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %.sroa.08.0.copyload.i.i = load i64, ptr %i.ck, align 8, !alias.scope !61557, !noalias !61552
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sroa.0.0.i31.i254 = getelementptr inbounds i8, ptr %i.ck, i64 -104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ck, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.i254, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %i.cv = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.cv, label %._crit_edge259, label %.lr.ph258

bb.p:                                             ; preds = %.lr.ph258
  %.sroa.0.0.i31.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.i256, i64 -104 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.i256, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.i, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %i.cw = icmp eq ptr %.sroa.0.0.i31.i, %2
  br i1 %i.cw, label %._crit_edge259, label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.o, %bb.p
  %.sroa.0.0.i31.i256 = phi ptr [ %.sroa.0.0.i31.i, %bb.p ], [ %.sroa.0.0.i31.i254, %bb.o ] ; 5 uses
  %.sroa.5.0.i.i255 = phi ptr [ %.sroa.0.0.i31.i256, %bb.p ], [ %i.ck, %bb.o ] ; 3 uses
  %i.cx = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -200
  %.val9.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %i.cy = getelementptr i8, ptr %.sroa.5.0.i.i255, i64 -192
  %.val10.i.i = load i64, ptr %i.cy, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i15.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i, i64 %.val10.i.i)
  %i.cz = sub i64 %.val12.i.i, %.val10.i.i
  %i.da = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i, ptr nonnull readonly align 1 %.val9.i.i, i64 %..i.i.i.i.i15.i.i), !alias.scope !61562, !noalias !61552 ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = icmp eq i32 %i.da, 0
  %spec.store.select.i.i.i.i.i16.i.i = select i1 %i.dc, i64 %i.cz, i64 %i.db
  %i.dd = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i, 0
  br i1 %i.dd, label %bb.p, label %._crit_edge259

._crit_edge259:                                   ; preds = %bb.p, %.lr.ph258, %bb.o
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.ck, %bb.o ], [ %.sroa.0.0.i31.i256, %bb.p ], [ %.sroa.5.0.i.i255, %.lr.ph258 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.i = phi ptr [ %2, %bb.o ], [ %2, %bb.p ], [ %.sroa.0.0.i31.i256, %.lr.ph258 ]
  store i64 %.sroa.08.0.copyload.i.i, ptr %.sroa.0.0.i31.lcssa.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -96
  store ptr %.val11.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -88
  store i64 %.val12.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.cu, i64 80, i1 false), !alias.scope !61555
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.i: ; preds = %._crit_edge259, %.lr.ph.i
  %i.de = icmp ult i64 %.sroa.08.110.i, %i.n      ; 2 uses
  %i.df = zext i1 %i.de to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.df
  br i1 %i.de, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.099.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4e88c1157adabE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph106, i64 noundef %.sroa.15.099.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit

.lr.ph250:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.098249 = phi i32 [ %i.dg, %bb.b ], [ %.sroa.023.0.ph104, %.lr.ph ]
  %.sroa.15.099248 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ] ; 21 uses
  %i.dg = add i32 %.sroa.023.098249, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61597)
  %i.dh = lshr i64 %.sroa.15.099248, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.dh, 416
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.dh, 728
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx2.i ; 4 uses
  %i.dk = icmp ult i64 %.sroa.15.099248, 64
  br i1 %i.dk, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph250
  %i.dl = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3502b7bf143b58faE(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph106, ptr noundef readonly %i.di, ptr noundef readonly %i.dj, i64 noundef %i.dh)
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph250
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %i.dm = getelementptr i8, ptr %i.di, i64 8
  %.val12.i = load ptr, ptr %i.dm, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.di, i64 16
  %.val13.i = load i64, ptr %i.dn, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.do = sub i64 %.val11.i, %.val13.i
  %i.dp = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i), !alias.scope !61600, !noalias !61597 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dq ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dj, i64 8
  %.val8.i = load ptr, ptr %i.ds, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dj, i64 16
  %.val9.i = load i64, ptr %i.dt, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %..i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.du = sub i64 %.val11.i, %.val9.i
  %i.dv = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i14.i), !alias.scope !61604, !noalias !61597 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %spec.store.select.i.i.i.i.i15.i = select i1 %i.dx, i64 %i.du, i64 %i.dw
  %i.dy = xor i64 %spec.store.select.i.i.i.i.i15.i, %spec.store.select.i.i.i.i.i.i
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %..i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.ea = sub i64 %.val13.i, %.val9.i
  %i.eb = call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i16.i), !alias.scope !61608, !noalias !61597 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %spec.store.select.i.i.i.i.i17.i = select i1 %i.ed, i64 %i.ea, i64 %i.ec
  %i.ee = xor i64 %spec.store.select.i.i.i.i.i17.i, %spec.store.select.i.i.i.i.i.i
  %i.ef = icmp slt i64 %i.ee, 0
  %..i.i = select i1 %i.ef, ptr %i.dj, ptr %i.di
  br label %bb.t

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %i.dl, %bb.q ], [ %.sroa.0.0.ph106, %bb.r ], [ %..i.i, %bb.s ]
  %i.eg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eh = sub nuw i64 %i.eg, %i.f                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.eh, 104      ; 3 uses
  %i.ei = icmp ult i64 %.sroa.0.0.i38, %.sroa.15.099248
  call void @llvm.assume(i1 %i.ei)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %i.eh ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.ej, i64 104, i1 false)
  br i1 %.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.026.0.val = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %.sroa.026.0.val36 = load i64, ptr %i.h, align 8, !noundef !13 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 8
  %.val = load ptr, ptr %i.ek, align 8, !nonnull !13, !noundef !13
  %i.el = getelementptr i8, ptr %i.ej, i64 16
  %.val37 = load i64, ptr %i.el, align 8, !noundef !13 ; 2 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.026.0.val36, i64 %.val37)
  %i.em = sub i64 %.sroa.026.0.val36, %.val37
  %i.en = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.026.0.val, ptr nonnull readonly align 1 %.val, i64 %..i.i.i.i.i), !alias.scope !61612 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp eq i32 %i.en, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.ep, i64 %i.em, i64 %i.eo
  %i.eq = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1
  br i1 %i.eq, label %.critedge35, label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !61616)
  call void @llvm.experimental.noalias.scope.decl(metadata !61619)
  %.not68 = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not68, label %bb.w, label %bb.v, !prof !8053

bb.v:                                             ; preds = %.critedge
  %i.er = getelementptr [104 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.es = getelementptr i8, ptr %i.ej, i64 8
  %i.et = getelementptr i8, ptr %i.ej, i64 16
  br label %bb.x

bb.w:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.v
  %.sroa.19.0.i = phi ptr [ %i.er, %bb.v ], [ %i.fj, %bb.y ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.v ], [ %.sroa.11.1.lcssa.i, %bb.y ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph106, %bb.v ], [ %i.fl, %bb.y ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i38, %bb.v ], [ %.sroa.15.099248, %bb.y ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i ; 2 uses
  %i.ev = icmp ult ptr %.sroa.5.0.i, %i.eu
  br i1 %i.ev, label %.lr.ph.i39, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i39, %bb.x
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.x ], [ %i.fe, %.lr.ph.i39 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.x ], [ %i.fg, %.lr.ph.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.x ], [ %i.fh, %.lr.ph.i39 ] ; 2 uses
  %i.ew = icmp eq i64 %.sroa.02.0.i, %.sroa.15.099248
  br i1 %i.ew, label %bb.z, label %bb.y

.lr.ph.i39:                                       ; preds = %bb.x, %.lr.ph.i39
  %.sroa.5.111.i = phi ptr [ %i.fh, %.lr.ph.i39 ], [ %.sroa.5.0.i, %bb.x ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.fg, %.lr.ph.i39 ], [ %.sroa.11.0.i, %bb.x ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.fe, %.lr.ph.i39 ], [ %.sroa.19.0.i, %bb.x ]
  %i.ex = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ex, align 8, !alias.scope !61616, !noalias !61619, !nonnull !13, !noundef !13
  %i.ey = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val24.i = load i64, ptr %i.ey, align 8, !alias.scope !61616, !noalias !61619, !noundef !13 ; 2 uses
  %.val25.i = load ptr, ptr %i.es, align 8, !alias.scope !61616, !noalias !61619, !nonnull !13, !noundef !13
  %.val26.i = load i64, ptr %i.et, align 8, !alias.scope !61616, !noalias !61619, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i40 = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.val26.i)
  %i.ez = sub i64 %.val24.i, %.val26.i
  %i.fa = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val25.i, i64 %..i.i.i.i.i.i40), !alias.scope !61621, !noalias !61625 ; 2 uses
  %i.fb = sext i32 %i.fa to i64
  %i.fc = icmp eq i32 %i.fa, 0
  %spec.store.select.i.i.i.i.i.i41 = select i1 %i.fc, i64 %i.ez, i64 %i.fb ; 2 uses
  %i.fd = icmp slt i64 %spec.store.select.i.i.i.i.i.i41, 0
  %i.fe = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -104 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.fd, ptr %2, ptr %i.fe
  %i.ff = getelementptr inbounds nuw [104 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ff, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.111.i, i64 104, i1 false), !alias.scope !61625, !noalias !61626
  %spec.store.select.i.i.i.i.i.lobit.i = lshr i64 %spec.store.select.i.i.i.i.i.i41, 63
  %i.fg = add i64 %spec.store.select.i.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 104 ; 3 uses
  %i.fi = icmp ult ptr %i.fh, %i.eu
  br i1 %i.fi, label %.lr.ph.i39, label %._crit_edge.i

bb.y:                                             ; preds = %._crit_edge.i
  %i.fj = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -104 ; 2 uses
  %i.fk = getelementptr inbounds nuw [104 x i8], ptr %i.fj, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fk, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.1.lcssa.i, i64 104, i1 false), !alias.scope !61625, !noalias !61629
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 104
  br label %bb.x

bb.z:                                             ; preds = %._crit_edge.i
  %i.fm = mul i64 %.sroa.11.1.lcssa.i, 104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.fm, i1 false), !alias.scope !61625
  %i.fn = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.z
  %i.fo = getelementptr [104 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.fn, 1
  %i.fp = icmp eq i64 %.sroa.15.099248, %.neg
  br i1 %i.fp, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.fn, -2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ft, %bb.aa ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.aa ]
  %i.fq = xor i64 %.sroa.04.014.i, -1
  %i.fr = getelementptr [104 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr [104 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fs, ptr noundef nonnull align 8 dereferenceable(104) %i.fr, i64 104, i1 false), !alias.scope !61625
  %i.ft = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.fu = xor i64 %.sroa.04.014.i, -2
  %i.fv = getelementptr [104 x i8], ptr %i.er, i64 %i.fu
  %i.fw = getelementptr [104 x i8], ptr %i.fo, i64 %.sroa.04.014.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.fx, ptr noundef nonnull align 8 dereferenceable(104) %i.fv, i64 104, i1 false), !alias.scope !61625
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa, label %bb.aa

_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa: ; preds = %bb.aa
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit, label %.epil.preheader
end_hunk_0
