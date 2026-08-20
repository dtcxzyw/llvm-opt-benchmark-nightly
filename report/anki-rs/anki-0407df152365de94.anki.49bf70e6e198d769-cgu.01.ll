inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort18small_sort_general17h29da9ac5f0cd859aE:bb.a
  br i1 %i.cb, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i, %bb.e
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.cd = getelementptr [56 x i8], ptr %i.a, i64 %i.c ; 6 uses
  %i.ce = icmp ult i64 %.sroa.0.0.i, %i.ca
  br i1 %i.ce, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.cc, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx44 = mul nuw nsw i64 %.sroa.08.09.1.i, 56
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx44 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.cf, i64 56, i1 false), !alias.scope !2202
  %i.ch = getelementptr i8, ptr %i.cg, i64 40
  %.val9.i40.1.i = load i64, ptr %i.ch, align 8, !alias.scope !2200, !noalias !2197, !noundef !4 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -16
  %.val10.i41.1.i = load i64, ptr %i.ci, align 8, !alias.scope !2200, !noalias !2197, !noundef !4
  %i.cj = icmp ult i64 %.val9.i40.1.i, %.val10.i41.1.i
  br i1 %i.cj, label %bb.f, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i

bb.f:                                             ; preds = %.lr.ph.1.i
  %.sroa.59.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %.sroa.59.0.copyload.i.1.i = load i64, ptr %.sroa.59.0..sroa_idx.i.1.i, align 8, !alias.scope !2200, !noalias !2197
  %.sroa.0.0.i42.1.i33 = getelementptr inbounds i8, ptr %i.cg, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i33, i64 56, i1 false), !alias.scope !2200, !noalias !2197
  %i.ck = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ck, label %._crit_edge38, label %.lr.ph37

bb.g:                                             ; preds = %.lr.ph37
  %.sroa.0.0.i42.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.1.i35, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i35, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.1.i, i64 56, i1 false), !alias.scope !2200, !noalias !2197
  %i.cl = icmp eq ptr %.sroa.0.0.i42.1.i, %i.cd
  br i1 %i.cl, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42.1.i35 = phi ptr [ %.sroa.0.0.i42.1.i, %bb.g ], [ %.sroa.0.0.i42.1.i33, %bb.f ] ; 5 uses
  %.sroa.5.0.i.1.i34 = phi ptr [ %.sroa.0.0.i42.1.i35, %bb.g ], [ %i.cg, %bb.f ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.5.0.i.1.i34, i64 -72
  %.val8.i43.1.i = load i64, ptr %i.cm, align 8, !alias.scope !2200, !noalias !2197, !noundef !4
  %i.cn = icmp ult i64 %.val9.i40.1.i, %.val8.i43.1.i
  br i1 %i.cn, label %bb.g, label %._crit_edge38

._crit_edge38:                                    ; preds = %bb.g, %.lr.ph37, %bb.f
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cg, %bb.f ], [ %.sroa.0.0.i42.1.i35, %bb.g ], [ %.sroa.5.0.i.1.i34, %.lr.ph37 ] ; 2 uses
  %.sroa.0.0.i42.lcssa.1.i = phi ptr [ %i.cd, %bb.f ], [ %i.cd, %bb.g ], [ %.sroa.0.0.i42.1.i35, %.lr.ph37 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !alias.scope !2202
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2200, !noalias !2203
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2200, !noalias !2203
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i: ; preds = %._crit_edge38, %.lr.ph.1.i
  %i.co = icmp ult i64 %.sroa.08.110.1.i, %i.ca   ; 2 uses
  %i.cp = zext i1 %i.co to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cp
  br i1 %i.co, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.1.i, %.loopexit.i
  %i.cq = add nsw i64 %1, -1                      ; 2 uses
  %i.cr = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.cq
  %i.ct = getelementptr i8, ptr %i.cd, i64 -56
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cu = getelementptr i8, ptr %i.dh, i64 56     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.dg, i64 56
  %i.cw = and i64 %1, 1
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.db, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cy, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cd, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dh, %.lr.ph.i.i ], [ %i.ct, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.cs, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 2 uses
  %i.cy = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val.i.i = load i64, ptr %i.cz, align 8, !alias.scope !2208, !noalias !2197, !noundef !4
  %i.da = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val.i.i = load i64, ptr %i.da, align 8, !alias.scope !2208, !noalias !2197, !noundef !4
  %.not = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !2202, !noalias !2211
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 56, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 56
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.dc = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val.i.i = load i64, ptr %i.dc, align 8, !alias.scope !2208, !noalias !2197, !noundef !4
  %i.dd = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val.i.i = load i64, ptr %i.dd, align 8, !alias.scope !2208, !noalias !2197, !noundef !4
  %i.de = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.de, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.df = xor i1 %i.de, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !2202, !noalias !2215
  %.neg.i.i.i = sext i1 %i.df to i64
  %i.dg = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.de to i64
  %i.dh = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.cy, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not21 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cu ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not21, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.db, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !2202
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not21, i64 56, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not21, i64 0, i64 56
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.h ]
  %i.dj = icmp ne ptr %.sroa.06.1.i.i, %i.cu
  %i.dk = icmp ne ptr %.sroa.011.1.i.i, %i.cv
  %or.cond.i.i = select i1 %i.dj, i1 true, i1 %i.dk, !prof !19
  br i1 %or.cond.i.i, label %bb.j, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfc7e6f78f3ed48fE.exit, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = mul nuw nsw i64 %1, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dm, i1 false), !alias.scope !2202, !noalias !2219
  resume { ptr, i32 } %i.dl

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 56
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i64 56, i1 false), !alias.scope !2202
  %i.dp = getelementptr i8, ptr %i.do, i64 40
  %.val9.i40.i = load i64, ptr %i.dp, align 8, !alias.scope !2200, !noalias !2197, !noundef !4 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -16
  %.val10.i41.i = load i64, ptr %i.dq, align 8, !alias.scope !2200, !noalias !2197, !noundef !4
  %i.dr = icmp ult i64 %.val9.i40.i, %.val10.i41.i
  br i1 %i.dr, label %bb.l, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !2200, !noalias !2197
  %.sroa.0.0.i42.i26 = getelementptr inbounds i8, ptr %i.do, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.do, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i26, i64 56, i1 false), !alias.scope !2200, !noalias !2197
  %i.ds = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.ds, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.i42.i = getelementptr inbounds i8, ptr %.sroa.0.0.i42.i28, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i42.i, i64 56, i1 false), !alias.scope !2200, !noalias !2197
  %i.dt = icmp eq ptr %.sroa.0.0.i42.i, %i.a
  br i1 %i.dt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i42.i28 = phi ptr [ %.sroa.0.0.i42.i, %bb.m ], [ %.sroa.0.0.i42.i26, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i27 = phi ptr [ %.sroa.0.0.i42.i28, %bb.m ], [ %i.do, %bb.l ] ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.5.0.i.i27, i64 -72
  %.val8.i43.i = load i64, ptr %i.du, align 8, !alias.scope !2200, !noalias !2197, !noundef !4
  %i.dv = icmp ult i64 %.val9.i40.i, %.val8.i43.i
  br i1 %i.dv, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.do, %bb.l ], [ %.sroa.0.0.i42.i28, %bb.m ], [ %.sroa.5.0.i.i27, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i42.lcssa.i = phi ptr [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.sroa.0.0.i42.i28, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i42.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 40, i1 false), !alias.scope !2202
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2200, !noalias !2203
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2200, !noalias !2203
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.dw = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.dx = zext i1 %i.dw to i64
  %.sroa.08.1.i = add nuw nsw i64 %.sroa.08.110.i, %i.dx
  br i1 %i.dw, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17hcfc7e6f78f3ed48fE.exit: ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h43b052b5f4fb9476E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [1536 x i8], align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2224)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %i.o = icmp samesign ult i64 %1, 2
  br i1 %i.o, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h13a4735e48f145a9E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = lshr i64 %1, 1                           ; 9 uses
  %i.q = icmp samesign ugt i64 %1, 7
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u) ; 2 uses
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = xor i1 %i.s, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.z ; 4 uses
  %i.ab = select i1 %i.v, i64 3, i64 2
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.v, i64 2, i64 3
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ad ; 3 uses
  %i.af = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) ; 3 uses
  %i.ag = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa) ; 3 uses
  %i.ah = select i1 %i.af, ptr %i.ac, ptr %i.x, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.aa, ptr %i.ae, !unpredictable !4
  %i.aj = select i1 %i.ag, ptr %i.ac, ptr %i.aa, !unpredictable !4
  %i.ak = select i1 %i.af, ptr %i.x, ptr %i.aj, !unpredictable !4 ; 3 uses
  %i.al = select i1 %i.af, ptr %i.aa, ptr %i.ac, !unpredictable !4
  %i.am = select i1 %i.ag, ptr %i.ae, ptr %i.al, !unpredictable !4 ; 3 uses
  %i.an = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak) ; 2 uses
  %i.ao = select i1 %i.an, ptr %i.am, ptr %i.ak, !unpredictable !4
  %i.ap = select i1 %i.an, ptr %i.ak, ptr %i.am, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !2229
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !alias.scope !2229
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !alias.scope !2229
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !2229
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 8 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.p ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.az = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay) ; 2 uses
  %i.ba = zext i1 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.ba ; 3 uses
  %i.bc = xor i1 %i.aw, true
  %i.bd = zext i1 %i.bc to i64
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.bd ; 4 uses
  %i.bf = select i1 %i.az, i64 3, i64 2
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.bf ; 4 uses
  %i.bh = select i1 %i.az, i64 2, i64 3
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.bh ; 3 uses
  %i.bj = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb) ; 3 uses
  %i.bk = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.be) ; 3 uses
  %i.bl = select i1 %i.bj, ptr %i.bg, ptr %i.bb, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.be, ptr %i.bi, !unpredictable !4
  %i.bn = select i1 %i.bk, ptr %i.bg, ptr %i.be, !unpredictable !4
  %i.bo = select i1 %i.bj, ptr %i.bb, ptr %i.bn, !unpredictable !4 ; 3 uses
  %i.bp = select i1 %i.bj, ptr %i.be, ptr %i.bg, !unpredictable !4
  %i.bq = select i1 %i.bk, ptr %i.bi, ptr %i.bp, !unpredictable !4 ; 3 uses
  %i.br = tail call fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo) ; 2 uses
  %i.bs = select i1 %i.br, ptr %i.bq, ptr %i.bo, !unpredictable !4
  %i.bt = select i1 %i.br, ptr %i.bo, ptr %i.bq, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false), !alias.scope !2229
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !alias.scope !2229
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !2229
  %i.bw = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !alias.scope !2229
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !2229
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 32, i1 false), !alias.scope !2229
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2229
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !2229
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.p, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !2229
  %i.bz = sub nsw i64 %1, %i.p
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.4.0..sroa_idx.i30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i32.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.411.0..sroa_idx.i33.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.4.0..sroa_idx.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i25.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i26.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.411.0..sroa_idx.i27.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.411.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx12.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %.sroa.4.0..sroa_idx.i30.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i31.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx.i32.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.411.0..sroa_idx.i33.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx.i35.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.4.0..sroa_idx.i24.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0..sroa_idx.i25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0..sroa_idx.i26.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.sroa.411.0..sroa_idx.i27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx12.i28.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7.0..sroa_idx.i29.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.08.126.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %bb.f

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h27774fc7563cebb0E.exit.i, %bb.f
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit4.i, %bb.e
  %.not.i.i = phi i1 [ false, %bb.e ], [ true, %.loopexit4.i ]
  %i.ca = phi i64 [ 0, %bb.e ], [ 1, %.loopexit4.i ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx.i, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !2230, !noalias !2229, !noundef !4 ; 3 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.cc ; 7 uses
  %i.cf = icmp eq i64 %i.cc, 0
  %.sroa.07.0.i = select i1 %i.cf, i64 %i.p, i64 %i.bz ; 2 uses
  %i.cg = icmp ult i64 %.sroa.0.0.i, %.sroa.07.0.i
  br i1 %i.cg, label %.lr.ph.i, label %.loopexit4.i

bb.g:                                             ; preds = %.loopexit4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2229
  %i.ch = add nsw i64 %1, -1                      ; 2 uses
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.ch
  %i.ck = getelementptr [32 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30.i
  %i.cm = getelementptr i8, ptr %i.cw, i64 32     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cv, i64 32
  %i.co = and i64 %1, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.noexc30.i, %bb.g
  %.sroa.0.010.i.i = phi ptr [ %i.ct, %.noexc30.i ], [ %0, %bb.g ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cq, %.noexc30.i ], [ 0, %bb.g ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.n, %bb.g ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.ck, %bb.g ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cw, %.noexc30.i ], [ %i.cl, %bb.g ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cv, %.noexc30.i ], [ %i.cj, %bb.g ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cx, %.noexc30.i ], [ %i.ci, %bb.g ] ; 2 uses
  %i.cq = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.cr = invoke fastcc noundef zeroext i1 @_ZN4core3ops8function5FnMut8call_mut17h4ba77fcba6dcbc11E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.011.07.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.06.08.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2224 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6shared9smallsort18small_sort_general17h644ae06bff648dddE:bb.a
  %.sroa.0.0.i54.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i54.1.i34, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.1.i34, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.1.i, i64 56, i1 false), !alias.scope !2303, !noalias !2300
  %i.eo = icmp eq ptr %.sroa.0.0.i54.1.i, %i.eb
  br i1 %i.eo, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i54.1.i34 = phi ptr [ %.sroa.0.0.i54.1.i, %bb.g ], [ %.sroa.0.0.i54.1.i32, %bb.f ] ; 5 uses
  %.sroa.5.0.i.1.i33 = phi ptr [ %.sroa.0.0.i54.1.i34, %bb.g ], [ %i.ee, %bb.f ] ; 3 uses
  %i.ep = getelementptr i8, ptr %.sroa.5.0.i.1.i33, i64 -72
  %.val9.i55.1.i = load i64, ptr %i.ep, align 8, !alias.scope !2303, !noalias !2300
  %i.eq = getelementptr i8, ptr %.sroa.5.0.i.1.i33, i64 -64
  %.val10.i56.1.i = load i32, ptr %i.eq, align 8, !alias.scope !2303, !noalias !2300, !noundef !4 ; 2 uses
  %i.er = icmp eq i32 %.val12.i51.1.i, %.val10.i56.1.i
  %i.es = icmp ult i64 %.val11.i50.1.i, %.val9.i55.1.i
  %i.et = icmp ult i32 %.val12.i51.1.i, %.val10.i56.1.i
  %i.eu = select i1 %i.er, i1 %i.es, i1 %i.et
  br i1 %i.eu, label %bb.g, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.g, %.lr.ph36, %bb.f
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.ee, %bb.f ], [ %.sroa.0.0.i54.1.i34, %bb.g ], [ %.sroa.5.0.i.1.i33, %.lr.ph36 ] ; 3 uses
  %.sroa.0.0.i54.lcssa.1.i = phi ptr [ %i.eb, %bb.f ], [ %i.eb, %bb.g ], [ %.sroa.0.0.i54.1.i34, %.lr.ph36 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i54.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 40, i1 false), !alias.scope !2305
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store i64 %.val11.i50.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2303, !noalias !2306
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i32 %.val12.i51.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2303, !noalias !2306
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4
  store i32 %.sroa.611.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !2303, !noalias !2306
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.1.i: ; preds = %._crit_edge37, %.lr.ph.1.i
  %i.ev = icmp ult i64 %.sroa.08.110.1.i, %i.dy   ; 2 uses
  %i.ew = zext i1 %i.ev to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.ew
  br i1 %i.ev, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.1.i, %.loopexit.i
  %i.ex = add nsw i64 %1, -1                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eb, i64 -56
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fb = getelementptr i8, ptr %i.fz, i64 56     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fy, i64 56
  %i.fd = and i64 %1, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ff, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.eb, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.fz, %.lr.ph.i.i ], [ %i.fa, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %i.ez, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ga, %.lr.ph.i.i ], [ %i.ey, %.loopexit.1.i ] ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.fg = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val.i.i = load i64, ptr %i.fg, align 8, !alias.scope !2311, !noalias !2300
  %i.fh = getelementptr i8, ptr %.sroa.011.07.i.i, i64 48
  %.sroa.011.0.val24.i.i = load i32, ptr %i.fh, align 8, !alias.scope !2311, !noalias !2300, !noundef !4 ; 2 uses
  %i.fi = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val.i.i = load i64, ptr %i.fi, align 8, !alias.scope !2311, !noalias !2300
  %i.fj = getelementptr i8, ptr %.sroa.06.08.i.i, i64 48
  %.sroa.06.0.val25.i.i = load i32, ptr %i.fj, align 8, !alias.scope !2311, !noalias !2300, !noundef !4 ; 2 uses
  %i.fk = icmp eq i32 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.fl = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fm = icmp ult i32 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.fn = select i1 %i.fk, i1 %i.fl, i1 %i.fm     ; 3 uses
  %..i23.i.i = select i1 %i.fn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !2305, !noalias !2314
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fn, i64 56, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fn, i64 0, i64 56
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.fp = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val.i.i = load i64, ptr %i.fp, align 8, !alias.scope !2311, !noalias !2300
  %i.fq = getelementptr i8, ptr %.sroa.017.05.i.i, i64 48
  %.sroa.017.0.val26.i.i = load i32, ptr %i.fq, align 8, !alias.scope !2311, !noalias !2300, !noundef !4 ; 2 uses
  %i.fr = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val.i.i = load i64, ptr %i.fr, align 8, !alias.scope !2311, !noalias !2300
  %i.fs = getelementptr i8, ptr %.sroa.015.06.i.i, i64 48
  %.sroa.015.0.val27.i.i = load i32, ptr %i.fs, align 8, !alias.scope !2311, !noalias !2300, !noundef !4 ; 2 uses
  %i.ft = icmp eq i32 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.fu = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fv = icmp ult i32 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.fw = select i1 %i.ft, i1 %i.fu, i1 %i.fv     ; 3 uses
  %..i.i.i = select i1 %i.fw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fx = xor i1 %i.fw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !2305, !noalias !2318
  %.neg.i.i.i = sext i1 %i.fx to i64
  %i.fy = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.fw to i64
  %i.fz = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.ff, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.fb ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !2305
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 56, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 56
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.h ]
  %i.gb = icmp ne ptr %.sroa.06.1.i.i, %i.fb
  %i.gc = icmp ne ptr %.sroa.011.1.i.i, %i.fc
  %or.cond.i.i = select i1 %i.gb, i1 true, i1 %i.gc, !prof !19
  br i1 %or.cond.i.i, label %bb.j, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6551473da9a17f0bE.exit, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = mul nuw nsw i64 %1, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.ge, i1 false), !alias.scope !2305, !noalias !2322
  resume { ptr, i32 } %i.gd

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 56
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false), !alias.scope !2305
  %i.gh = getelementptr i8, ptr %i.gg, i64 40
  %.val11.i50.i = load i64, ptr %i.gh, align 8, !alias.scope !2303, !noalias !2300 ; 3 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 48
  %.val12.i51.i = load i32, ptr %i.gi, align 8, !alias.scope !2303, !noalias !2300, !noundef !4 ; 5 uses
  %i.gj = getelementptr i8, ptr %i.gg, i64 -16
  %.val13.i52.i = load i64, ptr %i.gj, align 8, !alias.scope !2303, !noalias !2300
  %i.gk = getelementptr i8, ptr %i.gg, i64 -8
  %.val14.i53.i = load i32, ptr %i.gk, align 8, !alias.scope !2303, !noalias !2300, !noundef !4 ; 2 uses
  %i.gl = icmp eq i32 %.val12.i51.i, %.val14.i53.i
  %i.gm = icmp ult i64 %.val11.i50.i, %.val13.i52.i
  %i.gn = icmp ult i32 %.val12.i51.i, %.val14.i53.i
  %i.go = select i1 %i.gl, i1 %i.gm, i1 %i.gn
  br i1 %i.go, label %bb.l, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  %.sroa.611.0.copyload.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i, align 4, !alias.scope !2303, !noalias !2300
  %.sroa.0.0.i54.i25 = getelementptr inbounds i8, ptr %i.gg, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i25, i64 56, i1 false), !alias.scope !2303, !noalias !2300
  %i.gp = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.gp, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.i54.i = getelementptr inbounds i8, ptr %.sroa.0.0.i54.i27, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i27, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i, i64 56, i1 false), !alias.scope !2303, !noalias !2300
  %i.gq = icmp eq ptr %.sroa.0.0.i54.i, %i.a
  br i1 %i.gq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i54.i27 = phi ptr [ %.sroa.0.0.i54.i, %bb.m ], [ %.sroa.0.0.i54.i25, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i26 = phi ptr [ %.sroa.0.0.i54.i27, %bb.m ], [ %i.gg, %bb.l ] ; 3 uses
  %i.gr = getelementptr i8, ptr %.sroa.5.0.i.i26, i64 -72
  %.val9.i55.i = load i64, ptr %i.gr, align 8, !alias.scope !2303, !noalias !2300
  %i.gs = getelementptr i8, ptr %.sroa.5.0.i.i26, i64 -64
  %.val10.i56.i = load i32, ptr %i.gs, align 8, !alias.scope !2303, !noalias !2300, !noundef !4 ; 2 uses
  %i.gt = icmp eq i32 %.val12.i51.i, %.val10.i56.i
  %i.gu = icmp ult i64 %.val11.i50.i, %.val9.i55.i
  %i.gv = icmp ult i32 %.val12.i51.i, %.val10.i56.i
  %i.gw = select i1 %i.gt, i1 %i.gu, i1 %i.gv
  br i1 %i.gw, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.gg, %bb.l ], [ %.sroa.0.0.i54.i27, %bb.m ], [ %.sroa.5.0.i.i26, %.lr.ph ] ; 3 uses
  %.sroa.0.0.i54.lcssa.i = phi ptr [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.sroa.0.0.i54.i27, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i54.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gf, i64 40, i1 false), !alias.scope !2305
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i64 %.val11.i50.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2303, !noalias !2306
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.val12.i51.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2303, !noalias !2306
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.611.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !2303, !noalias !2306
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0fe227e8025ea247E.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gx = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.gy = zext i1 %i.gx to i64
  %.sroa.08.1.i = add nuw nsw i64 %.sroa.08.110.i, %i.gy
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h6551473da9a17f0bE.exit: ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort18small_sort_general17h88daaf8e8dc24a32E(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 33) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [1536 x i8], align 8              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2330)
  %i.p = icmp samesign ult i64 %1, 2
  br i1 %i.p, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha87297b793b5073aE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = lshr i64 %1, 1                           ; 9 uses
  %i.r = icmp samesign ugt i64 %1, 7
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v) ; 2 uses
  %i.x = zext i1 %i.t to i64
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = xor i1 %i.t, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.w, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ac ; 4 uses
  %i.ae = select i1 %i.w, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ae ; 3 uses
  %i.ag = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.y) ; 3 uses
  %i.ah = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab) ; 3 uses
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.y, !unpredictable !4
  %i.aj = select i1 %i.ah, ptr %i.ab, ptr %i.af, !unpredictable !4
  %i.ak = select i1 %i.ah, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.al = select i1 %i.ag, ptr %i.y, ptr %i.ak, !unpredictable !4 ; 3 uses
  %i.am = select i1 %i.ag, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.an = select i1 %i.ah, ptr %i.af, ptr %i.am, !unpredictable !4 ; 3 uses
  %i.ao = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.al) ; 2 uses
  %i.ap = select i1 %i.ao, ptr %i.an, ptr %i.al, !unpredictable !4
  %i.aq = select i1 %i.ao, ptr %i.al, ptr %i.an, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !alias.scope !2332
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !alias.scope !2332
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !alias.scope !2332
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !alias.scope !2332
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q ; 8 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au) ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.ba = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ay, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az) ; 2 uses
  %i.bb = zext i1 %i.ax to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.bb ; 3 uses
  %i.bd = xor i1 %i.ax, true
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.be ; 4 uses
  %i.bg = select i1 %i.ba, i64 3, i64 2
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.ba, i64 2, i64 3
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.bi ; 3 uses
  %i.bk = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc) ; 3 uses
  %i.bl = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bf) ; 3 uses
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bc, !unpredictable !4
  %i.bn = select i1 %i.bl, ptr %i.bf, ptr %i.bj, !unpredictable !4
  %i.bo = select i1 %i.bl, ptr %i.bh, ptr %i.bf, !unpredictable !4
  %i.bp = select i1 %i.bk, ptr %i.bc, ptr %i.bo, !unpredictable !4 ; 3 uses
  %i.bq = select i1 %i.bk, ptr %i.bf, ptr %i.bh, !unpredictable !4
  %i.br = select i1 %i.bl, ptr %i.bj, ptr %i.bq, !unpredictable !4 ; 3 uses
  %i.bs = tail call fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp) ; 2 uses
  %i.bt = select i1 %i.bs, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.bu = select i1 %i.bs, ptr %i.bp, ptr %i.br, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i64 32, i1 false), !alias.scope !2332
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !2332
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !alias.scope !2332
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !alias.scope !2332
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !alias.scope !2332
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.by, i64 32, i1 false), !alias.scope !2332
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ 4, %bb.c ], [ 1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2332
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !2332
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %i.q, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !2332
  %i.ca = sub nsw i64 %1, %i.q
  %.sroa.4.0..sroa_idx.i.i.i.i47.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i48.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i49.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.sroa.411.0..sroa_idx.i.i.i.i50.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx12.i.i.i.i51.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i52.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.4.0..sroa_idx.i30.i.i.i57.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i31.i.i.i58.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i32.i.i.i59.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.411.0..sroa_idx.i33.i.i.i60.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx12.i34.i.i.i61.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx.i35.i.i.i62.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.4.0..sroa_idx.i20.i.i.i65.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i21.i.i.i66.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i22.i.i.i67.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.411.0..sroa_idx.i23.i.i.i70.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx12.i24.i.i.i71.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.0..sroa_idx.i25.i.i.i72.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.sroa.411.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %.sroa.4.0..sroa_idx.i30.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.0..sroa_idx.i31.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.411.0..sroa_idx.i33.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0..sroa_idx12.i34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.7.0..sroa_idx.i35.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.4.0..sroa_idx.i20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.0..sroa_idx.i21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0..sroa_idx.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %.sroa.411.0..sroa_idx.i23.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx12.i24.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7.0..sroa_idx.i25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.08.110.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %bb.f

.loopexit4.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h92305a834f21799aE.exit.i, %bb.f
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit4.i, %bb.e
  %.not.i.i = phi i1 [ false, %bb.e ], [ true, %.loopexit4.i ]
  %i.cb = phi i64 [ 0, %bb.e ], [ 1, %.loopexit4.i ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.525.0..sroa_idx.i, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !2333, !noalias !2332, !noundef !4 ; 3 uses
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.cd ; 4 uses
  %i.cg = icmp eq i64 %i.cd, 0
  %.sroa.07.0.i = select i1 %i.cg, i64 %i.q, i64 %i.ca ; 2 uses
  %i.ch = icmp ult i64 %.sroa.0.0.i, %.sroa.07.0.i
  br i1 %i.ch, label %.noexc73.i, label %.loopexit4.i

bb.g:                                             ; preds = %.loopexit4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2332
  %i.ci = add nsw i64 %1, -1                      ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.ci
  %i.cl = getelementptr [32 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 -32
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.noexc30.i
  %i.cn = getelementptr i8, ptr %i.cx, i64 32     ; 2 uses
  %i.co = getelementptr i8, ptr %i.cw, i64 32
  %i.cp = and i64 %1, 1
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.noexc30.i, %bb.g
  %.sroa.0.010.i.i = phi ptr [ %i.cu, %.noexc30.i ], [ %0, %bb.g ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.cr, %.noexc30.i ], [ 0, %bb.g ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.o, %bb.g ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.noexc30.i ], [ %i.cl, %bb.g ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cx, %.noexc30.i ], [ %i.cm, %bb.g ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.cw, %.noexc30.i ], [ %i.ck, %bb.g ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cy, %.noexc30.i ], [ %i.cj, %bb.g ] ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.cs = invoke fastcc noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd97d1341b45e1ac6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.011.07.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.06.08.i.i)
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6shared9smallsort18small_sort_general17hc3d0aac108d5aff4E:bb.a
  %.sroa.0.0.i54.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i54.1.i34, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.1.i34, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.1.i, i64 56, i1 false), !alias.scope !2406, !noalias !2403
  %i.eo = icmp eq ptr %.sroa.0.0.i54.1.i, %i.eb
  br i1 %i.eo, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i54.1.i34 = phi ptr [ %.sroa.0.0.i54.1.i, %bb.g ], [ %.sroa.0.0.i54.1.i32, %bb.f ] ; 5 uses
  %.sroa.5.0.i.1.i33 = phi ptr [ %.sroa.0.0.i54.1.i34, %bb.g ], [ %i.ee, %bb.f ] ; 3 uses
  %i.ep = getelementptr i8, ptr %.sroa.5.0.i.1.i33, i64 -72
  %.val9.i55.1.i = load i64, ptr %i.ep, align 8, !alias.scope !2406, !noalias !2403, !noundef !4 ; 2 uses
  %i.eq = getelementptr i8, ptr %.sroa.5.0.i.1.i33, i64 -64
  %.val10.i56.1.i = load i32, ptr %i.eq, align 8, !alias.scope !2406, !noalias !2403
  %i.er = icmp eq i64 %.val11.i50.1.i, %.val9.i55.1.i
  %i.es = icmp ult i32 %.val12.i51.1.i, %.val10.i56.1.i
  %i.et = icmp ult i64 %.val11.i50.1.i, %.val9.i55.1.i
  %i.eu = select i1 %i.er, i1 %i.es, i1 %i.et
  br i1 %i.eu, label %bb.g, label %._crit_edge37

._crit_edge37:                                    ; preds = %bb.g, %.lr.ph36, %bb.f
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.ee, %bb.f ], [ %.sroa.0.0.i54.1.i34, %bb.g ], [ %.sroa.5.0.i.1.i33, %.lr.ph36 ] ; 3 uses
  %.sroa.0.0.i54.lcssa.1.i = phi ptr [ %i.eb, %bb.f ], [ %i.eb, %bb.g ], [ %.sroa.0.0.i54.1.i34, %.lr.ph36 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i54.lcssa.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 40, i1 false), !alias.scope !2408
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -16
  store i64 %.val11.i50.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2406, !noalias !2409
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i32 %.val12.i51.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !2406, !noalias !2409
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -4
  store i32 %.sroa.611.0.copyload.i.1.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !2406, !noalias !2409
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.1.i: ; preds = %._crit_edge37, %.lr.ph.1.i
  %i.ev = icmp ult i64 %.sroa.08.110.1.i, %i.dy   ; 2 uses
  %i.ew = zext i1 %i.ev to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.ew
  br i1 %i.ev, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.1.i, %.loopexit.i
  %i.ex = add nsw i64 %1, -1                      ; 2 uses
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.eb, i64 -56
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.fb = getelementptr i8, ptr %i.fz, i64 56     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fy, i64 56
  %i.fd = and i64 %1, 1
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.i, label %bb.h

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ff, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.eb, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.fz, %.lr.ph.i.i ], [ %i.fa, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fy, %.lr.ph.i.i ], [ %i.ez, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ga, %.lr.ph.i.i ], [ %i.ey, %.loopexit.1.i ] ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.fg = getelementptr i8, ptr %.sroa.011.07.i.i, i64 40
  %.sroa.011.0.val.i.i = load i64, ptr %i.fg, align 8, !alias.scope !2414, !noalias !2403, !noundef !4 ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.011.07.i.i, i64 48
  %.sroa.011.0.val24.i.i = load i32, ptr %i.fh, align 8, !alias.scope !2414, !noalias !2403
  %i.fi = getelementptr i8, ptr %.sroa.06.08.i.i, i64 40
  %.sroa.06.0.val.i.i = load i64, ptr %i.fi, align 8, !alias.scope !2414, !noalias !2403, !noundef !4 ; 2 uses
  %i.fj = getelementptr i8, ptr %.sroa.06.08.i.i, i64 48
  %.sroa.06.0.val25.i.i = load i32, ptr %i.fj, align 8, !alias.scope !2414, !noalias !2403
  %i.fk = icmp eq i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fl = icmp ult i32 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.fm = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fn = select i1 %i.fk, i1 %i.fl, i1 %i.fm     ; 3 uses
  %..i23.i.i = select i1 %i.fn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i23.i.i, i64 56, i1 false), !alias.scope !2408, !noalias !2417
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fn, i64 56, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.fn, i64 0, i64 56
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 56 ; 2 uses
  %i.fp = getelementptr i8, ptr %.sroa.017.05.i.i, i64 40
  %.sroa.017.0.val.i.i = load i64, ptr %i.fp, align 8, !alias.scope !2414, !noalias !2403, !noundef !4 ; 2 uses
  %i.fq = getelementptr i8, ptr %.sroa.017.05.i.i, i64 48
  %.sroa.017.0.val26.i.i = load i32, ptr %i.fq, align 8, !alias.scope !2414, !noalias !2403
  %i.fr = getelementptr i8, ptr %.sroa.015.06.i.i, i64 40
  %.sroa.015.0.val.i.i = load i64, ptr %i.fr, align 8, !alias.scope !2414, !noalias !2403, !noundef !4 ; 2 uses
  %i.fs = getelementptr i8, ptr %.sroa.015.06.i.i, i64 48
  %.sroa.015.0.val27.i.i = load i32, ptr %i.fs, align 8, !alias.scope !2414, !noalias !2403
  %i.ft = icmp eq i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fu = icmp ult i32 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.fv = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fw = select i1 %i.ft, i1 %i.fu, i1 %i.fv     ; 3 uses
  %..i.i.i = select i1 %i.fw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fx = xor i1 %i.fw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(56) %..i.i.i, i64 56, i1 false), !alias.scope !2408, !noalias !2421
  %.neg.i.i.i = sext i1 %i.fx to i64
  %i.fy = getelementptr [56 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.fw to i64
  %i.fz = getelementptr [56 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %i.ff, %i.c
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.fb ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fo, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.0..sroa.011.0.i.i, i64 56, i1 false), !alias.scope !2408
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 56, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 56
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.h ]
  %i.gb = icmp ne ptr %.sroa.06.1.i.i, %i.fb
  %i.gc = icmp ne ptr %.sroa.011.1.i.i, %i.fc
  %or.cond.i.i = select i1 %i.gb, i1 true, i1 %i.gc, !prof !19
  br i1 %or.cond.i.i, label %bb.j, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1daca740b90eb2f8E.exit, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.gd = landingpad { ptr, i32 }
          cleanup
  %i.ge = mul nuw nsw i64 %1, 56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.ge, i1 false), !alias.scope !2408, !noalias !2425
  resume { ptr, i32 } %i.gd

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.08.09.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.08.09.i, 56
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(56) %i.gf, i64 56, i1 false), !alias.scope !2408
  %i.gh = getelementptr i8, ptr %i.gg, i64 40
  %.val11.i50.i = load i64, ptr %i.gh, align 8, !alias.scope !2406, !noalias !2403, !noundef !4 ; 5 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 48
  %.val12.i51.i = load i32, ptr %i.gi, align 8, !alias.scope !2406, !noalias !2403 ; 3 uses
  %i.gj = getelementptr i8, ptr %i.gg, i64 -16
  %.val13.i52.i = load i64, ptr %i.gj, align 8, !alias.scope !2406, !noalias !2403, !noundef !4 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gg, i64 -8
  %.val14.i53.i = load i32, ptr %i.gk, align 8, !alias.scope !2406, !noalias !2403
  %i.gl = icmp eq i64 %.val11.i50.i, %.val13.i52.i
  %i.gm = icmp ult i32 %.val12.i51.i, %.val14.i53.i
  %i.gn = icmp ult i64 %.val11.i50.i, %.val13.i52.i
  %i.go = select i1 %i.gl, i1 %i.gm, i1 %i.gn
  br i1 %i.go, label %bb.l, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  %.sroa.611.0.copyload.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i.i, align 4, !alias.scope !2406, !noalias !2403
  %.sroa.0.0.i54.i25 = getelementptr inbounds i8, ptr %i.gg, i64 -56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.gg, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i25, i64 56, i1 false), !alias.scope !2406, !noalias !2403
  %i.gp = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.gp, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.i54.i = getelementptr inbounds i8, ptr %.sroa.0.0.i54.i27, i64 -56 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i27, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i54.i, i64 56, i1 false), !alias.scope !2406, !noalias !2403
  %i.gq = icmp eq ptr %.sroa.0.0.i54.i, %i.a
  br i1 %i.gq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i54.i27 = phi ptr [ %.sroa.0.0.i54.i, %bb.m ], [ %.sroa.0.0.i54.i25, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i26 = phi ptr [ %.sroa.0.0.i54.i27, %bb.m ], [ %i.gg, %bb.l ] ; 3 uses
  %i.gr = getelementptr i8, ptr %.sroa.5.0.i.i26, i64 -72
  %.val9.i55.i = load i64, ptr %i.gr, align 8, !alias.scope !2406, !noalias !2403, !noundef !4 ; 2 uses
  %i.gs = getelementptr i8, ptr %.sroa.5.0.i.i26, i64 -64
  %.val10.i56.i = load i32, ptr %i.gs, align 8, !alias.scope !2406, !noalias !2403
  %i.gt = icmp eq i64 %.val11.i50.i, %.val9.i55.i
  %i.gu = icmp ult i32 %.val12.i51.i, %.val10.i56.i
  %i.gv = icmp ult i64 %.val11.i50.i, %.val9.i55.i
  %i.gw = select i1 %i.gt, i1 %i.gu, i1 %i.gv
  br i1 %i.gw, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.gg, %bb.l ], [ %.sroa.0.0.i54.i27, %bb.m ], [ %.sroa.5.0.i.i26, %.lr.ph ] ; 3 uses
  %.sroa.0.0.i54.lcssa.i = phi ptr [ %i.a, %bb.l ], [ %i.a, %bb.m ], [ %.sroa.0.0.i54.i27, %.lr.ph ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i54.lcssa.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gf, i64 40, i1 false), !alias.scope !2408
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -16
  store i64 %.val11.i50.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2406, !noalias !2409
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i32 %.val12.i51.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !2406, !noalias !2409
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -4
  store i32 %.sroa.611.0.copyload.i.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !2406, !noalias !2409
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb3bb0afc83d5845eE.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gx = icmp samesign ult i64 %.sroa.08.110.i, %i.c ; 2 uses
  %i.gy = zext i1 %i.gx to i64
  %.sroa.08.1.i = add nuw nsw i64 %.sroa.08.110.i, %i.gy
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1daca740b90eb2f8E.exit: ; preds = %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1700d57cf8f81e8aE(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [48 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit
  %.sroa.0.05 = phi ptr [ %i.k, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit ], [ %i.c, %.lr.ph.preheader ] ; 9 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 48
  %.val9.i = load i32, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val10.i = load i32, ptr %i.e, align 8, !noundef !4
  %i.f = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.f, label %bb.d, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.05, i64 48, i1 false)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 52
  %.sroa.59.0.copyload.i = load i32, ptr %.sroa.59.0..sroa_idx.i, align 4
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i8, i64 56, i1 false)
  %i.g = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.g, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i, i64 56, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.h, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.5.0.i9, i64 -64
  %.val8.i = load i32, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i, i64 48, i1 false), !noalias !2430
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i32 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2430
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -4
  store i32 %.sroa.59.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !2430
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17hb62c38ab57b94472E.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h239ee0fcd5f2e657E(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [40 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit
  %.sroa.0.05 = phi ptr [ %i.k, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit ], [ %i.c, %.lr.ph.preheader ] ; 9 uses
  %i.d = getelementptr i8, ptr %.sroa.0.05, i64 40
  %.val9.i = load i64, ptr %i.d, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 -16
  %.val10.i = load i64, ptr %i.e, align 8, !noundef !4
  %i.f = icmp ult i64 %.val9.i, %.val10.i
  br i1 %i.f, label %bb.d, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.05, i64 40, i1 false)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 48
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8
  %.sroa.0.0.i8 = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i8, i64 56, i1 false)
  %i.g = icmp eq ptr %.sroa.0.0.i8, %0
  br i1 %i.g, label %._crit_edge13, label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph12
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.0.i10, i64 -56 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.0.i, i64 56, i1 false)
  %i.h = icmp eq ptr %.sroa.0.0.i, %0
  br i1 %i.h, label %._crit_edge13, label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i10 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %.sroa.0.0.i8, %bb.d ] ; 5 uses
  %.sroa.5.0.i9 = phi ptr [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.0.05, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.5.0.i9, i64 -72
  %.val8.i = load i64, ptr %i.i, align 8, !noundef !4
  %i.j = icmp ult i64 %.val9.i, %.val8.i
  br i1 %i.j, label %bb.e, label %._crit_edge13

._crit_edge13:                                    ; preds = %bb.e, %.lr.ph12, %bb.d
  %.sroa.5.0.i.lcssa = phi ptr [ %.sroa.0.05, %bb.d ], [ %.sroa.0.0.i10, %bb.e ], [ %.sroa.5.0.i9, %.lr.ph12 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i10, %.lr.ph12 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i.lcssa, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i, i64 40, i1 false), !noalias !2435
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -16
  store i64 %.val9.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2435
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.lcssa, i64 -8
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !2435
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0c22ec019fae6c40E.exit: ; preds = %.lr.ph, %._crit_edge13
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h2c14caf2fcb4ab91E(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %.not6 = icmp samesign eq i64 %2, %1
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit
  %.sroa.0.07 = phi ptr [ %i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.07, i64 -4 ; 3 uses
  %.val9.i = load float, ptr %.sroa.0.07, align 4, !noundef !4 ; 6 uses
  %.val10.i = load float, ptr %i.d, align 4, !noundef !4 ; 3 uses
  %brmerge.not.i.i = fcmp uno float %.val9.i, %.val10.i
  br i1 %brmerge.not.i.i, label %bb.d, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i", !prof !1737

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i": ; preds = %.lr.ph
  %.mux.i.i = fcmp olt float %.val9.i, %.val10.i
  br i1 %.mux.i.i, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h3b085e403fa5d43fE.exit

.preheader.preheader:                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i"
  store float %.val10.i, ptr %.sroa.0.07, align 4
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %._crit_edge23, label %.lr.ph22

.preheader:                                       ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort8unstable9quicksort9quicksort17h1d91a4cab1aa2701E:bb.a
  %.idx177 = shl nuw nsw i64 %.sroa.08.09.1.i.i, 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx177 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !alias.scope !4845
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -16 ; 3 uses
  %.val11.i56.1.i.i = load i32, ptr %i.ds, align 8, !alias.scope !4842, !noalias !4844, !noundef !4 ; 5 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 8
  %.val12.i57.1.i.i = load i64, ptr %i.du, align 8, !alias.scope !4842, !noalias !4844 ; 3 uses
  %.val13.i58.1.i.i = load i32, ptr %i.dt, align 8, !alias.scope !4842, !noalias !4844, !noundef !4 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.ds, i64 -8
  %.val14.i59.1.i.i = load i64, ptr %i.dv, align 8, !alias.scope !4842, !noalias !4844
  %i.dw = icmp eq i32 %.val11.i56.1.i.i, %.val13.i58.1.i.i
  %i.dx = icmp ult i32 %.val11.i56.1.i.i, %.val13.i58.1.i.i
  %i.dy = icmp slt i64 %.val12.i57.1.i.i, %.val14.i59.1.i.i
  %.sroa.0.0.i.i.i60.1.i.i = select i1 %i.dw, i1 %i.dy, i1 %i.dx
  br i1 %.sroa.0.0.i.i.i60.1.i.i, label %.preheader.1.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.1.i.i

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !alias.scope !4842, !noalias !4844
  %i.dz = icmp eq i64 %.sroa.08.09.1.i.i, 1
  br i1 %i.dz, label %._crit_edge174, label %.lr.ph173

.preheader.1.i.i:                                 ; preds = %.lr.ph173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i61.1.i.i172, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !4842, !noalias !4844
  %i.ea = icmp eq ptr %i.eb, %i.dp
  br i1 %i.ea, label %._crit_edge174, label %.lr.ph173

.lr.ph173:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i61.1.i.i172 = phi ptr [ %i.eb, %.preheader.1.i.i ], [ %i.dt, %.preheader.1.i.i.preheader ] ; 4 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i61.1.i.i172, i64 -16 ; 4 uses
  %.val9.i62.1.i.i = load i32, ptr %i.eb, align 4, !alias.scope !4842, !noalias !4844, !noundef !4 ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.0.0.i61.1.i.i172, i64 -8
  %.val10.i63.1.i.i = load i64, ptr %i.ec, align 8, !alias.scope !4842, !noalias !4844
  %i.ed = icmp eq i32 %.val11.i56.1.i.i, %.val9.i62.1.i.i
  %i.ee = icmp ult i32 %.val11.i56.1.i.i, %.val9.i62.1.i.i
  %i.ef = icmp slt i64 %.val12.i57.1.i.i, %.val10.i63.1.i.i
  %.sroa.0.0.i.i15.i.1.i.i = select i1 %i.ed, i1 %i.ef, i1 %i.ee
  br i1 %.sroa.0.0.i.i15.i.1.i.i, label %.preheader.1.i.i, label %._crit_edge174

._crit_edge174:                                   ; preds = %.preheader.1.i.i, %.lr.ph173, %.preheader.1.i.i.preheader
  %.sroa.0.0.i61.lcssa.1.i.i = phi ptr [ %i.dp, %.preheader.1.i.i.preheader ], [ %i.dp, %.preheader.1.i.i ], [ %.sroa.0.0.i61.1.i.i172, %.lr.ph173 ] ; 2 uses
  store i32 %.val11.i56.1.i.i, ptr %.sroa.0.0.i61.lcssa.1.i.i, align 8, !alias.scope !4842, !noalias !4846
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61.lcssa.1.i.i, i64 8
  store i64 %.val12.i57.1.i.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !4842, !noalias !4846
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.1.i.i: ; preds = %._crit_edge174, %.lr.ph.1.i.i
  %i.eg = icmp ult i64 %.sroa.08.110.1.i.i, %i.dm ; 2 uses
  %i.eh = zext i1 %i.eg to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.110.1.i.i, %i.eh
  br i1 %i.eg, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.1.i.i, %.loopexit.i.i
  %i.ei = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.dp, i64 -16
  br label %.lr.ph.i.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.18.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  %i.em = getelementptr i8, ptr %i.fe, i64 16     ; 2 uses
  %i.en = getelementptr i8, ptr %i.fd, i64 16
  %i.eo = and i64 %.sroa.16.0.lcssa, 1
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.i, label %bb.h

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.loopexit.1.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i ], [ %.sroa.0.0.lcssa, %.loopexit.1.i.i ] ; 2 uses
  %.sroa.04.09.i.i.i = phi i64 [ %i.eq, %.lr.ph.i.i.i ], [ 0, %.loopexit.1.i.i ]
  %.sroa.06.08.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.e, %.loopexit.1.i.i ] ; 4 uses
  %.sroa.011.07.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i.i ], [ %i.dp, %.loopexit.1.i.i ] ; 4 uses
  %.sroa.015.06.i.i.i = phi ptr [ %i.fe, %.lr.ph.i.i.i ], [ %i.el, %.loopexit.1.i.i ] ; 4 uses
  %.sroa.017.05.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i ], [ %i.ek, %.loopexit.1.i.i ] ; 4 uses
  %.sroa.019.04.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i ], [ %i.ej, %.loopexit.1.i.i ] ; 2 uses
  %i.eq = add nuw nsw i64 %.sroa.04.09.i.i.i, 1   ; 2 uses
  %.sroa.011.0.val.i.i.i = load i32, ptr %.sroa.011.07.i.i.i, align 4, !alias.scope !4851, !noalias !4844, !noundef !4 ; 2 uses
  %i.er = getelementptr i8, ptr %.sroa.011.07.i.i.i, i64 8
  %.sroa.011.0.val24.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !4851, !noalias !4844
  %.sroa.06.0.val.i.i.i = load i32, ptr %.sroa.06.08.i.i.i, align 4, !alias.scope !4851, !noalias !4844, !noundef !4 ; 2 uses
  %i.es = getelementptr i8, ptr %.sroa.06.08.i.i.i, i64 8
  %.sroa.06.0.val25.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !4851, !noalias !4844
  %i.et = icmp eq i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i
  %i.eu = icmp ult i32 %.sroa.011.0.val.i.i.i, %.sroa.06.0.val.i.i.i
  %i.ev = icmp slt i64 %.sroa.011.0.val24.i.i.i, %.sroa.06.0.val25.i.i.i
  %.sroa.0.0.i.i.i55.i.i = select i1 %i.et, i1 %i.ev, i1 %i.eu ; 3 uses
  %..i23.i.i.i = select i1 %.sroa.0.0.i.i.i55.i.i, ptr %.sroa.011.07.i.i.i, ptr %.sroa.06.08.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.i.i, i64 16, i1 false), !alias.scope !4845, !noalias !4854
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i.i, i64 16, i64 0
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i.i, i64 0, i64 16
  %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16 ; 2 uses
  %.sroa.017.0.val.i.i.i = load i32, ptr %.sroa.017.05.i.i.i, align 4, !alias.scope !4851, !noalias !4844, !noundef !4 ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.017.05.i.i.i, i64 8
  %.sroa.017.0.val26.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !4851, !noalias !4844
  %.sroa.015.0.val.i.i.i = load i32, ptr %.sroa.015.06.i.i.i, align 4, !alias.scope !4851, !noalias !4844, !noundef !4 ; 2 uses
  %i.ey = getelementptr i8, ptr %.sroa.015.06.i.i.i, i64 8
  %.sroa.015.0.val27.i.i.i = load i64, ptr %i.ey, align 8, !alias.scope !4851, !noalias !4844
  %i.ez = icmp eq i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i
  %i.fa = icmp ult i32 %.sroa.017.0.val.i.i.i, %.sroa.015.0.val.i.i.i
  %i.fb = icmp slt i64 %.sroa.017.0.val26.i.i.i, %.sroa.015.0.val27.i.i.i
  %.sroa.0.0.i.i28.i.i.i = select i1 %i.ez, i1 %i.fb, i1 %i.fa ; 3 uses
  %..i.i.i.i = select i1 %.sroa.0.0.i.i28.i.i.i, ptr %.sroa.015.06.i.i.i, ptr %.sroa.017.05.i.i.i
  %i.fc = xor i1 %.sroa.0.0.i.i28.i.i.i, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i.i, i64 16, i1 false), !alias.scope !4845, !noalias !4858
  %.neg.i.i.i.i = sext i1 %i.fc to i64
  %i.fd = getelementptr [16 x i8], ptr %.sroa.017.05.i.i.i, i64 %.neg.i.i.i.i ; 2 uses
  %.neg15.i.i.i.i = sext i1 %.sroa.0.0.i.i28.i.i.i to i64
  %i.fe = getelementptr [16 x i8], ptr %.sroa.015.06.i.i.i, i64 %.neg15.i.i.i.i ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.019.04.i.i.i, i64 -16
  %exitcond.not.i.i.i = icmp eq i64 %i.eq, %i.j
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %.not.i = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %i.em ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i.i = select i1 %.not.i, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i.i, i64 16, i1 false), !alias.scope !4845
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 16, i64 0
  %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx = select i1 %.not.i, i64 0, i64 16
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i
  %.sroa.011.1.i.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel, %bb.h ]
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i.i ], [ %.sroa.sel16.idx.i.sroa.sel.idx.sroa.sel, %bb.h ]
  %i.fg = icmp ne ptr %.sroa.06.1.i.i.i, %i.em
  %i.fh = icmp ne ptr %.sroa.011.1.i.i.i, %i.en
  %or.cond.i.i.i = select i1 %i.fg, i1 true, i1 %i.fh, !prof !19
  br i1 %or.cond.i.i.i, label %bb.j, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h8b5a8fb8c09d9ea0E.exit, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46
          to label %.noexc.i.i unwind label %bb.k

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.fj, i1 false), !alias.scope !4845, !noalias !4862
  resume { ptr, i32 } %i.fi

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.110.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i ], [ %.sroa.08.18.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.09.i.i = phi i64 [ %.sroa.08.110.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.09.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.09.i.i, 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, i64 16, i1 false), !alias.scope !4845
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -16 ; 3 uses
  %.val11.i56.i.i = load i32, ptr %i.fl, align 8, !alias.scope !4842, !noalias !4844, !noundef !4 ; 5 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 8
  %.val12.i57.i.i = load i64, ptr %i.fn, align 8, !alias.scope !4842, !noalias !4844 ; 3 uses
  %.val13.i58.i.i = load i32, ptr %i.fm, align 8, !alias.scope !4842, !noalias !4844, !noundef !4 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fl, i64 -8
  %.val14.i59.i.i = load i64, ptr %i.fo, align 8, !alias.scope !4842, !noalias !4844
  %i.fp = icmp eq i32 %.val11.i56.i.i, %.val13.i58.i.i
  %i.fq = icmp ult i32 %.val11.i56.i.i, %.val13.i58.i.i
  %i.fr = icmp slt i64 %.val12.i57.i.i, %.val14.i59.i.i
  %.sroa.0.0.i.i.i60.i.i = select i1 %i.fp, i1 %i.fr, i1 %i.fq
  br i1 %.sroa.0.0.i.i.i60.i.i, label %.preheader.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !alias.scope !4842, !noalias !4844
  %i.fs = icmp eq i64 %.sroa.08.09.i.i, 1
  br i1 %i.fs, label %._crit_edge169, label %.lr.ph168

.preheader.i.i:                                   ; preds = %.lr.ph168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i61.i.i167, ptr noundef nonnull align 8 dereferenceable(16) %i.fu, i64 16, i1 false), !alias.scope !4842, !noalias !4844
  %i.ft = icmp eq ptr %i.fu, %i.e
  br i1 %i.ft, label %._crit_edge169, label %.lr.ph168

.lr.ph168:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i61.i.i167 = phi ptr [ %i.fu, %.preheader.i.i ], [ %i.fm, %.preheader.i.i.preheader ] ; 4 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i.i167, i64 -16 ; 4 uses
  %.val9.i62.i.i = load i32, ptr %i.fu, align 4, !alias.scope !4842, !noalias !4844, !noundef !4 ; 2 uses
  %i.fv = getelementptr i8, ptr %.sroa.0.0.i61.i.i167, i64 -8
  %.val10.i63.i.i = load i64, ptr %i.fv, align 8, !alias.scope !4842, !noalias !4844
  %i.fw = icmp eq i32 %.val11.i56.i.i, %.val9.i62.i.i
  %i.fx = icmp ult i32 %.val11.i56.i.i, %.val9.i62.i.i
  %i.fy = icmp slt i64 %.val12.i57.i.i, %.val10.i63.i.i
  %.sroa.0.0.i.i15.i.i.i = select i1 %i.fw, i1 %i.fy, i1 %i.fx
  br i1 %.sroa.0.0.i.i15.i.i.i, label %.preheader.i.i, label %._crit_edge169

._crit_edge169:                                   ; preds = %.preheader.i.i, %.lr.ph168, %.preheader.i.i.preheader
  %.sroa.0.0.i61.lcssa.i.i = phi ptr [ %i.e, %.preheader.i.i.preheader ], [ %i.e, %.preheader.i.i ], [ %.sroa.0.0.i61.i.i167, %.lr.ph168 ] ; 2 uses
  store i32 %.val11.i56.i.i, ptr %.sroa.0.0.i61.lcssa.i.i, align 8, !alias.scope !4842, !noalias !4846
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61.lcssa.i.i, i64 8
  store i64 %.val12.i57.i.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !4842, !noalias !4846
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h77183f6f53db260fE.exit.i.i: ; preds = %._crit_edge169, %.lr.ph.i.i
  %i.fz = icmp samesign ult i64 %.sroa.08.110.i.i, %i.j ; 2 uses
  %i.ga = zext i1 %i.fz to i64
  %.sroa.08.1.i.i = add nuw nsw i64 %.sroa.08.110.i.i, %i.ga
  br i1 %i.fz, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h8b5a8fb8c09d9ea0E.exit: ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4836
  br label %bb.o

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.098.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.16.097.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.16.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h8bc180e65d6fa8f0E(ptr noalias noundef nonnull align 8 %.sroa.0.098.lcssa, i64 noundef %.sroa.16.097.lcssa, ptr noalias nonnull align 1 poison)
  br label %bb.o

.lr.ph165:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.028.095164 = phi i32 [ %i.gb, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.025.096163 = phi ptr [ %.sroa.025.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.16.097162 = phi i64 [ %.sroa.16.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.098161 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 33 uses
  %i.gb = add nsw i32 %.sroa.028.095164, -1       ; 3 uses
  %i.gc = lshr i64 %.sroa.16.097162, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.gc, 6
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.gc, 112
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 %.idx2.i ; 4 uses
  %i.gf = icmp ult i64 %.sroa.16.097162, 64
  br i1 %i.gf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph165
  %i.gg = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h00d00da41e5ac78fE(ptr noundef nonnull readonly align 8 %.sroa.0.098161, ptr noundef readonly %i.gd, ptr noundef readonly %i.ge, i64 noundef %i.gc)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit

bb.m:                                             ; preds = %.lr.ph165
  %.val10.i = load i32, ptr %.sroa.0.098161, align 4, !alias.scope !4867, !noundef !4 ; 4 uses
  %i.gh = getelementptr i8, ptr %.sroa.0.098161, i64 8
  %.val11.i = load i64, ptr %i.gh, align 8, !alias.scope !4867 ; 2 uses
  %.val12.i = load i32, ptr %i.gd, align 4, !alias.scope !4867, !noundef !4 ; 4 uses
  %i.gi = getelementptr i8, ptr %i.gd, i64 8
  %.val13.i = load i64, ptr %i.gi, align 8, !alias.scope !4867 ; 2 uses
  %i.gj = icmp eq i32 %.val10.i, %.val12.i
  %i.gk = icmp ult i32 %.val10.i, %.val12.i
  %i.gl = icmp slt i64 %.val11.i, %.val13.i
  %.sroa.0.0.i.i.i = select i1 %i.gj, i1 %i.gl, i1 %i.gk ; 2 uses
  %.val8.i = load i32, ptr %i.ge, align 4, !alias.scope !4867, !noundef !4 ; 4 uses
  %i.gm = getelementptr i8, ptr %i.ge, i64 8
  %.val9.i = load i64, ptr %i.gm, align 8, !alias.scope !4867 ; 2 uses
  %i.gn = icmp eq i32 %.val10.i, %.val8.i
  %i.go = icmp ult i32 %.val10.i, %.val8.i
  %i.gp = icmp slt i64 %.val11.i, %.val9.i
  %.sroa.0.0.i.i14.i = select i1 %i.gn, i1 %i.gp, i1 %i.go
  %i.gq = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i14.i
  br i1 %i.gq, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gr = icmp eq i32 %.val12.i, %.val8.i
  %i.gs = icmp ult i32 %.val12.i, %.val8.i
  %i.gt = icmp slt i64 %.val13.i, %.val9.i
  %.sroa.0.0.i.i15.i = select i1 %i.gr, i1 %i.gt, i1 %i.gs
  %i.gu = xor i1 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i15.i
  %..i.i = select i1 %i.gu, ptr %i.ge, ptr %i.gd
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.sroa.0.0.i.sink.i = phi ptr [ %i.gg, %bb.l ], [ %.sroa.0.098161, %bb.m ], [ %..i.i, %bb.n ]
  %i.gv = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.gw = ptrtoint ptr %.sroa.0.098161 to i64
  %i.gx = sub nuw i64 %i.gv, %i.gw                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.gx, 4
  %i.gy = icmp ult i64 %.sroa.0.0.i, %.sroa.16.097162
  tail call void @llvm.assume(i1 %i.gy)
  %.not = icmp eq ptr %.sroa.025.096163, null
  br i1 %.not, label %bb.p, label %bb.r

bb.o:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h8b5a8fb8c09d9ea0E.exit
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit, %bb.r
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 %i.gx ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.098161, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.098161, ptr noundef nonnull align 8 dereferenceable(16) %i.gz, i64 16, i1 false), !alias.scope !4870
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 16 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4878)
  %i.hb = load i32, ptr %i.ha, align 8, !alias.scope !4880, !noalias !4878, !noundef !4 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 24
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !4880, !noalias !4878, !noundef !4 ; 2 uses
  %i.he = getelementptr [16 x i8], ptr %.sroa.0.098161, i64 %.sroa.16.097162 ; 3 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 -16    ; 2 uses
  %.sroa.15.055.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 32 ; 3 uses
  %i.hg = icmp ult ptr %.sroa.15.055.i.i, %i.hf
  %.val2.i21.pre.pre.i.i = load i32, ptr %.sroa.0.098161, align 8, !alias.scope !4881, !noalias !4875 ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 8
  %.val3.i27.i.i = load i64, ptr %i.hh, align 8, !alias.scope !4881, !noalias !4875 ; 4 uses
  br i1 %i.hg, label %.lr.ph.i.i44, label %.preheader.i.i41

.preheader.i.i41:                                 ; preds = %.lr.ph.i.i44, %bb.p
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.ig, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.034.0.lcssa.i.i = phi ptr [ %i.ha, %bb.p ], [ %i.hz, %.lr.ph.i.i44 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.055.i.i, %bb.p ], [ %.sroa.15.0.i.i, %.lr.ph.i.i44 ] ; 2 uses
  %i.hi = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.he
  br i1 %i.hi, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h65cc55a1a22aa8d8E.exit.i, label %.lr.ph64.i.i

.lr.ph64.i.i:                                     ; preds = %.preheader.i.i41, %.lr.ph64.i.i
  %.sroa.034.163.i.i = phi ptr [ %.sroa.15.162.i.i, %.lr.ph64.i.i ], [ %.sroa.034.0.lcssa.i.i, %.preheader.i.i41 ]
  %.sroa.15.162.i.i = phi ptr [ %i.hq, %.lr.ph64.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i41 ] ; 6 uses
  %.sroa.27.161.i.i = phi i64 [ %i.hp, %.lr.ph64.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i41 ] ; 2 uses
  %.val.i.i.i42 = load i32, ptr %.sroa.15.162.i.i, align 4, !alias.scope !4880, !noalias !4882, !noundef !4 ; 2 uses
  %i.hj = getelementptr i8, ptr %.sroa.15.162.i.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.hj, align 8, !alias.scope !4880, !noalias !4882
  %i.hk = icmp eq i32 %.val.i.i.i42, %.val2.i21.pre.pre.i.i
  %i.hl = icmp ult i32 %.val.i.i.i42, %.val2.i21.pre.pre.i.i
  %i.hm = icmp slt i64 %.val1.i.i.i, %.val3.i27.i.i
  %.sroa.0.0.i.i.i.i.i43 = select i1 %i.hk, i1 %i.hm, i1 %i.hl
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %.sroa.27.161.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.034.163.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !alias.scope !4880, !noalias !4882
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.162.i.i, i64 16, i1 false), !alias.scope !4880, !noalias !4882
  %i.ho = zext i1 %.sroa.0.0.i.i.i.i.i43 to i64
  %i.hp = add i64 %.sroa.27.161.i.i, %i.ho        ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.15.162.i.i, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.he
  br i1 %i.hr, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h65cc55a1a22aa8d8E.exit.i, label %.lr.ph64.i.i

.lr.ph.i.i44:                                     ; preds = %bb.p, %.lr.ph.i.i44
  %.sroa.15.058.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i44 ], [ %.sroa.15.055.i.i, %bb.p ] ; 3 uses
  %.sroa.034.057.i.i = phi ptr [ %i.hz, %.lr.ph.i.i44 ], [ %i.ha, %bb.p ] ; 5 uses
  %.sroa.27.056.i.i = phi i64 [ %i.ig, %.lr.ph.i.i44 ], [ 0, %bb.p ] ; 2 uses
  %.val.i24.i.i = load i32, ptr %.sroa.15.058.i.i, align 4, !alias.scope !4880, !noalias !4885, !noundef !4 ; 2 uses
  %i.hs = getelementptr i8, ptr %.sroa.034.057.i.i, i64 24
  %.val1.i25.i.i = load i64, ptr %i.hs, align 8, !alias.scope !4880, !noalias !4885
  %i.ht = icmp eq i32 %.val.i24.i.i, %.val2.i21.pre.pre.i.i
  %i.hu = icmp ult i32 %.val.i24.i.i, %.val2.i21.pre.pre.i.i
  %i.hv = icmp slt i64 %.val1.i25.i.i, %.val3.i27.i.i
  %.sroa.0.0.i.i.i28.i.i = select i1 %i.ht, i1 %i.hv, i1 %i.hu
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %.sroa.27.056.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.034.057.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i64 16, i1 false), !alias.scope !4880, !noalias !4885
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.058.i.i, i64 16, i1 false), !alias.scope !4880, !noalias !4885
  %i.hx = zext i1 %.sroa.0.0.i.i.i28.i.i to i64
  %i.hy = add i64 %.sroa.27.056.i.i, %i.hx        ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.034.057.i.i, i64 32 ; 4 uses
  %.val.i29.i.i = load i32, ptr %i.hz, align 8, !alias.scope !4880, !noalias !4888, !noundef !4 ; 2 uses
  %i.ia = getelementptr i8, ptr %.sroa.034.057.i.i, i64 40
  %.val1.i30.i.i = load i64, ptr %i.ia, align 8, !alias.scope !4880, !noalias !4888
  %i.ib = icmp eq i32 %.val.i29.i.i, %.val2.i21.pre.pre.i.i
  %i.ic = icmp ult i32 %.val.i29.i.i, %.val2.i21.pre.pre.i.i
  %i.id = icmp slt i64 %.val1.i30.i.i, %.val3.i27.i.i
  %.sroa.0.0.i.i.i33.i.i = select i1 %i.ib, i1 %i.id, i1 %i.ic
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.hy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.058.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i64 16, i1 false), !alias.scope !4880, !noalias !4888
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !alias.scope !4880, !noalias !4888
  %i.if = zext i1 %.sroa.0.0.i.i.i33.i.i to i64
  %i.ig = add i64 %i.hy, %i.if                    ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.034.057.i.i, i64 48 ; 3 uses
  %i.ih = icmp ult ptr %.sroa.15.0.i.i, %i.hf
  br i1 %i.ih, label %.lr.ph.i.i44, label %.preheader.i.i41

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h65cc55a1a22aa8d8E.exit.i: ; preds = %.lr.ph64.i.i, %.preheader.i.i41
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i41 ], [ %i.hp, %.lr.ph64.i.i ] ; 2 uses
  %.sroa.034.1.lcssa.i.i = phi ptr [ %.sroa.034.0.lcssa.i.i, %.preheader.i.i41 ], [ %.sroa.15.162.i.i, %.lr.ph64.i.i ]
  %i.ii = icmp eq i32 %i.hb, %.val2.i21.pre.pre.i.i
  %i.ij = icmp ult i32 %i.hb, %.val2.i21.pre.pre.i.i
  %i.ik = icmp slt i64 %i.hd, %.val3.i27.i.i
  %.sroa.0.0.i.i.i23.i.i = select i1 %i.ii, i1 %i.ik, i1 %i.ij
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %.sroa.27.1.lcssa.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.034.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false), !alias.scope !4880, !noalias !4891
  store i32 %i.hb, ptr %i.il, align 8, !alias.scope !4880, !noalias !4891
  %.sroa.547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 %i.hd, ptr %.sroa.547.0..sroa_idx.i.i, align 8, !alias.scope !4880, !noalias !4891
  %i.im = zext i1 %.sroa.0.0.i.i.i23.i.i to i64
  %i.in = add i64 %.sroa.27.1.lcssa.i.i, %i.im    ; 4 uses
  %.not7.i = icmp ult i64 %i.in, %.sroa.16.097162
  br i1 %.not7.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h8798d9ac673218ecE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h65cc55a1a22aa8d8E.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h8798d9ac673218ecE.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h65cc55a1a22aa8d8E.exit.i
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.098161, i64 %i.in ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.098161, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.098161, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !alias.scope !4894
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = xor i64 %i.in, -1
  %i.ir = add i64 %.sroa.16.097162, %i.iq
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17h1d91a4cab1aa2701E(ptr noalias noundef nonnull align 8 %.sroa.0.098161, i64 noundef %i.in, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %.sroa.025.096163, i32 noundef %i.gb, ptr noalias noundef nonnull align 1 %4)
  br label %.backedge

bb.r:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17h7e0c9ba054b17b58E.exit
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.098161, i64 %i.gx ; 4 uses
  %.sroa.025.0.val = load i32, ptr %.sroa.025.096163, align 4, !noundef !4 ; 2 uses
  %i.it = getelementptr i8, ptr %.sroa.025.096163, i64 8
  %.sroa.025.0.val38 = load i64, ptr %i.it, align 8
  %.val = load i32, ptr %i.is, align 4, !noundef !4 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 8
  %.val39 = load i64, ptr %i.iu, align 8
  %i.iv = icmp eq i32 %.sroa.025.0.val, %.val
  %i.iw = icmp ult i32 %.sroa.025.0.val, %.val
end_hunk_3
