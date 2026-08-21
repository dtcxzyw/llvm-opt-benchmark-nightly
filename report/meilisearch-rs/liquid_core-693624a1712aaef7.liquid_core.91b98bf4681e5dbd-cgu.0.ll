Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E:bb.a
  %i.bh = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !3
  %.not29 = icmp ult i8 %i.bj, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.018.163 to i1
  %i.bv = or i64 %i.bn, %.sroa.018.163
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl i64 %i.bq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit35"

bb.v:                                             ; preds = %bb.s
  %i.bz = or i64 %i.bo, 1
  %i.ca = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = trunc nuw nsw i64 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = xor i32 %i.cc, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %i.bs, i64 noundef %i.bo, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.cd, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !11108
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit35": ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo
  %i.cf = or i64 %i.bp, 1
  %i.cg = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cf, i1 true)
  %i.ch = trunc nuw nsw i64 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 1
  %i.cj = xor i32 %i.ci, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %i.ce, i64 noundef %i.bp, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.cj, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !11108
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11112)
  %i.ck = icmp eq i64 %i.bo, 0
  %i.cl = icmp eq i64 %i.bp, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 range(i64 0, -9223372036854775808) %i.bo) ; 3 uses
  %i.cm = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cm, label %_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bo ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.bo, %i.bp  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cn, ptr %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %.16.i, i64 %.sroa.0.0.i.i36, i1 false), !alias.scope !11114
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.0.0.i.i36 ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.cp = phi ptr [ %i.da, %.preheader.i ], [ %i.co, %bb.y ]
  %i.cq = phi ptr [ %i.cy, %.preheader.i ], [ %i.cn, %bb.y ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ct, %.preheader.i ], [ %i.bg, %bb.y ]
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -1 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -1 ; 2 uses
  %.val.i.i = load i8, ptr %i.cs, align 1, !range !864, !alias.scope !11112, !noalias !11115, !noundef !3 ; 2 uses
  %.val10.i.i = load i8, ptr %i.cr, align 1, !range !864, !alias.scope !11109, !noalias !11118, !noundef !3 ; 2 uses
  %i.cu = icmp samesign ult i8 %.val.i.i, %.val10.i.i ; 2 uses
  %i.cv = tail call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val10.i.i)
  store i8 %i.cv, ptr %i.ct, align 1, !alias.scope !11109, !noalias !11118
  %i.cw = xor i1 %i.cu, true
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cu to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cz ; 3 uses
  %i.db = icmp eq ptr %i.cy, %i.bs
  %i.dc = icmp eq ptr %i.da, %2
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf2663b6d2a2f0c3eE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.dd = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.bs, %bb.y ] ; 2 uses
  %.sroa.0.04.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %i.cn, %bb.y ] ; 2 uses
  %i.de = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %2, %bb.y ] ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.04.i.i, align 1, !range !864, !alias.scope !11109, !noalias !11119, !noundef !3 ; 2 uses
  %.val.i19.i = load i8, ptr %i.de, align 1, !range !864, !alias.scope !11112, !noalias !11122, !noundef !3 ; 2 uses
  %i.df = icmp samesign ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 2 uses
  %i.dg = xor i1 %i.df, true
  %i.dh = tail call i8 @llvm.umin.i8(i8 %.sroa.0.0.val.i.i, i8 %.val.i19.i)
  store i8 %i.dh, ptr %i.dd, align 1, !alias.scope !11109, !noalias !11119
  %i.di = zext i1 %i.dg to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.df to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 1 ; 2 uses
  %i.dn = icmp ne ptr %i.dj, %i.co
  %i.do = icmp ne ptr %i.dl, %i.bg
  %or.cond.i20.i = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf2663b6d2a2f0c3eE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf2663b6d2a2f0c3eE.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.dm, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.da, %.preheader.i ], [ %i.co, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dj, %.lr.ph.i.i ] ; 2 uses
  %i.dp = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dq = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dr = sub nuw i64 %i.dp, %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.13.1.i, ptr align 1 %.sroa.0.1.i, i64 %i.dr, i1 false), !alias.scope !11114, !noalias !11123
  br label %_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit

_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf2663b6d2a2f0c3eE.exit.i"
  %i.ds = shl i64 %i.bq, 1
  %i.dt = or disjoint i64 %i.ds, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit
  %.sroa.0.0.i = phi i64 [ %i.dt, %_ZN4core5slice4sort6stable5merge5merge17hae36d9c7ac6b5cfeE.exit ], [ %i.by, %bb.t ] ; 2 uses
  %i.du = icmp ugt i64 %i.bh, 1
  br i1 %i.du, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.dv = add i64 %.sroa.02.1.lcssa, 1
  %i.dw = lshr i64 %.sroa.023.0, 1
  %i.dx = add i64 %i.dw, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.dy = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dy, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dz = or i64 %1, 1
  %i.ea = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dz, i1 true)
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = xor i32 %i.ec, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.ed, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !11108
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 1 captures(address) dereferenceable_or_null(1) %5, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %6) unnamed_addr #32 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit"
  %.sroa.0.0.ph126 = phi ptr [ %i.lb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ], [ %0, %bb.a ] ; 23 uses
  %.sroa.15.0.ph125 = phi i64 [ %i.kg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph124 = phi i32 [ %i.ec, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph123 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ], [ %5, %bb.a ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph126 to i64     ; 7 uses
  %.not = icmp eq ptr %.sroa.026.0.ph123, null
  %i.e = icmp eq i32 %.sroa.023.0.ph124, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph280.preheader

.lr.ph280.preheader:                              ; preds = %.lr.ph
  %i.f = add i64 %i.d, -1
  br label %.lr.ph280

bb.b:                                             ; preds = %bb.af
  %i.g = icmp eq i32 %i.ec, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph280

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit", %bb.af, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %.sroa.0.0.ph126, %bb.af ], [ %0, %bb.a ], [ %i.lb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ] ; 18 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.af ], [ %1, %bb.a ], [ %i.kg, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit" ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  %i.h = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.h, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.i = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.j = icmp ult i64 %3, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i64 %.sroa.15.0.lcssa, 1            ; 12 uses
  %i.l = icmp samesign ugt i64 %.sroa.15.0.lcssa, 15
  br i1 %i.l, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  br i1 %i.m, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.15.0.lcssa ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h82a6a93d90f448cdE(ptr noundef nonnull align 1 %.sroa.0.0.ph.lcssa116, ptr noundef nonnull align 1 %2, ptr noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h82a6a93d90f448cdE(ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 1
  %.val12.i.i = load i8, ptr %i.r, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %.val13.i.i = load i8, ptr %.sroa.0.0.ph.lcssa116, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %i.s = icmp samesign ult i8 %.val12.i.i, %.val13.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 3
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 2
  %.val10.i.i = load i8, ptr %i.t, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %.val11.i.i = load i8, ptr %i.u, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %i.v = icmp samesign ult i8 %.val10.i.i, %.val11.i.i ; 2 uses
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.w ; 2 uses
  %i.y = xor i1 %i.s, true
  %i.z = zext i1 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.z ; 3 uses
  %i.ab = select i1 %i.v, i64 3, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.ab ; 3 uses
  %i.ad = select i1 %i.v, i64 2, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.ad ; 2 uses
  %.val8.i.i = load i8, ptr %i.ac, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val9.i.i = load i8, ptr %i.x, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.af = icmp samesign ult i8 %.val8.i.i, %.val9.i.i ; 2 uses
  %.val6.i.i = load i8, ptr %i.ae, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val7.i.i = load i8, ptr %i.aa, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.ag = icmp samesign ult i8 %.val6.i.i, %.val7.i.i ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.ac, ptr %i.aa, !unpredictable !3
  %i.ai = select i1 %i.af, ptr %i.x, ptr %i.ah, !unpredictable !3
  %i.aj = select i1 %i.af, ptr %i.aa, ptr %i.ac, !unpredictable !3
  %i.ak = select i1 %i.ag, ptr %i.ae, ptr %i.aj, !unpredictable !3
  %.val.i.i = load i8, ptr %i.ak, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val5.i.i = load i8, ptr %i.ai, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.al = call i8 @llvm.umin.i8(i8 %.val8.i.i, i8 %.val9.i.i)
  store i8 %i.al, ptr %2, align 1, !alias.scope !11131, !noalias !11128
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.an = call i8 @llvm.umin.i8(i8 %.val.i.i, i8 %.val5.i.i)
  store i8 %i.an, ptr %i.am, align 1, !alias.scope !11131, !noalias !11128
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ap = call i8 @llvm.umax.i8(i8 %.val.i.i, i8 %.val5.i.i)
  store i8 %i.ap, ptr %i.ao, align 1, !alias.scope !11131, !noalias !11128
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ar = call i8 @llvm.umax.i8(i8 %.val6.i.i, i8 %.val7.i.i)
  store i8 %i.ar, ptr %i.aq, align 1, !alias.scope !11131, !noalias !11128
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.k ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %.val12.i29.i = load i8, ptr %i.au, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %.val13.i30.i = load i8, ptr %i.as, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %i.av = icmp samesign ult i8 %.val12.i29.i, %.val13.i30.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %.val10.i31.i = load i8, ptr %i.aw, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %.val11.i32.i = load i8, ptr %i.ax, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3
  %i.ay = icmp samesign ult i8 %.val10.i31.i, %.val11.i32.i ; 2 uses
  %i.az = zext i1 %i.av to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.az ; 2 uses
  %i.bb = xor i1 %i.av, true
  %i.bc = zext i1 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bc ; 3 uses
  %i.be = select i1 %i.ay, i64 3, i64 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.be ; 3 uses
  %i.bg = select i1 %i.ay, i64 2, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bg ; 2 uses
  %.val8.i33.i = load i8, ptr %i.bf, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val9.i34.i = load i8, ptr %i.ba, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.bi = icmp samesign ult i8 %.val8.i33.i, %.val9.i34.i ; 2 uses
  %.val6.i35.i = load i8, ptr %i.bh, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val7.i36.i = load i8, ptr %i.bd, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.bj = icmp samesign ult i8 %.val6.i35.i, %.val7.i36.i ; 2 uses
  %i.bk = select i1 %i.bj, ptr %i.bf, ptr %i.bd, !unpredictable !3
  %i.bl = select i1 %i.bi, ptr %i.ba, ptr %i.bk, !unpredictable !3
  %i.bm = select i1 %i.bi, ptr %i.bd, ptr %i.bf, !unpredictable !3
  %i.bn = select i1 %i.bj, ptr %i.bh, ptr %i.bm, !unpredictable !3
  %.val.i37.i = load i8, ptr %i.bn, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %.val5.i38.i = load i8, ptr %i.bl, align 1, !range !864, !alias.scope !11128, !noalias !11131, !noundef !3 ; 2 uses
  %i.bo = call i8 @llvm.umin.i8(i8 %.val8.i33.i, i8 %.val9.i34.i)
  store i8 %i.bo, ptr %i.at, align 1, !alias.scope !11131, !noalias !11128
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bq = call i8 @llvm.umin.i8(i8 %.val.i37.i, i8 %.val5.i38.i)
  store i8 %i.bq, ptr %i.bp, align 1, !alias.scope !11131, !noalias !11128
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bs = call i8 @llvm.umax.i8(i8 %.val.i37.i, i8 %.val5.i38.i)
  store i8 %i.bs, ptr %i.br, align 1, !alias.scope !11131, !noalias !11128
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bu = call i8 @llvm.umax.i8(i8 %.val6.i35.i, i8 %.val7.i36.i)
  store i8 %i.bu, ptr %i.bt, align 1, !alias.scope !11131, !noalias !11128
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.bv = load i8, ptr %.sroa.0.0.ph.lcssa116, align 1, !alias.scope !11128, !noalias !11131
  store i8 %i.bv, ptr %2, align 1, !alias.scope !11131, !noalias !11128
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.k
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %i.k
  %i.by = load i8, ptr %i.bw, align 1, !alias.scope !11128, !noalias !11131
  store i8 %i.by, ptr %i.bx, align 1, !alias.scope !11131, !noalias !11128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 6 uses
  %7 = sub nsw i64 %.sroa.15.0.lcssa, %i.k        ; 2 uses
  %8 = icmp samesign ult i64 %.sroa.0.0.i, %i.k
  br i1 %8, label %.lr.ph.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i, %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.k
  %10 = getelementptr i8, ptr %2, i64 %i.k        ; 6 uses
  %11 = icmp ult i64 %.sroa.0.0.i, %7
  br i1 %11, label %.lr.ph.preheader.1.i, label %.loopexit.1.i

.lr.ph.preheader.1.i:                             ; preds = %.loopexit.i
  %.sroa.08.18.1.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i, %.lr.ph.preheader.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i ], [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 %.sroa.08.09.1.i
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 %.sroa.08.09.1.i ; 3 uses
  %i.cb = load i8, ptr %i.bz, align 1, !alias.scope !11128, !noalias !11131 ; 4 uses
  store i8 %i.cb, ptr %i.ca, align 1, !alias.scope !11131, !noalias !11128
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -1 ; 2 uses
  %.val10.i46.1.i = load i8, ptr %i.cc, align 1, !range !864, !alias.scope !11131, !noalias !11128, !noundef !3 ; 2 uses
  %i.cd = icmp samesign ult i8 %i.cb, %.val10.i46.1.i
  br i1 %i.cd, label %.preheader.i.1.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i

.preheader.i.1.i.preheader:                       ; preds = %.lr.ph.1.i
  store i8 %.val10.i46.1.i, ptr %i.ca, align 1, !alias.scope !11131, !noalias !11128
  %i.ce = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ce, label %._crit_edge291, label %.lr.ph290

.preheader.i.1.i:                                 ; preds = %.lr.ph290
  store i8 %.val8.i48.1.i, ptr %.sroa.0.0.i47.1.i289, align 1, !alias.scope !11131, !noalias !11128
  %i.cf = icmp eq ptr %i.cg, %10
  br i1 %i.cf, label %._crit_edge291, label %.lr.ph290

.lr.ph290:                                        ; preds = %.preheader.i.1.i.preheader, %.preheader.i.1.i
  %.sroa.0.0.i47.1.i289 = phi ptr [ %i.cg, %.preheader.i.1.i ], [ %i.cc, %.preheader.i.1.i.preheader ] ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.0.i47.1.i289, i64 -1 ; 3 uses
  %.val8.i48.1.i = load i8, ptr %i.cg, align 1, !range !864, !alias.scope !11131, !noalias !11128, !noundef !3 ; 2 uses
  %i.ch = icmp samesign ult i8 %i.cb, %.val8.i48.1.i
  br i1 %i.ch, label %.preheader.i.1.i, label %._crit_edge291

._crit_edge291:                                   ; preds = %.preheader.i.1.i, %.lr.ph290, %.preheader.i.1.i.preheader
  %.sroa.0.0.i47.lcssa.1.i = phi ptr [ %10, %.preheader.i.1.i.preheader ], [ %10, %.preheader.i.1.i ], [ %.sroa.0.0.i47.1.i289, %.lr.ph290 ]
  store i8 %i.cb, ptr %.sroa.0.0.i47.lcssa.1.i, align 1, !alias.scope !11131, !noalias !11133
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i: ; preds = %._crit_edge291, %.lr.ph.1.i
  %i.ci = icmp ult i64 %.sroa.08.110.1.i, %7      ; 2 uses
  %i.cj = zext i1 %i.ci to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.cj
  br i1 %i.ci, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  %i.ck = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck
  %i.cn = getelementptr i8, ptr %10, i64 -1
  br label %.lr.ph.i.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %.sroa.08.18.i = add nuw nsw i64 %.sroa.0.0.i, 1
  br label %.lr.ph.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.co = getelementptr i8, ptr %i.df, i64 1      ; 2 uses
  %i.cp = getelementptr i8, ptr %i.de, i64 1
  %i.cq = and i64 %.sroa.15.0.lcssa, 1
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.014.i.i = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 2 uses
  %.sroa.06.013.i.i = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %10, %.loopexit.1.i ] ; 2 uses
  %.sroa.010.012.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa116, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.011.i.i = phi ptr [ %i.df, %.lr.ph.i.i ], [ %i.cn, %.loopexit.1.i ] ; 2 uses
  %.sroa.015.010.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %i.cm, %.loopexit.1.i ] ; 2 uses
  %.sroa.017.09.i.i = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.cl, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.08.i.i = phi i64 [ %i.cs, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.cs = add nuw nsw i64 %.sroa.018.08.i.i, 1    ; 2 uses
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.013.i.i, align 1, !range !864, !alias.scope !11141, !noalias !11128, !noundef !3 ; 2 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.014.i.i, align 1, !range !864, !alias.scope !11141, !noalias !11128, !noundef !3 ; 2 uses
  %i.ct = icmp samesign ult i8 %.sroa.06.0.val.i.i, %.sroa.0.0.val.i.i ; 2 uses
  %i.cu = xor i1 %i.ct, true
  %i.cv = call i8 @llvm.umin.i8(i8 %.sroa.06.0.val.i.i, i8 %.sroa.0.0.val.i.i)
  store i8 %i.cv, ptr %.sroa.010.012.i.i, align 1, !alias.scope !11128, !noalias !11142
  %i.cw = zext i1 %i.ct to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i.i, i64 %i.cw ; 4 uses
  %i.cy = zext i1 %i.cu to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 %i.cy ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.010.012.i.i, i64 1 ; 2 uses
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.010.i.i, align 1, !range !864, !alias.scope !11141, !noalias !11128, !noundef !3 ; 2 uses
  %.sroa.013.0.val.i.i = load i8, ptr %.sroa.013.011.i.i, align 1, !range !864, !alias.scope !11141, !noalias !11128, !noundef !3 ; 2 uses
  %i.db = icmp samesign ult i8 %.sroa.015.0.val.i.i, %.sroa.013.0.val.i.i ; 2 uses
  %i.dc = xor i1 %i.db, true
  %i.dd = call i8 @llvm.umax.i8(i8 %.sroa.015.0.val.i.i, i8 %.sroa.013.0.val.i.i)
  store i8 %i.dd, ptr %.sroa.017.09.i.i, align 1, !alias.scope !11128, !noalias !11146
  %.neg.i.i.i = sext i1 %i.dc to i64
  %i.de = getelementptr i8, ptr %.sroa.015.010.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.db to i64
  %i.df = getelementptr i8, ptr %.sroa.013.011.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.017.09.i.i, i64 -1
  %exitcond.not.i.i = icmp eq i64 %i.cs, %i.k
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dh = icmp ult ptr %i.cz, %i.co               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.dh, ptr %i.cz, ptr %i.cx
  %i.di = load i8, ptr %.sroa.0.0..sroa.06.0.i.i, align 1, !alias.scope !11141, !noalias !11128
  store i8 %i.di, ptr %i.da, align 1, !alias.scope !11128, !noalias !11141
  %i.dj = zext i1 %i.dh to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.dj
  %i.dl = xor i1 %i.dh, true
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.dm
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.cx, %._crit_edge.i.i ], [ %i.dn, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.cz, %._crit_edge.i.i ], [ %i.dk, %bb.k ]
  %i.do = icmp ne ptr %.sroa.0.1.i.i, %i.co
  %i.dp = icmp ne ptr %.sroa.06.1.i.i, %i.cp
  %or.cond.i.i = select i1 %i.do, i1 true, i1 %i.dp, !prof !3088
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit, !prof !3088

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #57
          to label %.noexc.i unwind label %bb.n, !noalias !11150

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph.lcssa116, ptr nonnull align 1 %2, i64 range(i64 0, 33) %.sroa.15.0.lcssa, i1 false), !alias.scope !11150, !noalias !11151
  resume { ptr, i32 } %i.dq

.lr.ph.i:                                         ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i, %.lr.ph.preheader.i
  %.sroa.08.110.i = phi i64 [ %.sroa.08.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i ], [ %.sroa.08.18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.08.09.i = phi i64 [ %.sroa.08.110.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa116, i64 %.sroa.08.09.i
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.08.09.i ; 3 uses
  %i.dt = load i8, ptr %i.dr, align 1, !alias.scope !11128, !noalias !11131 ; 4 uses
  store i8 %i.dt, ptr %i.ds, align 1, !alias.scope !11131, !noalias !11128
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  %.val10.i46.i = load i8, ptr %i.du, align 1, !range !864, !alias.scope !11131, !noalias !11128, !noundef !3 ; 2 uses
  %i.dv = icmp samesign ult i8 %i.dt, %.val10.i46.i
  br i1 %i.dv, label %.preheader.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i
  store i8 %.val10.i46.i, ptr %i.ds, align 1, !alias.scope !11131, !noalias !11128
  %i.dw = icmp eq i64 %.sroa.08.09.i, 1
  br i1 %i.dw, label %._crit_edge286, label %.lr.ph285

.preheader.i.i:                                   ; preds = %.lr.ph285
  store i8 %.val8.i48.i, ptr %.sroa.0.0.i47.i284, align 1, !alias.scope !11131, !noalias !11128
  %i.dx = icmp eq ptr %i.dy, %2
  br i1 %i.dx, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i47.i284 = phi ptr [ %i.dy, %.preheader.i.i ], [ %i.du, %.preheader.i.i.preheader ] ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.0.i47.i284, i64 -1 ; 3 uses
  %.val8.i48.i = load i8, ptr %i.dy, align 1, !range !864, !alias.scope !11131, !noalias !11128, !noundef !3 ; 2 uses
  %i.dz = icmp samesign ult i8 %i.dt, %.val8.i48.i
  br i1 %i.dz, label %.preheader.i.i, label %._crit_edge286

._crit_edge286:                                   ; preds = %.preheader.i.i, %.lr.ph285, %.preheader.i.i.preheader
  %.sroa.0.0.i47.lcssa.i = phi ptr [ %2, %.preheader.i.i.preheader ], [ %2, %.preheader.i.i ], [ %.sroa.0.0.i47.i284, %.lr.ph285 ]
  store i8 %i.dt, ptr %.sroa.0.0.i47.lcssa.i, align 1, !alias.scope !11131, !noalias !11133
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17hd9c1559dc521e891E.exit.i: ; preds = %._crit_edge286, %.lr.ph.i
  %i.ea = icmp ult i64 %.sroa.08.110.i, %i.k      ; 2 uses
  %i.eb = zext i1 %i.ea to i64
  %.sroa.08.1.i = add nuw i64 %.sroa.08.110.i, %i.eb
  br i1 %i.ea, label %.lr.ph.i, label %.loopexit.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.0119.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph125, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E(ptr noalias noundef nonnull align 1 %.sroa.0.0.ph126, i64 noundef %.sroa.15.0119.lcssa, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 1 %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit

.lr.ph280:                                        ; preds = %.lr.ph280.preheader, %bb.b
  %.sroa.023.0118279 = phi i32 [ %i.ec, %bb.b ], [ %.sroa.023.0.ph124, %.lr.ph280.preheader ]
  %.sroa.15.0119278 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.15.0.ph125, %.lr.ph280.preheader ] ; 19 uses
  %i.ec = add i32 %.sroa.023.0118279, -1          ; 4 uses
  %i.ed = lshr i64 %.sroa.15.0119278, 3           ; 3 uses
  %i.ee = shl nuw nsw i64 %i.ed, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ee ; 3 uses
  %i.eg = mul nuw i64 %i.ed, 7
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.eg ; 3 uses
  %i.ei = icmp ult i64 %.sroa.15.0119278, 64
  br i1 %i.ei, label %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph280
  %i.ej = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hb9a1fcb386906b64E(ptr noundef nonnull readonly align 1 %.sroa.0.0.ph126, ptr noundef readonly %i.ef, ptr noundef readonly %i.eh, i64 noundef %i.ed)
  br label %bb.p

_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i: ; preds = %.lr.ph280
  %.val5.i = load i8, ptr %.sroa.0.0.ph126, align 1, !range !864, !alias.scope !11156, !noundef !3 ; 2 uses
  %.val6.i = load i8, ptr %i.ef, align 1, !range !864, !alias.scope !11156, !noundef !3 ; 2 uses
  %i.ek = icmp samesign ult i8 %.val5.i, %.val6.i ; 2 uses
  %.val4.i = load i8, ptr %i.eh, align 1, !range !864, !alias.scope !11156, !noundef !3 ; 2 uses
  %i.el = icmp samesign ult i8 %.val5.i, %.val4.i
  %i.em = xor i1 %i.ek, %i.el
  %i.en = icmp samesign ult i8 %.val6.i, %.val4.i
  %i.eo = xor i1 %i.ek, %i.en
  %..i.i = select i1 %i.eo, ptr %i.eh, ptr %i.ef
  %.sroa.0.0.i.i = select i1 %i.em, ptr %.sroa.0.0.ph126, ptr %..i.i
  br label %bb.p

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_ZN4core5slice4sort6shared5pivot7median317hfe9718f70b4bd2bcE.exit.i ], [ %i.ej, %bb.o ]
  %i.ep = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eq = sub nuw i64 %i.ep, %i.d                 ; 5 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.15.0119278
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.eq
  %i.et = load i8, ptr %i.es, align 1, !range !864, !noundef !3 ; 9 uses
  store i8 %i.et, ptr %i.b, align 1
  br i1 %.not, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.026.0.val = load i8, ptr %.sroa.026.0.ph123, align 1, !range !864, !noundef !3
  %.not81 = icmp samesign ult i8 %.sroa.026.0.val, %i.et
  br i1 %.not81, label %.critedge, label %.critedge35

.critedge:                                        ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !11159)
  call void @llvm.experimental.noalias.scope.decl(metadata !11162)
  %.not82 = icmp ult i64 %3, %.sroa.15.0119278
  br i1 %.not82, label %bb.s, label %bb.r, !prof !3088

bb.r:                                             ; preds = %.critedge
  %i.eu = getelementptr i8, ptr %2, i64 %.sroa.15.0119278 ; 4 uses
  br label %bb.t

bb.s:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.43.0.i = phi ptr [ %i.eu, %bb.r ], [ %i.gx, %bb.u ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.r ], [ %.sroa.27.2.lcssa.i, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph126, %bb.r ], [ %i.ha, %bb.u ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %i.eq, %bb.r ], [ %.sroa.15.0119278, %bb.u ] ; 6 uses
  %i.ev = call i64 @llvm.usub.sat.i64(i64 %.sroa.02.0.i, i64 3)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ev ; 2 uses
  %i.ex = icmp ult ptr %.sroa.9.0.i, %i.ew
  br i1 %i.ex, label %.lr.ph.i36, label %._crit_edge.i

.lr.ph.i36:                                       ; preds = %bb.t, %.lr.ph.i36
  %.sroa.9.131.i = phi ptr [ %i.fv, %.lr.ph.i36 ], [ %.sroa.9.0.i, %bb.t ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.fu, %.lr.ph.i36 ], [ %.sroa.27.0.i, %bb.t ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.fr, %.lr.ph.i36 ], [ %.sroa.43.0.i, %bb.t ] ; 4 uses
  %.val34.i = load i8, ptr %.sroa.9.131.i, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.ey = icmp samesign ult i8 %.val34.i, %i.et   ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -1
  %.sroa.01.0.i.i = select i1 %i.ey, ptr %2, ptr %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i8 %.val34.i, ptr %i.fa, align 1, !alias.scope !11162, !noalias !11164
  %i.fb = zext i1 %i.ey to i64
  %i.fc = add i64 %.sroa.27.130.i, %i.fb          ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 1
  %.val32.i = load i8, ptr %i.fd, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.fe = icmp samesign ult i8 %.val32.i, %i.et   ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -2
  %.sroa.01.0.i36.i = select i1 %i.fe, ptr %2, ptr %i.ff
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i36.i, i64 %i.fc
  store i8 %.val32.i, ptr %i.fg, align 1, !alias.scope !11162, !noalias !11167
  %i.fh = zext i1 %i.fe to i64
  %i.fi = add i64 %i.fc, %i.fh                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 2
  %.val30.i = load i8, ptr %i.fj, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.fk = icmp samesign ult i8 %.val30.i, %i.et   ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -3
  %.sroa.01.0.i37.i = select i1 %i.fk, ptr %2, ptr %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i37.i, i64 %i.fi
  store i8 %.val30.i, ptr %i.fm, align 1, !alias.scope !11162, !noalias !11170
  %i.fn = zext i1 %i.fk to i64
  %i.fo = add i64 %i.fi, %i.fn                    ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 3
  %.val28.i = load i8, ptr %i.fp, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.fq = icmp samesign ult i8 %.val28.i, %i.et   ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -4 ; 3 uses
  %.sroa.01.0.i38.i = select i1 %i.fq, ptr %2, ptr %i.fr
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i38.i, i64 %i.fo
  store i8 %.val28.i, ptr %i.fs, align 1, !alias.scope !11162, !noalias !11173
  %i.ft = zext i1 %i.fq to i64
  %i.fu = add i64 %i.fo, %i.ft                    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 4 ; 3 uses
  %i.fw = icmp ult ptr %i.fv, %i.ew
  br i1 %i.fw, label %.lr.ph.i36, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i36, %bb.t
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.t ], [ %i.fr, %.lr.ph.i36 ] ; 3 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.t ], [ %i.fu, %.lr.ph.i36 ] ; 4 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.t ], [ %i.fv, %.lr.ph.i36 ] ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.02.0.i
  %i.fy = icmp ult ptr %.sroa.9.1.lcssa.i, %i.fx
  br i1 %i.fy, label %.lr.ph38.preheader.i, label %._crit_edge39.i

.lr.ph38.preheader.i:                             ; preds = %._crit_edge.i
  %.sroa.9.1.lcssa53.i = ptrtoaddr ptr %.sroa.9.1.lcssa.i to i64 ; 3 uses
  %scevgep.i = getelementptr i8, ptr %.sroa.9.1.lcssa.i, i64 %i.d
  %i.fz = sub i64 %.sroa.02.0.i, %.sroa.9.1.lcssa53.i
  %scevgep54.i = getelementptr i8, ptr %scevgep.i, i64 %i.fz ; 3 uses
  %i.ga = add i64 %.sroa.02.0.i, %i.d
  %i.gb = sub i64 %i.ga, %.sroa.9.1.lcssa53.i
  %i.gc = add i64 %i.f, %.sroa.02.0.i
  %xtraiter = and i64 %i.gb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.i.prol.loopexit, label %.lr.ph38.i.prol

.lr.ph38.i.prol:                                  ; preds = %.lr.ph38.preheader.i
  %.val.i.prol = load i8, ptr %.sroa.9.1.lcssa.i, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.gd = icmp samesign ult i8 %.val.i.prol, %i.et ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.1.lcssa.i, i64 -1 ; 3 uses
  %.sroa.01.0.i39.i.prol = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i.prol, i64 %.sroa.27.1.lcssa.i
  store i8 %.val.i.prol, ptr %i.gf, align 1, !alias.scope !11162, !noalias !11176
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %.sroa.27.1.lcssa.i, %i.gg      ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.1.lcssa.i, i64 1
  br label %.lr.ph38.i.prol.loopexit

.lr.ph38.i.prol.loopexit:                         ; preds = %.lr.ph38.i.prol, %.lr.ph38.preheader.i
  %.lcssa342.unr = phi ptr [ poison, %.lr.ph38.preheader.i ], [ %i.ge, %.lr.ph38.i.prol ]
  %.lcssa341.unr = phi i64 [ poison, %.lr.ph38.preheader.i ], [ %i.gh, %.lr.ph38.i.prol ]
  %.sroa.9.236.i.unr = phi ptr [ %.sroa.9.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gi, %.lr.ph38.i.prol ]
  %.sroa.27.235.i.unr = phi i64 [ %.sroa.27.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.gh, %.lr.ph38.i.prol ]
  %.sroa.43.234.i.unr = phi ptr [ %.sroa.43.1.lcssa.i, %.lr.ph38.preheader.i ], [ %i.ge, %.lr.ph38.i.prol ]
  %i.gj = icmp eq i64 %i.gc, %.sroa.9.1.lcssa53.i
  br i1 %i.gj, label %._crit_edge39.i, label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %.lcssa342.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gs, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %.lcssa341.unr, %.lr.ph38.i.prol.loopexit ], [ %i.gv, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %scevgep54.i, %.lr.ph38.i ], [ %scevgep54.i, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %i.gk = icmp eq i64 %.sroa.02.0.i, %.sroa.15.0119278
  br i1 %i.gk, label %bb.v, label %bb.u

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.prol.loopexit, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.9.236.i.unr, %.lr.ph38.i.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gv, %.lr.ph38.i ], [ %.sroa.27.235.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gs, %.lr.ph38.i ], [ %.sroa.43.234.i.unr, %.lr.ph38.i.prol.loopexit ] ; 2 uses
  %.val.i = load i8, ptr %.sroa.9.236.i, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.gl = icmp samesign ult i8 %.val.i, %i.et     ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -1
  %.sroa.01.0.i39.i = select i1 %i.gl, ptr %2, ptr %i.gm
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i, i64 %.sroa.27.235.i
  store i8 %.val.i, ptr %i.gn, align 1, !alias.scope !11162, !noalias !11176
  %i.go = zext i1 %i.gl to i64
  %i.gp = add i64 %.sroa.27.235.i, %i.go          ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 1
  %.val.i.1 = load i8, ptr %i.gq, align 1, !range !864, !alias.scope !11159, !noalias !11162, !noundef !3 ; 2 uses
  %i.gr = icmp samesign ult i8 %.val.i.1, %i.et   ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -2 ; 3 uses
  %.sroa.01.0.i39.i.1 = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i.1, i64 %i.gp
  store i8 %.val.i.1, ptr %i.gt, align 1, !alias.scope !11162, !noalias !11176
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %i.gp, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq ptr %i.gw, %scevgep54.i
  br i1 %exitcond.not.i.1, label %._crit_edge39.i, label %.lr.ph38.i

bb.u:                                             ; preds = %._crit_edge39.i
  %i.gx = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -1 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.sroa.27.2.lcssa.i
  %i.gz = load i8, ptr %.sroa.9.2.lcssa.i, align 1, !alias.scope !11159, !noalias !11179
  store i8 %i.gz, ptr %i.gy, align 1, !alias.scope !11162, !noalias !11182
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE:bb.a
_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.z = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.aa, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit
  %i.ab = or i64 %1, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = xor i32 %i.ae, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hc327c0f35e0eb2fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.af, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i
  %i.ag = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit", label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ah = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !11248, !noalias !11253, !nonnull !3, !align !28, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !11248, !noalias !11253, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !11255
  store ptr %i.ak, ptr %i.aj, align 8, !alias.scope !11256, !noalias !11257
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.am, ptr %i.an, align 8, !alias.scope !11256, !noalias !11257
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit": ; preds = %.lr.ph.i.i.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread
  %i.ao = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11253)
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bg, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 3 uses
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !11248, !noalias !11253, !nonnull !3, !align !28, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !11248, !noalias !11253, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !11255
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !11256, !noalias !11257
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !alias.scope !11256, !noalias !11257
  %i.ay = xor i64 %.sroa.0.014.i.i, -2
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ap, i64 %i.ay ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !11248, !noalias !11253, !nonnull !3, !align !28, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !11248, !noalias !11253, !noundef !3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !11255
  store ptr %i.bc, ptr %i.bb, align 8, !alias.scope !11256, !noalias !11257
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !alias.scope !11256, !noalias !11257
  %i.bg = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h3dffb04160f4ba02E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree nonnull readnone align 1 captures(none) %2) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %.not25 = icmp eq i64 %i.c, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph27

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit, %bb.a
  ret void

.lr.ph27:                                         ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit
  %.sroa.4.026 = phi i64 [ %i.d, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit ], [ %i.c, %bb.a ]
  %i.d = add i64 %.sroa.4.026, -1                 ; 6 uses
  %.not10 = icmp ult i64 %i.d, %1
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph27
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph27
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.05.0, %.sroa.0.0.i19
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.sroa.05.0, 1                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i22 = icmp ult i64 %i.i, %.sroa.0.0.i19
  br i1 %.not.i22, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ai, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ah, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i23 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.05.0, %bb.d ]
  %i.l = add nuw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i19
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !3, !align !28, !noundef !3
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12 = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %.val13 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !28, !noundef !3
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val14 = load i64, ptr %i.q, align 8, !noundef !3 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12, i64 %.val14)
  %i.r = sub i64 %.val12, %.val14
  %i.s = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val13, i64 %..i.i.i.i.i), !alias.scope !11258 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.u, i64 %i.r, i64 %i.t
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.v = add nuw i64 %spec.store.select.i.i.i.i.i.lobit, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i23 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val15 = load ptr, ptr %i.w, align 8, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %.val16 = load i64, ptr %i.y, align 8, !noundef !3 ; 3 uses
  %.val17 = load ptr, ptr %i.x, align 8, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %.val18 = load i64, ptr %i.z, align 8, !noundef !3 ; 3 uses
  %..i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val16, i64 %.val18)
  %i.aa = sub i64 %.val16, %.val18
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val15, ptr nonnull readonly align 1 %.val17, i64 %..i.i.i.i.i20), !alias.scope !11268 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i21 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i21, 0
  br i1 %i.ae, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %.val17 to i64
  %i.ag = ptrtoint ptr %.val15 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11281)
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !11278, !noalias !11281
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !11281, !noalias !11278
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11285)
  store i64 %.val18, ptr %i.y, align 8, !alias.scope !11283, !noalias !11285
  store i64 %.val16, ptr %i.z, align 8, !alias.scope !11285, !noalias !11283
  %i.ah = shl i64 %.sroa.04.0.i, 1                ; 2 uses
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %.not.i = icmp ult i64 %i.ai, %.sroa.0.0.i19
  br i1 %.not.i, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit

_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph27
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hc327c0f35e0eb2fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %2, i32 noundef range(i32 0, 127) %3, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [768 x i8], align 8               ; 15 uses
  %i.f = icmp ult i64 %1, 33
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph120

.lr.ph:                                           ; preds = %.backedge
  %i.h = icmp eq i32 %i.bm, 0
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
  %5 = sub nsw i64 %.sroa.14.0.lcssa, %i.j        ; 2 uses
  %6 = icmp samesign ult i64 %.sroa.0.0.i.i, %i.j
  br i1 %6, label %.lr.ph.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i, %bb.g
  %7 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %i.j
  %8 = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.j ; 4 uses
  %9 = icmp ult i64 %.sroa.0.0.i.i, %5
  br i1 %9, label %.lr.ph.preheader.1.i.i, label %.loopexit.1.i.i

.lr.ph.preheader.1.i.i:                           ; preds = %.loopexit.i.i
  %.sroa.08.14.1.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i, %.lr.ph.preheader.1.i.i
  %.sroa.08.16.1.i.i = phi i64 [ %.sroa.08.1.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i ], [ %.sroa.08.14.1.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %.sroa.08.05.1.i.i = phi i64 [ %.sroa.08.16.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.1.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %.sroa.08.05.1.i.i
  %.idx132 = shl nuw nsw i64 %.sroa.08.05.1.i.i, 4
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 %.idx132 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !alias.scope !11296
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 3 uses
  %.val11.i.1.i.i = load ptr, ptr %i.x, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3 ; 3 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val12.i.1.i.i = load i64, ptr %i.z, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 5 uses
  %.val13.i.1.i.i = load ptr, ptr %i.y, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.aa = getelementptr i8, ptr %i.x, i64 -8
  %.val14.i.1.i.i = load i64, ptr %i.aa, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val14.i.1.i.i)
  %i.ab = sub i64 %.val12.i.1.i.i, %.val14.i.1.i.i
  %i.ac = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i.i, ptr nonnull readonly align 1 %.val13.i.1.i.i, i64 %..i.i.i.i.i.i.1.i.i), !alias.scope !11297, !noalias !11307 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %spec.store.select.i.i.i.i.i.i.1.i.i = select i1 %i.ae, i64 %i.ab, i64 %i.ad
  %i.af = icmp slt i64 %spec.store.select.i.i.i.i.i.i.1.i.i, 0
  br i1 %i.af, label %.preheader.1.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i

.preheader.1.i.i.preheader:                       ; preds = %.lr.ph.1.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.ag = icmp eq i64 %.sroa.08.05.1.i.i, 1
  br i1 %i.ag, label %._crit_edge129, label %.lr.ph128

.preheader.1.i.i:                                 ; preds = %.lr.ph128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.1.i.i127, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.ah = icmp eq ptr %i.ai, %8
  br i1 %i.ah, label %._crit_edge129, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader.1.i.i.preheader, %.preheader.1.i.i
  %.sroa.0.0.i29.1.i.i127 = phi ptr [ %i.ai, %.preheader.1.i.i ], [ %i.y, %.preheader.1.i.i.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0.0.i29.1.i.i127, i64 -16 ; 4 uses
  %.val9.i.1.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.aj = getelementptr i8, ptr %.sroa.0.0.i29.1.i.i127, i64 -8
  %.val10.i.1.i.i = load i64, ptr %i.aj, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i15.i.1.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i.i, i64 %.val10.i.1.i.i)
  %i.ak = sub i64 %.val12.i.1.i.i, %.val10.i.1.i.i
  %i.al = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i.i, ptr nonnull readonly align 1 %.val9.i.1.i.i, i64 %..i.i.i.i.i15.i.1.i.i), !alias.scope !11308, !noalias !11307 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %spec.store.select.i.i.i.i.i16.i.1.i.i = select i1 %i.an, i64 %i.ak, i64 %i.am
  %i.ao = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i.i, 0
  br i1 %i.ao, label %.preheader.1.i.i, label %._crit_edge129

._crit_edge129:                                   ; preds = %.preheader.1.i.i, %.lr.ph128, %.preheader.1.i.i.preheader
  %.sroa.0.0.i29.lcssa.1.i.i = phi ptr [ %8, %.preheader.1.i.i.preheader ], [ %8, %.preheader.1.i.i ], [ %.sroa.0.0.i29.1.i.i127, %.lr.ph128 ] ; 2 uses
  store ptr %.val11.i.1.i.i, ptr %.sroa.0.0.i29.lcssa.1.i.i, align 8, !alias.scope !11293, !noalias !11318
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.1.i.i, i64 8
  store i64 %.val12.i.1.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i.i, align 8, !alias.scope !11293, !noalias !11318
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i: ; preds = %._crit_edge129, %.lr.ph.1.i.i
  %i.ap = icmp ult i64 %.sroa.08.16.1.i.i, %5     ; 2 uses
  %i.aq = zext i1 %i.ap to i64
  %.sroa.08.1.1.i.i = add nuw i64 %.sroa.08.16.1.i.i, %i.aq
  br i1 %i.ap, label %.lr.ph.1.i.i, label %.loopexit.1.i.i

.loopexit.1.i.i:                                  ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.1.i.i, %.loopexit.i.i
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h796489c0d919fce2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef range(i64 0, 33) %.sroa.14.0.lcssa, ptr noundef nonnull align 8 %.sroa.0.0.lcssa)
          to label %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit unwind label %10

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %.sroa.08.14.i.i = add nuw nsw i64 %.sroa.0.0.i.i, 1
  br label %.lr.ph.i.i.a

10:                                               ; preds = %.loopexit.1.i.i
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = shl nuw nsw i64 %.sroa.14.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.lcssa, ptr nonnull align 8 %i.e, i64 %12, i1 false), !alias.scope !11296, !noalias !11323
  resume { ptr, i32 } %11

.lr.ph.i.i.a:                                     ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.08.16.i.i = phi i64 [ %.sroa.08.1.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i ], [ %.sroa.08.14.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.08.05.i.i = phi i64 [ %.sroa.08.16.i.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i ], [ %.sroa.0.0.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.sroa.08.05.i.i
  %.idx = shl nuw nsw i64 %.sroa.08.05.i.i, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !11296
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 3 uses
  %.val11.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3 ; 3 uses
  %i.au = getelementptr i8, ptr %i.as, i64 8
  %.val12.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 5 uses
  %.val13.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.av = getelementptr i8, ptr %i.as, i64 -8
  %.val14.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.i.i.a = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val14.i.i.i)
  %i.aw = sub i64 %.val12.i.i.i, %.val14.i.i.i
  %i.ax = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i, ptr nonnull readonly align 1 %.val13.i.i.i, i64 %..i.i.i.i.i.i.i.i.a), !alias.scope !11297, !noalias !11307 ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp eq i32 %i.ax, 0
  %spec.store.select.i.i.i.i.i.i.i.i.a = select i1 %i.az, i64 %i.aw, i64 %i.ay
  %i.ba = icmp slt i64 %spec.store.select.i.i.i.i.i.i.i.i.a, 0
  br i1 %i.ba, label %.preheader.i.i.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.bb = icmp eq i64 %.sroa.08.05.i.i, 1
  br i1 %i.bb, label %._crit_edge124, label %.lr.ph123

.preheader.i.i.a:                                 ; preds = %.lr.ph123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i29.i.i122, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !11293, !noalias !11295
  %i.bc = icmp eq ptr %i.bd, %i.e
  br i1 %i.bc, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i.a
  %.sroa.0.0.i29.i.i122 = phi ptr [ %i.bd, %.preheader.i.i.a ], [ %i.at, %.preheader.i.i.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.i29.i.i122, i64 -16 ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !11293, !noalias !11295, !nonnull !3, !align !28, !noundef !3
  %i.be = getelementptr i8, ptr %.sroa.0.0.i29.i.i122, i64 -8
  %.val10.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !11293, !noalias !11295, !noundef !3 ; 2 uses
  %..i.i.i.i.i15.i.i.i = call i64 @llvm.umin.i64(i64 %.val12.i.i.i, i64 %.val10.i.i.i)
  %i.bf = sub i64 %.val12.i.i.i, %.val10.i.i.i
  %i.bg = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.i.i, ptr nonnull readonly align 1 %.val9.i.i.i, i64 %..i.i.i.i.i15.i.i.i), !alias.scope !11308, !noalias !11307 ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp eq i32 %i.bg, 0
  %spec.store.select.i.i.i.i.i16.i.i.i = select i1 %i.bi, i64 %i.bf, i64 %i.bh
  %i.bj = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.i.i, 0
  br i1 %i.bj, label %.preheader.i.i.a, label %._crit_edge124

._crit_edge124:                                   ; preds = %.preheader.i.i.a, %.lr.ph123, %.preheader.i.i.preheader
  %.sroa.0.0.i29.lcssa.i.i = phi ptr [ %i.e, %.preheader.i.i.preheader ], [ %i.e, %.preheader.i.i.a ], [ %.sroa.0.0.i29.i.i122, %.lr.ph123 ] ; 2 uses
  store ptr %.val11.i.i.i, ptr %.sroa.0.0.i29.lcssa.i.i, align 8, !alias.scope !11293, !noalias !11318
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i29.lcssa.i.i, i64 8
  store i64 %.val12.i.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i.i, align 8, !alias.scope !11293, !noalias !11318
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit.i.i: ; preds = %._crit_edge124, %.lr.ph.i.i.a
  %i.bk = icmp samesign ult i64 %.sroa.08.16.i.i, %i.j ; 2 uses
  %i.bl = zext i1 %i.bk to i64
  %.sroa.08.1.i.i = add nuw i64 %.sroa.08.16.i.i, %i.bl
  br i1 %i.bk, label %.lr.ph.i.i.a, label %.loopexit.i.i

_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit: ; preds = %._crit_edge, %.loopexit.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11287
  br label %bb.k

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.069.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.14.068.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.14.0.be, %.lr.ph ]
  tail call void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h3dffb04160f4ba02E(ptr noalias noundef nonnull align 8 %.sroa.0.069.lcssa, i64 noundef %.sroa.14.068.lcssa, ptr noalias nonnull align 1 poison)
  br label %bb.k

.lr.ph120:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.024.066119 = phi i32 [ %i.bm, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.021.067118 = phi ptr [ %.sroa.021.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.14.068117 = phi i64 [ %.sroa.14.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 9 uses
  %.sroa.0.069116 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 33 uses
  %i.bm = add nsw i32 %.sroa.024.066119, -1       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11328)
  %i.bn = lshr i64 %.sroa.14.068117, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.bn, 6
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.bn, 112
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %.idx2.i ; 4 uses
  %i.bq = icmp ult i64 %.sroa.14.068117, 64
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph120
  %i.br = tail call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17hdb86dc0ab8b87605E(ptr noundef nonnull readonly align 8 %.sroa.0.069116, ptr noundef readonly %i.bo, ptr noundef readonly %i.bp, i64 noundef %i.bn)
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit

bb.i:                                             ; preds = %.lr.ph120
  %.val10.i = load ptr, ptr %.sroa.0.069116, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.0.069116, i64 8
  %.val11.i = load i64, ptr %i.bs, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %.val12.i = load ptr, ptr %i.bo, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bo, i64 8
  %.val13.i = load i64, ptr %i.bt, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.bu = sub i64 %.val11.i, %.val13.i
  %i.bv = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i), !alias.scope !11331, !noalias !11328 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp eq i32 %i.bv, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.bx, i64 %i.bu, i64 %i.bw ; 2 uses
  %.val8.i = load ptr, ptr %i.bp, align 8, !alias.scope !11328, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bp, i64 8
  %.val9.i = load i64, ptr %i.by, align 8, !alias.scope !11328, !noundef !3 ; 4 uses
  %..i.i.i.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.bz = sub i64 %.val11.i, %.val9.i
  %i.ca = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i14.i), !alias.scope !11341, !noalias !11328 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp eq i32 %i.ca, 0
  %spec.store.select.i.i.i.i.i15.i = select i1 %i.cc, i64 %i.bz, i64 %i.cb
  %i.cd = xor i64 %spec.store.select.i.i.i.i.i15.i, %spec.store.select.i.i.i.i.i.i
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %..i.i.i.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.cf = sub i64 %.val13.i, %.val9.i
  %i.cg = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i16.i), !alias.scope !11351, !noalias !11328 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp eq i32 %i.cg, 0
  %spec.store.select.i.i.i.i.i17.i = select i1 %i.ci, i64 %i.cf, i64 %i.ch
  %i.cj = xor i64 %spec.store.select.i.i.i.i.i17.i, %spec.store.select.i.i.i.i.i.i
  %i.ck = icmp slt i64 %i.cj, 0
  %..i.i = select i1 %i.ck, ptr %i.bp, ptr %i.bo
  br label %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit

_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i.sink.i = phi ptr [ %i.br, %bb.h ], [ %.sroa.0.069116, %bb.i ], [ %..i.i, %bb.j ]
  %i.cl = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cm = ptrtoint ptr %.sroa.0.069116 to i64
  %i.cn = sub nuw i64 %i.cl, %i.cm                ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.cn, 4
  %i.co = icmp ult i64 %.sroa.0.0.i, %.sroa.14.068117
  tail call void @llvm.assume(i1 %i.co)
  %.not = icmp eq ptr %.sroa.021.067118, null
  br i1 %.not, label %bb.l, label %bb.n

bb.k:                                             ; preds = %.lr.ph._crit_edge, %_ZN4core5slice4sort6shared9smallsort18small_sort_general17h537513d993ec9139E.exit
  ret void

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared5pivot12choose_pivot17hd19ac7f4625cff65E.exit, %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 %i.cn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !11364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 16 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11370)
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !11372, !noalias !11370, !nonnull !3, !align !28, !noundef !3 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !11372, !noalias !11370, !noundef !3 ; 3 uses
  %i.cu = getelementptr [16 x i8], ptr %.sroa.0.069116, i64 %.sroa.14.068117 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -16    ; 2 uses
  %.sroa.15.060.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 32 ; 3 uses
  %i.cw = icmp ult ptr %.sroa.15.060.i.i, %i.cv
  %.val2.i21.pre.pre.i.i = load ptr, ptr %.sroa.0.069116, align 8, !alias.scope !11373, !noalias !11367 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.069116, i64 8
  %.val3.i29.i.i = load i64, ptr %i.cx, align 8, !alias.scope !11373, !noalias !11367 ; 8 uses
  br i1 %i.cw, label %.lr.ph.i.i36, label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %.lr.ph.i.i36, %bb.l
  %.sroa.27.0.lcssa.i.i = phi i64 [ 0, %bb.l ], [ %i.dw, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.040.0.lcssa.i.i = phi ptr [ %i.cq, %bb.l ], [ %i.dp, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.15.0.lcssa.i.i = phi ptr [ %.sroa.15.060.i.i, %bb.l ], [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.15.0.lcssa.i.i, %i.cu
  br i1 %i.cy, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i, label %.lr.ph69.i.i

.lr.ph69.i.i:                                     ; preds = %.preheader.i.i33, %.lr.ph69.i.i
  %.sroa.040.168.i.i = phi ptr [ %.sroa.15.167.i.i, %.lr.ph69.i.i ], [ %.sroa.040.0.lcssa.i.i, %.preheader.i.i33 ]
  %.sroa.15.167.i.i = phi ptr [ %i.dg, %.lr.ph69.i.i ], [ %.sroa.15.0.lcssa.i.i, %.preheader.i.i33 ] ; 6 uses
  %.sroa.27.166.i.i = phi i64 [ %i.df, %.lr.ph69.i.i ], [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i33 ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %.sroa.15.167.i.i, align 8, !alias.scope !11372, !noalias !11374, !nonnull !3, !align !28, !noundef !3
  %i.cz = getelementptr i8, ptr %.sroa.15.167.i.i, i64 8
  %.val1.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !11372, !noalias !11374, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i.i.i34 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i29.i.i)
  %i.da = sub i64 %.val1.i.i.i, %.val3.i29.i.i
  %i.db = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i.i.i34), !alias.scope !11377, !noalias !11387 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp eq i32 %i.db, 0
  %spec.store.select.i.i.i.i.i.i.i.i35 = select i1 %i.dd, i64 %i.da, i64 %i.dc
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.27.166.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.168.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !11372, !noalias !11374
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.167.i.i, i64 16, i1 false), !alias.scope !11372, !noalias !11374
  %spec.store.select.i.i.i.i.i.lobit.i.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i.i35, 63
  %i.df = add i64 %spec.store.select.i.i.i.i.i.lobit.i.i.i, %.sroa.27.166.i.i ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.15.167.i.i, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cu
  br i1 %i.dh, label %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i, label %.lr.ph69.i.i

.lr.ph.i.i36:                                     ; preds = %bb.l, %.lr.ph.i.i36
  %.sroa.15.063.i.i = phi ptr [ %.sroa.15.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.15.060.i.i, %bb.l ] ; 3 uses
  %.sroa.040.062.i.i = phi ptr [ %i.dp, %.lr.ph.i.i36 ], [ %i.cq, %bb.l ] ; 5 uses
  %.sroa.27.061.i.i = phi i64 [ %i.dw, %.lr.ph.i.i36 ], [ 0, %bb.l ] ; 2 uses
  %.val.i26.i.i = load ptr, ptr %.sroa.15.063.i.i, align 8, !alias.scope !11372, !noalias !11388, !nonnull !3, !align !28, !noundef !3
  %i.di = getelementptr i8, ptr %.sroa.040.062.i.i, i64 24
  %.val1.i27.i.i = load i64, ptr %i.di, align 8, !alias.scope !11372, !noalias !11388, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i30.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i27.i.i, i64 %.val3.i29.i.i)
  %i.dj = sub i64 %.val1.i27.i.i, %.val3.i29.i.i
  %i.dk = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i26.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i30.i.i), !alias.scope !11391, !noalias !11401 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp eq i32 %i.dk, 0
  %spec.store.select.i.i.i.i.i.i31.i.i = select i1 %i.dm, i64 %i.dj, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.27.061.i.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.062.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !11372, !noalias !11388
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.063.i.i, i64 16, i1 false), !alias.scope !11372, !noalias !11388
  %spec.store.select.i.i.i.i.i.lobit.i32.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i31.i.i, 63
  %i.do = add i64 %spec.store.select.i.i.i.i.i.lobit.i32.i.i, %.sroa.27.061.i.i ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.040.062.i.i, i64 32 ; 4 uses
  %.val.i33.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !11372, !noalias !11402, !nonnull !3, !align !28, !noundef !3
  %i.dq = getelementptr i8, ptr %.sroa.040.062.i.i, i64 40
  %.val1.i34.i.i = load i64, ptr %i.dq, align 8, !alias.scope !11372, !noalias !11402, !noundef !3 ; 2 uses
  %..i.i.i.i.i.i37.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i34.i.i, i64 %.val3.i29.i.i)
  %i.dr = sub i64 %.val1.i34.i.i, %.val3.i29.i.i
  %i.ds = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i33.i.i, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i37.i.i), !alias.scope !11405, !noalias !11415 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp eq i32 %i.ds, 0
  %spec.store.select.i.i.i.i.i.i38.i.i = select i1 %i.du, i64 %i.dr, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.do ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.063.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !alias.scope !11372, !noalias !11402
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !alias.scope !11372, !noalias !11402
  %spec.store.select.i.i.i.i.i.lobit.i39.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i38.i.i, 63
  %i.dw = add i64 %spec.store.select.i.i.i.i.i.lobit.i39.i.i, %i.do ; 2 uses
  %.sroa.15.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.040.062.i.i, i64 48 ; 3 uses
  %i.dx = icmp ult ptr %.sroa.15.0.i.i, %i.cv
  br i1 %i.dx, label %.lr.ph.i.i36, label %.preheader.i.i33

_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i: ; preds = %.lr.ph69.i.i, %.preheader.i.i33
  %.sroa.27.1.lcssa.i.i = phi i64 [ %.sroa.27.0.lcssa.i.i, %.preheader.i.i33 ], [ %i.df, %.lr.ph69.i.i ] ; 2 uses
  %.sroa.040.1.lcssa.i.i = phi ptr [ %.sroa.040.0.lcssa.i.i, %.preheader.i.i33 ], [ %.sroa.15.167.i.i, %.lr.ph69.i.i ]
  %..i.i.i.i.i.i23.i.i = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 %.val3.i29.i.i)
  %i.dy = sub i64 %i.ct, %.val3.i29.i.i
  %i.dz = tail call i32 @memcmp(ptr nonnull readonly align 1 %i.cr, ptr nonnull readonly align 1 %.val2.i21.pre.pre.i.i, i64 %..i.i.i.i.i.i23.i.i), !alias.scope !11416, !noalias !11426 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp eq i32 %i.dz, 0
  %spec.store.select.i.i.i.i.i.i24.i.i = select i1 %i.eb, i64 %i.dy, i64 %i.ea
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.27.1.lcssa.i.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.1.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 16, i1 false), !alias.scope !11372, !noalias !11429
  store ptr %i.cr, ptr %i.ec, align 8, !alias.scope !11372, !noalias !11429
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.ct, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11372, !noalias !11429
  %spec.store.select.i.i.i.i.i.lobit.i25.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i24.i.i, 63
  %i.ed = add i64 %spec.store.select.i.i.i.i.i.lobit.i25.i.i, %.sroa.27.1.lcssa.i.i ; 4 uses
  %.not5.i = icmp ult i64 %i.ed, %.sroa.14.068117
  br i1 %.not5.i, label %_ZN4core5slice4sort8unstable9quicksort9partition17h39db364789227f87E.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i
  tail call void @llvm.trap()
  unreachable

_ZN4core5slice4sort8unstable9quicksort9partition17h39db364789227f87E.exit: ; preds = %_ZN4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclic17h347f0f5802dee3bfE.exit.i
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.069116, i64 %i.ed ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.069116, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !alias.scope !11430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
end_hunk_1
