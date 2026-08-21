Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h6aa4e88c1157adabE:bb.a
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %i.cv ; 6 uses
  %i.cx = icmp ugt i64 %i.cu, %3
  %i.cy = trunc i64 %.sroa.018.167 to i1
  %i.cz = or i64 %i.cr, %.sroa.018.167
  %i.da = trunc i64 %i.cz to i1
  %or.cond3.i = or i1 %i.cx, %i.da
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.db = trunc i64 %i.cr to i1
  br i1 %i.db, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.dc = shl i64 %i.cu, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.cy, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit35"

bb.v:                                             ; preds = %bb.s
  %i.dd = or i64 %i.cs, 1
  %i.de = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dd, i1 true)
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 1
  %i.dh = xor i32 %i.dg, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %i.cw, i64 noundef %i.cs, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !61520
  br label %bb.u

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit35": ; preds = %bb.u
  %i.di = getelementptr inbounds nuw [104 x i8], ptr %i.cw, i64 %i.cs
  %i.dj = or i64 %i.ct, 1
  %i.dk = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.dj, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = xor i32 %i.dm, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %i.di, i64 noundef %i.ct, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !61520
  br label %bb.w

bb.w:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit35", %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61524)
  %i.do = icmp eq i64 %i.cs, 0
  %i.dp = icmp eq i64 %i.ct, 0
  %or.cond.i = or i1 %i.dp, %i.do
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 range(i64 0, -9223372036854775808) %i.cs) ; 2 uses
  %i.dq = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.dq, label %_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw [104 x i8], ptr %i.cw, i64 %i.cs ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.cs, %i.ct  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dr, ptr %i.cw
  %i.ds = mul i64 %.sroa.0.0.i.i36, 104           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ds, i1 false), !alias.scope !61526
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.y, %.preheader.i
  %i.du = phi ptr [ %i.ek, %.preheader.i ], [ %i.dt, %bb.y ] ; 3 uses
  %i.dv = phi ptr [ %i.ej, %.preheader.i ], [ %i.dr, %bb.y ] ; 3 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dy, %.preheader.i ], [ %i.ck, %bb.y ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -104 ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 -104 ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -104 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.du, i64 -96
  %.val.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !61524, !noalias !61527, !nonnull !13, !noundef !13
  %i.ea = getelementptr i8, ptr %i.du, i64 -88
  %.val10.i.i = load i64, ptr %i.ea, align 8, !alias.scope !61524, !noalias !61527, !noundef !13 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dv, i64 -96
  %.val11.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !61521, !noalias !61530, !nonnull !13, !noundef !13
  %i.ec = getelementptr i8, ptr %i.dv, i64 -88
  %.val12.i.i = load i64, ptr %i.ec, align 8, !alias.scope !61521, !noalias !61530, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val10.i.i, i64 %.val12.i.i)
  %i.ed = sub i64 %.val10.i.i, %.val12.i.i
  %i.ee = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val11.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !61531, !noalias !61535 ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp eq i32 %i.ee, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.eg, i64 %i.ed, i64 %i.ef ; 2 uses
  %i.eh = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i.i = select i1 %i.eh, ptr %i.dx, ptr %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dy, ptr noundef nonnull align 8 dereferenceable(104) %..i.i, i64 104, i1 false), !alias.scope !61526, !noalias !61536
  %i.ei = zext i1 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [104 x i8], ptr %i.dw, i64 %i.ei ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.ek = getelementptr inbounds nuw [104 x i8], ptr %i.dx, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 3 uses
  %i.el = icmp eq ptr %i.ej, %i.cw
  %i.em = icmp eq ptr %i.ek, %2
  %or.cond.i.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbdbc1930d1f6eee2E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i
  %i.en = phi ptr [ %i.fb, %.lr.ph.i.i ], [ %i.cw, %bb.y ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.fa, %.lr.ph.i.i ], [ %i.dr, %bb.y ] ; 4 uses
  %i.eo = phi ptr [ %i.ez, %.lr.ph.i.i ], [ %2, %bb.y ] ; 4 uses
  %i.ep = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ep, align 8, !alias.scope !61521, !noalias !61537, !nonnull !13, !noundef !13
  %i.eq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.eq, align 8, !alias.scope !61521, !noalias !61537, !noundef !13 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eo, i64 8
  %.val.i19.i = load ptr, ptr %i.er, align 8, !alias.scope !61524, !noalias !61540, !nonnull !13, !noundef !13
  %i.es = getelementptr i8, ptr %i.eo, i64 16
  %.val7.i.i = load i64, ptr %i.es, align 8, !alias.scope !61524, !noalias !61540, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i20.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.val6.i.i, i64 %.val7.i.i)
  %i.et = sub i64 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.eu = tail call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, ptr nonnull readonly align 1 %.val.i19.i, i64 %..i.i.i.i.i.i20.i), !alias.scope !61541, !noalias !61545 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp eq i32 %i.eu, 0
  %spec.store.select.i.i.i.i.i.i21.i = select i1 %i.ew, i64 %i.et, i64 %i.ev ; 2 uses
  %i.ex = icmp sgt i64 %spec.store.select.i.i.i.i.i.i21.i, -1 ; 2 uses
  %spec.select.i.i = select i1 %i.ex, ptr %i.eo, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.en, ptr noundef nonnull align 8 dereferenceable(104) %spec.select.i.i, i64 104, i1 false), !alias.scope !61526, !noalias !61546
  %i.ey = zext i1 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [104 x i8], ptr %i.eo, i64 %i.ey ; 3 uses
  %spec.store.select.i.i.i.i.i.lobit.i22.i = lshr i64 %spec.store.select.i.i.i.i.i.i21.i, 63
  %i.fa = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.02.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i22.i ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.en, i64 104 ; 2 uses
  %i.fc = icmp ne ptr %i.ez, %i.dt
  %i.fd = icmp ne ptr %i.fa, %i.ck
  %or.cond.i23.i = select i1 %i.fc, i1 %i.fd, i1 false
  br i1 %or.cond.i23.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbdbc1930d1f6eee2E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbdbc1930d1f6eee2E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.ej, %.preheader.i ], [ %i.fb, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.ek, %.preheader.i ], [ %i.dt, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ez, %.lr.ph.i.i ] ; 2 uses
  %i.fe = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ff = ptrtoint ptr %.sroa.0.1.i to i64
  %i.fg = sub nuw i64 %i.fe, %i.ff
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.fg, i1 false), !alias.scope !61526, !noalias !61547
  br label %_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit

_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit: ; preds = %bb.w, %bb.x, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hbdbc1930d1f6eee2E.exit.i"
  %i.fh = shl i64 %i.cu, 1
  %i.fi = or disjoint i64 %i.fh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hbf4b9b41d6633130E.exit: ; preds = %bb.t, %_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit
  %.sroa.0.0.i = phi i64 [ %i.fi, %_ZN4core5slice4sort6stable5merge5merge17h3787aab03ccea91eE.exit ], [ %i.dc, %bb.t ] ; 2 uses
  %i.fj = icmp ugt i64 %i.cl, 1
  br i1 %i.fj, label %bb.q, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.fk = add i64 %.sroa.02.1.lcssa, 1
  %i.fl = lshr i64 %.sroa.023.0, 1
  %i.fm = add i64 %i.fl, %.sroa.09.0
  br label %bb.f

bb.aa:                                            ; preds = %._crit_edge
  %i.fn = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.fn, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fo = or i64 %1, 1
  %i.fp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.fo, i1 true)
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  %i.fr = shl nuw nsw i32 %i.fq, 1
  %i.fs = xor i32 %i.fr, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.fs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(104) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !61520
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable9quicksort9quicksort17h96528b58921b6adaE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(104) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %i.c = icmp ult i64 %1, 33
  br i1 %i.c, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit"
  %.sroa.0.0.ph106 = phi ptr [ %i.gq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ], [ %0, %bb.a ] ; 21 uses
  %.sroa.15.0.ph105 = phi i64 [ %i.gb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ], [ %1, %bb.a ] ; 2 uses
  %.sroa.023.0.ph104 = phi i32 [ %i.ch, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ], [ %4, %bb.a ] ; 2 uses
  %.sroa.026.0.ph103 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ], [ %5, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph106, i64 8
  %i.e = getelementptr i8, ptr %.sroa.0.0.ph106, i64 16
  %i.f = ptrtoint ptr %.sroa.0.0.ph106 to i64
  %.not = icmp eq ptr %.sroa.026.0.ph103, null
  %i.g = getelementptr i8, ptr %.sroa.026.0.ph103, i64 8
  %i.h = getelementptr i8, ptr %.sroa.026.0.ph103, i64 16
  %i.i = icmp eq i32 %.sroa.023.0.ph104, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph250

bb.b:                                             ; preds = %bb.ai
  %i.j = icmp eq i32 %i.ch, 0
  br i1 %i.j, label %.lr.ph._crit_edge, label %.lr.ph250

.outer._crit_edge:                                ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit", %bb.ai, %bb.a
  %.sroa.0.0.ph.lcssa97 = phi ptr [ %.sroa.0.0.ph106, %bb.ai ], [ %0, %bb.a ], [ %i.gq, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ] ; 8 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.ai ], [ %1, %bb.a ], [ %i.gb, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he1d555f5c421baecE.exit" ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61552)
  %i.k = icmp samesign ult i64 %.sroa.15.0.lcssa, 2
  br i1 %i.k, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.l = add nuw nsw i64 %.sroa.15.0.lcssa, 16
  %i.m = icmp ult i64 %3, %i.l
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %.sroa.15.0.lcssa, 1            ; 6 uses
  %i.o = icmp samesign ugt i64 %.sroa.15.0.lcssa, 7
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.n ; 2 uses
  %i.q = getelementptr [104 x i8], ptr %2, i64 %i.n ; 4 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbe93e395c4d2b212E(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr noundef nonnull align 8 %2)
  call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17hbe93e395c4d2b212E(ptr noundef %i.p, ptr noundef %i.q)
  br label %7

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.ph.lcssa97, i64 104, i1 false), !alias.scope !61555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull align 8 dereferenceable(104) %i.p, i64 104, i1 false), !alias.scope !61555
  br label %7

7:                                                ; preds = %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 4, %bb.f ], [ 1, %bb.g ] ; 4 uses
  %8 = icmp samesign ult i64 %.sroa.0.0.i, %i.n   ; 2 uses
  %9 = zext i1 %8 to i64
  %.sroa.08.116.i = add nuw nsw i64 %.sroa.0.0.i, %9 ; 2 uses
  br i1 %8, label %bb.h, label %.loopexit.1.i

bb.h:                                             ; preds = %7, %.lr.ph.preheader.1.i
  %.sroa.08.118.us.i = phi i64 [ %.sroa.08.18.1.i, %.lr.ph.preheader.1.i ], [ %.sroa.08.116.i, %7 ] ; 3 uses
  %.sroa.0.0.i.a = phi i64 [ %.sroa.08.118.us.i, %.lr.ph.preheader.1.i ], [ %.sroa.0.0.i, %7 ] ; 3 uses
  %10 = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.0.0.i.a ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.0.0.i.a, 104
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(104) %10, i64 104, i1 false), !alias.scope !61555
  %12 = getelementptr i8, ptr %11, i64 8
  %.val11.i.us.i = load ptr, ptr %12, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13 ; 3 uses
  %13 = getelementptr i8, ptr %11, i64 16
  %.val12.i.us.i = load i64, ptr %13, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 5 uses
  %14 = getelementptr i8, ptr %11, i64 -96
  %.val13.i.us.i = load ptr, ptr %14, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %15 = getelementptr i8, ptr %11, i64 -88
  %.val14.i.us.i = load i64, ptr %15, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i29.us.i = call i64 @llvm.umin.i64(i64 %.val12.i.us.i, i64 %.val14.i.us.i)
  %i.r = sub i64 %.val12.i.us.i, %.val14.i.us.i
  %16 = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.us.i, ptr nonnull readonly align 1 %.val13.i.us.i, i64 %..i.i.i.i.i.i29.us.i), !alias.scope !61558, !noalias !61552 ; 2 uses
  %17 = sext i32 %16 to i64
  %18 = icmp eq i32 %16, 0
  %spec.store.select.i.i.i.i.i.i30.us.i = select i1 %18, i64 %i.r, i64 %17
  %19 = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.us.i, 0
  br i1 %19, label %20, label %.lr.ph.preheader.1.i

20:                                               ; preds = %bb.h
  %.sroa.08.0.copyload.i.us.i = load i64, ptr %11, align 8, !alias.scope !61557, !noalias !61552
  %21 = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.0.0.i31.us.i252 = getelementptr inbounds i8, ptr %11, i64 -104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.us.i252, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %22 = icmp eq i64 %.sroa.0.0.i.a, 1
  br i1 %22, label %._crit_edge257, label %.loopexit.i

23:                                               ; preds = %.loopexit.i
  %.sroa.0.0.i31.us.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.us.i254, i64 -104 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.us.i254, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.us.i, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %24 = icmp eq ptr %.sroa.0.0.i31.us.i, %2
  br i1 %24, label %._crit_edge257, label %.loopexit.i

.loopexit.i:                                      ; preds = %20, %23
  %.sroa.0.0.i31.us.i254 = phi ptr [ %.sroa.0.0.i31.us.i, %23 ], [ %.sroa.0.0.i31.us.i252, %20 ] ; 5 uses
  %.sroa.5.0.i.us.i253 = phi ptr [ %.sroa.0.0.i31.us.i254, %23 ], [ %11, %20 ] ; 3 uses
  %25 = getelementptr i8, ptr %.sroa.5.0.i.us.i253, i64 -200
  %.val9.i.us.i = load ptr, ptr %25, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %26 = getelementptr i8, ptr %.sroa.5.0.i.us.i253, i64 -192
  %.val10.i.us.i = load i64, ptr %26, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i15.i.us.i = call i64 @llvm.umin.i64(i64 %.val12.i.us.i, i64 %.val10.i.us.i)
  %27 = sub i64 %.val12.i.us.i, %.val10.i.us.i
  %28 = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.us.i, ptr nonnull readonly align 1 %.val9.i.us.i, i64 %..i.i.i.i.i15.i.us.i), !alias.scope !61562, !noalias !61552 ; 2 uses
  %29 = sext i32 %28 to i64
  %30 = icmp eq i32 %28, 0
  %spec.store.select.i.i.i.i.i16.i.us.i = select i1 %30, i64 %27, i64 %29
  %31 = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.us.i, 0
  br i1 %31, label %23, label %._crit_edge257

._crit_edge257:                                   ; preds = %23, %.loopexit.i, %20
  %.sroa.5.0.i.us.i.lcssa = phi ptr [ %11, %20 ], [ %.sroa.0.0.i31.us.i254, %23 ], [ %.sroa.5.0.i.us.i253, %.loopexit.i ] ; 3 uses
  %.sroa.0.0.i31.us.lcssa.i = phi ptr [ %2, %20 ], [ %2, %23 ], [ %.sroa.0.0.i31.us.i254, %.loopexit.i ]
  store i64 %.sroa.08.0.copyload.i.us.i, ptr %.sroa.0.0.i31.us.lcssa.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.i.lcssa, i64 -96
  store ptr %.val11.i.us.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.us.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.i.lcssa, i64 -88
  store i64 %.val12.i.us.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.us.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.us.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.i.lcssa, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.us.i, ptr noundef nonnull align 8 dereferenceable(80) %21, i64 80, i1 false), !alias.scope !61555
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %._crit_edge257, %bb.h
  %32 = icmp samesign ult i64 %.sroa.08.118.us.i, %i.n ; 2 uses
  %33 = zext i1 %32 to i64
  %.sroa.08.18.1.i = add nuw i64 %.sroa.08.118.us.i, %33
  br i1 %32, label %bb.h, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.preheader.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i
  %.sroa.08.110.1.i = phi i64 [ %.sroa.08.1.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i ], [ %.sroa.08.116.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %.sroa.08.09.1.i = phi i64 [ %.sroa.08.110.1.i, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i ], [ %.sroa.0.0.i, %.lr.ph.preheader.1.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %.sroa.08.09.1.i ; 2 uses
  %.idx276 = mul nuw nsw i64 %.sroa.08.09.1.i, 104
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx276 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.s, i64 104, i1 false), !alias.scope !61555
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val11.i.1.i = load ptr, ptr %i.u, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13 ; 3 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val12.i.1.i = load i64, ptr %i.v, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 5 uses
  %i.w = getelementptr i8, ptr %i.t, i64 -96
  %.val13.i.1.i = load ptr, ptr %i.w, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %i.x = getelementptr i8, ptr %i.t, i64 -88
  %.val14.i.1.i = load i64, ptr %i.x, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i29.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val14.i.1.i)
  %i.y = sub i64 %.val12.i.1.i, %.val14.i.1.i
  %i.z = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val13.i.1.i, i64 %..i.i.i.i.i.i29.1.i), !alias.scope !61558, !noalias !61552 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp eq i32 %i.z, 0
  %spec.store.select.i.i.i.i.i.i30.1.i = select i1 %i.ab, i64 %i.y, i64 %i.aa
  %i.ac = icmp slt i64 %spec.store.select.i.i.i.i.i.i30.1.i, 0
  br i1 %i.ac, label %bb.i, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i

bb.i:                                             ; preds = %.lr.ph.1.i
  %.sroa.08.0.copyload.i.1.i = load i64, ptr %i.t, align 8, !alias.scope !61557, !noalias !61552
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.0.0.i31.1.i265 = getelementptr inbounds i8, ptr %i.t, i64 -104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.1.i265, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %i.ae = icmp eq i64 %.sroa.08.09.1.i, 1
  br i1 %i.ae, label %._crit_edge270, label %.lr.ph269

bb.j:                                             ; preds = %.lr.ph269
  %.sroa.0.0.i31.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i31.1.i267, i64 -104 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.1.i267, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0.i31.1.i, i64 104, i1 false), !alias.scope !61557, !noalias !61552
  %i.af = icmp eq ptr %.sroa.0.0.i31.1.i, %2
  br i1 %i.af, label %._crit_edge270, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i31.1.i267 = phi ptr [ %.sroa.0.0.i31.1.i, %bb.j ], [ %.sroa.0.0.i31.1.i265, %bb.i ] ; 5 uses
  %.sroa.5.0.i.1.i266 = phi ptr [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  %i.ag = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -200
  %.val9.i.1.i = load ptr, ptr %i.ag, align 8, !alias.scope !61557, !noalias !61552, !nonnull !13, !noundef !13
  %i.ah = getelementptr i8, ptr %.sroa.5.0.i.1.i266, i64 -192
  %.val10.i.1.i = load i64, ptr %i.ah, align 8, !alias.scope !61557, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i15.i.1.i = call i64 @llvm.umin.i64(i64 %.val12.i.1.i, i64 %.val10.i.1.i)
  %i.ai = sub i64 %.val12.i.1.i, %.val10.i.1.i
  %i.aj = call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i.1.i, ptr nonnull readonly align 1 %.val9.i.1.i, i64 %..i.i.i.i.i15.i.1.i), !alias.scope !61562, !noalias !61552 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp eq i32 %i.aj, 0
  %spec.store.select.i.i.i.i.i16.i.1.i = select i1 %i.al, i64 %i.ai, i64 %i.ak
  %i.am = icmp slt i64 %spec.store.select.i.i.i.i.i16.i.1.i, 0
  br i1 %i.am, label %bb.j, label %._crit_edge270

._crit_edge270:                                   ; preds = %bb.j, %.lr.ph269, %bb.i
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.t, %bb.i ], [ %.sroa.0.0.i31.1.i267, %bb.j ], [ %.sroa.5.0.i.1.i266, %.lr.ph269 ] ; 3 uses
  %.sroa.0.0.i31.lcssa.1.i = phi ptr [ %2, %bb.i ], [ %2, %bb.j ], [ %.sroa.0.0.i31.1.i267, %.lr.ph269 ]
  store i64 %.sroa.08.0.copyload.i.1.i, ptr %.sroa.0.0.i31.lcssa.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -96
  store ptr %.val11.i.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -88
  store i64 %.val12.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !61557, !noalias !61566
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ad, i64 80, i1 false), !alias.scope !61555
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i

_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i: ; preds = %._crit_edge270, %.lr.ph.1.i
  %i.an = icmp samesign ult i64 %.sroa.08.110.1.i, %i.n ; 2 uses
  %i.ao = zext i1 %i.an to i64
  %.sroa.08.1.1.i = add nuw i64 %.sroa.08.110.1.i, %i.ao
  br i1 %i.an, label %.lr.ph.1.i, label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h5d8becbd777a0632E.exit.1.i, %7
  call void @llvm.experimental.noalias.scope.decl(metadata !61571)
  %i.ap = add nsw i64 %.sroa.15.0.lcssa, -1       ; 2 uses
  %i.aq = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph.lcssa97, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [104 x i8], ptr %2, i64 %i.ap
  %i.as = getelementptr i8, ptr %i.q, i64 -104
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.at = getelementptr i8, ptr %i.bv, i64 104    ; 2 uses
  %i.au = getelementptr i8, ptr %i.bu, i64 104
  %i.av = and i64 %.sroa.15.0.lcssa, 1
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.06.09.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.q, %.loopexit.1.i ] ; 4 uses
  %.sroa.010.08.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa97, %.loopexit.1.i ] ; 2 uses
  %.sroa.013.07.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.as, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bu, %.lr.ph.i.i ], [ %i.ar, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i ], [ %i.aq, %.loopexit.1.i ] ; 2 uses
  %.sroa.018.04.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %i.ax = add nuw nsw i64 %.sroa.018.04.i.i, 1    ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.06.09.i.i, i64 8
  %.sroa.06.0.val.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.az = getelementptr i8, ptr %.sroa.06.09.i.i, i64 16
  %.sroa.06.0.val24.i.i = load i64, ptr %i.az, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %i.ba = getelementptr i8, ptr %.sroa.0.010.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bb = getelementptr i8, ptr %.sroa.0.010.i.i, i64 16
  %.sroa.0.0.val25.i.i = load i64, ptr %i.bb, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.06.0.val24.i.i, i64 %.sroa.0.0.val25.i.i)
  %i.bc = sub i64 %.sroa.06.0.val24.i.i, %.sroa.0.0.val25.i.i
  %i.bd = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.06.0.val.i.i, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !61575, !noalias !61579 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.bf, i64 %i.bc, i64 %i.be ; 2 uses
  %i.bg = icmp sgt i64 %spec.store.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %..i23.i.i = select i1 %i.bg, ptr %.sroa.0.010.i.i, ptr %.sroa.06.09.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.010.08.i.i, ptr noundef nonnull align 8 dereferenceable(104) %..i23.i.i, i64 104, i1 false), !alias.scope !61555, !noalias !61580
  %spec.store.select.i.i.i.i.i.lobit.i.i = lshr i64 %spec.store.select.i.i.i.i.i.i.i, 63
  %i.bh = getelementptr inbounds nuw [104 x i8], ptr %.sroa.06.09.i.i, i64 %spec.store.select.i.i.i.i.i.lobit.i.i ; 4 uses
  %i.bi = zext i1 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.010.i.i, i64 %i.bi ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.010.08.i.i, i64 104 ; 2 uses
  %i.bl = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bm = getelementptr i8, ptr %.sroa.015.06.i.i, i64 16
  %.sroa.015.0.val26.i.i = load i64, ptr %i.bm, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %i.bn = getelementptr i8, ptr %.sroa.013.07.i.i, i64 8
  %.sroa.013.0.val.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !61574, !noalias !61552, !nonnull !13, !noundef !13
  %i.bo = getelementptr i8, ptr %.sroa.013.07.i.i, i64 16
  %.sroa.013.0.val27.i.i = load i64, ptr %i.bo, align 8, !alias.scope !61574, !noalias !61552, !noundef !13 ; 2 uses
  %..i.i.i.i.i28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.015.0.val26.i.i, i64 %.sroa.013.0.val27.i.i)
  %i.bp = sub i64 %.sroa.015.0.val26.i.i, %.sroa.013.0.val27.i.i
  %i.bq = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.015.0.val.i.i, ptr nonnull readonly align 1 %.sroa.013.0.val.i.i, i64 %..i.i.i.i.i28.i.i), !alias.scope !61584, !noalias !61579 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %spec.store.select.i.i.i.i.i29.i.i = select i1 %i.bs, i64 %i.bp, i64 %i.br ; 2 uses
  %i.bt = icmp sgt i64 %spec.store.select.i.i.i.i.i29.i.i, -1 ; 2 uses
  %..i.i.i = select i1 %i.bt, ptr %.sroa.015.06.i.i, ptr %.sroa.013.07.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.017.05.i.i, ptr noundef nonnull align 8 dereferenceable(104) %..i.i.i, i64 104, i1 false), !alias.scope !61555, !noalias !61588
  %.neg.i.i.i = sext i1 %i.bt to i64
  %i.bu = getelementptr [104 x i8], ptr %.sroa.015.06.i.i, i64 %.neg.i.i.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit.i.i = ashr i64 %spec.store.select.i.i.i.i.i29.i.i, 63
  %i.bv = getelementptr [104 x i8], ptr %.sroa.013.07.i.i, i64 %spec.store.select.i.i.i.i.i29.lobit.i.i ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.sroa.017.05.i.i, i64 -104
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bx = icmp ult ptr %i.bj, %i.at               ; 3 uses
  %.sroa.0.0..sroa.06.0.i.i = select i1 %i.bx, ptr %i.bj, ptr %i.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bk, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0.0..sroa.06.0.i.i, i64 104, i1 false), !alias.scope !61555
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [104 x i8], ptr %i.bj, i64 %i.by
  %i.ca = xor i1 %i.bx, true
  %i.cb = zext i1 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [104 x i8], ptr %i.bh, i64 %i.cb
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.06.1.i.i = phi ptr [ %i.bh, %._crit_edge.i.i ], [ %i.cc, %bb.k ]
  %.sroa.0.1.i.i = phi ptr [ %i.bj, %._crit_edge.i.i ], [ %i.bz, %bb.k ]
  %i.cd = icmp ne ptr %.sroa.0.1.i.i, %i.at
  %i.ce = icmp ne ptr %.sroa.06.1.i.i, %i.au
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.ce, !prof !8053
  br i1 %or.cond.i.i, label %bb.m, label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit, !prof !8053

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #41
          to label %.noexc.i unwind label %bb.n, !noalias !61552

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = mul nuw nsw i64 %.sroa.15.0.lcssa, 104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa97, ptr nonnull align 8 %2, i64 %i.cg, i1 false), !alias.scope !61555, !noalias !61592
  resume { ptr, i32 } %i.cf

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.15.099.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ]
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6aa4e88c1157adabE(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph106, i64 noundef %.sroa.15.099.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit

.lr.ph250:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.023.098249 = phi i32 [ %i.ch, %bb.b ], [ %.sroa.023.0.ph104, %.lr.ph ]
  %.sroa.15.099248 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.15.0.ph105, %.lr.ph ] ; 21 uses
  %i.ch = add i32 %.sroa.023.098249, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61597)
  %i.ci = lshr i64 %.sroa.15.099248, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ci, 416
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw i64 %i.ci, 728
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %.idx2.i ; 4 uses
  %i.cl = icmp ult i64 %.sroa.15.099248, 64
  br i1 %i.cl, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph250
  %i.cm = call fastcc noundef ptr @_ZN4core5slice4sort6shared5pivot11median3_rec17h3502b7bf143b58faE(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph106, ptr noundef readonly %i.cj, ptr noundef readonly %i.ck, i64 noundef %i.ci)
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph250
  %.val10.i = load ptr, ptr %i.d, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %.val11.i = load i64, ptr %i.e, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cj, i64 8
  %.val12.i = load ptr, ptr %i.cn, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cj, i64 16
  %.val13.i = load i64, ptr %i.co, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val13.i)
  %i.cp = sub i64 %.val11.i, %.val13.i
  %i.cq = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val12.i, i64 %..i.i.i.i.i.i), !alias.scope !61600, !noalias !61597 ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = icmp eq i32 %i.cq, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.cs, i64 %i.cp, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ck, i64 8
  %.val8.i = load ptr, ptr %i.ct, align 8, !alias.scope !61597, !nonnull !13, !noundef !13 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ck, i64 16
  %.val9.i = load i64, ptr %i.cu, align 8, !alias.scope !61597, !noundef !13 ; 4 uses
  %..i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 %.val11.i, i64 %.val9.i)
  %i.cv = sub i64 %.val11.i, %.val9.i
  %i.cw = call i32 @memcmp(ptr nonnull readonly align 1 %.val10.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i14.i), !alias.scope !61604, !noalias !61597 ; 2 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp eq i32 %i.cw, 0
  %spec.store.select.i.i.i.i.i15.i = select i1 %i.cy, i64 %i.cv, i64 %i.cx
  %i.cz = xor i64 %spec.store.select.i.i.i.i.i15.i, %spec.store.select.i.i.i.i.i.i
  %i.da = icmp slt i64 %i.cz, 0
  br i1 %i.da, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %..i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val9.i)
  %i.db = sub i64 %.val13.i, %.val9.i
  %i.dc = call i32 @memcmp(ptr nonnull readonly align 1 %.val12.i, ptr nonnull readonly align 1 %.val8.i, i64 %..i.i.i.i.i16.i), !alias.scope !61608, !noalias !61597 ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp eq i32 %i.dc, 0
  %spec.store.select.i.i.i.i.i17.i = select i1 %i.de, i64 %i.db, i64 %i.dd
  %i.df = xor i64 %spec.store.select.i.i.i.i.i17.i, %spec.store.select.i.i.i.i.i.i
  %i.dg = icmp slt i64 %i.df, 0
  %..i.i = select i1 %i.dg, ptr %i.ck, ptr %i.cj
  br label %bb.r

_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17ha268cd27e508d4e4E.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cm, %bb.o ], [ %.sroa.0.0.ph106, %bb.p ], [ %..i.i, %bb.q ]
  %i.dh = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.di = sub nuw i64 %i.dh, %i.f                 ; 2 uses
  %.sroa.0.0.i38 = udiv exact i64 %i.di, 104      ; 3 uses
  %i.dj = icmp ult i64 %.sroa.0.0.i38, %.sroa.15.099248
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph106, i64 %i.di ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %i.dk, i64 104, i1 false)
  br i1 %.not, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.026.0.val = load ptr, ptr %i.g, align 8, !nonnull !13, !noundef !13
  %.sroa.026.0.val36 = load i64, ptr %i.h, align 8, !noundef !13 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %.val = load ptr, ptr %i.dl, align 8, !nonnull !13, !noundef !13
  %i.dm = getelementptr i8, ptr %i.dk, i64 16
  %.val37 = load i64, ptr %i.dm, align 8, !noundef !13 ; 2 uses
  %..i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.026.0.val36, i64 %.val37)
  %i.dn = sub i64 %.sroa.026.0.val36, %.val37
  %i.do = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.026.0.val, ptr nonnull readonly align 1 %.val, i64 %..i.i.i.i.i), !alias.scope !61612 ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp eq i32 %i.do, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.dq, i64 %i.dn, i64 %i.dp
  %i.dr = icmp sgt i64 %spec.store.select.i.i.i.i.i, -1
  br i1 %i.dr, label %.critedge35, label %.critedge

.critedge:                                        ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !61616)
  call void @llvm.experimental.noalias.scope.decl(metadata !61619)
  %.not68.a = icmp ult i64 %3, %.sroa.15.099248
  br i1 %.not68.a, label %bb.u, label %bb.t, !prof !8053

bb.t:                                             ; preds = %.critedge
  %i.ds = getelementptr [104 x i8], ptr %2, i64 %.sroa.15.099248 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.dk, i64 8
  %i.du = getelementptr i8, ptr %i.dk, i64 16
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  call void @llvm.trap()
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.19.0.i = phi ptr [ %i.ds, %bb.t ], [ %i.ek, %bb.w ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.t ], [ %.sroa.11.1.lcssa.i, %bb.w ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph106, %bb.t ], [ %i.em, %bb.w ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i38, %bb.t ], [ %.sroa.15.099248, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.02.0.i ; 2 uses
  %i.dw = icmp ult ptr %.sroa.5.0.i, %i.dv
  br i1 %i.dw, label %.lr.ph.i39, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i39, %bb.v
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.v ], [ %i.ef, %.lr.ph.i39 ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.v ], [ %i.eh, %.lr.ph.i39 ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.v ], [ %i.ei, %.lr.ph.i39 ] ; 2 uses
  %i.dx = icmp eq i64 %.sroa.02.0.i, %.sroa.15.099248
  br i1 %i.dx, label %bb.x, label %bb.w

.lr.ph.i39:                                       ; preds = %bb.v, %.lr.ph.i39
  %.sroa.5.111.i = phi ptr [ %i.ei, %.lr.ph.i39 ], [ %.sroa.5.0.i, %bb.v ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.eh, %.lr.ph.i39 ], [ %.sroa.11.0.i, %bb.v ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.ef, %.lr.ph.i39 ], [ %.sroa.19.0.i, %bb.v ]
  %i.dy = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.dy, align 8, !alias.scope !61616, !noalias !61619, !nonnull !13, !noundef !13
  %i.dz = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val24.i = load i64, ptr %i.dz, align 8, !alias.scope !61616, !noalias !61619, !noundef !13 ; 2 uses
  %.val25.i = load ptr, ptr %i.dt, align 8, !alias.scope !61616, !noalias !61619, !nonnull !13, !noundef !13
  %.val26.i = load i64, ptr %i.du, align 8, !alias.scope !61616, !noalias !61619, !noundef !13 ; 2 uses
  %..i.i.i.i.i.i40 = call i64 @llvm.umin.i64(i64 %.val24.i, i64 %.val26.i)
  %i.ea = sub i64 %.val24.i, %.val26.i
  %i.eb = call i32 @memcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val25.i, i64 %..i.i.i.i.i.i40), !alias.scope !61621, !noalias !61625 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %spec.store.select.i.i.i.i.i.i41 = select i1 %i.ed, i64 %i.ea, i64 %i.ec ; 2 uses
  %i.ee = icmp slt i64 %spec.store.select.i.i.i.i.i.i41, 0
  %i.ef = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -104 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ee, ptr %2, ptr %i.ef
  %i.eg = getelementptr inbounds nuw [104 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.eg, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.111.i, i64 104, i1 false), !alias.scope !61625, !noalias !61626
  %spec.store.select.i.i.i.i.i.lobit.i = lshr i64 %spec.store.select.i.i.i.i.i.i41, 63
  %i.eh = add i64 %spec.store.select.i.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 104 ; 3 uses
  %i.ej = icmp ult ptr %i.ei, %i.dv
  br i1 %i.ej, label %.lr.ph.i39, label %._crit_edge.i

bb.w:                                             ; preds = %._crit_edge.i
  %i.ek = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -104 ; 2 uses
  %i.el = getelementptr inbounds nuw [104 x i8], ptr %i.ek, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.el, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.5.1.lcssa.i, i64 104, i1 false), !alias.scope !61625, !noalias !61629
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 104
  br label %bb.v

bb.x:                                             ; preds = %._crit_edge.i
  %i.en = mul i64 %.sroa.11.1.lcssa.i, 104
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph106, ptr nonnull align 8 %2, i64 %i.en, i1 false), !alias.scope !61625
  %i.eo = sub i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.15.099248, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.x
  %i.ep = getelementptr [104 x i8], ptr %.sroa.0.0.ph106, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.eo, 1
  %i.eq = icmp eq i64 %.sroa.15.099248, %.neg
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.eo, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph16.i.new
  %.sroa.04.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.eu, %bb.y ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.y ]
  %i.er = xor i64 %.sroa.04.014.i, -1
  %i.es = getelementptr [104 x i8], ptr %i.ds, i64 %i.er
  %i.et = getelementptr [104 x i8], ptr %i.ep, i64 %.sroa.04.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.et, ptr noundef nonnull align 8 dereferenceable(104) %i.es, i64 104, i1 false), !alias.scope !61625
  %i.eu = add nuw i64 %.sroa.04.014.i, 2          ; 2 uses
  %i.ev = xor i64 %.sroa.04.014.i, -2
  %i.ew = getelementptr [104 x i8], ptr %i.ds, i64 %i.ev
  %i.ex = getelementptr [104 x i8], ptr %i.ep, i64 %.sroa.04.014.i
  %i.ey = getelementptr i8, ptr %i.ex, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ey, ptr noundef nonnull align 8 dereferenceable(104) %i.ew, i64 104, i1 false), !alias.scope !61625
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa, label %bb.y

_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa: ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.eu, %_ZN4core5slice4sort6stable9quicksort16stable_partition17ha77bf120d11938dbE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod336 = trunc i64 %i.eo to i1
end_hunk_0
