inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN4core5slice4sort8unstable9quicksort9quicksort17hcd5fe314ef21ec7bE:bb.a
  br i1 %i.i, label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h834aac170f1eaccdE.exit, label %bb.b

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
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef nonnull readonly align 8 %.sroa.0.0.lcssa, ptr noundef nonnull %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef readonly %i.p, ptr noundef %i.q)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h3b14c1962289800fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.o, i64 noundef 8, ptr noundef nonnull align 8 %i.e), !noalias !29075
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 128 ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef nonnull readonly %i.r, ptr noundef nonnull %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef readonly %i.u, ptr noundef %i.v)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h3b14c1962289800fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.t, i64 noundef 8, ptr noundef nonnull %i.s), !noalias !29075
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef nonnull align 8 %.sroa.0.0.lcssa, ptr noundef nonnull align 8 %i.e)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h4220fc10ce94a820E(ptr noundef %i.m, ptr noundef %i.n)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa, i64 16, i1 false), !alias.scope !29076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !alias.scope !29076
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i = phi i64 [ 8, %bb.d ], [ 4, %bb.e ], [ 1, %bb.f ] ; 6 uses
  %i.w = sub nsw i64 %.sroa.14.0.lcssa, %i.j      ; 2 uses
  %i.x = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %i.x, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i, %bb.g
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %i.aa = icmp ult i64 %.sroa.0.0.i.i, %i.w
  br i1 %i.aa, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.sroa.08.05.1.i.i
  %.idx32 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx32 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !29076
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 3 uses
  %.val10.i.1.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i.1.i.i = load ptr, ptr %.val9.i.1.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val9.i.1.i.i, i64 8
  %.val1.i.i.i.1.i.i = load i64, ptr %i.ae, align 8, !noalias !29077, !noundef !27 ; 4 uses
  %.val2.i.i.i.1.i.i = load ptr, ptr %.val10.i.1.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27
  %i.af = getelementptr i8, ptr %.val10.i.1.i.i, i64 8
  %.val3.i.i.i.1.i.i = load i64, ptr %i.af, align 8, !noalias !29077, !noundef !27 ; 2 uses
  %i.ag = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i.i.1.i.i
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i.i.1.i.i)
  %i.ah = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !29078, !noalias !29077 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.aj, i64 %i.ag, i64 %i.ai
  %i.ak = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.ak, label %bb.h, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i

bb.h:                                             ; preds = %.lr.ph.1.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !29073, !noalias !29075
  %i.an = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.an, label %._crit_edge28, label %.lr.ph27

bb.i:                                             ; preds = %.lr.ph27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !29073, !noalias !29075
  %i.ao = icmp eq ptr %i.ap, %i.z
  br i1 %i.ao, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i29.1.i.i25 = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i25, i64 -16 ; 4 uses
  %.val8.i.1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val2.i.i13.i.1.i.i = load ptr, ptr %.val8.i.1.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27
  %i.aq = getelementptr i8, ptr %.val8.i.1.i.i, i64 8
  %.val3.i.i14.i.1.i.i = load i64, ptr %i.aq, align 8, !noalias !29077, !noundef !27 ; 2 uses
  %i.ar = sub i64 %.val1.i.i.i.1.i.i, %.val3.i.i14.i.1.i.i
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.1.i.i, i64 %.val3.i.i14.i.1.i.i)
  %i.as = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.1.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !29085, !noalias !29077 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.au, i64 %i.ar, i64 %i.at
  %i.av = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.av, label %bb.i, label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.i, %.lr.ph27, %bb.h
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %i.z, %bb.h ], [ %i.z, %bb.i ], [ %.sroa.0.0.i29.1.i.i25, %.lr.ph27 ] ; 2 uses
  store ptr %.val9.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !29073, !noalias !29092
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !29073, !noalias !29092
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i: ; preds = %._crit_edge28, %.lr.ph.1.i.i
  %i.aw = icmp ult i64 %.sroa.08.16.1.i.i, %i.w   ; 2 uses
  %i.ax = zext i1 %i.aw to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.ax
  br i1 %i.aw, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h3b14c1962289800fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h834aac170f1eaccdE.exit unwind label %bb.j

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i

bb.j:                                             ; preds = %.loopexit.1.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %i.az, i1 false), !alias.scope !29076, !noalias !29097
  resume { ptr, i32 } %i.ay

.lr.ph.i.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !29076
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -16 ; 3 uses
  %.val9.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %.val9.i.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.bd = getelementptr i8, ptr %.val9.i.i.i, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !29077, !noundef !27 ; 4 uses
  %.val2.i.i.i.i.i = load ptr, ptr %.val10.i.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27
  %i.be = getelementptr i8, ptr %.val10.i.i.i, i64 8
  %.val3.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !29077, !noundef !27 ; 2 uses
  %i.bf = sub i64 %.val1.i.i.i.i.i, %.val3.i.i.i.i.i
  %..i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i.i.i.i)
  %i.bg = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i.i.i, i64 %..i.i.i.i.i.i.i.i), !alias.scope !29078, !noalias !29077 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %bb.k, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !29073, !noalias !29075
  %i.bm = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bm, label %._crit_edge21, label %.lr.ph20

bb.l:                                             ; preds = %.lr.ph20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !alias.scope !29073, !noalias !29075
  %i.bn = icmp eq ptr %i.bo, %i.e
  br i1 %i.bn, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.k, %bb.l
  %.sroa.0.0.i29.i.i18 = phi ptr [ %i.bo, %bb.l ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i18, i64 -16 ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !29073, !noalias !29075, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val2.i.i13.i.i.i = load ptr, ptr %.val8.i.i.i, align 8, !noalias !29077, !nonnull !27, !align !242, !noundef !27
  %i.bp = getelementptr i8, ptr %.val8.i.i.i, i64 8
  %.val3.i.i14.i.i.i = load i64, ptr %i.bp, align 8, !noalias !29077, !noundef !27 ; 2 uses
  %i.bq = sub i64 %.val1.i.i.i.i.i, %.val3.i.i14.i.i.i
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i, i64 %.val3.i.i14.i.i.i)
  %i.br = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i, ptr nonnull readonly align 1 %.val2.i.i13.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !29085, !noalias !29077 ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp eq i32 %i.br, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bt, i64 %i.bq, i64 %i.bs
  %i.bu = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bu, label %bb.l, label %._crit_edge21

._crit_edge21:                                    ; preds = %bb.l, %.lr.ph20, %bb.k
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %.sroa.0.0.i29.i.i18, %.lr.ph20 ] ; 2 uses
  store ptr %.val9.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !29073, !noalias !29092
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store ptr %i.bl, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !29073, !noalias !29092
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hee7e70ec79f8cdc1E.exit.i.i: ; preds = %._crit_edge21, %.lr.ph.i.i
  %i.bv = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bw = zext i1 %i.bv to i64
  %.sroa.08.1.i.i = add nuw nsw i64 %.sroa.08.16.i.i, %i.bw
  br i1 %i.bv, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h834aac170f1eaccdE.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !29067
  br label %bb.p

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call fastcc void @_ZN4core5slice4sort8unstable8heapsort8heapsort17hb066b72d55338205E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa)
  br label %bb.p

.lr.ph16:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.06615 = phi i32 [ %i.bx, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.06714 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.sroa.14.06813 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.06912 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 28 uses
  %i.bx = add i32 %.sroa.024.06615, -1            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29102)
  %i.by = lshr i64 %.sroa.14.06813, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.by, 6
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.06912, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw i64 %i.by, 112
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.06912, i64 %.idx2.i ; 3 uses
  %i.cb = icmp ult i64 %.sroa.14.06813, 64
  br i1 %i.cb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph16
  %i.cc = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hf4c7a04d1e9b5d69E(ptr noundef nonnull readonly align 8 %.sroa.0.06912, ptr noundef readonly %i.bz, ptr noundef readonly %i.ca, i64 noundef %i.by)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha434ef2b28215db1E.exit

bb.n:                                             ; preds = %.lr.ph16
  %.val6.i = load ptr, ptr %.sroa.0.06912, align 8, !alias.scope !29102, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val7.i = load ptr, ptr %i.bz, align 8, !alias.scope !29102, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i = load ptr, ptr %.val6.i, align 8, !noalias !29102, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.cd = getelementptr i8, ptr %.val6.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.cd, align 8, !noalias !29102, !noundef !27 ; 4 uses
  %.val2.i.i.i = load ptr, ptr %.val7.i, align 8, !noalias !29102, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val7.i, i64 8
  %.val3.i.i.i = load i64, ptr %i.ce, align 8, !noalias !29102, !noundef !27 ; 4 uses
  %i.cf = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i.i, i64 %..i.i.i.i.i.i), !alias.scope !29105, !noalias !29102 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.ci, i64 %i.cf, i64 %i.ch ; 2 uses
  %.val5.i = load ptr, ptr %i.ca, align 8, !alias.scope !29102, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val2.i.i10.i = load ptr, ptr %.val5.i, align 8, !noalias !29102, !nonnull !27, !align !242, !noundef !27 ; 2 uses
  %i.cj = getelementptr i8, ptr %.val5.i, i64 8
  %.val3.i.i11.i = load i64, ptr %i.cj, align 8, !noalias !29102, !noundef !27 ; 4 uses
  %i.ck = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i12.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.cl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i12.i), !alias.scope !29112, !noalias !29102 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %spec.store.select.i.i.i.i.i13.i = select i1 %i.cn, i64 %i.ck, i64 %i.cm
  %i.co = xor i64 %spec.store.select.i.i.i.i.i13.i, %spec.store.select.i.i.i.i.i.i
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha434ef2b28215db1E.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %..i.i.i.i.i18.i = tail call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.cr = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val2.i.i.i, ptr nonnull readonly align 1 %.val2.i.i10.i, i64 %..i.i.i.i.i18.i), !alias.scope !29119, !noalias !29102 ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp eq i32 %i.cr, 0
  %spec.store.select.i.i.i.i.i19.i = select i1 %i.ct, i64 %i.cq, i64 %i.cs
  %i.cu = xor i64 %spec.store.select.i.i.i.i.i19.i, %spec.store.select.i.i.i.i.i.i
  %i.cv = icmp slt i64 %i.cu, 0
  %..i.i = select i1 %i.cv, ptr %i.ca, ptr %i.bz
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha434ef2b28215db1E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17ha434ef2b28215db1E.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cc, %bb.m ], [ %.sroa.0.06912, %bb.n ], [ %..i.i, %bb.o ]
  %i.cw = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cx = ptrtoint ptr %.sroa.0.06912 to i64
  %i.cy = sub nuw i64 %i.cw, %i.cx                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cy, 4
  %i.cz = icmp ult i64 %.sroa.0.0.i, %.sroa.14.06813
  tail call void @llvm.assume(i1 %i.cz)
  %.not = icmp eq ptr %.sroa.021.06714, null
  br i1 %.not, label %bb.q, label %bb.s

bb.p:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h834aac170f1eaccdE.exit
  ret void

bb.q:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17ha434ef2b28215db1E.exit, %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29126)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.06912, i64 %i.cy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06912, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06912, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !29129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.06912, i64 16 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29135)
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !alias.scope !29137, !noalias !29135
  %i.dd = load ptr, ptr %i.db, align 8, !alias.scope !29137, !noalias !29135, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %i.de = getelementptr [16 x i8], ptr %.sroa.0.06912, i64 %.sroa.14.06813 ; 3 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16    ; 2 uses
  %.sroa.15.066.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06912, i64 32 ; 3 uses
  %i.dg = icmp ult ptr %.sroa.15.066.i.i, %i.df
  %.val1.i20.pre.pre.i.i = load ptr, ptr %.sroa.0.06912, align 8, !alias.scope !29138, !noalias !29132 ; 2 uses
  %.val2.i.i.i23.i.pre8.pre.i = load ptr, ptr %.val1.i20.pre.pre.i.i, align 8, !noalias !29139 ; 4 uses
  %i.dh = getelementptr i8, ptr %.val1.i20.pre.pre.i.i, i64 8
  %.val3.i.i.i33.i.i = load i64, ptr %i.dh, align 8, !noalias !29139 ; 8 uses
  br i1 %i.dg, label %.lr.ph.i.i36, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i.i36, %bb.q
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.eg, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.046.0.lcssa.i.i = phi ptr [ %i.db, %bb.q ], [ %i.dz, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.066.i.i, %bb.q ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.di = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.de
  br i1 %i.di, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hf12c361feaaf9f3fE.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph75.i.i
  %.sroa.046.174.i.i = phi ptr [ %.sroa.15.173.i.i, %.lr.ph75.i.i ], [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ]
  %.sroa.15.173.i.i = phi ptr [ %i.dq, %.lr.ph75.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i ] ; 5 uses
  %.sroa.27.172.i.i = phi i64 [ %i.dp, %.lr.ph75.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ] ; 2 uses
  %.val.i.i.i31 = load ptr, ptr %.sroa.15.173.i.i, align 8, !alias.scope !29137, !noalias !29140, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i.i.i32 = load ptr, ptr %.val.i.i.i31, align 8, !noalias !29143, !nonnull !27, !align !242, !noundef !27
  %i.dj = getelementptr i8, ptr %.val.i.i.i31, i64 8
  %.val1.i.i.i.i.i33 = load i64, ptr %i.dj, align 8, !noalias !29143, !noundef !27 ; 2 uses
  %i.dk = sub i64 %.val1.i.i.i.i.i33, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i.i33, i64 %.val3.i.i.i33.i.i)
  %i.dl = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i.i.i32, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !29144, !noalias !29143 ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp eq i32 %i.dl, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dn, i64 %i.dk, i64 %i.dm
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.172.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.174.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !alias.scope !29137, !noalias !29140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.173.i.i, i64 16, i1 false), !alias.scope !29137, !noalias !29140
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.dp = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.172.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.15.173.i.i, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.de
  br i1 %i.dr, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hf12c361feaaf9f3fE.exit.i, label %.lr.ph75.i.i

.lr.ph.i.i36:                                     ; preds = %bb.q, %.lr.ph.i.i36
  %.sroa.15.069.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.066.i.i, %bb.q ] ; 3 uses
  %.sroa.046.068.i.i = phi ptr [ %i.dz, %.lr.ph.i.i36 ], [ %i.db, %bb.q ] ; 3 uses
  %.sroa.27.067.i.i = phi i64 [ %i.eg, %.lr.ph.i.i36 ], [ 0, %bb.q ] ; 2 uses
  %.val.i28.i.i = load ptr, ptr %.sroa.15.069.i.i, align 8, !alias.scope !29137, !noalias !29151, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i30.i.i = load ptr, ptr %.val.i28.i.i, align 8, !noalias !29154, !nonnull !27, !align !242, !noundef !27
  %i.ds = getelementptr i8, ptr %.val.i28.i.i, i64 8
  %.val1.i.i.i31.i.i = load i64, ptr %i.ds, align 8, !noalias !29154, !noundef !27 ; 2 uses
  %i.dt = sub i64 %.val1.i.i.i31.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i34.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i31.i.i, i64 %.val3.i.i.i33.i.i)
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i30.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i34.i.i), !alias.scope !29155, !noalias !29154 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i35.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.067.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.068.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i64 16, i1 false), !alias.scope !29137, !noalias !29151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, i64 16, i1 false), !alias.scope !29137, !noalias !29151
  %spec.store.select.i.i.i.i.i.lobit.i36.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i35.i.i, 63
  %i.dy = add i64 %spec.store.select.i.i.i.i.i.lobit.i36.i.i, %.sroa.27.067.i.i ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 32 ; 4 uses
  %.val.i37.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !29137, !noalias !29162, !nonnull !27, !align !241, !noundef !27 ; 2 uses
  %.val.i.i.i39.i.i = load ptr, ptr %.val.i37.i.i, align 8, !noalias !29165, !nonnull !27, !align !242, !noundef !27
  %i.ea = getelementptr i8, ptr %.val.i37.i.i, i64 8
  %.val1.i.i.i40.i.i = load i64, ptr %i.ea, align 8, !noalias !29165, !noundef !27 ; 2 uses
  %i.eb = sub i64 %.val1.i.i.i40.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i43.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i40.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i39.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i43.i.i), !alias.scope !29166, !noalias !29165 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i44.i.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dy ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.069.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !29137, !noalias !29162
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !alias.scope !29137, !noalias !29162
  %spec.store.select.i.i.i.i.i.lobit.i45.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i44.i.i, 63
  %i.eg = add i64 %spec.store.select.i.i.i.i.i.lobit.i45.i.i, %i.dy ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.046.068.i.i, i64 48 ; 3 uses
  %i.eh = icmp ult ptr %.sroa.15.0.i.i, %i.df
  br i1 %i.eh, label %.lr.ph.i.i36, label %.preheader.i.i

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hf12c361feaaf9f3fE.exit.i: ; preds = %.lr.ph75.i.i, %.preheader.i.i
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i ], [ %i.dp, %.lr.ph75.i.i ] ; 2 uses
  %.sroa.046.1.lcssa.i.i = phi ptr [ %.sroa.046.0.lcssa.i.i, %.preheader.i.i ], [ %.sroa.15.173.i.i, %.lr.ph75.i.i ]
  %.val.i.i.i21.i.i = load ptr, ptr %i.dd, align 8, !noalias !29173, !nonnull !27, !align !242, !noundef !27
  %i.ei = getelementptr i8, ptr %i.dd, i64 8
  %.val1.i.i.i22.i.i = load i64, ptr %i.ei, align 8, !noalias !29173, !noundef !27 ; 2 uses
  %i.ej = sub i64 %.val1.i.i.i22.i.i, %.val3.i.i.i33.i.i
  %..i.i.i.i.i.i25.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i22.i.i, i64 %.val3.i.i.i33.i.i)
  %i.ek = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i21.i.i, ptr nonnull readonly align 1 %.val2.i.i.i23.i.pre8.pre.i, i64 %..i.i.i.i.i.i25.i.i), !alias.scope !29176, !noalias !29173 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %spec.store.select.i.i.i.i.i.i26.i.i = select i1 %i.em, i64 %i.ej, i64 %i.el
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.sroa.27.1.lcssa.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.046.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !29137, !noalias !29183
  store <2 x ptr> %i.dc, ptr %i.en, align 8, !alias.scope !29137, !noalias !29183
  %spec.store.select.i.i.i.i.i.lobit.i27.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i26.i.i, 63
  %i.eo = add i64 %spec.store.select.i.i.i.i.i.lobit.i27.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.eo, %.sroa.14.06813
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17hb881ad082052346cE.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17hf12c361feaaf9f3fE.exit.i
  tail call void @llvm.trap()
end_hunk_0
begin_hunk_1_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1c705291774aa160E":bb.a
bb.l:                                             ; preds = %._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr193drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$$RF$bumpalo..Bump$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h46938020eb80161bE"(ptr noalias noundef align 8 dereferenceable(56) %i.d) #67
  br label %common.resume

bb.m:                                             ; preds = %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.i.i", %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.thread.i.i"
  %.sroa.0.0.i6.i.i = phi ptr [ %i.bd, %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.thread.i.i" ], [ %i.be, %"_ZN87_$LT$$RF$bumpalo..Bump$LT$_$GT$$u20$as$u20$allocator_api2..stable..alloc..Allocator$GT$8allocate17h23c66f72464b8762E.exit.i.i" ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i6.i.i, i64 %i.ah ; 10 uses
  %i.bq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 7 uses
  %i.br = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.bs = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.bt = mul nuw nsw i64 %i.bs, 7
  %.sroa.02.0.i.i14 = select i1 %i.br, i64 %i.bq, i64 %i.bt ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 -1, i64 %i.ai, i1 false), !noalias !52500
  store ptr %i.h, ptr %i.d, align 8, !noalias !52493
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !52493
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !52493
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.bp, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !52493
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.bq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52493
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.02.0.i.i14, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52493
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52493
  %i.bu = load ptr, ptr %0, align 8, !alias.scope !52501, !noalias !52502, !nonnull !27, !noundef !27 ; 3 uses
  %i.bv = load i64, ptr %i.i, align 8, !alias.scope !52501, !noalias !52502, !noundef !27 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  %i.bx = ptrtoint ptr %i.bp to i64
  br i1 %i.bw, label %._crit_edge49, label %.preheader33.preheader

.preheader33.preheader:                           ; preds = %bb.m
  %.val631 = load <16 x i8>, ptr %i.bu, align 16
  %i.by = icmp sgt <16 x i8> %.val631, splat (i8 -1)
  %i.bz = bitcast <16 x i1> %i.by to i16
  br label %.preheader33

.preheader33:                                     ; preds = %.preheader33.preheader, %bb.q
  %.sroa.0.048 = phi ptr [ %.sroa.0.1.lcssa, %bb.q ], [ %i.bu, %.preheader33.preheader ] ; 2 uses
  %.sroa.5.047 = phi i64 [ %.sroa.5.1.lcssa, %bb.q ], [ 0, %.preheader33.preheader ] ; 2 uses
  %.sroa.9.046 = phi i64 [ %i.dd, %bb.q ], [ %i.bv, %.preheader33.preheader ]
  %.sroa.13.045 = phi i16 [ %i.db, %bb.q ], [ %i.bz, %.preheader33.preheader ] ; 2 uses
  %.not.i240 = icmp eq i16 %.sroa.13.045, 0
  br i1 %.not.i240, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader33, %.noexc3
  %.sroa.0.142 = phi ptr [ %i.ca, %.noexc3 ], [ %.sroa.0.048, %.preheader33 ] ; 2 uses
  %.sroa.5.141 = phi i64 [ %i.cd, %.noexc3 ], [ %.sroa.5.047, %.preheader33 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.142) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.142, i64 16 ; 3 uses
  %.val532 = load <16 x i8>, ptr %i.ca, align 16
  %i.cb = icmp sgt <16 x i8> %.val532, splat (i8 -1)
  %i.cc = bitcast <16 x i1> %i.cb to i16          ; 2 uses
  %i.cd = add i64 %.sroa.5.141, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.cc, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge49.loopexit:                           ; preds = %bb.q
  %.pre = load i64, ptr %i.i, align 8, !alias.scope !52501, !noalias !52502
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !52503, !noalias !52506
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge49.loopexit ], [ %i.bu, %bb.m ]
  %i.ce = phi i64 [ %.pre, %._crit_edge49.loopexit ], [ 0, %bb.m ]
  %i.cf = sub i64 %.sroa.02.0.i.i14, %i.ce
  store i64 %i.bx, ptr %0, align 8, !alias.scope !52503, !noalias !52506
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.l, align 8, !alias.scope !52508, !noalias !52510 ; 3 uses
  store i64 %i.bq, ptr %i.l, align 8, !alias.scope !52508, !noalias !52510
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !alias.scope !52512, !noalias !52514
  %i.ch = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.ch, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17heab825250f4f1be7E.exit.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i: ; preds = %._crit_edge49
  %i.ci = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 24 ; 2 uses
  %i.cj = add i64 %i.ci, 24
  %i.ck = add i64 %i.ci, 39                       ; 2 uses
  %i.cl = icmp uge i64 %i.ck, %i.cj
  call void @llvm.assume(i1 %i.cl)
  %i.cm = and i64 %i.ck, -16                      ; 3 uses
  %i.cn = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.co = add i64 %i.cn, %i.cm                    ; 3 uses
  %i.cp = icmp uge i64 %i.co, %i.cm
  %i.cq = icmp ult i64 %i.co, 9223372036854775793
  call void @llvm.assume(i1 %i.cp)
  call void @llvm.assume(i1 %i.cq)
  %i.cr = sub nsw i64 0, %i.cm
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.cr
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !noalias !52516, !nonnull !27, !align !241, !noundef !27
  %i.ct = getelementptr i8, ptr %.val.i.i.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ct, align 8, !noalias !52516, !nonnull !27, !noundef !27
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !52516, !nonnull !27, !noundef !27 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cs
  br i1 %i.cw, label %bb.n, label %_ZN9hashbrown3raw13RawTableInner12resize_inner17heab825250f4f1be7E.exit.i

bb.n:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.co
  store ptr %i.cx, ptr %i.cu, align 8, !noalias !52516
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17heab825250f4f1be7E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader33
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.045, %.preheader33 ], [ %i.cc, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.047, %.preheader33 ], [ %i.cd, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.048, %.preheader33 ], [ %i.ca, %.noexc3 ]
  %i.cy = add i16 %.sroa.13.1.lcssa, -1
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = and i16 %i.cy, %.sroa.13.1.lcssa
  %i.dc = add i64 %.sroa.5.1.lcssa, %i.da         ; 2 uses
  %i.dd = add i64 %.sroa.9.046, -1                ; 2 uses
  %i.de = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17habfbec8c5eb4a702E"(ptr noundef nonnull align 1 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dc)
          to label %bb.o unwind label %bb.l       ; 2 uses

bb.o:                                             ; preds = %._crit_edge
  %.sroa.0.07.i.i = and i64 %i.de, %i.bq          ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.df, align 1, !noalias !52523
  %i.dg = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10026

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i15, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.o ]
  %i.di = phi i64 [ %i.dj, %.lr.ph.i.i ], [ 0, %bb.o ]
  %i.dj = add i64 %i.di, 16                       ; 2 uses
  %i.dk = add i64 %i.dj, %.sroa.0.010.i.i
  %.sroa.0.0.i.i15 = and i64 %i.dk, %i.bq         ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.i.i15
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.dl, align 1, !noalias !52523
  %i.dm = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.dn = bitcast <16 x i1> %i.dm to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10027

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.o
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.o ], [ %.sroa.0.0.i.i15, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.dh, %bb.o ], [ %i.dn, %.lr.ph.i.i ]
  %i.do = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.dp = zext nneg i16 %i.do to i64
  %i.dq = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.dp
  %i.dr = and i64 %i.dq, %i.bq                    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noundef !27
  %i.du = icmp sgt i8 %i.dt, -1
  br i1 %i.du, label %bb.p, label %bb.q, !prof !29

bb.p:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.bp, align 16
  %i.dv = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %i.dx = icmp ne i16 %i.dw, 0
  call void @llvm.assume(i1 %i.dx)
  %i.dy = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dw, i1 true)
  %i.dz = zext nneg i16 %i.dy to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.dz, %bb.p ], [ %i.dr, %._crit_edge.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.i5.i.i
  %i.eb = lshr i64 %i.de, 57
  %i.ec = trunc nuw nsw i64 %i.eb to i8           ; 2 uses
  %i.ed = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.ee = and i64 %i.ed, %i.bq
  store i8 %i.ec, ptr %i.ea, align 1
  %i.ef = getelementptr i8, ptr %i.bp, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  store i8 %i.ec, ptr %i.eg, align 1
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !52501, !noalias !52502, !nonnull !27, !noundef !27
  %.neg.i.i = mul i64 %i.dc, -24
  %i.ei = getelementptr i8, ptr %i.eh, i64 %.neg.i.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 -24
  %.neg61.i.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.ek = getelementptr i8, ptr %i.bp, i64 %.neg61.i.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.el, ptr noundef nonnull align 1 dereferenceable(24) %i.ej, i64 24, i1 false)
  %i.em = icmp eq i64 %i.dd, 0
  br i1 %i.em, label %._crit_edge49.loopexit, label %.preheader33

common.resume:                                    ; preds = %bb.u, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.l ], [ %i.fp, %bb.u ]
  resume { ptr, i32 } %common.resume.op

_ZN9hashbrown3raw13RawTableInner12resize_inner17heab825250f4f1be7E.exit.i: ; preds = %bb.n, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i, %._crit_edge49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !52493
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h83fbfee0eae46fd0E.exit

bb.r:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !52526)
  %.val10 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.o, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.en = lshr i64 %i.o, 4                        ; 2 uses
  %i.eo = and i64 %i.o, 15
  %.not9.i.i.i = icmp ne i64 %i.eo, 0
  %i.ep = zext i1 %.not9.i.i.i to i64             ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.en, %i.ep ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %2 = add nuw nsw i64 %i.en, %i.ep
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.eq = icmp eq i64 %2, 1
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.s

._crit_edge.i.unr-lcssa:                          ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ey, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.er = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.er, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.es = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.et = or <2 x i64> %i.es, splat (i64 -9187201950435737472)
  store <2 x i64> %i.et, ptr %i.er, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.eu = icmp ult i64 %i.o, 16
  br i1 %i.eu, label %._crit_edge.thread.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, !prof !6367

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.new
  %.sroa.03.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ey, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.s ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.ev, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.ew = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.ex = or <2 x i64> %i.ew, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ex, ptr %i.ev, align 16
  %i.ey = add i64 %.sroa.03.07.i, 32              ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.fa, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.fb = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.fc = or <2 x i64> %i.fb, splat (i64 -9187201950435737472)
  store <2 x i64> %i.fc, ptr %i.fa, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.s

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.r
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ]
  %.sink9.i = phi i64 [ %i.o, %._crit_edge.thread.i ], [ 16, %._crit_edge.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 1 %.val10, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52529
  %i.fe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.fe, align 8, !noalias !52529
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 24, ptr %i.ff, align 8, !noalias !52529
  store ptr %0, ptr %i.c, align 8, !noalias !52529
  %i.fg = load i64, ptr %i.l, align 8, !alias.scope !52531, !noalias !52532, !noundef !27
  %i.fh = add i64 %i.fg, 1                        ; 2 uses
  %.not = icmp eq i64 %i.fh, 0
  br i1 %.not, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hecc40722617590deE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, %bb.aa
  %.sroa.05.1.i.i51 = phi i64 [ %.sroa.05.1.i.i, %bb.aa ], [ 1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 3 uses
  %.sroa.05.0.i.i50 = phi i64 [ %.sroa.05.1.i.i51, %bb.aa ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 8 uses
  %i.fi = load ptr, ptr %0, align 8, !noalias !52532, !nonnull !27, !noundef !27 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.sroa.05.0.i.i50
  %i.fk = load i8, ptr %i.fj, align 1, !noalias !52532, !noundef !27
  %.not.i.i = icmp eq i8 %i.fk, -128
  br i1 %.not.i.i, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %.lr.ph
  %.neg.i6.i = xor i64 %.sroa.05.0.i.i50, -1
  %.neg10.i.i = mul i64 %.neg.i6.i, 24
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %.neg10.i.i ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %.preheader.preheader, %bb.t
  %i.fo = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17habfbec8c5eb4a702E"(ptr noundef nonnull align 1 %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.05.0.i.i50)
          to label %bb.v unwind label %bb.u, !noalias !52532 ; 3 uses

bb.u:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8b4d77a22756dcb4E"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #67
          to label %common.resume unwind label %bb.ab, !noalias !52532

bb.v:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %.val7 = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 7 uses
  %.val8 = load i64, ptr %i.l, align 8, !noundef !27 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.fo           ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.fq, align 1, !noalias !52533
  %i.fr = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.fs = bitcast <16 x i1> %i.fr to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.fs, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !10026

.lr.ph.i18:                                       ; preds = %bb.v, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i19, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.v ]
  %i.ft = phi i64 [ %i.fu, %.lr.ph.i18 ], [ 0, %bb.v ]
  %i.fu = add i64 %i.ft, 16                       ; 2 uses
  %i.fv = add i64 %i.fu, %.sroa.0.010.i
  %.sroa.0.0.i19 = and i64 %i.fv, %.val8          ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i19
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.fw, align 1, !noalias !52533
  %i.fx = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.fy = bitcast <16 x i1> %i.fx to i16          ; 2 uses
  %.not.i.i20 = icmp eq i16 %i.fy, 0
  br i1 %.not.i.i20, label %.lr.ph.i18, label %._crit_edge.i17, !prof !10027

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.v
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.v ], [ %.sroa.0.0.i19, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.fs, %bb.v ], [ %i.fy, %.lr.ph.i18 ]
  %i.fz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = add i64 %.sroa.0.0.lcssa.i, %i.ga
  %i.gc = and i64 %i.gb, %.val8                   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !noundef !27
  %i.gf = icmp sgt i8 %i.ge, -1
  br i1 %i.gf, label %bb.w, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit, !prof !29

bb.w:                                             ; preds = %._crit_edge.i17
  %.val62.i.i = load <16 x i8>, ptr %.val7, align 16
  %i.gg = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.gh = bitcast <16 x i1> %i.gg to i16          ; 2 uses
  %i.gi = icmp ne i16 %i.gh, 0
  call void @llvm.assume(i1 %i.gi)
  %i.gj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.gh, i1 true)
  %i.gk = zext nneg i16 %i.gj to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit: ; preds = %bb.w, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.gk, %bb.w ], [ %i.gc, %._crit_edge.i17 ] ; 4 uses
  %i.gl = sub i64 %.sroa.05.0.i.i50, %.sroa.0.07.i
  %i.gm = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.gn = xor i64 %i.gm, %i.gl
  %.unshifted.i.i = and i64 %i.gn, %.val8
  %i.go = icmp ult i64 %.unshifted.i.i, 16
  br i1 %i.go, label %bb.x, label %bb.y, !prof !158

bb.x:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %i.gp = lshr i64 %i.fo, 57
  %i.gq = trunc nuw nsw i64 %i.gp to i8           ; 2 uses
  %i.gr = add i64 %.sroa.05.0.i.i50, -16
  %i.gs = and i64 %.val8, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.05.0.i.i50
  store i8 %i.gq, ptr %i.gt, align 1, !noalias !52532
  %i.gu = load ptr, ptr %0, align 8, !noalias !52532, !nonnull !27, !noundef !27
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gs
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  store i8 %i.gq, ptr %i.gw, align 1, !noalias !52532
  br label %bb.aa

bb.y:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %.neg11.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i.i = mul i64 %.neg11.i.i, 24
  %i.gx = getelementptr inbounds i8, ptr %.val7, i64 %.neg12.i.i ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !noalias !52532, !noundef !27
  %i.ha = lshr i64 %i.fo, 57
  %i.hb = trunc nuw nsw i64 %i.ha to i8           ; 2 uses
  %i.hc = add i64 %.sroa.0.0.i5.i, -16
  %i.hd = and i64 %i.hc, %.val8
  store i8 %i.hb, ptr %i.gy, align 1, !noalias !52532
  %i.he = load ptr, ptr %0, align 8, !noalias !52532, !nonnull !27, !noundef !27
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 16
  store i8 %i.hb, ptr %i.hg, align 1, !noalias !52532
  %i.hh = icmp eq i8 %i.gz, -1
  br i1 %i.hh, label %bb.z, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !52536), !noalias !52532
  call void @llvm.experimental.noalias.scope.decl(metadata !52539), !noalias !52532
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.fl, align 1, !alias.scope !52536, !noalias !52541
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.gx, align 1, !alias.scope !52539, !noalias !52542
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.fl, align 1, !alias.scope !52536, !noalias !52541
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.gx, align 1, !alias.scope !52539, !noalias !52542
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52543), !noalias !52532
  call void @llvm.experimental.noalias.scope.decl(metadata !52545), !noalias !52532
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !alias.scope !52543, !noalias !52547
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.hi, align 1, !alias.scope !52545, !noalias !52548
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.fm, align 1, !alias.scope !52543, !noalias !52547
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.hi, align 1, !alias.scope !52545, !noalias !52548
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52549), !noalias !52532
  call void @llvm.experimental.noalias.scope.decl(metadata !52551), !noalias !52532
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.fn, align 1, !alias.scope !52549, !noalias !52553
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.hj, align 1, !alias.scope !52551, !noalias !52554
  store i64 %.sroa.02.0.copyload.i.i.i.2, ptr %i.fn, align 1, !alias.scope !52549, !noalias !52553
end_hunk_1
begin_hunk_2_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha7de3a1059b11432E":bb.a
  %i.y = shl nuw i64 %.sroa.4.0.i.ph7.i, 5        ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.4.0.i.ph7.i, 16   ; 2 uses
  %i.aa = add i64 %i.z, %i.y                      ; 4 uses
  %i.ab = icmp ult i64 %i.aa, %i.y
  %i.ac = icmp ugt i64 %i.aa, 9223372036854775792
  %or.cond.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i", !prof !4065

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i": ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !52562
  %i.ad = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !52562 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !52562
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread

bb.i:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.ag = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.aa), !noalias !52562
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ah = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !52567
  br label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i"
  %i.ai = icmp samesign ult i64 %.sroa.4.0.i.ph7.i, 9
  %i.aj = add nsw i64 %.sroa.4.0.i.ph7.i, -1      ; 6 uses
  %i.ak = lshr i64 %.sroa.4.0.i.ph7.i, 3
  %i.al = mul nuw nsw i64 %i.ak, 7
  %.sroa.02.0.i.i = select i1 %i.ai, i64 %i.aj, i64 %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.y ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.am, i8 -1, i64 %i.z, i1 false), !noalias !52567
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = icmp eq i64 %i.b, 0
  br i1 %i.ao, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.._crit_edge70_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.._crit_edge70_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !52568, !noalias !52571
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge70

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !52573, !noalias !52576, !nonnull !27, !noundef !27 ; 5 uses
  %.val655 = load <16 x i8>, ptr %i.ap, align 16
  %i.aq = icmp sgt <16 x i8> %.val655, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %.val.i.i10 = load i64, ptr %1, align 8, !noalias !52578, !noundef !27
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i11 = load i64, ptr %i.as, align 8, !noalias !52578, !noundef !27
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread: ; preds = %bb.h, %bb.i, %bb.j
  %.pn.i.pn = phi { i64, i64 } [ %i.ah, %bb.j ], [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  %.sroa.7.053 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.m
  %.sroa.038.069 = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %.sroa.038.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.5.068 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.m ] ; 2 uses
  %.sroa.9.067 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.br, %bb.m ]
  %.sroa.13.066 = phi i16 [ %i.ar, %.preheader.lr.ph ], [ %i.bp, %bb.m ] ; 2 uses
  %.not.i261 = icmp eq i16 %.sroa.13.066, 0
  br i1 %.not.i261, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.038.163 = phi ptr [ %i.at, %.noexc3 ], [ %.sroa.038.069, %.preheader ] ; 2 uses
  %.sroa.5.162 = phi i64 [ %i.aw, %.noexc3 ], [ %.sroa.5.068, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.163) ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.038.163, i64 16 ; 3 uses
  %.val556 = load <16 x i8>, ptr %i.at, align 16
  %i.au = icmp sgt <16 x i8> %.val556, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = add i64 %.sroa.5.162, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.av, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge70:                                    ; preds = %bb.m, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.._crit_edge70_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.._crit_edge70_crit_edge ], [ %i.ap, %bb.m ] ; 2 uses
  %i.ax = sub i64 %.sroa.02.0.i.i, %i.b
  store i64 %i.an, ptr %0, align 8, !alias.scope !52568, !noalias !52571
  store i64 %i.aj, ptr %i.d, align 8, !alias.scope !52584, !noalias !52586
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !52588, !noalias !52590
  %i.az = icmp eq i64 %i.e, 0
  br i1 %i.az, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge70
  %i.ba = shl i64 %i.e, 5                         ; 2 uses
  %i.bb = add i64 %i.ba, 32
  %i.bc = add i64 %i.ba, 47                       ; 2 uses
  %i.bd = icmp uge i64 %i.bc, %i.bb
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = and i64 %i.bc, -32                      ; 3 uses
  %i.bf = add i64 %i.e, 17
  %i.bg = add i64 %i.bf, %i.be                    ; 4 uses
  %i.bh = icmp uge i64 %i.bg, %i.be
  %i.bi = icmp ult i64 %i.bg, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bh)
  tail call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit, label %bb.k

bb.k:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bk = sub nsw i64 0, %i.be
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bk
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !52592
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.066, %.preheader ], [ %i.av, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.068, %.preheader ], [ %i.aw, %.noexc3 ] ; 2 uses
  %.sroa.038.1.lcssa = phi ptr [ %.sroa.038.069, %.preheader ], [ %i.at, %.noexc3 ]
  %i.bm = add i16 %.sroa.13.1.lcssa, -1
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = and i16 %i.bm, %.sroa.13.1.lcssa
  %i.bq = add i64 %.sroa.5.1.lcssa, %i.bo         ; 2 uses
  %i.br = add i64 %.sroa.9.067, -1                ; 2 uses
  %i.bs = sub nsw i64 0, %i.bq
  %i.bt = getelementptr inbounds [32 x i8], ptr %i.ap, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32
  %i.bv = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hf988a08338683e41E(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bu), !noalias !52597 ; 2 uses
  %.sroa.0.04.i.i = and i64 %i.bv, %i.aj          ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.bw, align 1, !noalias !52598
  %i.bx = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.by, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10026

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i12, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %._crit_edge ]
  %i.bz = phi i64 [ %i.ca, %.lr.ph.i.i ], [ 0, %._crit_edge ]
  %i.ca = add i64 %i.bz, 16                       ; 2 uses
  %i.cb = add i64 %i.ca, %.sroa.0.07.i.i
  %.sroa.0.0.i.i12 = and i64 %i.cb, %i.aj         ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i.i12
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cc, align 1, !noalias !52598
  %i.cd = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.ce = bitcast <16 x i1> %i.cd to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10027

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %._crit_edge ], [ %.sroa.0.0.i.i12, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.by, %._crit_edge ], [ %i.ce, %.lr.ph.i.i ]
  %i.cf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cg
  %i.ci = and i64 %i.ch, %i.aj                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !27
  %i.cl = icmp sgt i8 %i.ck, -1
  br i1 %i.cl, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.am, align 16
  %i.cm = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.cn = bitcast <16 x i1> %i.cm to i16          ; 2 uses
  %i.co = icmp ne i16 %i.cn, 0
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cn, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.cq, %bb.l ], [ %i.ci, %._crit_edge.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.0.0.i5.i.i
  %i.cs = lshr i64 %i.bv, 57
  %i.ct = trunc nuw nsw i64 %i.cs to i8           ; 2 uses
  %i.cu = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.cv = and i64 %i.cu, %i.aj
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cw = getelementptr i8, ptr %i.am, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  store i8 %i.ct, ptr %i.cx, align 1
  %i.cy = shl i64 %i.bq, 5
  %i.cz = sub nuw nsw i64 -32, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.ap, i64 %i.cz
  %i.db = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.dc = sub nuw nsw i64 -32, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.am, i64 %i.dc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dd, ptr noundef nonnull align 1 dereferenceable(32) %i.da, i64 32, i1 false)
  %i.de = icmp eq i64 %i.br, 0
  br i1 %i.de, label %._crit_edge70, label %.preheader

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52601)
  %.val10.i = load ptr, ptr %0, align 8, !alias.scope !52601 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i13

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  br label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

.lr.ph.i.i13:                                     ; preds = %bb.n
  %i.df = lshr i64 %i.g, 4                        ; 2 uses
  %i.dg = and i64 %i.g, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dg, 0
  %i.dh = zext i1 %.not9.i.i.i.i to i64           ; 2 uses
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.df, %i.dh ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %2 = add nuw nsw i64 %i.df, %i.dh
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.di = icmp eq i64 %2, 1
  br i1 %i.di, label %.epil.preheader, label %.lr.ph.i.i13.new

.lr.ph.i.i13.new:                                 ; preds = %.lr.ph.i.i13
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.o

._crit_edge.i.i14.unr-lcssa:                      ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i14, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i14.unr-lcssa, %.lr.ph.i.i13
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i13 ], [ %i.dr, %._crit_edge.i.i14.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.dj = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dj, align 16, !noalias !52601
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dk = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dl = or <2 x i64> %i.dk, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dl, ptr %i.dj, align 16, !noalias !52601
  br label %._crit_edge.i.i14

._crit_edge.i.i14:                                ; preds = %._crit_edge.i.i14.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 16)
  %.29.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 16)
  %i.dm = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %.val10.i, i64 %.29.i, i1 false), !noalias !52601
  %.val.i.i.i = load i64, ptr %1, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load i64, ptr %i.dn, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i13.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %i.dr, %bb.o ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i13.new ], [ %niter.next.1, %bb.o ]
  %i.do = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.do, align 16, !noalias !52601
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dp = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.dq = or <2 x i64> %i.dp, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dq, ptr %i.do, align 16, !noalias !52601
  %i.dr = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.08.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dt, align 16, !noalias !52601
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.du = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dv = or <2 x i64> %i.du, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dv, ptr %i.dt, align 16, !noalias !52601
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i14.unr-lcssa, label %bb.o

bb.p:                                             ; preds = %bb.x, %._crit_edge.i.i14
  %.sroa.0.17.i = phi i64 [ 1, %._crit_edge.i.i14 ], [ %.sroa.0.1.i, %bb.x ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i14 ], [ %.sroa.0.17.i, %bb.x ] ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.06.i ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !noalias !52601, !noundef !27
  %.not.i15 = icmp eq i8 %i.dx, -128
  br i1 %.not.i15, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.dy = shl i64 %.sroa.0.06.i, 5
  %i.dz = sub nuw nsw i64 -32, %i.dy
  %i.ea = getelementptr inbounds i8, ptr %.val10.i, i64 %i.dz ; 4 uses
  %i.eb = sub nsw i64 0, %.sroa.0.06.i
  %i.ec = getelementptr inbounds [32 x i8], ptr %.val10.i, i64 %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -32
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.w, %bb.q
  %i.ef = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hf988a08338683e41E(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ed), !noalias !52604 ; 3 uses
  %.sroa.0.04.i.i19 = and i64 %i.ef, %i.e         ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.eg, align 1, !noalias !52608
  %i.eh = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.ei, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !10026

.lr.ph.i13.i:                                     ; preds = %bb.r, %.lr.ph.i13.i
  %.sroa.0.07.i.i34 = phi i64 [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ], [ %.sroa.0.04.i.i19, %bb.r ]
  %i.ej = phi i64 [ %i.ek, %.lr.ph.i13.i ], [ 0, %bb.r ]
  %i.ek = add i64 %i.ej, 16                       ; 2 uses
  %i.el = add i64 %i.ek, %.sroa.0.07.i.i34
  %.sroa.0.0.i.i35 = and i64 %i.el, %i.e          ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i.i35
  %.sroa.0.0.copyload.i3.i.i36 = load <16 x i8>, ptr %i.em, align 1, !noalias !52608
  %i.en = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i36, zeroinitializer
  %i.eo = bitcast <16 x i1> %i.en to i16          ; 2 uses
  %.not.not.i.not.i.i37 = icmp eq i16 %i.eo, 0
  br i1 %.not.not.i.not.i.i37, label %.lr.ph.i13.i, label %._crit_edge.i12.i, !prof !10027

._crit_edge.i12.i:                                ; preds = %.lr.ph.i13.i, %bb.r
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %bb.r ], [ %.sroa.0.0.i.i35, %.lr.ph.i13.i ]
  %.lcssa.i.i23 = phi i16 [ %i.ei, %bb.r ], [ %i.eo, %.lr.ph.i13.i ]
  %i.ep = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.eq = zext nneg i16 %i.ep to i64
  %i.er = add i64 %.sroa.0.0.lcssa.i.i22, %i.eq
  %i.es = and i64 %i.er, %i.e                     ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !noalias !52601, !noundef !27
  %i.ev = icmp sgt i8 %i.eu, -1
  br i1 %i.ev, label %bb.s, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !29

bb.s:                                             ; preds = %._crit_edge.i12.i
  %.val62.i.i.i33 = load <16 x i8>, ptr %.val10.i, align 16, !noalias !52601
  %i.ew = icmp slt <16 x i8> %.val62.i.i.i33, zeroinitializer
  %i.ex = bitcast <16 x i1> %i.ew to i16          ; 2 uses
  %i.ey = icmp ne i16 %i.ex, 0
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ex, i1 true)
  %i.fa = zext nneg i16 %i.ez to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.s, %._crit_edge.i12.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fa, %bb.s ], [ %i.es, %._crit_edge.i12.i ] ; 4 uses
  %i.fb = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.fc = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fd = xor i64 %i.fc, %i.fb
  %.unshifted.i = and i64 %i.fd, %i.e
  %i.fe = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fe, label %bb.u, label %bb.t, !prof !158

bb.t:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.ff = shl i64 %.sroa.0.0.i5.i.i24, 5
  %i.fg = sub nuw nsw i64 -32, %i.ff
  %i.fh = getelementptr inbounds i8, ptr %.val10.i, i64 %i.fg ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !52601, !noundef !27
  %i.fk = lshr i64 %i.ef, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fn = and i64 %i.fm, %i.e
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !52601
  %i.fo = getelementptr i8, ptr %.val10.i, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fl, ptr %i.fp, align 1, !noalias !52601
  %i.fq = icmp eq i8 %i.fj, -1
  br i1 %i.fq, label %bb.v, label %bb.w

bb.u:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.fr = lshr i64 %i.ef, 57
  %i.fs = trunc nuw nsw i64 %i.fr to i8           ; 2 uses
  %i.ft = add i64 %.sroa.0.06.i, -16
  %i.fu = and i64 %i.ft, %i.e
  store i8 %i.fs, ptr %i.dw, align 1, !noalias !52601
  %i.fv = getelementptr i8, ptr %.val10.i, i64 %i.fu
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  store i8 %i.fs, ptr %i.fw, align 1, !noalias !52601
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.fx = add i64 %.sroa.0.06.i, -16
  %i.fy = and i64 %i.fx, %i.e
  store i8 -1, ptr %i.dw, align 1, !noalias !52601
  %i.fz = getelementptr i8, ptr %.val10.i, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  store i8 -1, ptr %i.ga, align 1, !noalias !52601
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.fh, ptr noundef nonnull align 1 dereferenceable(32) %i.ea, i64 32, i1 false), !noalias !52601
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.gb = load <2 x i64>, ptr %i.ea, align 1, !alias.scope !52611, !noalias !52601
  %i.gc = load <2 x i64>, ptr %i.fh, align 1, !alias.scope !52615, !noalias !52601
  store <2 x i64> %i.gc, ptr %i.ea, align 1, !alias.scope !52611, !noalias !52601
  store <2 x i64> %i.gb, ptr %i.fh, align 1, !alias.scope !52615, !noalias !52601
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %i.ge = load <2 x i64>, ptr %i.ee, align 1, !alias.scope !52618, !noalias !52601
  %i.gf = load <2 x i64>, ptr %i.gd, align 1, !alias.scope !52621, !noalias !52601
  store <2 x i64> %i.gf, ptr %i.ee, align 1, !alias.scope !52618, !noalias !52601
  store <2 x i64> %i.ge, ptr %i.gd, align 1, !alias.scope !52621, !noalias !52601
  br label %bb.r

bb.x:                                             ; preds = %bb.v, %bb.u, %bb.p
  %i.gg = icmp ult i64 %.sroa.0.17.i, %i.g        ; 2 uses
  %i.gh = zext i1 %i.gg to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gh
  br i1 %i.gg, label %bb.p, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.x, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread
  %i.gi = phi i64 [ 0, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread ], [ %.sroa.03.0.i, %bb.x ]
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gk = sub i64 %i.gi, %i.b
  store i64 %i.gk, ptr %i.gj, align 8, !alias.scope !52601
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit

_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17hc3dacc8bad125e85E.exit: ; preds = %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread, %._crit_edge70, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.k, %bb.c
  %.merged.i = phi i64 [ %i.l, %bb.c ], [ -9223372036854775807, %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit ], [ %.sroa.7.053, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17h2aaf1a79d16794aaE.exit.thread ], [ -9223372036854775807, %._crit_edge70 ], [ -9223372036854775807, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i ], [ -9223372036854775807, %bb.k ]
  ret i64 %.merged.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha827a958180785daE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #43 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
end_hunk_2
begin_hunk_3_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17ha827a958180785daE":bb.a
  %i.v = load i64, ptr %i.u, align 8, !noalias !52632 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noalias !52632 ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52632
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h8d62de1dfa0f4c43E.exit

bb.e:                                             ; preds = %._crit_edge
  %i.y = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a9ba8c8f1831c3dE"(ptr noalias noundef align 8 dereferenceable(56) %i.c) #67
  br label %common.resume

bb.f:                                             ; preds = %bb.c
  %.sroa.753.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.753.0.copyload.i.i = load i64, ptr %.sroa.753.0..sroa_idx.i.i, align 8, !noalias !52632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52632
  store ptr %i.g, ptr %i.c, align 8, !noalias !52632
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 32, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !52632
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !52632
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !52632
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.v, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52632
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.x, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52632
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %.sroa.753.0.copyload.i.i, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !52632
  %i.z = load ptr, ptr %0, align 8, !alias.scope !52634, !noalias !52635, !nonnull !27, !noundef !27 ; 3 uses
  %i.aa = load i64, ptr %i.h, align 8, !alias.scope !52634, !noalias !52635, !noundef !27 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = ptrtoint ptr %i.s to i64
  br i1 %i.ab, label %._crit_edge43, label %.preheader27.preheader

.preheader27.preheader:                           ; preds = %bb.f
  %.val625 = load <16 x i8>, ptr %i.z, align 16
  %i.ad = icmp sgt <16 x i8> %.val625, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.preheader, %bb.j
  %.sroa.0.042 = phi ptr [ %.sroa.0.1.lcssa, %bb.j ], [ %i.z, %.preheader27.preheader ] ; 2 uses
  %.sroa.5.041 = phi i64 [ %.sroa.5.1.lcssa, %bb.j ], [ 0, %.preheader27.preheader ] ; 2 uses
  %.sroa.9.040 = phi i64 [ %i.be, %bb.j ], [ %i.aa, %.preheader27.preheader ]
  %.sroa.13.039 = phi i16 [ %i.bc, %bb.j ], [ %i.ae, %.preheader27.preheader ] ; 2 uses
  %.not.i234 = icmp eq i16 %.sroa.13.039, 0
  br i1 %.not.i234, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader27, %.noexc3
  %.sroa.0.136 = phi ptr [ %i.af, %.noexc3 ], [ %.sroa.0.042, %.preheader27 ] ; 2 uses
  %.sroa.5.135 = phi i64 [ %i.ai, %.noexc3 ], [ %.sroa.5.041, %.preheader27 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.136) ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.136, i64 16 ; 3 uses
  %.val526 = load <16 x i8>, ptr %i.af, align 16
  %i.ag = icmp sgt <16 x i8> %.val526, splat (i8 -1)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %i.ai = add i64 %.sroa.5.135, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ah, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge43.loopexit:                           ; preds = %bb.j
  %.pre = load i64, ptr %i.h, align 8, !alias.scope !52634, !noalias !52635
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !52636, !noalias !52639
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge43

._crit_edge43:                                    ; preds = %._crit_edge43.loopexit, %bb.f
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %._crit_edge43.loopexit ], [ %i.z, %bb.f ] ; 2 uses
  %i.aj = phi i64 [ %.pre, %._crit_edge43.loopexit ], [ 0, %bb.f ]
  %i.ak = sub i64 %i.x, %i.aj
  store i64 %i.ac, ptr %0, align 8, !alias.scope !52636, !noalias !52639
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.k, align 8, !alias.scope !52641, !noalias !52643 ; 3 uses
  store i64 %i.v, ptr %i.k, align 8, !alias.scope !52641, !noalias !52643
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !52645, !noalias !52647
  %i.am = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.am, label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a9ba8c8f1831c3dE.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i: ; preds = %._crit_edge43
  %i.an = shl i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 5 ; 2 uses
  %i.ao = add i64 %i.an, 32
  %i.ap = add i64 %i.an, 47                       ; 2 uses
  %i.aq = icmp uge i64 %i.ap, %i.ao
  call void @llvm.assume(i1 %i.aq)
  %i.ar = and i64 %i.ap, -32                      ; 3 uses
  %i.as = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.at = add i64 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp uge i64 %i.at, %i.ar
  %i.av = icmp ult i64 %i.at, 9223372036854775793
  call void @llvm.assume(i1 %i.au)
  call void @llvm.assume(i1 %i.av)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a9ba8c8f1831c3dE.exit", label %bb.g

bb.g:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i
  %i.ax = sub nsw i64 0, %i.ar
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.ax
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ay, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 16) #65, !noalias !52649
  br label %"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a9ba8c8f1831c3dE.exit"

"_ZN4core3ptr221drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$allocator_api2..stable..alloc..global..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0a9ba8c8f1831c3dE.exit": ; preds = %._crit_edge43, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h15fde8bd5ea39ae7E.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52632
  br label %_ZN9hashbrown3raw13RawTableInner20reserve_rehash_inner17h8d62de1dfa0f4c43E.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader27
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.039, %.preheader27 ], [ %i.ah, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.041, %.preheader27 ], [ %i.ai, %.noexc3 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.042, %.preheader27 ], [ %i.af, %.noexc3 ]
  %i.az = add i16 %.sroa.13.1.lcssa, -1
  %i.ba = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.sroa.13.1.lcssa
  %i.bd = add i64 %.sroa.5.1.lcssa, %i.bb         ; 2 uses
  %i.be = add i64 %.sroa.9.040, -1                ; 2 uses
  %i.bf = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h7e9c4c2fb1262149E"(ptr noundef nonnull align 1 %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bd)
          to label %bb.h unwind label %bb.e       ; 2 uses

bb.h:                                             ; preds = %._crit_edge
  %.sroa.0.07.i.i = and i64 %i.bf, %i.v           ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.bg, align 1, !noalias !52656
  %i.bh = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.bi = bitcast <16 x i1> %i.bh to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10026

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %bb.h ]
  %i.bj = phi i64 [ %i.bk, %.lr.ph.i.i ], [ 0, %bb.h ]
  %i.bk = add i64 %i.bj, 16                       ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.0.010.i.i
  %.sroa.0.0.i.i13 = and i64 %i.bl, %i.v          ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.bm, align 1, !noalias !52656
  %i.bn = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.bo = bitcast <16 x i1> %i.bn to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bo, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !10027

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %bb.h ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.bi, %bb.h ], [ %i.bo, %.lr.ph.i.i ]
  %i.bp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.bq = zext nneg i16 %i.bp to i64
  %i.br = add i64 %.sroa.0.0.lcssa.i.i, %i.bq
  %i.bs = and i64 %i.br, %i.v                     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !27
  %i.bv = icmp sgt i8 %i.bu, -1
  br i1 %i.bv, label %bb.i, label %bb.j, !prof !29

bb.i:                                             ; preds = %._crit_edge.i.i
  %.val62.i.i.i = load <16 x i8>, ptr %i.s, align 16
  %i.bw = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.bx = bitcast <16 x i1> %i.bw to i16          ; 2 uses
  %i.by = icmp ne i16 %i.bx, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bx, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ca, %bb.i ], [ %i.bs, %._crit_edge.i.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.0.i5.i.i
  %i.cc = lshr i64 %i.bf, 57
  %i.cd = trunc nuw nsw i64 %i.cc to i8           ; 2 uses
  %i.ce = add i64 %.sroa.0.0.i5.i.i, -16
  %i.cf = and i64 %i.ce, %i.v
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cg = getelementptr i8, ptr %i.s, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store i8 %i.cd, ptr %i.ch, align 1
  %i.ci = load ptr, ptr %0, align 8, !alias.scope !52634, !noalias !52635, !nonnull !27, !noundef !27
  %i.cj = shl i64 %i.bd, 5
  %i.ck = sub nuw nsw i64 -32, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.ck
  %i.cm = shl i64 %.sroa.0.0.i5.i.i, 5
  %i.cn = sub nuw nsw i64 -32, %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 %i.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.co, ptr noundef nonnull align 1 dereferenceable(32) %i.cl, i64 32, i1 false)
  %i.cp = icmp eq i64 %i.be, 0
  br i1 %i.cp, label %._crit_edge43.loopexit, label %.preheader27

common.resume:                                    ; preds = %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.dt, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !52659)
  %.val10 = load ptr, ptr %0, align 8             ; 7 uses
  %.not6.i = icmp eq i64 %i.n, 0
  br i1 %.not6.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.cq = lshr i64 %i.n, 4                        ; 2 uses
  %i.cr = and i64 %i.n, 15
  %.not9.i.i.i = icmp ne i64 %i.cr, 0
  %i.cs = zext i1 %.not9.i.i.i to i64             ; 2 uses
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.cq, %i.cs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %2 = add nuw nsw i64 %i.cq, %i.cs
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.ct = icmp eq i64 %2, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.l

._crit_edge.i.unr-lcssa:                          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.03.07.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.db, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod19 = trunc i64 %.sroa.05.0.i.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.cu = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.cu, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.cv = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.cw = or <2 x i64> %i.cv, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cw, ptr %i.cu, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.cx = icmp ult i64 %i.n, 16
  br i1 %i.cx, label %._crit_edge.thread.i, label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, !prof !6367

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %.sroa.03.07.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.db, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.cy, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = add i64 %.sroa.03.07.i, 32              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sroa.03.07.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.dd, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.de = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.df = or <2 x i64> %i.de, splat (i64 -9187201950435737472)
  store <2 x i64> %i.df, ptr %i.dd, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.l

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.k
  br label %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit

_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sink10.i = phi i64 [ 16, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i ]
  %.sink9.i = phi i64 [ %i.n, %._crit_edge.thread.i ], [ 16, %._crit_edge.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.val10, i64 %.sink10.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %.val10, i64 %.sink9.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52662
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h7400eb0261b96011E, ptr %i.dh, align 8, !noalias !52662
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 32, ptr %i.di, align 8, !noalias !52662
  store ptr %0, ptr %i.a, align 8, !noalias !52662
  %i.dj = load i64, ptr %i.k, align 8, !alias.scope !52664, !noalias !52665, !noundef !27
  %i.dk = add i64 %i.dj, 1                        ; 2 uses
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17hecc40722617590deE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit, %bb.t
  %.sroa.05.1.i.i45 = phi i64 [ %.sroa.05.1.i.i, %bb.t ], [ 1, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 3 uses
  %.sroa.05.0.i.i44 = phi i64 [ %.sroa.05.1.i.i45, %bb.t ], [ 0, %_ZN9hashbrown3raw13RawTableInner23prepare_rehash_in_place17hd2b577a478ce6730E.exit ] ; 8 uses
  %i.dl = load ptr, ptr %0, align 8, !noalias !52665, !nonnull !27, !noundef !27 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.05.0.i.i44
  %i.dn = load i8, ptr %i.dm, align 1, !noalias !52665, !noundef !27
  %.not.i.i = icmp eq i8 %i.dn, -128
  br i1 %.not.i.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph
  %.neg.i.i = xor i64 %.sroa.05.0.i.i44, -1
  %.neg10.i.i = shl i64 %.neg.i.i, 5
  %i.do = getelementptr inbounds i8, ptr %i.dl, i64 %.neg10.i.i ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 2 uses
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit

_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit: ; preds = %.preheader.preheader, %bb.m
  %i.ds = invoke fastcc noundef i64 @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17h7e9c4c2fb1262149E"(ptr noundef nonnull align 1 %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.05.0.i.i44)
          to label %bb.o unwind label %bb.n, !noalias !52665 ; 3 uses

bb.n:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8b4d77a22756dcb4E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #67
          to label %common.resume unwind label %bb.u, !noalias !52665

bb.o:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes17h2566d41837ce52f6E.exit
  %.val7 = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 7 uses
  %.val8 = load i64, ptr %i.k, align 8, !noundef !27 ; 6 uses
  %.sroa.0.07.i = and i64 %.val8, %i.ds           ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.du, align 1, !noalias !52666
  %i.dv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i9.i, label %.lr.ph.i16, label %._crit_edge.i15, !prof !10026

.lr.ph.i16:                                       ; preds = %bb.o, %.lr.ph.i16
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i17, %.lr.ph.i16 ], [ %.sroa.0.07.i, %bb.o ]
  %i.dx = phi i64 [ %i.dy, %.lr.ph.i16 ], [ 0, %bb.o ]
  %i.dy = add i64 %i.dx, 16                       ; 2 uses
  %i.dz = add i64 %i.dy, %.sroa.0.010.i
  %.sroa.0.0.i17 = and i64 %i.dz, %.val8          ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i17
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.ea, align 1, !noalias !52666
  %i.eb = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i.i18 = icmp eq i16 %i.ec, 0
  br i1 %.not.i.i18, label %.lr.ph.i16, label %._crit_edge.i15, !prof !10027

._crit_edge.i15:                                  ; preds = %.lr.ph.i16, %bb.o
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.o ], [ %.sroa.0.0.i17, %.lr.ph.i16 ]
  %.lcssa.i = phi i16 [ %i.dw, %bb.o ], [ %i.ec, %.lr.ph.i16 ]
  %i.ed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  %i.ef = add i64 %.sroa.0.0.lcssa.i, %i.ee
  %i.eg = and i64 %i.ef, %.val8                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val7, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !27
  %i.ej = icmp sgt i8 %i.ei, -1
  br i1 %i.ej, label %bb.p, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit, !prof !29

bb.p:                                             ; preds = %._crit_edge.i15
  %.val62.i.i = load <16 x i8>, ptr %.val7, align 16
  %i.ek = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.el = bitcast <16 x i1> %i.ek to i16          ; 2 uses
  %i.em = icmp ne i16 %i.el, 0
  call void @llvm.assume(i1 %i.em)
  %i.en = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.el, i1 true)
  %i.eo = zext nneg i16 %i.en to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit: ; preds = %bb.p, %._crit_edge.i15
  %.sroa.0.0.i5.i = phi i64 [ %i.eo, %bb.p ], [ %i.eg, %._crit_edge.i15 ] ; 4 uses
  %i.ep = sub i64 %.sroa.05.0.i.i44, %.sroa.0.07.i
  %i.eq = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.er = xor i64 %i.eq, %i.ep
  %.unshifted.i.i = and i64 %i.er, %.val8
  %i.es = icmp ult i64 %.unshifted.i.i, 16
  br i1 %i.es, label %bb.q, label %bb.r, !prof !158

bb.q:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %i.et = lshr i64 %i.ds, 57
  %i.eu = trunc nuw nsw i64 %i.et to i8           ; 2 uses
  %i.ev = add i64 %.sroa.05.0.i.i44, -16
  %i.ew = and i64 %.val8, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.05.0.i.i44
  store i8 %i.eu, ptr %i.ex, align 1, !noalias !52665
  %i.ey = load ptr, ptr %0, align 8, !noalias !52665, !nonnull !27, !noundef !27
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.ew
  %i.fa = getelementptr i8, ptr %i.ez, i64 16
  store i8 %i.eu, ptr %i.fa, align 1, !noalias !52665
  br label %bb.t

bb.r:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17hd91885d764d7b032E.exit
  %.neg11.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg12.i.i = shl i64 %.neg11.i.i, 5
  %i.fb = getelementptr inbounds i8, ptr %.val7, i64 %.neg12.i.i ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.val7, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !52665, !noundef !27
  %i.fe = lshr i64 %i.ds, 57
  %i.ff = trunc nuw nsw i64 %i.fe to i8           ; 2 uses
  %i.fg = add i64 %.sroa.0.0.i5.i, -16
  %i.fh = and i64 %i.fg, %.val8
  store i8 %i.ff, ptr %i.fc, align 1, !noalias !52665
  %i.fi = load ptr, ptr %0, align 8, !noalias !52665, !nonnull !27, !noundef !27
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fh
  %i.fk = getelementptr i8, ptr %i.fj, i64 16
  store i8 %i.ff, ptr %i.fk, align 1, !noalias !52665
  %i.fl = icmp eq i8 %i.fd, -1
  br i1 %i.fl, label %bb.s, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !52669), !noalias !52665
  call void @llvm.experimental.noalias.scope.decl(metadata !52672), !noalias !52665
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.do, align 1, !alias.scope !52669, !noalias !52674
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.fb, align 1, !alias.scope !52672, !noalias !52675
  store i64 %.sroa.02.0.copyload.i.i.i, ptr %i.do, align 1, !alias.scope !52669, !noalias !52674
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.fb, align 1, !alias.scope !52672, !noalias !52675
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52676), !noalias !52665
  call void @llvm.experimental.noalias.scope.decl(metadata !52678), !noalias !52665
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dp, align 1, !alias.scope !52676, !noalias !52680
  %.sroa.02.0.copyload.i.i.i.1 = load i64, ptr %i.fm, align 1, !alias.scope !52678, !noalias !52681
  store i64 %.sroa.02.0.copyload.i.i.i.1, ptr %i.dp, align 1, !alias.scope !52676, !noalias !52680
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.fm, align 1, !alias.scope !52678, !noalias !52681
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52682), !noalias !52665
  call void @llvm.experimental.noalias.scope.decl(metadata !52684), !noalias !52665
  %.sroa.0.0.copyload.i.i.i.2 = load i64, ptr %i.dq, align 1, !alias.scope !52682, !noalias !52686
  %.sroa.02.0.copyload.i.i.i.2 = load i64, ptr %i.fn, align 1, !alias.scope !52684, !noalias !52687
end_hunk_3
