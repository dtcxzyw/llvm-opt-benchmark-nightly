Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h02bc1223e3d1261bE:bb.a
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !19706, !noalias !19703
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !19707, !noalias !19705
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d8f9015cb944874E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hbf04e4c12f2fb104E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d8f9015cb944874E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h2d8f9015cb944874E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hbf04e4c12f2fb104E.exit
  %.sroa.026.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17hbf04e4c12f2fb104E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hbf04e4c12f2fb104E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.br = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.br, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bt, %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit ] ; 4 uses
  %i.bt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.bv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bx, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !noundef !21 ; 3 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 8 uses
  %i.cb = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cc = add nuw i64 %i.ca, %i.cb                ; 4 uses
  %i.cd = sub i64 %.sroa.09.0, %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd ; 6 uses
  %i.cf = icmp ugt i64 %i.cc, %3
  %i.cg = trunc i64 %.sroa.018.167 to i1
  %i.ch = or i64 %i.bz, %.sroa.018.167
  %i.ci = trunc i64 %i.ch to i1
  %or.cond3.i = or i1 %i.cf, %i.ci
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bz to i1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = shl i64 %i.cc, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0ca4d17de71d6d9cE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cl = or i64 %i.ca, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc4fefcf3a4f128deE(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19676
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0ca4d17de71d6d9cE.exit35": ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cr = or i64 %i.cb, 1
  %i.cs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc4fefcf3a4f128deE(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19676
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h0ca4d17de71d6d9cE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19709)
  %i.cw = icmp eq i64 %i.ca, 0
  %i.cx = icmp eq i64 %i.cb, 0
  %or.cond.i = or i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.cy = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cy, label %_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ca, %i.cb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cz, ptr %i.ce
  %i.da = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.da, i1 false), !alias.scope !19710
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dc = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %bb.y ] ; 3 uses
  %i.dd = phi ptr [ %i.dr, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.bs, %bb.y ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -24
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !19709, !noalias !19711, !nonnull !21, !noundef !21
  %i.di = getelementptr i8, ptr %i.dc, i64 -16
  %.val10.i.i = load i64, ptr %i.di, align 8, !alias.scope !19709, !noalias !19711, !noundef !21 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -24
  %.val11.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !19708, !noalias !19712, !nonnull !21, !noundef !21
  %i.dk = getelementptr i8, ptr %i.dd, i64 -16
  %.val12.i.i = load i64, ptr %i.dk, align 8, !alias.scope !19708, !noalias !19712, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dl = sub i64 %.val10.i.i, %.val12.i.i
  %i.dm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !19713, !noalias !19714 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dl, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dp, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !19710, !noalias !19715
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dt = icmp eq ptr %i.dr, %i.ce
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbe57eac5b6ee51c2E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dw = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !19708, !noalias !19716, !nonnull !21, !noundef !21
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dy, align 8, !alias.scope !19708, !noalias !19716, !noundef !21 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val.i19.i = load ptr, ptr %i.dz, align 8, !alias.scope !19709, !noalias !19717, !nonnull !21, !noundef !21
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  %.val7.i.i = load i64, ptr %i.ea, align 8, !alias.scope !19709, !noalias !19717, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !19718, !noalias !19719 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ef, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !19710, !noalias !19720
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eh, %i.db
  %i.el = icmp ne ptr %i.ei, %i.bs
  %or.cond.i23.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbe57eac5b6ee51c2E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbe57eac5b6ee51c2E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ej, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.0.i to i64
  %i.en = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eo, i1 false), !alias.scope !19710, !noalias !19721
  br label %_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit

_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbe57eac5b6ee51c2E.exit.i"
  %i.ep = shl i64 %i.cc, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h9767849b704492b7E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_ZN4core5slice4sort6stable5merge5merge17h161eae35f73783cdE.exit ], [ %i.ck, %bb.t ] ; 2 uses
  %i.er = icmp ugt i64 %i.bt, 1
  br i1 %i.er, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = add i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ev, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hc4fefcf3a4f128deE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19676
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h08de4603c1a8f78bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ey, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ew, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19772)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 56
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !19772, !noalias !19773, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 64
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !19772, !noalias !19773, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !19772, !noalias !19773, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !19772, !noalias !19773, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !19774, !noalias !19775 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !19772, !noalias !19773, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !19772, !noalias !19773, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !19776, !noalias !19775 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !19772, !noalias !19773, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !19772, !noalias !19773, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !19777, !noalias !19775 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he9a17ab4d067ad5eE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19735
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19778), !noalias !19773
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19779), !noalias !19773
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h8ea7213ec4d35bd2E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h08de4603c1a8f78bE:bb.a
  store <2 x i64> %i.bk, ptr %i.bh, align 8, !alias.scope !19786, !noalias !19781
  store <2 x i64> %i.bj, ptr %i.bi, align 8, !alias.scope !19787, !noalias !19783
  %i.bl = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bl, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h46c7259a65ca084cE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bm = lshr i64 %.sroa.018.0, 1
  %i.bn = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bo = sub i64 %factor, %i.bm
  %i.bp = add i64 %i.bn, %factor
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = mul i64 %i.bp, %.sroa.0.0
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 false)
  %i.bu = trunc nuw nsw i64 %i.bt to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit
  %.sroa.026.0 = phi i8 [ %i.bu, %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h96c9cdf0989658caE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bv = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bv, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bx, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit ] ; 4 uses
  %i.bx = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.bz, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !21 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 8 uses
  %i.cf = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 4 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ch ; 6 uses
  %i.cj = icmp ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.018.167 to i1
  %i.cl = or i64 %i.cd, %.sroa.018.167
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.co = shl i64 %i.cg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he9a17ab4d067ad5eE(ptr noalias noundef nonnull align 8 %i.ci, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ct, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19754
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit35": ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he9a17ab4d067ad5eE(ptr noalias noundef nonnull align 8 %i.cu, i64 noundef %i.cf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19754
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h9a7da3c6d6feb253E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19789)
  %i.da = icmp eq i64 %i.ce, 0
  %i.db = icmp eq i64 %i.cf, 0
  %or.cond.i = or i1 %i.db, %i.da
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 range(i64 0, -9223372036854775808) %i.ce) ; 2 uses
  %i.dc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dc, label %_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw [48 x i8], ptr %i.ci, i64 %i.ce ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ce, %i.cf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dd, ptr %i.ci
  %i.de = mul i64 %.sroa.0.0.i.i36, 48            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.de, i1 false), !alias.scope !19790
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %i.de ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dg = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %bb.y ] ; 3 uses
  %i.dh = phi ptr [ %i.dv, %.preheader.i ], [ %i.dd, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.bw, %bb.y ]
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -48 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 -48 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -48 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dg, i64 -40
  %.val.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !19789, !noalias !19791, !nonnull !21, !noundef !21
  %i.dm = getelementptr i8, ptr %i.dg, i64 -32
  %.val10.i.i = load i64, ptr %i.dm, align 8, !alias.scope !19789, !noalias !19791, !noundef !21 ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dh, i64 -40
  %.val11.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !19788, !noalias !19792, !nonnull !21, !noundef !21
  %i.do = getelementptr i8, ptr %i.dh, i64 -32
  %.val12.i.i = load i64, ptr %i.do, align 8, !alias.scope !19788, !noalias !19792, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dp = sub i64 %.val10.i.i, %.val12.i.i
  %i.dq = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !19793, !noalias !19794 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp eq i32 %i.dq, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ds, i64 %i.dp, i64 %i.dr ; 2 uses
  %i.dt = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dt, ptr %i.dj, ptr %i.di
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %..i.i, i64 48, i1 false), !alias.scope !19790, !noalias !19795
  %i.du = zext i1 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [48 x i8], ptr %i.di, i64 %i.du ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dw = getelementptr inbounds nuw [48 x i8], ptr %i.dj, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dx = icmp eq ptr %i.dv, %i.ci
  %i.dy = icmp eq ptr %i.dw, %2
  %or.cond.i.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdad7c254ca293b1dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dz = phi ptr [ %i.en, %.lr.ph.i.i ], [ %i.ci, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.dd, %bb.y ] ; 4 uses
  %i.ea = phi ptr [ %i.el, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !19788, !noalias !19796, !nonnull !21, !noundef !21
  %i.ec = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ec, align 8, !alias.scope !19788, !noalias !19796, !noundef !21 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ea, i64 8
  %.val.i19.i = load ptr, ptr %i.ed, align 8, !alias.scope !19789, !noalias !19797, !nonnull !21, !noundef !21
  %i.ee = getelementptr i8, ptr %i.ea, i64 16
  %.val7.i.i = load i64, ptr %i.ee, align 8, !alias.scope !19789, !noalias !19797, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ef = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !19798, !noalias !19799 ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp eq i32 %i.eg, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ei, i64 %i.ef, i64 %i.eh ; 2 uses
  %i.ej = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ej, ptr %i.ea, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dz, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i.i, i64 48, i1 false), !alias.scope !19790, !noalias !19800
  %i.ek = zext i1 %i.ej to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.ek ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dz, i64 48 ; 2 uses
  %i.eo = icmp ne ptr %i.el, %i.df
  %i.ep = icmp ne ptr %i.em, %i.bw
  %or.cond.i23.i = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdad7c254ca293b1dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdad7c254ca293b1dE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.en, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.df, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.el, %.lr.ph.i.i ] ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.7.0.i to i64
  %i.er = ptrtoint ptr %.sroa.0.1.i to i64
  %i.es = sub nuw i64 %i.eq, %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.es, i1 false), !alias.scope !19790, !noalias !19801
  br label %_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit

_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hdad7c254ca293b1dE.exit.i"
  %i.et = shl i64 %i.cg, 1
  %i.eu = or disjoint i64 %i.et, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hfe8a1cb46fd65c07E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit
  %.sroa.0.0.i = phi i64 [ %i.eu, %_ZN4core5slice4sort6stable5merge5merge17h3d97c86e4f804dabE.exit ], [ %i.co, %bb.t ] ; 2 uses
  %i.ev = icmp ugt i64 %i.bx, 1
  br i1 %i.ev, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.ew = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ex = lshr i64 %.sroa.023.0, 1
  %i.ey = add i64 %i.ex, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ez = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ez, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = or i64 %1, 1
  %i.fb = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fa, i1 true)
  %i.fc = trunc nuw nsw i64 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %i.fe = xor i32 %i.fd, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17he9a17ab4d067ad5eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19754
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h0aa5a513f94fa8c2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eu, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.es, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19848)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !19848, !noalias !19849, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 48
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !19848, !noalias !19849, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !19848, !noalias !19849, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !19848, !noalias !19849, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !19850, !noalias !19851 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !19848, !noalias !19849, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !19848, !noalias !19849, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !19852, !noalias !19851 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !19848, !noalias !19849, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !19848, !noalias !19849, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !19853, !noalias !19851 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h566b47d6103d1d25E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19815
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19854), !noalias !19849
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19855), !noalias !19849
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hccb5e3c1b7ad4602E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h0aa5a513f94fa8c2E:bb.a
  store <2 x i64> %i.bg, ptr %i.bd, align 8, !alias.scope !19860, !noalias !19857
  store <2 x i64> %i.bf, ptr %i.be, align 8, !alias.scope !19861, !noalias !19859
  %i.bh = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h616571131deb0736E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bi = lshr i64 %.sroa.018.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bk = sub i64 %factor, %i.bi
  %i.bl = add i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit
  %.sroa.026.0 = phi i8 [ %i.bq, %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h384acb5be971f0dbE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.br = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.br, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bt, %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit ] ; 4 uses
  %i.bt = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.bv, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bx, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bt
  %i.bz = load i64, ptr %i.by, align 8, !noundef !21 ; 3 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 8 uses
  %i.cb = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cc = add nuw i64 %i.ca, %i.cb                ; 4 uses
  %i.cd = sub i64 %.sroa.09.0, %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cd ; 6 uses
  %i.cf = icmp ugt i64 %i.cc, %3
  %i.cg = trunc i64 %.sroa.018.167 to i1
  %i.ch = or i64 %i.bz, %.sroa.018.167
  %i.ci = trunc i64 %i.ch to i1
  %or.cond3.i = or i1 %i.cf, %i.ci
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = trunc i64 %i.bz to i1
  br i1 %i.cj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ck = shl i64 %i.cc, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cg, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cl = or i64 %i.ca, 1
  %i.cm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cl, i1 true)
  %i.cn = trunc nuw nsw i64 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 1
  %i.cp = xor i32 %i.co, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h566b47d6103d1d25E(ptr noalias noundef nonnull align 8 %i.ce, i64 noundef %i.ca, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19830
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit35": ; preds = %bb.u
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca
  %i.cr = or i64 %i.cb, 1
  %i.cs = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = trunc nuw nsw i64 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = xor i32 %i.cu, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h566b47d6103d1d25E(ptr noalias noundef nonnull align 8 %i.cq, i64 noundef %i.cb, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19830
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h84732d61c2709f44E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19863)
  %i.cw = icmp eq i64 %i.ca, 0
  %i.cx = icmp eq i64 %i.cb, 0
  %or.cond.i = or i1 %i.cx, %i.cw
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cb, i64 range(i64 0, -9223372036854775808) %i.ca) ; 2 uses
  %i.cy = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cy, label %_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ca, %i.cb  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cz, ptr %i.ce
  %i.da = shl i64 %.sroa.0.0.i.i36, 5             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.da, i1 false), !alias.scope !19864
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dc = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %bb.y ] ; 3 uses
  %i.dd = phi ptr [ %i.dr, %.preheader.i ], [ %i.cz, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dg, %.preheader.i ], [ %i.bs, %bb.y ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -32 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dc, i64 -24
  %.val.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !19863, !noalias !19865, !nonnull !21, !noundef !21
  %i.di = getelementptr i8, ptr %i.dc, i64 -16
  %.val10.i.i = load i64, ptr %i.di, align 8, !alias.scope !19863, !noalias !19865, !noundef !21 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 -24
  %.val11.i.i = load ptr, ptr %i.dj, align 8, !alias.scope !19862, !noalias !19866, !nonnull !21, !noundef !21
  %i.dk = getelementptr i8, ptr %i.dd, i64 -16
  %.val12.i.i = load i64, ptr %i.dk, align 8, !alias.scope !19862, !noalias !19866, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dl = sub i64 %.val10.i.i, %.val12.i.i
  %i.dm = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !19867, !noalias !19868 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp eq i32 %i.dm, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.do, i64 %i.dl, i64 %i.dn ; 2 uses
  %i.dp = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dp, ptr %i.df, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dg, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !alias.scope !19864, !noalias !19869
  %i.dq = zext i1 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dt = icmp eq ptr %i.dr, %i.ce
  %i.du = icmp eq ptr %i.ds, %2
  %or.cond.i.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc627a08f049d16cbE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dv = phi ptr [ %i.ej, %.lr.ph.i.i ], [ %i.ce, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cz, %bb.y ] ; 4 uses
  %i.dw = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.dx = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !19862, !noalias !19870, !nonnull !21, !noundef !21
  %i.dy = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.dy, align 8, !alias.scope !19862, !noalias !19870, !noundef !21 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dw, i64 8
  %.val.i19.i = load ptr, ptr %i.dz, align 8, !alias.scope !19863, !noalias !19871, !nonnull !21, !noundef !21
  %i.ea = getelementptr i8, ptr %i.dw, i64 16
  %.val7.i.i = load i64, ptr %i.ea, align 8, !alias.scope !19863, !noalias !19871, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.eb = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ec = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !19872, !noalias !19873 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp eq i32 %i.ec, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ee, i64 %i.eb, i64 %i.ed ; 2 uses
  %i.ef = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ef, ptr %i.dw, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %spec.select.i.i, i64 32, i1 false), !alias.scope !19864, !noalias !19874
  %i.eg = zext i1 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.eg ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.ek = icmp ne ptr %i.eh, %i.db
  %i.el = icmp ne ptr %i.ei, %i.bs
  %or.cond.i23.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc627a08f049d16cbE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc627a08f049d16cbE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.ej, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ds, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.eh, %.lr.ph.i.i ] ; 2 uses
  %i.em = ptrtoint ptr %.sroa.7.0.i to i64
  %i.en = ptrtoint ptr %.sroa.0.1.i to i64
  %i.eo = sub nuw i64 %i.em, %i.en
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.eo, i1 false), !alias.scope !19864, !noalias !19875
  br label %_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit

_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hc627a08f049d16cbE.exit.i"
  %i.ep = shl i64 %i.cc, 1
  %i.eq = or disjoint i64 %i.ep, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hb147decb0befa78bE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit
  %.sroa.0.0.i = phi i64 [ %i.eq, %_ZN4core5slice4sort6stable5merge5merge17h5bb69c1e95ef5771E.exit ], [ %i.ck, %bb.t ] ; 2 uses
  %i.er = icmp ugt i64 %i.bt, 1
  br i1 %i.er, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.es = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.et = lshr i64 %.sroa.023.0, 1
  %i.eu = add i64 %i.et, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ev, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = or i64 %1, 1
  %i.ex = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ey = trunc nuw nsw i64 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 1
  %i.fa = xor i32 %i.ez, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h566b47d6103d1d25E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19830
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h149d763466cab657E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ac, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.ac ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fe, %bb.ac ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fc, %bb.ac ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 14 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19898)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 24
  %.val15.i = load i64, ptr %i.o, align 8, !alias.scope !19898, !noalias !19899, !noundef !21 ; 5 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val17.i = load i64, ptr %i.p, align 8, !alias.scope !19898, !noalias !19899, !noundef !21 ; 2 uses
  %i.q = icmp eq i64 %.val15.i, %.val17.i
  br i1 %i.q, label %.split, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit45"

.split:                                           ; preds = %bb.i
  %.val16.i = load ptr, ptr %i.m, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.val14.i = load ptr, ptr %i.r, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %i.s = tail call i32 @memcmp(ptr nonnull readonly %.val14.i, ptr nonnull readonly %.val16.i, i64 %.val15.i), !noalias !19900
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %.preheader59

.preheader:                                       ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit45", %.split
  %.not81 = icmp eq i64 %i.l, 2
  br i1 %.not81, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %.lr.ph68

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit45": ; preds = %bb.i
  %i.u = icmp ult i64 %.val15.i, %.val17.i
  br i1 %i.u, label %.preheader, label %.preheader59

.preheader59:                                     ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit45", %.split
  %.not80 = icmp eq i64 %i.l, 2
  br i1 %.not80, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader59 ] ; 3 uses
  %.sroa.01.0.i.i64 = phi i64 [ %i.ae, %bb.j ], [ 2, %.preheader59 ] ; 5 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.0.i.i64 ; 2 uses
  %i.w = add i64 %.sroa.01.0.i.i64, -1            ; 2 uses
  %i.x = icmp ult i64 %i.w, %i.l
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr i8, ptr %i.v, i64 8
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !19898, !noalias !19899, !noundef !21 ; 3 uses
  %i.z = icmp eq i64 %.val11.i, %.val13.i
  br i1 %i.z, label %.split48, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43"

.split48:                                         ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.w
  %.val12.i = load ptr, ptr %i.aa, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %.val10.i = load ptr, ptr %i.v, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %.val13.i), !noalias !19900
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %bb.j

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43": ; preds = %.lr.ph
  %i.ad = icmp ult i64 %.val11.i, %.val13.i
  br i1 %i.ad, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %bb.j

bb.j:                                             ; preds = %.split48, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43"
  %i.ae = add nuw i64 %.sroa.01.0.i.i64, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %.lr.ph

.lr.ph68:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 3 uses
  %.sroa.01.1.i.i67 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.sroa.01.1.i.i67 ; 2 uses
  %i.ag = add i64 %.sroa.01.1.i.i67, -1           ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.l
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr i8, ptr %i.af, i64 8
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !19898, !noalias !19899, !noundef !21 ; 3 uses
  %i.aj = icmp eq i64 %.val7.i, %.val9.i
  br i1 %i.aj, label %.split49, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit"

.split49:                                         ; preds = %.lr.ph68
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ag
  %.val8.i = load ptr, ptr %i.ak, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !19898, !noalias !19899, !nonnull !21, !align !37, !noundef !21
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val8.i, i64 %.val9.i), !noalias !19900
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit": ; preds = %.lr.ph68
  %i.an = icmp ult i64 %.val7.i, %.val9.i
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i

bb.k:                                             ; preds = %.split49, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit"
  %i.ao = add nuw i64 %.sroa.01.1.i.i67, 1        ; 2 uses
  %exitcond89.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond89.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i, label %.lr.ph68

_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i: ; preds = %bb.j, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43", %.split48, %bb.k, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit", %.split49, %.preheader59, %.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.preheader ], [ false, %.preheader59 ], [ true, %bb.k ], [ true, %.split49 ], [ true, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit" ], [ false, %.split48 ], [ false, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43" ], [ false, %bb.j ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader59 ], [ %i.l, %bb.k ], [ %.sroa.01.1.i.i67, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit" ], [ %.sroa.01.1.i.i67, %.split49 ], [ %i.l, %bb.j ], [ %.sroa.01.0.i.i64, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit43" ], [ %.sroa.01.0.i.i64, %.split48 ] ; 9 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha4eff106b422b90dE.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h219c584fe7118250E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdd3ee78d63c864c4E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19880
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h219c584fe7118250E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i38
  %i.at = and i64 %.sroa.0.0.i.i, 2
  %lcmp.mod.not = icmp eq i64 %i.at, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit", label %.lr.ph.i.i38.epil.preheader

.lr.ph.i.i38.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h9ab6fbe166879a9eE.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod126 = trunc i64 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod126)
  %i.au = xor i64 %.sroa.0.014.i.i.epil.init, -1
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h149d763466cab657E:bb.a
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.by = sub i64 %factor, %i.bw
  %i.bz = add i64 %i.bx, %factor
  %i.ca = mul i64 %i.by, %.sroa.0.0
  %i.cb = mul i64 %i.bz, %.sroa.0.0
  %i.cc = xor i64 %i.cb, %i.ca
  %i.cd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cc, i1 false)
  %i.ce = trunc nuw nsw i64 %i.cd to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h219c584fe7118250E.exit
  %.sroa.026.0 = phi i8 [ %i.ce, %_ZN4core5slice4sort6stable5drift10create_run17h219c584fe7118250E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h219c584fe7118250E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cf = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cf, label %.lr.ph74, label %._crit_edge

.lr.ph74:                                         ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph74, %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit
  %.sroa.02.173 = phi i64 [ %.sroa.02.0, %.lr.ph74 ], [ %i.ch, %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit ] ; 2 uses
  %.sroa.018.172 = phi i64 [ %.sroa.018.0, %.lr.ph74 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit ] ; 4 uses
  %i.ch = add i64 %.sroa.02.173, -1               ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cj, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.172, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.173, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cl, align 1
  br i1 %i.k, label %bb.ac, label %bb.ad

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ch
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !21 ; 3 uses
  %i.co = lshr i64 %i.cn, 1                       ; 8 uses
  %i.cp = lshr i64 %.sroa.018.172, 1              ; 6 uses
  %i.cq = add nuw i64 %i.co, %i.cp                ; 4 uses
  %i.cr = sub i64 %.sroa.09.0, %i.cq
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cr ; 6 uses
  %i.ct = icmp ugt i64 %i.cq, %3
  %i.cu = trunc i64 %.sroa.018.172 to i1
  %i.cv = or i64 %i.cn, %.sroa.018.172
  %i.cw = trunc i64 %i.cv to i1
  %or.cond3.i = or i1 %i.ct, %i.cw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = trunc i64 %i.cn to i1
  br i1 %i.cx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cy = shl i64 %i.cq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cu, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cz = or i64 %i.co, 1
  %i.da = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdd3ee78d63c864c4E(ptr noalias noundef nonnull align 8 %i.cs, i64 noundef %i.co, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19886
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit35": ; preds = %bb.u
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.co
  %i.df = or i64 %i.cp, 1
  %i.dg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = xor i32 %i.di, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdd3ee78d63c864c4E(ptr noalias noundef nonnull align 8 %i.de, i64 noundef %i.cp, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19886
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hecb39e9772930785E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19909)
  %i.dk = icmp eq i64 %i.co, 0
  %i.dl = icmp eq i64 %i.cp, 0
  %or.cond.i = or i1 %i.dl, %i.dk
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 range(i64 0, -9223372036854775808) %i.co) ; 2 uses
  %i.dm = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dm, label %_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.co ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.co, %i.cp  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dn, ptr %i.cs
  %i.do = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.do, i1 false), !alias.scope !19910
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 %i.do ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i"
  %i.dq = phi ptr [ %i.ef, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.dp, %bb.y ] ; 2 uses
  %i.dr = phi ptr [ %i.ed, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.dn, %bb.y ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.du, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.cg, %bb.y ]
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -16 ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 -16 ; 3 uses
  %i.du = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.dq, i64 -8
  %.val10.i.i = load i64, ptr %i.dv, align 8, !alias.scope !19909, !noalias !19911, !noundef !21 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dr, i64 -8
  %.val12.i.i = load i64, ptr %i.dw, align 8, !alias.scope !19908, !noalias !19912, !noundef !21 ; 2 uses
  %i.dx = icmp eq i64 %.val10.i.i, %.val12.i.i
  %i.dy = icmp ult i64 %.val10.i.i, %.val12.i.i
  br i1 %i.dx, label %bb.z, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i"

bb.z:                                             ; preds = %.preheader.i
  %.val11.i.i = load ptr, ptr %i.ds, align 8, !alias.scope !19908, !noalias !19912, !nonnull !21, !align !37, !noundef !21
  %.val.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !19909, !noalias !19911, !nonnull !21, !align !37, !noundef !21
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val11.i.i, i64 %.val10.i.i), !noalias !19913
  %i.ea = icmp slt i32 %i.dz, 0
  br label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i"

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i": ; preds = %bb.z, %.preheader.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.ea, %bb.z ], [ %i.dy, %.preheader.i ] ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i.i.i, ptr %i.ds, ptr %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !19910, !noalias !19914
  %i.eb = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.ec ; 3 uses
  %i.ee = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.ee ; 3 uses
  %i.eg = icmp eq ptr %i.ed, %i.cs
  %i.eh = icmp eq ptr %i.ef, %2
  %or.cond.i.i = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h41d6be71a7766bedE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.ab
  %i.ei = phi ptr [ %i.et, %bb.ab ], [ %i.cs, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.es, %bb.ab ], [ %i.dn, %bb.y ] ; 5 uses
  %i.ej = phi ptr [ %i.er, %bb.ab ], [ %2, %bb.y ] ; 4 uses
  %i.ek = getelementptr i8, ptr %.sroa.0.04.i.i, i64 8
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ek, align 8, !alias.scope !19908, !noalias !19915, !noundef !21 ; 3 uses
  %i.el = getelementptr i8, ptr %i.ej, i64 8
  %.val7.i.i = load i64, ptr %i.el, align 8, !alias.scope !19909, !noalias !19916, !noundef !21 ; 2 uses
  %i.em = icmp eq i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  br i1 %i.em, label %.split.i.i, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i"

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val.i21.i = load ptr, ptr %i.ej, align 8, !alias.scope !19909, !noalias !19916, !nonnull !21, !align !37, !noundef !21
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.04.i.i, align 8, !alias.scope !19908, !noalias !19915, !nonnull !21, !align !37, !noundef !21
  %i.en = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i.i, ptr nonnull readonly %.val.i21.i, i64 %.sroa.0.0.val6.i.i), !noalias !19917
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.ab, label %bb.aa

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i": ; preds = %.lr.ph.i.i
  %i.ep = icmp ult i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  br i1 %i.ep, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i", %.split.i.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i", %.split.i.i
  %i.eq = phi i64 [ 1, %bb.aa ], [ 0, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i" ], [ 0, %.split.i.i ]
  %.sroa.0.0.i.i2.i.i = phi i64 [ 0, %bb.aa ], [ 1, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i" ], [ 1, %.split.i.i ]
  %.sroa.05.0.i.i = phi ptr [ %i.ej, %bb.aa ], [ %.sroa.0.04.i.i, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i19.i" ], [ %.sroa.0.04.i.i, %.split.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !19910, !noalias !19918
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %i.eq ; 3 uses
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.04.i.i, i64 %.sroa.0.0.i.i2.i.i ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.eu = icmp ne ptr %i.er, %i.dp
  %i.ev = icmp ne ptr %i.es, %i.cg
  %or.cond.i20.i = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h41d6be71a7766bedE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h41d6be71a7766bedE.exit.i": ; preds = %bb.ab, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i"
  %.sroa.13.1.i = phi ptr [ %i.ed, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.et, %bb.ab ]
  %.sroa.7.0.i = phi ptr [ %i.ef, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.dp, %bb.ab ]
  %.sroa.0.1.i = phi ptr [ %2, %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17he16b0ee151d40a4fE.exit.i.i" ], [ %i.er, %bb.ab ] ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ex = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ey = sub nuw i64 %i.ew, %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ey, i1 false), !alias.scope !19910, !noalias !19919
  br label %_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit

_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h41d6be71a7766bedE.exit.i"
  %i.ez = shl i64 %i.cq, 1
  %i.fa = or disjoint i64 %i.ez, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hc69ecc687c3cad0fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit
  %.sroa.0.0.i = phi i64 [ %i.fa, %_ZN4core5slice4sort6stable5merge5merge17h9f1b5df54adeda7bE.exit ], [ %i.cy, %bb.t ] ; 2 uses
  %i.fb = icmp ugt i64 %i.ch, 1
  br i1 %i.fb, label %bb.q, label %._crit_edge

bb.ac:                                            ; preds = %._crit_edge
  %i.fc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fd = lshr i64 %.sroa.023.0, 1
  %i.fe = add i64 %i.fd, %.sroa.09.0
  br label %bb.f

bb.ad:                                            ; preds = %._crit_edge
  %i.ff = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ff, 0
  br i1 %.not31, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fg = or i64 %1, 1
  %i.fh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = xor i32 %i.fj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hdd3ee78d63c864c4E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19886
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h20ade0bf12f7f65fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fc, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fa, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 72
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !19974, !noalias !19975, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 80
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !19974, !noalias !19975, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !19974, !noalias !19975, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !19974, !noalias !19975, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !19976, !noalias !19977 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !19974, !noalias !19975, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !19974, !noalias !19975, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !19978, !noalias !19977 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !19974, !noalias !19975, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !19974, !noalias !19975, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !19979, !noalias !19977 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha09b0ec918258e8dE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19933
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19980), !noalias !19975
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19981), !noalias !19975
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hd5f9e4c35d77843fE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17h20ade0bf12f7f65fE:bb.a
  store <2 x i64> %i.bo, ptr %i.bl, align 8, !alias.scope !19990, !noalias !19983
  store <2 x i64> %i.bn, ptr %i.bm, align 8, !alias.scope !19991, !noalias !19985
  %i.bp = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bp, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17haf4e09f3f24e9247E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bq = lshr i64 %.sroa.018.0, 1
  %i.br = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bs = sub i64 %factor, %i.bq
  %i.bt = add i64 %i.br, %factor
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = mul i64 %i.bt, %.sroa.0.0
  %i.bw = xor i64 %i.bv, %i.bu
  %i.bx = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 false)
  %i.by = trunc nuw nsw i64 %i.bx to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit
  %.sroa.026.0 = phi i8 [ %i.by, %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h287c386f2b1685c5E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bz = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bz, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cb, %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit ] ; 4 uses
  %i.cb = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cd, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.cf, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cb
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !21 ; 3 uses
  %i.ci = lshr i64 %i.ch, 1                       ; 8 uses
  %i.cj = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.ck = add nuw i64 %i.ci, %i.cj                ; 4 uses
  %i.cl = sub i64 %.sroa.09.0, %i.ck
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.cl ; 6 uses
  %i.cn = icmp ugt i64 %i.ck, %3
  %i.co = trunc i64 %.sroa.018.167 to i1
  %i.cp = or i64 %i.ch, %.sroa.018.167
  %i.cq = trunc i64 %i.cp to i1
  %or.cond3.i = or i1 %i.cn, %i.cq
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = trunc i64 %i.ch to i1
  br i1 %i.cr, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cs = shl i64 %i.ck, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.co, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.ct = or i64 %i.ci, 1
  %i.cu = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 1
  %i.cx = xor i32 %i.cw, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha09b0ec918258e8dE(ptr noalias noundef nonnull align 8 %i.cm, i64 noundef %i.ci, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19956
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit35": ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.cm, i64 %i.ci
  %i.cz = or i64 %i.cj, 1
  %i.da = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cz, i1 true)
  %i.db = trunc nuw nsw i64 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = xor i32 %i.dc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha09b0ec918258e8dE(ptr noalias noundef nonnull align 8 %i.cy, i64 noundef %i.cj, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19956
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h63ca9c8113ad56c0E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19993)
  %i.de = icmp eq i64 %i.ci, 0
  %i.df = icmp eq i64 %i.cj, 0
  %or.cond.i = or i1 %i.df, %i.de
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 range(i64 0, -9223372036854775808) %i.ci) ; 2 uses
  %i.dg = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dg, label %_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.cm, i64 %i.ci ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ci, %i.cj  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dh, ptr %i.cm
  %i.di = shl i64 %.sroa.0.0.i.i36, 6             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.di, i1 false), !alias.scope !19994
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %i.di ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dk = phi ptr [ %i.ea, %.preheader.i ], [ %i.dj, %bb.y ] ; 3 uses
  %i.dl = phi ptr [ %i.dz, %.preheader.i ], [ %i.dh, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.do, %.preheader.i ], [ %i.ca, %bb.y ]
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -64 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dk, i64 -64 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -64 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 -56
  %.val.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !19993, !noalias !19995, !nonnull !21, !noundef !21
  %i.dq = getelementptr i8, ptr %i.dk, i64 -48
  %.val10.i.i = load i64, ptr %i.dq, align 8, !alias.scope !19993, !noalias !19995, !noundef !21 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dl, i64 -56
  %.val11.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !19992, !noalias !19996, !nonnull !21, !noundef !21
  %i.ds = getelementptr i8, ptr %i.dl, i64 -48
  %.val12.i.i = load i64, ptr %i.ds, align 8, !alias.scope !19992, !noalias !19996, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dt = sub i64 %.val10.i.i, %.val12.i.i
  %i.du = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !19997, !noalias !19998 ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = icmp eq i32 %i.du, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dw, i64 %i.dt, i64 %i.dv ; 2 uses
  %i.dx = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dx, ptr %i.dn, ptr %i.dm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 8 dereferenceable(64) %..i.i, i64 64, i1 false), !alias.scope !19994, !noalias !19999
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.dm, i64 %i.dy ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ea = getelementptr inbounds nuw [64 x i8], ptr %i.dn, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.eb = icmp eq ptr %i.dz, %i.cm
  %i.ec = icmp eq ptr %i.ea, %2
  %or.cond.i.i = select i1 %i.eb, i1 true, i1 %i.ec
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8619bac7b2559578E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.ed = phi ptr [ %i.er, %.lr.ph.i.i ], [ %i.cm, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eq, %.lr.ph.i.i ], [ %i.dh, %bb.y ] ; 4 uses
  %i.ee = phi ptr [ %i.ep, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.ef = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !19992, !noalias !20000, !nonnull !21, !noundef !21
  %i.eg = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eg, align 8, !alias.scope !19992, !noalias !20000, !noundef !21 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 8
  %.val.i19.i = load ptr, ptr %i.eh, align 8, !alias.scope !19993, !noalias !20001, !nonnull !21, !noundef !21
  %i.ei = getelementptr i8, ptr %i.ee, i64 16
  %.val7.i.i = load i64, ptr %i.ei, align 8, !alias.scope !19993, !noalias !20001, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ej = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ek = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20002, !noalias !20003 ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp eq i32 %i.ek, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.em, i64 %i.ej, i64 %i.el ; 2 uses
  %i.en = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.en, ptr %i.ee, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, ptr noundef nonnull align 8 dereferenceable(64) %spec.select.i.i, i64 64, i1 false), !alias.scope !19994, !noalias !20004
  %i.eo = zext i1 %i.en to i64
  %i.ep = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %i.eo ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.eq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 64 ; 2 uses
  %i.es = icmp ne ptr %i.ep, %i.dj
  %i.et = icmp ne ptr %i.eq, %i.ca
  %or.cond.i23.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8619bac7b2559578E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8619bac7b2559578E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dz, %.preheader.i ], [ %i.er, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ea, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ep, %.lr.ph.i.i ] ; 2 uses
  %i.eu = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ev = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ew = sub nuw i64 %i.eu, %i.ev
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ew, i1 false), !alias.scope !19994, !noalias !20005
  br label %_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit

_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8619bac7b2559578E.exit.i"
  %i.ex = shl i64 %i.ck, 1
  %i.ey = or disjoint i64 %i.ex, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hbabd59320a91a40aE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit
  %.sroa.0.0.i = phi i64 [ %i.ey, %_ZN4core5slice4sort6stable5merge5merge17h7be4c95bde4fe3f9E.exit ], [ %i.cs, %bb.t ] ; 2 uses
  %i.ez = icmp ugt i64 %i.cb, 1
  br i1 %i.ez, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fa = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fb = lshr i64 %.sroa.023.0, 1
  %i.fc = add i64 %i.fb, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fd = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fd, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fe = or i64 %1, 1
  %i.ff = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fe, i1 true)
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = xor i32 %i.fh, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha09b0ec918258e8dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !19956
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h2b3536ea9b055062E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fq, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fo, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20074)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20074, !noalias !20075, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 136
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20074, !noalias !20075, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20074, !noalias !20075, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20074, !noalias !20075, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20076, !noalias !20077 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20074, !noalias !20075, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20074, !noalias !20075, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20078, !noalias !20077 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20074, !noalias !20075, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20074, !noalias !20075, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20079, !noalias !20077 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6b975852744f735bE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20019
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20080), !noalias !20075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20081), !noalias !20075
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h470c6136922a3993E.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17h2b3536ea9b055062E:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cb, align 8, !alias.scope !20100, !noalias !20101
  store i64 %.sroa.0.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cc, align 8, !alias.scope !20102, !noalias !20103
  %i.cd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h952d15d118700f36E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cg = sub i64 %factor, %i.ce
  %i.ch = add i64 %i.cf, %factor
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = mul i64 %i.ch, %.sroa.0.0
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit
  %.sroa.026.0 = phi i8 [ %i.cm, %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h89103a23cfe92d1aE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cn, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cp, %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit ] ; 4 uses
  %i.cp = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ct, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !21 ; 3 uses
  %i.cw = lshr i64 %i.cv, 1                       ; 8 uses
  %i.cx = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cy = add nuw i64 %i.cw, %i.cx                ; 4 uses
  %i.cz = sub i64 %.sroa.09.0, %i.cy
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.cz ; 6 uses
  %i.db = icmp ugt i64 %i.cy, %3
  %i.dc = trunc i64 %.sroa.018.167 to i1
  %i.dd = or i64 %i.cv, %.sroa.018.167
  %i.de = trunc i64 %i.dd to i1
  %or.cond3.i = or i1 %i.db, %i.de
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = trunc i64 %i.cv to i1
  br i1 %i.df, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dg = shl i64 %i.cy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dh = or i64 %i.cw, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6b975852744f735bE(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20056
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit35": ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw
  %i.dn = or i64 %i.cx, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6b975852744f735bE(ptr noalias noundef nonnull align 8 %i.dm, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20056
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hb36005c37cbd4222E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20105)
  %i.ds = icmp eq i64 %i.cw, 0
  %i.dt = icmp eq i64 %i.cx, 0
  %or.cond.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 range(i64 0, -9223372036854775808) %i.cw) ; 2 uses
  %i.du = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.du, label %_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cw, %i.cx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dv, ptr %i.da
  %i.dw = mul i64 %.sroa.0.0.i.i36, 120           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dw, i1 false), !alias.scope !20106
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dy = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %bb.y ] ; 3 uses
  %i.dz = phi ptr [ %i.en, %.preheader.i ], [ %i.dv, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ec, %.preheader.i ], [ %i.co, %bb.y ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -120 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 -120 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -120 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dy, i64 -112
  %.val.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !20105, !noalias !20107, !nonnull !21, !noundef !21
  %i.ee = getelementptr i8, ptr %i.dy, i64 -104
  %.val10.i.i = load i64, ptr %i.ee, align 8, !alias.scope !20105, !noalias !20107, !noundef !21 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 -112
  %.val11.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !20104, !noalias !20108, !nonnull !21, !noundef !21
  %i.eg = getelementptr i8, ptr %i.dz, i64 -104
  %.val12.i.i = load i64, ptr %i.eg, align 8, !alias.scope !20104, !noalias !20108, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eh = sub i64 %.val10.i.i, %.val12.i.i
  %i.ei = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20109, !noalias !20110 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ek, i64 %i.eh, i64 %i.ej ; 2 uses
  %i.el = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.el, ptr %i.eb, ptr %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %..i.i, i64 120, i1 false), !alias.scope !20106, !noalias !20111
  %i.em = zext i1 %i.el to i64
  %i.en = getelementptr inbounds nuw [120 x i8], ptr %i.ea, i64 %i.em ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.eb, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ep = icmp eq ptr %i.en, %i.da
  %i.eq = icmp eq ptr %i.eo, %2
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h67a738a767bbb54dE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.er = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %i.dv, %bb.y ] ; 4 uses
  %i.es = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.et = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.et, align 8, !alias.scope !20104, !noalias !20112, !nonnull !21, !noundef !21
  %i.eu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eu, align 8, !alias.scope !20104, !noalias !20112, !noundef !21 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  %.val.i19.i = load ptr, ptr %i.ev, align 8, !alias.scope !20105, !noalias !20113, !nonnull !21, !noundef !21
  %i.ew = getelementptr i8, ptr %i.es, i64 16
  %.val7.i.i = load i64, ptr %i.ew, align 8, !alias.scope !20105, !noalias !20113, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ex = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ey = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20114, !noalias !20115 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.fa, i64 %i.ex, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %i.es, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.er, ptr noundef nonnull align 8 dereferenceable(120) %spec.select.i.i, i64 120, i1 false), !alias.scope !20106, !noalias !20116
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %i.es, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 120 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dx
  %i.fh = icmp ne ptr %i.fe, %i.co
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h67a738a767bbb54dE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h67a738a767bbb54dE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.en, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fd, %.lr.ph.i.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fk, i1 false), !alias.scope !20106, !noalias !20117
  br label %_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit

_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h67a738a767bbb54dE.exit.i"
  %i.fl = shl i64 %i.cy, 1
  %i.fm = or disjoint i64 %i.fl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hb1a60d99693ccf08E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit
  %.sroa.0.0.i = phi i64 [ %i.fm, %_ZN4core5slice4sort6stable5merge5merge17hd9720fa5c43b9625E.exit ], [ %i.dg, %bb.t ] ; 2 uses
  %i.fn = icmp ugt i64 %i.cp, 1
  br i1 %i.fn, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fp = lshr i64 %.sroa.023.0, 1
  %i.fq = add i64 %i.fp, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fr, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = or i64 %1, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = xor i32 %i.fv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h6b975852744f735bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20056
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h76314107c0ca528dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fq, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fo, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20186)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20186, !noalias !20187, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 136
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20186, !noalias !20187, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20186, !noalias !20187, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20186, !noalias !20187, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20188, !noalias !20189 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20186, !noalias !20187, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20186, !noalias !20187, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20190, !noalias !20189 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20186, !noalias !20187, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20186, !noalias !20187, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20191, !noalias !20189 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf764d593555eed4fE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20131
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20192), !noalias !20187
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20193), !noalias !20187
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h923cdf14c2e3d37dE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_5
begin_hunk_6_@_ZN4core5slice4sort6stable5drift4sort17h76314107c0ca528dE:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cb, align 8, !alias.scope !20212, !noalias !20213
  store i64 %.sroa.0.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cc, align 8, !alias.scope !20214, !noalias !20215
  %i.cd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cg = sub i64 %factor, %i.ce
  %i.ch = add i64 %i.cf, %factor
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = mul i64 %i.ch, %.sroa.0.0
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit
  %.sroa.026.0 = phi i8 [ %i.cm, %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17ha5d5a21753d876b5E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cn, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cp, %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit ] ; 4 uses
  %i.cp = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ct, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !21 ; 3 uses
  %i.cw = lshr i64 %i.cv, 1                       ; 8 uses
  %i.cx = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cy = add nuw i64 %i.cw, %i.cx                ; 4 uses
  %i.cz = sub i64 %.sroa.09.0, %i.cy
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.cz ; 6 uses
  %i.db = icmp ugt i64 %i.cy, %3
  %i.dc = trunc i64 %.sroa.018.167 to i1
  %i.dd = or i64 %i.cv, %.sroa.018.167
  %i.de = trunc i64 %i.dd to i1
  %or.cond3.i = or i1 %i.db, %i.de
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = trunc i64 %i.cv to i1
  br i1 %i.df, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dg = shl i64 %i.cy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dh = or i64 %i.cw, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf764d593555eed4fE(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20168
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35": ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw
  %i.dn = or i64 %i.cx, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf764d593555eed4fE(ptr noalias noundef nonnull align 8 %i.dm, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20168
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20217)
  %i.ds = icmp eq i64 %i.cw, 0
  %i.dt = icmp eq i64 %i.cx, 0
  %or.cond.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 range(i64 0, -9223372036854775808) %i.cw) ; 2 uses
  %i.du = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.du, label %_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cw, %i.cx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dv, ptr %i.da
  %i.dw = mul i64 %.sroa.0.0.i.i36, 120           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dw, i1 false), !alias.scope !20218
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dy = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %bb.y ] ; 3 uses
  %i.dz = phi ptr [ %i.en, %.preheader.i ], [ %i.dv, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ec, %.preheader.i ], [ %i.co, %bb.y ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -120 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 -120 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -120 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dy, i64 -112
  %.val.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !20217, !noalias !20219, !nonnull !21, !noundef !21
  %i.ee = getelementptr i8, ptr %i.dy, i64 -104
  %.val10.i.i = load i64, ptr %i.ee, align 8, !alias.scope !20217, !noalias !20219, !noundef !21 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 -112
  %.val11.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !20216, !noalias !20220, !nonnull !21, !noundef !21
  %i.eg = getelementptr i8, ptr %i.dz, i64 -104
  %.val12.i.i = load i64, ptr %i.eg, align 8, !alias.scope !20216, !noalias !20220, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eh = sub i64 %.val10.i.i, %.val12.i.i
  %i.ei = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20221, !noalias !20222 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ek, i64 %i.eh, i64 %i.ej ; 2 uses
  %i.el = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.el, ptr %i.eb, ptr %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %..i.i, i64 120, i1 false), !alias.scope !20218, !noalias !20223
  %i.em = zext i1 %i.el to i64
  %i.en = getelementptr inbounds nuw [120 x i8], ptr %i.ea, i64 %i.em ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.eb, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ep = icmp eq ptr %i.en, %i.da
  %i.eq = icmp eq ptr %i.eo, %2
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8fbef7491e06d8eeE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.er = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %i.dv, %bb.y ] ; 4 uses
  %i.es = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.et = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.et, align 8, !alias.scope !20216, !noalias !20224, !nonnull !21, !noundef !21
  %i.eu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eu, align 8, !alias.scope !20216, !noalias !20224, !noundef !21 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  %.val.i19.i = load ptr, ptr %i.ev, align 8, !alias.scope !20217, !noalias !20225, !nonnull !21, !noundef !21
  %i.ew = getelementptr i8, ptr %i.es, i64 16
  %.val7.i.i = load i64, ptr %i.ew, align 8, !alias.scope !20217, !noalias !20225, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ex = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ey = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20226, !noalias !20227 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.fa, i64 %i.ex, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %i.es, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.er, ptr noundef nonnull align 8 dereferenceable(120) %spec.select.i.i, i64 120, i1 false), !alias.scope !20218, !noalias !20228
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %i.es, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 120 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dx
  %i.fh = icmp ne ptr %i.fe, %i.co
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8fbef7491e06d8eeE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8fbef7491e06d8eeE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.en, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fd, %.lr.ph.i.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fk, i1 false), !alias.scope !20218, !noalias !20229
  br label %_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit

_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8fbef7491e06d8eeE.exit.i"
  %i.fl = shl i64 %i.cy, 1
  %i.fm = or disjoint i64 %i.fl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hb42262c600238c53E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit
  %.sroa.0.0.i = phi i64 [ %i.fm, %_ZN4core5slice4sort6stable5merge5merge17hf363cf771d20b6d9E.exit ], [ %i.dg, %bb.t ] ; 2 uses
  %i.fn = icmp ugt i64 %i.cp, 1
  br i1 %i.fn, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fp = lshr i64 %.sroa.023.0, 1
  %i.fq = add i64 %i.fp, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fr, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = or i64 %1, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = xor i32 %i.fv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hf764d593555eed4fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20168
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h7d4f5c2cc765acf6E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fq, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fo, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20298)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20298, !noalias !20299, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 136
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20298, !noalias !20299, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20298, !noalias !20299, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20298, !noalias !20299, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20300, !noalias !20301 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20298, !noalias !20299, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20298, !noalias !20299, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20302, !noalias !20301 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20298, !noalias !20299, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20298, !noalias !20299, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20303, !noalias !20301 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hde5464bd94041c7cE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20243
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20304), !noalias !20299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20305), !noalias !20299
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h457380781450a7bbE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_6
begin_hunk_7_@_ZN4core5slice4sort6stable5drift4sort17h7d4f5c2cc765acf6E:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cb, align 8, !alias.scope !20324, !noalias !20325
  store i64 %.sroa.0.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cc, align 8, !alias.scope !20326, !noalias !20327
  %i.cd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cg = sub i64 %factor, %i.ce
  %i.ch = add i64 %i.cf, %factor
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = mul i64 %i.ch, %.sroa.0.0
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit
  %.sroa.026.0 = phi i8 [ %i.cm, %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h602b506df9164a9fE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cn, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cp, %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit ] ; 4 uses
  %i.cp = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ct, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !21 ; 3 uses
  %i.cw = lshr i64 %i.cv, 1                       ; 8 uses
  %i.cx = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cy = add nuw i64 %i.cw, %i.cx                ; 4 uses
  %i.cz = sub i64 %.sroa.09.0, %i.cy
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.cz ; 6 uses
  %i.db = icmp ugt i64 %i.cy, %3
  %i.dc = trunc i64 %.sroa.018.167 to i1
  %i.dd = or i64 %i.cv, %.sroa.018.167
  %i.de = trunc i64 %i.dd to i1
  %or.cond3.i = or i1 %i.db, %i.de
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = trunc i64 %i.cv to i1
  br i1 %i.df, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dg = shl i64 %i.cy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dh = or i64 %i.cw, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hde5464bd94041c7cE(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20280
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35": ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw
  %i.dn = or i64 %i.cx, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hde5464bd94041c7cE(ptr noalias noundef nonnull align 8 %i.dm, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20280
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20329)
  %i.ds = icmp eq i64 %i.cw, 0
  %i.dt = icmp eq i64 %i.cx, 0
  %or.cond.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 range(i64 0, -9223372036854775808) %i.cw) ; 2 uses
  %i.du = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.du, label %_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cw, %i.cx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dv, ptr %i.da
  %i.dw = mul i64 %.sroa.0.0.i.i36, 120           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dw, i1 false), !alias.scope !20330
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dy = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %bb.y ] ; 3 uses
  %i.dz = phi ptr [ %i.en, %.preheader.i ], [ %i.dv, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ec, %.preheader.i ], [ %i.co, %bb.y ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -120 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 -120 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -120 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dy, i64 -112
  %.val.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !20329, !noalias !20331, !nonnull !21, !noundef !21
  %i.ee = getelementptr i8, ptr %i.dy, i64 -104
  %.val10.i.i = load i64, ptr %i.ee, align 8, !alias.scope !20329, !noalias !20331, !noundef !21 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 -112
  %.val11.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !20328, !noalias !20332, !nonnull !21, !noundef !21
  %i.eg = getelementptr i8, ptr %i.dz, i64 -104
  %.val12.i.i = load i64, ptr %i.eg, align 8, !alias.scope !20328, !noalias !20332, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eh = sub i64 %.val10.i.i, %.val12.i.i
  %i.ei = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20333, !noalias !20334 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ek, i64 %i.eh, i64 %i.ej ; 2 uses
  %i.el = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.el, ptr %i.eb, ptr %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %..i.i, i64 120, i1 false), !alias.scope !20330, !noalias !20335
  %i.em = zext i1 %i.el to i64
  %i.en = getelementptr inbounds nuw [120 x i8], ptr %i.ea, i64 %i.em ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.eb, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ep = icmp eq ptr %i.en, %i.da
  %i.eq = icmp eq ptr %i.eo, %2
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb76de831ec3651aeE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.er = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %i.dv, %bb.y ] ; 4 uses
  %i.es = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.et = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.et, align 8, !alias.scope !20328, !noalias !20336, !nonnull !21, !noundef !21
  %i.eu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eu, align 8, !alias.scope !20328, !noalias !20336, !noundef !21 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  %.val.i19.i = load ptr, ptr %i.ev, align 8, !alias.scope !20329, !noalias !20337, !nonnull !21, !noundef !21
  %i.ew = getelementptr i8, ptr %i.es, i64 16
  %.val7.i.i = load i64, ptr %i.ew, align 8, !alias.scope !20329, !noalias !20337, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ex = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ey = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20338, !noalias !20339 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.fa, i64 %i.ex, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %i.es, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.er, ptr noundef nonnull align 8 dereferenceable(120) %spec.select.i.i, i64 120, i1 false), !alias.scope !20330, !noalias !20340
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %i.es, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 120 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dx
  %i.fh = icmp ne ptr %i.fe, %i.co
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb76de831ec3651aeE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb76de831ec3651aeE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.en, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fd, %.lr.ph.i.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fk, i1 false), !alias.scope !20330, !noalias !20341
  br label %_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit

_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hb76de831ec3651aeE.exit.i"
  %i.fl = shl i64 %i.cy, 1
  %i.fm = or disjoint i64 %i.fl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hce7a6031caad354fE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit
  %.sroa.0.0.i = phi i64 [ %i.fm, %_ZN4core5slice4sort6stable5merge5merge17h45339fcff98ed65cE.exit ], [ %i.dg, %bb.t ] ; 2 uses
  %i.fn = icmp ugt i64 %i.cp, 1
  br i1 %i.fn, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fp = lshr i64 %.sroa.023.0, 1
  %i.fq = add i64 %i.fp, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fr, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = or i64 %1, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = xor i32 %i.fv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hde5464bd94041c7cE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20280
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h8f8fd5300cf6f0d8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ex, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ev, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20386)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 1544
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20386, !noalias !20387, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 1552
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20386, !noalias !20387, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20386, !noalias !20387, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20386, !noalias !20387, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20388, !noalias !20389 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20386, !noalias !20387, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20386, !noalias !20387, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20390, !noalias !20389 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20386, !noalias !20387, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20386, !noalias !20387, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20391, !noalias !20389 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107: ; preds = %.preheader
  br i1 %.not5.i109, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i104, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb8e6a29033ccb4e7E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20355
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17h070038d5cac3b3afE.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread ], [ %.sroa.0.0.i.i105112116, %_ZN4core10intrinsics25typed_swap_nonoverlapping17h070038d5cac3b3afE.exit.i.i ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20392), !noalias !20387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20393), !noalias !20387
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107 ]
  %.sroa.0.0.i.i105112116 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hdab527bcb9041227E.exit.i.thread107 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.0.0.i.i105112116
  br label %.lr.ph.i.i38
end_hunk_7
begin_hunk_8_@_ZN4core5slice4sort6stable5drift4sort17h8f8fd5300cf6f0d8E:bb.a

_ZN4core10intrinsics25typed_swap_nonoverlapping17h070038d5cac3b3afE.exit.i.i: ; preds = %bb.p
  %i.bk = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hee7bd7b741d5b9feE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bl = lshr i64 %.sroa.018.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bn = sub i64 %factor, %i.bl
  %i.bo = add i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit
  %.sroa.026.0 = phi i8 [ %i.bt, %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hb4aec1a571663e8bE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bu = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bu, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bw, %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit ] ; 4 uses
  %i.bw = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.by, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit, %bb.r, %bb.q
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.q ], [ %.sroa.018.167, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.q ], [ %.sroa.02.168, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ca, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !21 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1                       ; 8 uses
  %i.ce = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 4 uses
  %i.cg = sub i64 %.sroa.09.0, %i.cf
  %i.ch = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %i.cg ; 6 uses
  %i.ci = icmp ugt i64 %i.cf, %3
  %i.cj = trunc i64 %.sroa.018.167 to i1
  %i.ck = or i64 %i.cc, %.sroa.018.167
  %i.cl = trunc i64 %i.ck to i1
  %or.cond3.i = or i1 %i.ci, %i.cl
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = trunc i64 %i.cc to i1
  br i1 %i.cm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cn = shl i64 %i.cf, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cj, label %bb.x, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit35"

bb.w:                                             ; preds = %bb.t
  %i.co = or i64 %i.cd, 1
  %i.cp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb8e6a29033ccb4e7E(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20368
  br label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit35": ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw [1536 x i8], ptr %i.ch, i64 %i.cd
  %i.cu = or i64 %i.ce, 1
  %i.cv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb8e6a29033ccb4e7E(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20368
  br label %bb.x

bb.x:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf04e561295021312E.exit35", %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20413)
  %i.cz = icmp eq i64 %i.cd, 0
  %i.da = icmp eq i64 %i.ce, 0
  %or.cond.i = or i1 %i.da, %i.cz
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 range(i64 0, -9223372036854775808) %i.cd) ; 2 uses
  %i.db = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.db, label %_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw [1536 x i8], ptr %i.ch, i64 %i.cd ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cd, %i.ce  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dc, ptr %i.ch
  %i.dd = mul i64 %.sroa.0.0.i.i36, 1536          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dd, i1 false), !alias.scope !20414
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.dd ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.df = phi ptr [ %i.dv, %.preheader.i ], [ %i.de, %bb.z ] ; 3 uses
  %i.dg = phi ptr [ %i.du, %.preheader.i ], [ %i.dc, %bb.z ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.bv, %bb.z ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -1536 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 -1536 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -1536 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.df, i64 -1528
  %.val.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !20413, !noalias !20415, !nonnull !21, !noundef !21
  %i.dl = getelementptr i8, ptr %i.df, i64 -1520
  %.val10.i.i = load i64, ptr %i.dl, align 8, !alias.scope !20413, !noalias !20415, !noundef !21 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dg, i64 -1528
  %.val11.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !20412, !noalias !20416, !nonnull !21, !noundef !21
  %i.dn = getelementptr i8, ptr %i.dg, i64 -1520
  %.val12.i.i = load i64, ptr %i.dn, align 8, !alias.scope !20412, !noalias !20416, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.do = sub i64 %.val10.i.i, %.val12.i.i
  %i.dp = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20417, !noalias !20418 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ds, ptr %i.di, ptr %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.dj, ptr noundef nonnull align 8 dereferenceable(1536) %..i.i, i64 1536, i1 false), !alias.scope !20414, !noalias !20419
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [1536 x i8], ptr %i.dh, i64 %i.dt ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dv = getelementptr inbounds nuw [1536 x i8], ptr %i.di, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dw = icmp eq ptr %i.du, %i.ch
  %i.dx = icmp eq ptr %i.dv, %2
  %or.cond.i.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha7146f5e582b2e51E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dy = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.ch, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %i.dc, %bb.z ] ; 4 uses
  %i.dz = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %2, %bb.z ] ; 4 uses
  %i.ea = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !20412, !noalias !20420, !nonnull !21, !noundef !21
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eb, align 8, !alias.scope !20412, !noalias !20420, !noundef !21 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val.i19.i = load ptr, ptr %i.ec, align 8, !alias.scope !20413, !noalias !20421, !nonnull !21, !noundef !21
  %i.ed = getelementptr i8, ptr %i.dz, i64 16
  %.val7.i.i = load i64, ptr %i.ed, align 8, !alias.scope !20413, !noalias !20421, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ee = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ef = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20422, !noalias !20423 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp eq i32 %i.ef, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.eh, i64 %i.ee, i64 %i.eg ; 2 uses
  %i.ei = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ei, ptr %i.dz, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.dy, ptr noundef nonnull align 8 dereferenceable(1536) %spec.select.i.i, i64 1536, i1 false), !alias.scope !20414, !noalias !20424
  %i.ej = zext i1 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [1536 x i8], ptr %i.dz, i64 %i.ej ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.el = getelementptr inbounds nuw [1536 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 1536 ; 2 uses
  %i.en = icmp ne ptr %i.ek, %i.de
  %i.eo = icmp ne ptr %i.el, %i.bv
  %or.cond.i23.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha7146f5e582b2e51E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha7146f5e582b2e51E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.du, %.preheader.i ], [ %i.em, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.de, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ek, %.lr.ph.i.i ] ; 2 uses
  %i.ep = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.er, i1 false), !alias.scope !20414, !noalias !20425
  br label %_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit

_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha7146f5e582b2e51E.exit.i"
  %i.es = shl i64 %i.cf, 1
  %i.et = or disjoint i64 %i.es, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h386621c1964ae54dE.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit
  %.sroa.0.0.i = phi i64 [ %i.et, %_ZN4core5slice4sort6stable5merge5merge17h5223514270c5a029E.exit ], [ %i.cn, %bb.u ] ; 2 uses
  %i.eu = icmp ugt i64 %i.bw, 1
  br i1 %i.eu, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ew = lshr i64 %.sroa.023.0, 1
  %i.ex = add i64 %i.ew, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ey = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ey, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ez = or i64 %1, 1
  %i.fa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = xor i32 %i.fc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17hb8e6a29033ccb4e7E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20368
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd7cb2621efb07bf6E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fq, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fo, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20494)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 128
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20494, !noalias !20495, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 136
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20494, !noalias !20495, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20494, !noalias !20495, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20494, !noalias !20495, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20496, !noalias !20497 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20494, !noalias !20495, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20494, !noalias !20495, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20498, !noalias !20497 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20494, !noalias !20495, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20494, !noalias !20495, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20499, !noalias !20497 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32e2320b8a07c070E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20439
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20500), !noalias !20495
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20501), !noalias !20495
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h07d8f2bc2dd6339eE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_8
begin_hunk_9_@_ZN4core5slice4sort6stable5drift4sort17hd7cb2621efb07bf6E:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cb, align 8, !alias.scope !20520, !noalias !20521
  store i64 %.sroa.0.0.copyload.i.i.i.14.i.i.i.i, ptr %i.cc, align 8, !alias.scope !20522, !noalias !20523
  %i.cd = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hd7292c75c74d59d6E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.cg = sub i64 %factor, %i.ce
  %i.ch = add i64 %i.cf, %factor
  %i.ci = mul i64 %i.cg, %.sroa.0.0
  %i.cj = mul i64 %i.ch, %.sroa.0.0
  %i.ck = xor i64 %i.cj, %i.ci
  %i.cl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ck, i1 false)
  %i.cm = trunc nuw nsw i64 %i.cl to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit
  %.sroa.026.0 = phi i8 [ %i.cm, %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h10901be7392d1316E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cn = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cn, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.co = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cp, %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit ] ; 4 uses
  %i.cp = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cr, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ct, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cp
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !21 ; 3 uses
  %i.cw = lshr i64 %i.cv, 1                       ; 8 uses
  %i.cx = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cy = add nuw i64 %i.cw, %i.cx                ; 4 uses
  %i.cz = sub i64 %.sroa.09.0, %i.cy
  %i.da = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.cz ; 6 uses
  %i.db = icmp ugt i64 %i.cy, %3
  %i.dc = trunc i64 %.sroa.018.167 to i1
  %i.dd = or i64 %i.cv, %.sroa.018.167
  %i.de = trunc i64 %i.dd to i1
  %or.cond3.i = or i1 %i.db, %i.de
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.df = trunc i64 %i.cv to i1
  br i1 %i.df, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dg = shl i64 %i.cy, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.dc, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dh = or i64 %i.cw, 1
  %i.di = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32e2320b8a07c070E(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cw, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20476
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35": ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw
  %i.dn = or i64 %i.cx, 1
  %i.do = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32e2320b8a07c070E(ptr noalias noundef nonnull align 8 %i.dm, i64 noundef %i.cx, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20476
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h5192eadae67d6ab9E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20525)
  %i.ds = icmp eq i64 %i.cw, 0
  %i.dt = icmp eq i64 %i.cx, 0
  %or.cond.i = or i1 %i.dt, %i.ds
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cx, i64 range(i64 0, -9223372036854775808) %i.cw) ; 2 uses
  %i.du = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.du, label %_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw [120 x i8], ptr %i.da, i64 %i.cw ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cw, %i.cx  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dv, ptr %i.da
  %i.dw = mul i64 %.sroa.0.0.i.i36, 120           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dw, i1 false), !alias.scope !20526
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dy = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %bb.y ] ; 3 uses
  %i.dz = phi ptr [ %i.en, %.preheader.i ], [ %i.dv, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.ec, %.preheader.i ], [ %i.co, %bb.y ]
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -120 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dy, i64 -120 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -120 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dy, i64 -112
  %.val.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !20525, !noalias !20527, !nonnull !21, !noundef !21
  %i.ee = getelementptr i8, ptr %i.dy, i64 -104
  %.val10.i.i = load i64, ptr %i.ee, align 8, !alias.scope !20525, !noalias !20527, !noundef !21 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 -112
  %.val11.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !20524, !noalias !20528, !nonnull !21, !noundef !21
  %i.eg = getelementptr i8, ptr %i.dz, i64 -104
  %.val12.i.i = load i64, ptr %i.eg, align 8, !alias.scope !20524, !noalias !20528, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.eh = sub i64 %.val10.i.i, %.val12.i.i
  %i.ei = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20529, !noalias !20530 ; 2 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = icmp eq i32 %i.ei, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.ek, i64 %i.eh, i64 %i.ej ; 2 uses
  %i.el = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.el, ptr %i.eb, ptr %i.ea
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ec, ptr noundef nonnull align 8 dereferenceable(120) %..i.i, i64 120, i1 false), !alias.scope !20526, !noalias !20531
  %i.em = zext i1 %i.el to i64
  %i.en = getelementptr inbounds nuw [120 x i8], ptr %i.ea, i64 %i.em ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.eo = getelementptr inbounds nuw [120 x i8], ptr %i.eb, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ep = icmp eq ptr %i.en, %i.da
  %i.eq = icmp eq ptr %i.eo, %2
  %or.cond.i.i = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h468293a99d7b3879E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.er = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %i.da, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %i.dv, %bb.y ] ; 4 uses
  %i.es = phi ptr [ %i.fd, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.et = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.et, align 8, !alias.scope !20524, !noalias !20532, !nonnull !21, !noundef !21
  %i.eu = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eu, align 8, !alias.scope !20524, !noalias !20532, !noundef !21 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.es, i64 8
  %.val.i19.i = load ptr, ptr %i.ev, align 8, !alias.scope !20525, !noalias !20533, !nonnull !21, !noundef !21
  %i.ew = getelementptr i8, ptr %i.es, i64 16
  %.val7.i.i = load i64, ptr %i.ew, align 8, !alias.scope !20525, !noalias !20533, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ex = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ey = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20534, !noalias !20535 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp eq i32 %i.ey, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.fa, i64 %i.ex, i64 %i.ez ; 2 uses
  %i.fb = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.fb, ptr %i.es, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.er, ptr noundef nonnull align 8 dereferenceable(120) %spec.select.i.i, i64 120, i1 false), !alias.scope !20526, !noalias !20536
  %i.fc = zext i1 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [120 x i8], ptr %i.es, i64 %i.fc ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fe = getelementptr inbounds nuw [120 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.er, i64 120 ; 2 uses
  %i.fg = icmp ne ptr %i.fd, %i.dx
  %i.fh = icmp ne ptr %i.fe, %i.co
  %or.cond.i23.i = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h468293a99d7b3879E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h468293a99d7b3879E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.en, %.preheader.i ], [ %i.ff, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.eo, %.preheader.i ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.fd, %.lr.ph.i.i ] ; 2 uses
  %i.fi = ptrtoint ptr %.sroa.7.0.i to i64
  %i.fj = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fk = sub nuw i64 %i.fi, %i.fj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fk, i1 false), !alias.scope !20526, !noalias !20537
  br label %_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit

_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h468293a99d7b3879E.exit.i"
  %i.fl = shl i64 %i.cy, 1
  %i.fm = or disjoint i64 %i.fl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h32168da054878b5dE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit
  %.sroa.0.0.i = phi i64 [ %i.fm, %_ZN4core5slice4sort6stable5merge5merge17hb3a4e963ece8367cE.exit ], [ %i.dg, %bb.t ] ; 2 uses
  %i.fn = icmp ugt i64 %i.cp, 1
  br i1 %i.fn, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fp = lshr i64 %.sroa.023.0, 1
  %i.fq = add i64 %i.fp, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fr = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fr, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = or i64 %1, 1
  %i.ft = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fs, i1 true)
  %i.fu = trunc nuw nsw i64 %i.ft to i32
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = xor i32 %i.fv, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h32e2320b8a07c070E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20476
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hea90a4d73b84ef93E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i104 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i109 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ex, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ev, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit", label %bb.q

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20582)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 1544
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20582, !noalias !20583, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 1552
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20582, !noalias !20583, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20582, !noalias !20583, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20582, !noalias !20583, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20584, !noalias !20585 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20582, !noalias !20583, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20582, !noalias !20583, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20586, !noalias !20585 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20582, !noalias !20583, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20582, !noalias !20583, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20587, !noalias !20585 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107: ; preds = %.preheader
  br i1 %.not5.i109, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i104, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2de60efd36675becE(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20551
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit": ; preds = %_ZN4core10intrinsics25typed_swap_nonoverlapping17hbbcba834103c69cbE.exit.i.i, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread ], [ %.sroa.0.0.i.i105112116, %_ZN4core10intrinsics25typed_swap_nonoverlapping17hbbcba834103c69cbE.exit.i.i ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20588), !noalias !20583
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20589), !noalias !20583
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107 ]
  %.sroa.0.0.i.i105112116 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h630265f694999398E.exit.i.thread107 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [1536 x i8], ptr %i.m, i64 %.sroa.0.0.i.i105112116
  br label %.lr.ph.i.i38
end_hunk_9
begin_hunk_10_@_ZN4core5slice4sort6stable5drift4sort17hea90a4d73b84ef93E:bb.a

_ZN4core10intrinsics25typed_swap_nonoverlapping17hbbcba834103c69cbE.exit.i.i: ; preds = %bb.p
  %i.bk = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8c6b9620109d326cE.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bl = lshr i64 %.sroa.018.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bn = sub i64 %factor, %i.bl
  %i.bo = add i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit
  %.sroa.026.0 = phi i8 [ %i.bt, %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hd9edbae5c9fda012E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bu = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bu, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.bw, %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit ] ; 4 uses
  %i.bw = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.by, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit, %bb.r, %bb.q
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.q ], [ %.sroa.018.167, %bb.r ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.q ], [ %.sroa.02.168, %bb.r ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ca, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bw
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !21 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1                       ; 8 uses
  %i.ce = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cf = add nuw i64 %i.cd, %i.ce                ; 4 uses
  %i.cg = sub i64 %.sroa.09.0, %i.cf
  %i.ch = getelementptr inbounds nuw [1536 x i8], ptr %0, i64 %i.cg ; 6 uses
  %i.ci = icmp ugt i64 %i.cf, %3
  %i.cj = trunc i64 %.sroa.018.167 to i1
  %i.ck = or i64 %i.cc, %.sroa.018.167
  %i.cl = trunc i64 %i.ck to i1
  %or.cond3.i = or i1 %i.ci, %i.cl
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = trunc i64 %i.cc to i1
  br i1 %i.cm, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cn = shl i64 %i.cf, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cj, label %bb.x, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit35"

bb.w:                                             ; preds = %bb.t
  %i.co = or i64 %i.cd, 1
  %i.cp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2de60efd36675becE(ptr noalias noundef nonnull align 8 %i.ch, i64 noundef %i.cd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20564
  br label %bb.v

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit35": ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw [1536 x i8], ptr %i.ch, i64 %i.cd
  %i.cu = or i64 %i.ce, 1
  %i.cv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = trunc nuw nsw i64 %i.cv to i32
  %i.cx = shl nuw nsw i32 %i.cw, 1
  %i.cy = xor i32 %i.cx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2de60efd36675becE(ptr noalias noundef nonnull align 8 %i.ct, i64 noundef %i.ce, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20564
  br label %bb.x

bb.x:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit35", %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20609)
  %i.cz = icmp eq i64 %i.cd, 0
  %i.da = icmp eq i64 %i.ce, 0
  %or.cond.i = or i1 %i.da, %i.cz
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ce, i64 range(i64 0, -9223372036854775808) %i.cd) ; 2 uses
  %i.db = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.db, label %_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw [1536 x i8], ptr %i.ch, i64 %i.cd ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cd, %i.ce  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dc, ptr %i.ch
  %i.dd = mul i64 %.sroa.0.0.i.i36, 1536          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dd, i1 false), !alias.scope !20610
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %i.dd ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.df = phi ptr [ %i.dv, %.preheader.i ], [ %i.de, %bb.z ] ; 3 uses
  %i.dg = phi ptr [ %i.du, %.preheader.i ], [ %i.dc, %bb.z ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.bv, %bb.z ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -1536 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.df, i64 -1536 ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -1536 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.df, i64 -1528
  %.val.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !20609, !noalias !20611, !nonnull !21, !noundef !21
  %i.dl = getelementptr i8, ptr %i.df, i64 -1520
  %.val10.i.i = load i64, ptr %i.dl, align 8, !alias.scope !20609, !noalias !20611, !noundef !21 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dg, i64 -1528
  %.val11.i.i = load ptr, ptr %i.dm, align 8, !alias.scope !20608, !noalias !20612, !nonnull !21, !noundef !21
  %i.dn = getelementptr i8, ptr %i.dg, i64 -1520
  %.val12.i.i = load i64, ptr %i.dn, align 8, !alias.scope !20608, !noalias !20612, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.do = sub i64 %.val10.i.i, %.val12.i.i
  %i.dp = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20613, !noalias !20614 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp eq i32 %i.dp, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dr, i64 %i.do, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.ds, ptr %i.di, ptr %i.dh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.dj, ptr noundef nonnull align 8 dereferenceable(1536) %..i.i, i64 1536, i1 false), !alias.scope !20610, !noalias !20615
  %i.dt = zext i1 %i.ds to i64
  %i.du = getelementptr inbounds nuw [1536 x i8], ptr %i.dh, i64 %i.dt ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.dv = getelementptr inbounds nuw [1536 x i8], ptr %i.di, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.dw = icmp eq ptr %i.du, %i.ch
  %i.dx = icmp eq ptr %i.dv, %2
  %or.cond.i.i = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e3f6442184d2ac0E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.lr.ph.i.i
  %i.dy = phi ptr [ %i.em, %.lr.ph.i.i ], [ %i.ch, %bb.z ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %i.dc, %bb.z ] ; 4 uses
  %i.dz = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %2, %bb.z ] ; 4 uses
  %i.ea = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ea, align 8, !alias.scope !20608, !noalias !20616, !nonnull !21, !noundef !21
  %i.eb = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eb, align 8, !alias.scope !20608, !noalias !20616, !noundef !21 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dz, i64 8
  %.val.i19.i = load ptr, ptr %i.ec, align 8, !alias.scope !20609, !noalias !20617, !nonnull !21, !noundef !21
  %i.ed = getelementptr i8, ptr %i.dz, i64 16
  %.val7.i.i = load i64, ptr %i.ed, align 8, !alias.scope !20609, !noalias !20617, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.ee = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.ef = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20618, !noalias !20619 ; 2 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp eq i32 %i.ef, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.eh, i64 %i.ee, i64 %i.eg ; 2 uses
  %i.ei = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ei, ptr %i.dz, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.dy, ptr noundef nonnull align 8 dereferenceable(1536) %spec.select.i.i, i64 1536, i1 false), !alias.scope !20610, !noalias !20620
  %i.ej = zext i1 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [1536 x i8], ptr %i.dz, i64 %i.ej ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.el = getelementptr inbounds nuw [1536 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dy, i64 1536 ; 2 uses
  %i.en = icmp ne ptr %i.ek, %i.de
  %i.eo = icmp ne ptr %i.el, %i.bv
  %or.cond.i23.i = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e3f6442184d2ac0E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e3f6442184d2ac0E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.du, %.preheader.i ], [ %i.em, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dv, %.preheader.i ], [ %i.de, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ek, %.lr.ph.i.i ] ; 2 uses
  %i.ep = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.er = sub nuw i64 %i.ep, %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.er, i1 false), !alias.scope !20610, !noalias !20621
  br label %_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit

_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit: ; preds = %bb.x, %bb.y, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h8e3f6442184d2ac0E.exit.i"
  %i.es = shl i64 %i.cf, 1
  %i.et = or disjoint i64 %i.es, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hf83a4bd7f1637dc6E.exit: ; preds = %bb.u, %_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit
  %.sroa.0.0.i = phi i64 [ %i.et, %_ZN4core5slice4sort6stable5merge5merge17h581dade787cff61fE.exit ], [ %i.cn, %bb.u ] ; 2 uses
  %i.eu = icmp ugt i64 %i.bw, 1
  br i1 %i.eu, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ev = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ew = lshr i64 %.sroa.023.0, 1
  %i.ex = add i64 %i.ew, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ey = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ey, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ez = or i64 %1, 1
  %i.fa = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ez, i1 true)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %i.fd = xor i32 %i.fc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2de60efd36675becE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(1536) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20564
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hf28e10aadeb5efd0E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i103 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i108 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.fe, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.fc, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20678)
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %i.m, i64 80
  %.val14.i = load ptr, ptr %i.o, align 8, !alias.scope !20678, !noalias !20679, !nonnull !21, !noundef !21 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 88
  %.val15.i = load i64, ptr %i.p, align 8, !alias.scope !20678, !noalias !20679, !noundef !21 ; 4 uses
  %i.q = getelementptr i8, ptr %i.m, i64 8
  %.val16.i = load ptr, ptr %i.q, align 8, !alias.scope !20678, !noalias !20679, !nonnull !21, !noundef !21
  %i.r = getelementptr i8, ptr %i.m, i64 16
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !20678, !noalias !20679, !noundef !21 ; 2 uses
  %..i.i.i.i.i43 = tail call i64 @llvm.umin.i64(i64 %.val15.i, i64 %.val17.i)
  %i.s = sub i64 %.val15.i, %.val17.i
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val14.i, ptr nonnull readonly align 1 %.val16.i, i64 %..i.i.i.i.i43), !alias.scope !20680, !noalias !20681 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i44 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i44, 0 ; 2 uses
  %.not76 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader54

.preheader54:                                     ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not76, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106, label %.lr.ph63

.lr.ph:                                           ; preds = %.preheader54, %bb.j
  %.val13.i = phi i64 [ %.val11.i, %bb.j ], [ %.val15.i, %.preheader54 ] ; 2 uses
  %.val12.i = phi ptr [ %.val10.i, %bb.j ], [ %.val14.i, %.preheader54 ]
  %.sroa.01.0.i.i59 = phi i64 [ %i.af, %bb.j ], [ 2, %.preheader54 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.sroa.01.0.i.i59 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val10.i = load ptr, ptr %i.y, align 8, !alias.scope !20678, !noalias !20679, !nonnull !21, !noundef !21 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  %.val11.i = load i64, ptr %i.z, align 8, !alias.scope !20678, !noalias !20679, !noundef !21 ; 3 uses
  %..i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.aa = sub i64 %.val11.i, %.val13.i
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i41), !alias.scope !20682, !noalias !20681 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i42 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i42, 0
  br i1 %i.ae, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i59, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i, label %.lr.ph

.lr.ph63:                                         ; preds = %.preheader, %bb.k
  %.val9.i = phi i64 [ %.val7.i, %bb.k ], [ %.val15.i, %.preheader ] ; 2 uses
  %.val8.i = phi ptr [ %.val.i, %bb.k ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i62 = phi i64 [ %i.ao, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.sroa.01.1.i.i62 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !20678, !noalias !20679, !nonnull !21, !noundef !21 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val7.i = load i64, ptr %i.ai, align 8, !alias.scope !20678, !noalias !20679, !noundef !21 ; 3 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val7.i, i64 %.val9.i)
  %i.aj = sub i64 %.val7.i, %.val9.i
  %i.ak = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i), !alias.scope !20683, !noalias !20681 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.am, i64 %i.aj, i64 %i.al
  %i.an = icmp slt i64 %spec.store.select.i.i.i.i.i, 0
  br i1 %i.an, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i

bb.k:                                             ; preds = %.lr.ph63
  %i.ao = add nuw i64 %.sroa.01.1.i.i62, 1        ; 2 uses
  %exitcond83.not = icmp eq i64 %i.ao, %i.l
  br i1 %exitcond83.not, label %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i, label %.lr.ph63

_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph63
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i62, %.lr.ph63 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i59, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.ap = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.ap)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106: ; preds = %.preheader
  br i1 %.not5.i108, label %bb.g, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread: ; preds = %.preheader54
  br i1 %.not5.i103, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i
  br i1 %i.w, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.aq = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h56440cbbd7b0ba67E(ptr noalias noundef nonnull align 8 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20635
  %i.ar = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4952 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread ], [ %.sroa.0.0.i.i104111115, %.lr.ph.i.i38 ]
  %i.at = shl i64 %.sroa.0.0.i.i4952, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit

bb.o:                                             ; preds = %bb.l
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20684), !noalias !20679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20685), !noalias !20679
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106, %bb.o
  %i.aw = phi i64 [ %i.av, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106 ]
  %.sroa.0.0.i.i104111115 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hbb8e990c811d5befE.exit.i.thread106 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.m, i64 %.sroa.0.0.i.i104111115
  br label %.lr.ph.i.i38
end_hunk_10
begin_hunk_11_@_ZN4core5slice4sort6stable5drift4sort17hf28e10aadeb5efd0E:bb.a
  store i64 %.sroa.02.0.copyload.i.i.i.8.i.i.i.i, ptr %i.bp, align 8, !alias.scope !20698, !noalias !20699
  store i64 %.sroa.0.0.copyload.i.i.i.8.i.i.i.i, ptr %i.bq, align 8, !alias.scope !20700, !noalias !20701
  %i.br = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.aw
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h873156b36b8de0e8E.exit" ], [ %i.as, %bb.n ], [ %i.aq, %bb.m ] ; 2 uses
  %i.bs = lshr i64 %.sroa.018.0, 1
  %i.bt = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.bu = sub i64 %factor, %i.bs
  %i.bv = add i64 %i.bt, %factor
  %i.bw = mul i64 %i.bu, %.sroa.0.0
  %i.bx = mul i64 %i.bv, %.sroa.0.0
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.by, i1 false)
  %i.ca = trunc nuw nsw i64 %i.bz to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit
  %.sroa.026.0 = phi i8 [ %i.ca, %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h5cd643cbf8ff2cd7E.exit ], [ 1, %bb.f ] ; 2 uses
  %i.cb = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.cb, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph69, %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit
  %.sroa.02.168 = phi i64 [ %.sroa.02.0, %.lr.ph69 ], [ %i.cd, %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit ] ; 2 uses
  %.sroa.018.167 = phi i64 [ %.sroa.018.0, %.lr.ph69 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit ] ; 4 uses
  %i.cd = add i64 %.sroa.02.168, -1               ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !21
  %.not29 = icmp ult i8 %i.cf, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.167, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.168, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ch, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cd
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !21 ; 3 uses
  %i.ck = lshr i64 %i.cj, 1                       ; 8 uses
  %i.cl = lshr i64 %.sroa.018.167, 1              ; 6 uses
  %i.cm = add nuw i64 %i.ck, %i.cl                ; 4 uses
  %i.cn = sub i64 %.sroa.09.0, %i.cm
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.cn ; 6 uses
  %i.cp = icmp ugt i64 %i.cm, %3
  %i.cq = trunc i64 %.sroa.018.167 to i1
  %i.cr = or i64 %i.cj, %.sroa.018.167
  %i.cs = trunc i64 %i.cr to i1
  %or.cond3.i = or i1 %i.cp, %i.cs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ct = trunc i64 %i.cj to i1
  br i1 %i.ct, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cu = shl i64 %i.cm, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cq, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.cv = or i64 %i.ck, 1
  %i.cw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h56440cbbd7b0ba67E(ptr noalias noundef nonnull align 8 %i.co, i64 noundef %i.ck, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20660
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit35": ; preds = %bb.u
  %i.da = getelementptr inbounds nuw [72 x i8], ptr %i.co, i64 %i.ck
  %i.db = or i64 %i.cl, 1
  %i.dc = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h56440cbbd7b0ba67E(ptr noalias noundef nonnull align 8 %i.da, i64 noundef %i.cl, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20660
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h842afed932f5b877E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20703)
  %i.dg = icmp eq i64 %i.ck, 0
  %i.dh = icmp eq i64 %i.cl, 0
  %or.cond.i = or i1 %i.dh, %i.dg
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.cl, i64 range(i64 0, -9223372036854775808) %i.ck) ; 2 uses
  %i.di = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.di, label %_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw [72 x i8], ptr %i.co, i64 %i.ck ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ck, %i.cl  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dj, ptr %i.co
  %i.dk = mul i64 %.sroa.0.0.i.i36, 72            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dk, i1 false), !alias.scope !20704
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %i.dk ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.dm = phi ptr [ %i.ec, %.preheader.i ], [ %i.dl, %bb.y ] ; 3 uses
  %i.dn = phi ptr [ %i.eb, %.preheader.i ], [ %i.dj, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.cc, %bb.y ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -72 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 -72 ; 2 uses
  %i.dq = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -72 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dm, i64 -64
  %.val.i.i = load ptr, ptr %i.dr, align 8, !alias.scope !20703, !noalias !20705, !nonnull !21, !noundef !21
  %i.ds = getelementptr i8, ptr %i.dm, i64 -56
  %.val10.i.i = load i64, ptr %i.ds, align 8, !alias.scope !20703, !noalias !20705, !noundef !21 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dn, i64 -64
  %.val11.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !20702, !noalias !20706, !nonnull !21, !noundef !21
  %i.du = getelementptr i8, ptr %i.dn, i64 -56
  %.val12.i.i = load i64, ptr %i.du, align 8, !alias.scope !20702, !noalias !20706, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.dv = sub i64 %.val10.i.i, %.val12.i.i
  %i.dw = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !20707, !noalias !20708 ; 2 uses
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp eq i32 %i.dw, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.dy, i64 %i.dv, i64 %i.dx ; 2 uses
  %i.dz = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.dz, ptr %i.dp, ptr %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, ptr noundef nonnull align 8 dereferenceable(72) %..i.i, i64 72, i1 false), !alias.scope !20704, !noalias !20709
  %i.ea = zext i1 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [72 x i8], ptr %i.do, i64 %i.ea ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ec = getelementptr inbounds nuw [72 x i8], ptr %i.dp, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.ed = icmp eq ptr %i.eb, %i.co
  %i.ee = icmp eq ptr %i.ec, %2
  %or.cond.i.i = select i1 %i.ed, i1 true, i1 %i.ee
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1483b59b41dbdafbE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.ef = phi ptr [ %i.et, %.lr.ph.i.i ], [ %i.co, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.es, %.lr.ph.i.i ], [ %i.dj, %bb.y ] ; 4 uses
  %i.eg = phi ptr [ %i.er, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.eh = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.eh, align 8, !alias.scope !20702, !noalias !20710, !nonnull !21, !noundef !21
  %i.ei = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.ei, align 8, !alias.scope !20702, !noalias !20710, !noundef !21 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eg, i64 8
  %.val.i19.i = load ptr, ptr %i.ej, align 8, !alias.scope !20703, !noalias !20711, !nonnull !21, !noundef !21
  %i.ek = getelementptr i8, ptr %i.eg, i64 16
  %.val7.i.i = load i64, ptr %i.ek, align 8, !alias.scope !20703, !noalias !20711, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.el = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.em = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !20712, !noalias !20713 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp eq i32 %i.em, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.eo, i64 %i.el, i64 %i.en ; 2 uses
  %i.ep = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ep, ptr %i.eg, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ef, ptr noundef nonnull align 8 dereferenceable(72) %spec.select.i.i, i64 72, i1 false), !alias.scope !20704, !noalias !20714
  %i.eq = zext i1 %i.ep to i64
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.eg, i64 %i.eq ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.es = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 72 ; 2 uses
  %i.eu = icmp ne ptr %i.er, %i.dl
  %i.ev = icmp ne ptr %i.es, %i.cc
  %or.cond.i23.i = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1483b59b41dbdafbE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1483b59b41dbdafbE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.eb, %.preheader.i ], [ %i.et, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ec, %.preheader.i ], [ %i.dl, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.er, %.lr.ph.i.i ] ; 2 uses
  %i.ew = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ex = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ey = sub nuw i64 %i.ew, %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ey, i1 false), !alias.scope !20704, !noalias !20715
  br label %_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit

_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h1483b59b41dbdafbE.exit.i"
  %i.ez = shl i64 %i.cm, 1
  %i.fa = or disjoint i64 %i.ez, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hf32620268c95196bE.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit
  %.sroa.0.0.i = phi i64 [ %i.fa, %_ZN4core5slice4sort6stable5merge5merge17hb19208e570c9f178E.exit ], [ %i.cu, %bb.t ] ; 2 uses
  %i.fb = icmp ugt i64 %i.cd, 1
  br i1 %i.fb, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fc = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.fd = lshr i64 %.sroa.023.0, 1
  %i.fe = add i64 %i.fd, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.ff = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ff, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fg = or i64 %1, 1
  %i.fh = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fg, i1 true)
  %i.fi = trunc nuw nsw i64 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 1
  %i.fk = xor i32 %i.fj, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h56440cbbd7b0ba67E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !20660
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h2de60efd36675becE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(1536) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1536 x i8], align 8              ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit"
  %.sroa.0.0.ph106 = phi ptr [ %i.hp, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph105 = phi i64 [ %i.ha, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph104 = phi i32 [ %i.dg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph103 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph106, i64 8
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph106, i64 16
  %i.f = ptrtoint ptr %.sroa.0.0.ph106 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph103, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph103, i64 8
  %i.h = getelementptr i8, ptr %.sroa.026.0.ph103, i64 16
  %i.i = icmp eq i32 %.sroa.023.0.ph104, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %bb.ak
  %i.j = icmp eq i32 %i.dg, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit", %bb.ak, %bb.a
  %.sroa.0.0.ph.lcssa97 = phi ptr [ %.sroa.0.0.ph106, %bb.ak ], [ %0, %bb.a ], [ %i.hp, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ] ; 7 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ak ], [ %1, %bb.a ], [ %i.ha, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha988174c552de973E.exit" ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20783)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h87c656f5cd102687E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [1536 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.n ; 3 uses
  %i.q = getelementptr [1536 x i8], ptr %2, i64 %i.n ; 8 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hf4ebdefebaf1b770E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hf4ebdefebaf1b770E(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %2, ptr noundef nonnull align 8 dereferenceable(1536) %.sroa.0.0.ph.lcssa97, i64 1536, i1 false), !alias.scope !20784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.q, ptr noundef nonnull align 8 dereferenceable(1536) %i.p, i64 1536, i1 false), !alias.scope !20784
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 6 uses
  %i.r = sub nuw nsw i64 %.sroa.15.0.lcssa, %i.n  ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %i.n
  br i1 %i.s, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.i, %bb.h
  %i.t = icmp samesign ult i64 %.sroa.0.0.i, %i.r
  br i1 %i.t, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [1536 x i8], ptr %i.p, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx276 = mul nuw nsw i64 %.sroa.08.09.1.i, 1536
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx276 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.v, ptr noundef nonnull align 8 dereferenceable(1536) %i.u, i64 1536, i1 false), !alias.scope !20784
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val11.i.1.i = load ptr, ptr %i.w, align 8, !alias.scope !20785, !noalias !20783, !nonnull !21, !noundef !21 ; 3 uses
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %.val12.i.1.i = load i64, ptr %i.x, align 8, !alias.scope !20785, !noalias !20783, !noundef !21 ; 5 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -1528
  %.val13.i.1.i = load ptr, ptr %i.y, align 8, !alias.scope !20785, !noalias !20783, !nonnull !21, !noundef !21
  %i.z = getelementptr i8, ptr %i.v, i64 -1520
  %.val14.i.1.i = load i64, ptr %i.z, align 8, !alias.scope !20785, !noalias !20783, !noundef !21 ; 2 uses
  %..i.i.i.i.i.i29.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val14.i.1.i)
  %i.aa = sub i64 %.val12.i.1.i, %.val14.i.1.i
  %i.ab = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val13.i.1.i, i64 %..i.i.i.i.i.i29.1.i), !alias.scope !20786, !noalias !20783 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i.i30.1.i = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.1.i, 0
  br i1 %i.ae, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.08.0.copyload.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !20785, !noalias !20783
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.0.0.i31.1.i265 = getelementptr inbounds i8, ptr %i.v, i64 -1536 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %i.v, ptr noundef nonnull align 8 dereferenceable(1536) %.sroa.0.0.i31.1.i265, i64 1536, i1 false), !alias.scope !20785, !noalias !20783
  %i.ag = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ag, label %._crit_edge270, label %.lr.ph269

bb.j:                                             ; preds = %.lr.ph269
  %.sroa.0.0.i31.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i267, i64 -1536 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1536) %.sroa.0.0.i31.1.i267, ptr noundef nonnull align 8 dereferenceable(1536) %.sroa.0.0.i31.1.i, i64 1536, i1 false), !alias.scope !20785, !noalias !20783
  %i.ah = icmp eq ptr %.sroa.0.0.i31.1.i, %i.q
  br i1 %i.ah, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i267 = phi ptr [ %.sroa.0.0.i31.1.i, %bb.j ], [ %.sroa.0.0.i31.1.i265, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %i.v, %bb.i ] ; 3 uses
  %i.ai = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -3064
  %.val9.i.1.i = load ptr, ptr %i.ai, align 8, !alias.scope !20785, !noalias !20783, !nonnull !21, !noundef !21
  %i.aj = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -3056
  %.val10.i.1.i = load i64, ptr %i.aj, align 8, !alias.scope !20785, !noalias !20783, !noundef !21 ; 2 uses
  %..i.i.i.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val10.i.1.i)
  %i.ak = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %i.al = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val9.i.1.i, i64 %..i.i.i.i.i15.i.1.i), !alias.scope !20787, !noalias !20783 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %spec.store.select.i.i.i.i.i16.i.1.i = select i1 %i.an, i64 %i.ak, i64 %i.am
  %i.ao = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i, 0
  br i1 %i.ao, label %bb.j, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.j, %.lr.ph269, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.v, %bb.i ], [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %.sroa.5.0.i.1.i266, %.lr.ph269 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %i.q, %bb.i ], [ %i.q, %bb.j ], [ %.sroa.0.0.i31.1.i267, %.lr.ph269 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i31.lcssa.1.i, align 8, !alias.scope !20785, !noalias !20788
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -1528
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !20785, !noalias !20788
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -1520
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !20785, !noalias !20788
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -1512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1512) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(1512) %i.af, i64 1512, i1 false), !alias.scope !20784
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i: ; preds = %._crit_edge270, %.lr.ph.1.i
  %i.ap = icmp samesign ult i64 %.sroa.08.110.1.i, %i.r ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5625ccd62d7e0eebE.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20789)
  %i.ar = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.as = getelementptr inbounds nuw [1536 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.ar
  %i.at = getelementptr inbounds nuw [1536 x i8], ptr %2, i64 %i.ar
  %i.au = getelementptr i8, ptr %i.q, i64 -1536
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = getelementptr i8, ptr %i.bx, i64 1536   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.bw, i64 1536
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
end_hunk_11
