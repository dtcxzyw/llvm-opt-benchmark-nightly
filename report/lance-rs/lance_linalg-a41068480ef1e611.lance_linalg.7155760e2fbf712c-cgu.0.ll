Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg:bb.a
  %.not = icmp eq ptr %.sroa.023.091156, null
  br i1 %.not, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit._crit_edge, label %bb.r

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit._crit_edge: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.copyload.i.i.i.pre = load i64, ptr %.sroa.0.093154, align 8, !alias.scope !2269
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !2269
  br label %bb.p

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort18small_sort_networkyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %.sink.split.i, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit._crit_edge, %bb.r
  %i.hv = phi i64 [ %.pre, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit._crit_edge ], [ %.val, %bb.r ]
  %.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.pre, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit._crit_edge ], [ %.sroa.0.0.copyload.i.i.i.pre111, %bb.r ]
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht
  store i64 %i.hv, ptr %.sroa.0.093154, align 8, !alias.scope !2269
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.hw, align 8, !alias.scope !2269
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2271)
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !2272, !noundef !26 ; 2 uses
  %i.hz = getelementptr [8 x i8], ptr %.sroa.0.093154, i64 %.sroa.15.092155 ; 3 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -8     ; 2 uses
  %.sroa.13.030.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 16 ; 3 uses
  %i.ib = icmp ult ptr %.sroa.13.030.i.i, %i.ia
  %.val1.i.pre.i.i = load i64, ptr %.sroa.0.093154, align 8, !alias.scope !2273, !noalias !26 ; 4 uses
  br i1 %i.ib, label %.lr.ph.i.i36, label %.preheader.i.i35

.preheader.i.i35:                                 ; preds = %.lr.ph.i.i36, %bb.p
  %.sroa.23.0.lcssa.i.i = phi i64 [ 0, %bb.p ], [ %i.it, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i = phi ptr [ %i.hx, %bb.p ], [ %i.io, %.lr.ph.i.i36 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i = phi ptr [ %.sroa.13.030.i.i, %bb.p ], [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ] ; 2 uses
  %i.ic = icmp eq ptr %.sroa.13.0.lcssa.i.i, %i.hz
  br i1 %i.ic, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.i, label %.cont.i.i

.cont.i.i:                                        ; preds = %.preheader.i.i35, %.cont.i.i
  %.sroa.015.1.i7.i = phi ptr [ %.sroa.13.1.i6.i, %.cont.i.i ], [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ]
  %.sroa.13.1.i6.i = phi ptr [ %.sroa.13.1.sroa.gep.i.i, %.cont.i.i ], [ %.sroa.13.0.lcssa.i.i, %.preheader.i.i35 ] ; 4 uses
  %.sroa.23.1.i5.i = phi i64 [ %i.ih, %.cont.i.i ], [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ] ; 2 uses
  %.val.i.else.val.i.i = load i64, ptr %.sroa.13.1.i6.i, align 8, !alias.scope !2274, !noalias !2275, !noundef !26 ; 2 uses
  %i.id = icmp ult i64 %.val.i.else.val.i.i, %.val1.i.pre.i.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.23.1.i5.i ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !alias.scope !2272, !noalias !2275
  store i64 %i.if, ptr %.sroa.015.1.i7.i, align 8, !alias.scope !2272, !noalias !2275
  store i64 %.val.i.else.val.i.i, ptr %i.ie, align 8, !alias.scope !2272, !noalias !2275
  %i.ig = zext i1 %i.id to i64
  %i.ih = add i64 %.sroa.23.1.i5.i, %i.ig         ; 2 uses
  %.sroa.13.1.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i, i64 8 ; 2 uses
  %i.ii = icmp eq ptr %.sroa.13.1.sroa.gep.i.i, %i.hz
  br i1 %i.ii, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.i, label %.cont.i.i

.lr.ph.i.i36:                                     ; preds = %bb.p, %.lr.ph.i.i36
  %.sroa.13.033.i.i = phi ptr [ %.sroa.13.0.i.i, %.lr.ph.i.i36 ], [ %.sroa.13.030.i.i, %bb.p ] ; 2 uses
  %.sroa.015.032.i.i = phi ptr [ %i.io, %.lr.ph.i.i36 ], [ %i.hx, %bb.p ] ; 3 uses
  %.sroa.23.031.i.i = phi i64 [ %i.it, %.lr.ph.i.i36 ], [ 0, %bb.p ] ; 2 uses
  %.val.i11.i.i = load i64, ptr %.sroa.13.033.i.i, align 8, !alias.scope !2276, !noalias !2277, !noundef !26 ; 2 uses
  %i.ij = icmp ult i64 %.val.i11.i.i, %.val1.i.pre.i.i
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.23.031.i.i ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !alias.scope !2272, !noalias !2277
  store i64 %i.il, ptr %.sroa.015.032.i.i, align 8, !alias.scope !2272, !noalias !2277
  store i64 %.val.i11.i.i, ptr %i.ik, align 8, !alias.scope !2272, !noalias !2277
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.23.031.i.i, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 16 ; 3 uses
  %.val.i13.i.i37 = load i64, ptr %i.io, align 8, !alias.scope !2278, !noalias !2279, !noundef !26 ; 2 uses
  %i.ip = icmp ult i64 %.val.i13.i.i37, %.val1.i.pre.i.i
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.in ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !alias.scope !2272, !noalias !2279
  store i64 %i.ir, ptr %.sroa.13.033.i.i, align 8, !alias.scope !2272, !noalias !2279
  store i64 %.val.i13.i.i37, ptr %i.iq, align 8, !alias.scope !2272, !noalias !2279
  %i.is = zext i1 %i.ip to i64
  %i.it = add i64 %i.in, %i.is                    ; 2 uses
  %.sroa.13.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i, i64 24 ; 3 uses
  %i.iu = icmp ult ptr %.sroa.13.0.i.i, %i.ia
  br i1 %i.iu, label %.lr.ph.i.i36, label %.preheader.i.i35

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %.cont.i.i, %.preheader.i.i35
  %.sroa.23.1.i.lcssa.i = phi i64 [ %.sroa.23.0.lcssa.i.i, %.preheader.i.i35 ], [ %i.ih, %.cont.i.i ] ; 2 uses
  %.sroa.015.1.i.lcssa.i = phi ptr [ %.sroa.015.0.lcssa.i.i, %.preheader.i.i35 ], [ %.sroa.13.1.i6.i, %.cont.i.i ]
  %i.iv = icmp ult i64 %i.hy, %.val1.i.pre.i.i
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %.sroa.23.1.i.lcssa.i ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !alias.scope !2272, !noalias !2275
  store i64 %i.ix, ptr %.sroa.015.1.i.lcssa.i, align 8, !alias.scope !2272, !noalias !2275
  store i64 %i.hy, ptr %i.iw, align 8, !alias.scope !2272, !noalias !2275
  %i.iy = zext i1 %i.iv to i64
  %i.iz = add i64 %.sroa.23.1.i.lcssa.i, %i.iy    ; 4 uses
  %.not7.i = icmp ult i64 %i.iz, %.sroa.15.092155
  br i1 %.not7.i, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.i
  tail call void @llvm.trap()
  unreachable

_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093154, i64 %i.iz ; 4 uses
  %.sroa.0.0.copyload.i.i8.i = load i64, ptr %.sroa.0.093154, align 8, !alias.scope !2280
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !2280
  store i64 %i.jb, ptr %.sroa.0.093154, align 8, !alias.scope !2280
  store i64 %.sroa.0.0.copyload.i.i8.i, ptr %i.ja, align 8, !alias.scope !2280
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jd = xor i64 %i.iz, -1
  %i.je = add i64 %.sroa.15.092155, %i.jd
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 %.sroa.0.093154, i64 noundef %i.iz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.023.091156, i32 noundef %i.hg, ptr noalias noundef nonnull %4)
  br label %.backedge

bb.r:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot12choose_pivotyNvYyNtNtBa_3cmp10PartialOrd2ltECs9JgWGBoX3PY_12lance_linalg.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 %i.ht ; 2 uses
  %.sroa.023.0.val = load i64, ptr %.sroa.023.091156, align 8, !alias.scope !51, !noundef !26
  %.val = load i64, ptr %i.jf, align 8, !alias.scope !52, !noundef !26 ; 3 uses
  %i.jg = icmp ult i64 %.sroa.023.0.val, %.val
  %.sroa.0.0.copyload.i.i.i.pre111 = load i64, ptr %.sroa.0.093154, align 8 ; 2 uses
  br i1 %i.jg, label %bb.p, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %.val, ptr %.sroa.0.093154, align 8, !alias.scope !2281
  store i64 %.sroa.0.0.copyload.i.i.i.pre111, ptr %i.jf, align 8, !alias.scope !2281
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !2284, !noundef !26 ; 2 uses
  %i.jj = getelementptr [8 x i8], ptr %.sroa.0.093154, i64 %.sroa.15.092155 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8     ; 2 uses
  %.sroa.13.030.i.i46 = getelementptr inbounds nuw i8, ptr %.sroa.0.093154, i64 16 ; 3 uses
  %i.jl = icmp ult ptr %.sroa.13.030.i.i46, %i.jk
  %.val1.i.pre.i.i47 = load i64, ptr %.sroa.0.093154, align 8, !alias.scope !2285, !noalias !26 ; 4 uses
  br i1 %i.jl, label %.lr.ph.i.i62, label %.preheader.i.i48

.preheader.i.i48:                                 ; preds = %.lr.ph.i.i62, %bb.s
  %.sroa.23.0.lcssa.i.i49 = phi i64 [ 0, %bb.s ], [ %i.kd, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.015.0.lcssa.i.i50 = phi ptr [ %i.jh, %bb.s ], [ %i.jy, %.lr.ph.i.i62 ] ; 2 uses
  %.sroa.13.0.lcssa.i.i51 = phi ptr [ %.sroa.13.030.i.i46, %bb.s ], [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ] ; 2 uses
  %i.jm = icmp eq ptr %.sroa.13.0.lcssa.i.i51, %i.jj
  br i1 %i.jm, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNCINvB2_9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltE0ECs9JgWGBoX3PY_12lance_linalg.exit.i, label %.cont.i.i52

.cont.i.i52:                                      ; preds = %.preheader.i.i48, %.cont.i.i52
  %.sroa.015.1.i7.i53 = phi ptr [ %.sroa.13.1.i6.i54, %.cont.i.i52 ], [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ]
  %.sroa.13.1.i6.i54 = phi ptr [ %.sroa.13.1.sroa.gep.i.i57, %.cont.i.i52 ], [ %.sroa.13.0.lcssa.i.i51, %.preheader.i.i48 ] ; 4 uses
  %.sroa.23.1.i5.i55 = phi i64 [ %i.jr, %.cont.i.i52 ], [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ] ; 2 uses
  %.val.i.else.val.i.i56 = load i64, ptr %.sroa.13.1.i6.i54, align 8, !alias.scope !2286, !noalias !2287, !noundef !26 ; 2 uses
  %i.jn = icmp uge i64 %.val1.i.pre.i.i47, %.val.i.else.val.i.i56
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.sroa.23.1.i5.i55 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !alias.scope !2284, !noalias !2287
  store i64 %i.jp, ptr %.sroa.015.1.i7.i53, align 8, !alias.scope !2284, !noalias !2287
  store i64 %.val.i.else.val.i.i56, ptr %i.jo, align 8, !alias.scope !2284, !noalias !2287
  %i.jq = zext i1 %i.jn to i64
  %i.jr = add i64 %.sroa.23.1.i5.i55, %i.jq       ; 2 uses
  %.sroa.13.1.sroa.gep.i.i57 = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i6.i54, i64 8 ; 2 uses
  %i.js = icmp eq ptr %.sroa.13.1.sroa.gep.i.i57, %i.jj
  br i1 %i.js, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNCINvB2_9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltE0ECs9JgWGBoX3PY_12lance_linalg.exit.i, label %.cont.i.i52

.lr.ph.i.i62:                                     ; preds = %bb.s, %.lr.ph.i.i62
  %.sroa.13.033.i.i63 = phi ptr [ %.sroa.13.0.i.i68, %.lr.ph.i.i62 ], [ %.sroa.13.030.i.i46, %bb.s ] ; 2 uses
  %.sroa.015.032.i.i64 = phi ptr [ %i.jy, %.lr.ph.i.i62 ], [ %i.jh, %bb.s ] ; 3 uses
  %.sroa.23.031.i.i65 = phi i64 [ %i.kd, %.lr.ph.i.i62 ], [ 0, %bb.s ] ; 2 uses
  %.val.i11.i.i66 = load i64, ptr %.sroa.13.033.i.i63, align 8, !alias.scope !2288, !noalias !2289, !noundef !26 ; 2 uses
  %i.jt = icmp uge i64 %.val1.i.pre.i.i47, %.val.i11.i.i66
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.sroa.23.031.i.i65 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !alias.scope !2284, !noalias !2289
  store i64 %i.jv, ptr %.sroa.015.032.i.i64, align 8, !alias.scope !2284, !noalias !2289
  store i64 %.val.i11.i.i66, ptr %i.ju, align 8, !alias.scope !2284, !noalias !2289
  %i.jw = zext i1 %i.jt to i64
  %i.jx = add i64 %.sroa.23.031.i.i65, %i.jw      ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 16 ; 3 uses
  %.val.i13.i.i67 = load i64, ptr %i.jy, align 8, !alias.scope !2290, !noalias !2291, !noundef !26 ; 2 uses
  %i.jz = icmp uge i64 %.val1.i.pre.i.i47, %.val.i13.i.i67
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.jx ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !alias.scope !2284, !noalias !2291
  store i64 %i.kb, ptr %.sroa.13.033.i.i63, align 8, !alias.scope !2284, !noalias !2291
  store i64 %.val.i13.i.i67, ptr %i.ka, align 8, !alias.scope !2284, !noalias !2291
  %i.kc = zext i1 %i.jz to i64
  %i.kd = add i64 %i.jx, %i.kc                    ; 2 uses
  %.sroa.13.0.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i.i64, i64 24 ; 3 uses
  %i.ke = icmp ult ptr %.sroa.13.0.i.i68, %i.jk
  br i1 %i.ke, label %.lr.ph.i.i62, label %.preheader.i.i48

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNCINvB2_9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltE0ECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %.cont.i.i52, %.preheader.i.i48
  %.sroa.23.1.i.lcssa.i58 = phi i64 [ %.sroa.23.0.lcssa.i.i49, %.preheader.i.i48 ], [ %i.jr, %.cont.i.i52 ] ; 2 uses
  %.sroa.015.1.i.lcssa.i59 = phi ptr [ %.sroa.015.0.lcssa.i.i50, %.preheader.i.i48 ], [ %.sroa.13.1.i6.i54, %.cont.i.i52 ]
  %i.kf = icmp uge i64 %.val1.i.pre.i.i47, %i.ji
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %.sroa.23.1.i.lcssa.i58 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !alias.scope !2284, !noalias !2287
  store i64 %i.kh, ptr %.sroa.015.1.i.lcssa.i59, align 8, !alias.scope !2284, !noalias !2287
  store i64 %i.ji, ptr %i.kg, align 8, !alias.scope !2284, !noalias !2287
  %i.ki = zext i1 %i.kf to i64
  %i.kj = add i64 %.sroa.23.1.i.lcssa.i58, %i.ki  ; 3 uses
  %.not7.i60 = icmp ult i64 %i.kj, %.sroa.15.092155
  br i1 %.not7.i60, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNCINvB2_9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltE0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  tail call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicyNCINvB2_9quicksortyNvYyNtNtBa_3cmp10PartialOrd2ltE0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093154, i64 %i.kj ; 2 uses
  %.sroa.0.0.copyload.i.i8.i61 = load i64, ptr %.sroa.0.093154, align 8, !alias.scope !2292
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !2292
  store i64 %i.kl, ptr %.sroa.0.093154, align 8, !alias.scope !2292
  store i64 %.sroa.0.0.copyload.i.i8.i61, ptr %i.kk, align 8, !alias.scope !2292
  %i.km = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %i.kn = sub nuw nsw i64 %.sroa.15.092155, %i.km
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.093154, i64 %i.km
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.023.0.be = phi ptr [ %i.ja, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit ], [ null, %bb.u ]
  %.sroa.15.0.be = phi i64 [ %i.je, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.kn, %bb.u ] ; 4 uses
  %.sroa.0.0.be = phi ptr [ %i.jc, %_RNvMNtCscI6d9CVNmLh_4core5sliceSy12split_at_mutCs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.ko, %bb.u ] ; 3 uses
  %i.kp = icmp ult i64 %.sroa.15.0.be, 33
  br i1 %i.kp, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazy7destroyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleECs9JgWGBoX3PY_12lance_linalg(ptr nofree noundef captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality !guid !2293 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !25, !noundef !26
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE0ECs9JgWGBoX3PY_12lance_linalg.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !26 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !26
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !26 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE0ECs9JgWGBoX3PY_12lance_linalg.exit, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCskfeRsqx2rfd_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE0ECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

_RINvNtNtCsgczF5crJ4sT_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCskfeRsqx2rfd_15crossbeam_epoch9collector11LocalHandleE0ECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #1 personality ptr @rust_eh_personality !guid !2296 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !37, !alias.scope !2297, !noundef !26 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %.sroa.0.0.i14.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2297
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !2297
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %.sroa.0.0.i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4), !noalias !2297
  %i.h = load i64, ptr %i.a, align 8, !range !27, !noalias !2297, !noundef !26
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !44, !noalias !2297, !noundef !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #74
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !2297, !nonnull !26, !noundef !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !2297
  %i.o = icmp sgt i64 %.sroa.0.0.i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %.sroa.0.0.i14.i, ptr %0, align 8, !alias.scope !2297
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCskfeRsqx2rfd_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB22_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE6resize0uE0ECs9JgWGBoX3PY_12lance_linalg(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 personality ptr @rust_eh_personality !guid !2298 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !26
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE6resize0uE0Cs9JgWGBoX3PY_12lance_linalg.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !26, !noundef !26
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 8) #76
  br label %_RNCINvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE6resize0uE0Cs9JgWGBoX3PY_12lance_linalg.exit

_RNCINvMNtCskfeRsqx2rfd_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCslI57Z0hFUsx_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCseYO0BYRUZk5_10rayon_core3job6JobRefE6resize0uE0Cs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #76
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs8b6P7Nzverp_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTjjEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultENCNvB2S_34pairwise_hamming_distance_parallel0EEB2W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias noundef nonnull align 8 %5, i64 noundef %6, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #2 personality ptr @rust_eh_personality !guid !2339 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 18 uses
  %i.b = alloca [120 x i8], align 8               ; 18 uses
  %i.c = alloca [120 x i8], align 8               ; 18 uses
  %i.d = alloca [120 x i8], align 8               ; 18 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 11 uses
  %i.i = alloca [16 x i8], align 8                ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  store i64 %1, ptr %i.j, align 8
  store i64 %3, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %4, ptr %i.k, align 8
  %i.l = lshr i64 %1, 1                           ; 16 uses
  %.not = icmp ult i64 %i.l, %4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.f, label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.m = tail call noundef i64 @_RNvCseYO0BYRUZk5_10rayon_core19current_num_threads()
  %i.n = lshr i64 %3, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.m)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i64 %3, 1
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %.sink.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.i.i, %.noexc ]
  store i64 %.sink.i, ptr %i.i, align 8, !alias.scope !2340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.l, ptr %i.h, align 8
  %.not.i.i = icmp samesign ugt i64 %i.l, %6
  br i1 %.not.i.i, label %.noexc.i, label %bb.o, !prof !31

.noexc.i:                                         ; preds = %bb.e
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @124, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435) #74
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2341, !noundef !26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2341, !noundef !26 ; 3 uses
  %i.t = load ptr, ptr %7, align 8, !alias.scope !2341, !nonnull !26, !align !32, !noundef !26
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2343
  store ptr %5, ptr %i.f, align 8, !noalias !2344
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.u, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !2344
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.t, ptr %.sroa.512.0..sroa_idx.i.i, align 8, !noalias !2344
  br label %bb.h

bb.g:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming14PairwiseResultEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.e) #77, !noalias !2345
  br label %.body.i.i

end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCs8b6P7Nzverp_5rayon3vec10SliceDrainTjjEERNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming34pairwise_hamming_distance_parallel0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_:bb.a

bb.s:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.0.072.i.i.i
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !8646, !noalias !8645, !noundef !26
  %i.cf = sub nuw nsw i64 %i.m, %i.bj
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bj
  invoke fastcc void @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming18hamming_batch_simd(i64 noundef %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cg, i64 noundef %i.cf, ptr noalias noundef nonnull align 4 %i.bp, i64 noundef %i.bl)
          to label %bb.t unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8650

bb.t:                                             ; preds = %bb.s
  %i.ch = icmp ult i64 %.sroa.0.072.i.i.i, %i.r
  br i1 %i.ch, label %.lr.ph.preheader.i.i.i, label %.invoke

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.sroa.0.072.i.i.i
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !8656, !noalias !8645, !noundef !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u, %.lr.ph.preheader.i.i.i
  %.sroa.039.069.i.i.i = phi ptr [ %i.cl, %bb.u ], [ %i.bp, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.7.068.i.i.i = phi i64 [ %i.cm, %bb.u ], [ 0, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.039.069.i.i.i, i64 4 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.7.068.i.i.i, 1
  %i.cn = load i32, ptr %.sroa.039.069.i.i.i, align 4, !noalias !8648, !noundef !26 ; 2 uses
  %.not20.i.i.i = icmp ugt i32 %i.cn, %i.u
  br i1 %.not20.i.i.i, label %bb.u, label %bb.v

.thread.i.i.i:                                    ; preds = %bb.u
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bp, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !8648
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.thread.i.i.i, %.lr.ph73.split.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %i.bj, %i.i
  br i1 %exitcond.not.i.i.i, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsRNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming34pairwise_hamming_distance_parallel0INtB6_5FnMutTTjjEEE8call_mutBV_.exit, label %.lr.ph73.split.i.i.i

bb.u:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %i.co = icmp eq ptr %i.cl, %i.ck
  br i1 %i.co, label %.thread.i.i.i, label %.lr.ph.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = add i64 %.sroa.7.068.i.i.i, %i.bj       ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %i.r
  br i1 %i.cq, label %_RNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming17process_row_ranges_0B7_.exit.i.i.i.i, label %.invoke

.invoke:                                          ; preds = %bb.t, %bb.v
  %i.cr = phi i64 [ %i.cp, %bb.v ], [ %.sroa.0.072.i.i.i, %bb.t ]
  %i.cs = phi ptr [ @100, %bb.v ], [ @99, %bb.t ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef range(i64 0, 1152921504606846976) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #74
          to label %.cont unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !8648

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming17process_row_ranges_0B7_.exit.i.i.i.i: ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cp
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !8657, !noalias !8645, !noundef !26
  %i.cv = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !8651, !noalias !8648, !noundef !26 ; 3 uses
  %i.cw = load i64, ptr %i.a, align 8, !range !37, !alias.scope !8651, !noalias !8648, !noundef !26
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.w, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i

bb.w:                                             ; preds = %_RNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming17process_row_ranges_0B7_.exit.i.i.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8648

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.w, %_RNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming17process_row_ranges_0B7_.exit.i.i.i.i
  %i.cy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !8651, !noalias !8648, !nonnull !26, !noundef !26
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cv
  store i64 %i.cj, ptr %i.cz, align 8, !noalias !8648
  %i.da = add i64 %i.cv, 1
  store i64 %i.da, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !8651, !noalias !8648
  %i.db = load i64, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !alias.scope !8652, !noalias !8648, !noundef !26 ; 3 uses
  %i.dc = load i64, ptr %i.v, align 8, !range !37, !alias.scope !8652, !noalias !8648, !noundef !26
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.x, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit1.i.i.i.i

bb.x:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit1.i.i.i.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8648

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit1.i.i.i.i: ; preds = %bb.x, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  %i.de = load ptr, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !alias.scope !8652, !noalias !8648, !nonnull !26, !noundef !26
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.db
  store i64 %i.cu, ptr %i.df, align 8, !noalias !8648
  %i.dg = add i64 %i.db, 1
  store i64 %i.dg, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !alias.scope !8652, !noalias !8648
  %i.dh = load i64, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !alias.scope !8653, !noalias !8648, !noundef !26 ; 3 uses
  %i.di = load i64, ptr %i.w, align 8, !range !37, !alias.scope !8653, !noalias !8648, !noundef !26
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit1.i.i.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.z unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.loopexit.split-lp.loopexit.split.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !8648

bb.z:                                             ; preds = %bb.y, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCs9JgWGBoX3PY_12lance_linalg.exit1.i.i.i.i
  %i.dk = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !alias.scope !8653, !noalias !8648, !nonnull !26, !noundef !26
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dh
  store i32 %i.cn, ptr %i.dl, align 4, !noalias !8648
  %i.dm = add i64 %i.dh, 1
  store i64 %i.dm, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !alias.scope !8653, !noalias !8648
  br label %bb.u

_RNvXs_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsRNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming34pairwise_hamming_distance_parallel0INtB6_5FnMutTTjjEEE8call_mutBV_.exit: ; preds = %.backedge.i.i.i, %.backedge.us.i.i.i, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8648
  br label %bb.aa

_RNvXsb_NtCs8b6P7Nzverp_5rayon3vecINtB5_10SliceDrainTjjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXsb_NtCs8b6P7Nzverp_5rayon3vecINtB5_10SliceDrainTjjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit, %_RNvXs_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsRNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming34pairwise_hamming_distance_parallel0INtB6_5FnMutTTjjEEE8call_mutBV_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCs8b6P7Nzverp_5rayon3vec10SliceDrainTjjEERNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming41pairwise_hamming_distance_binary_parallel0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality !guid !8708 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [72 x i8], align 8                ; 16 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8709)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !8709, !nonnull !26, !noundef !26 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !8709, !nonnull !26, !noundef !26
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_RNvXsb_NtCs8b6P7Nzverp_5rayon3vecINtB5_10SliceDrainTjjEENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %1, align 8, !alias.scope !8709
  %i.j = load i64, ptr %i.e, align 8, !noalias !8710, !noundef !26 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !8710, !noundef !26 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.m, align 8, !nonnull !26, !align !32, !noundef !26 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8711)
  %i.n = load ptr, ptr %.val, align 8, !alias.scope !8711, !noalias !8712, !nonnull !26, !align !32, !noundef !26 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !8711, !noalias !8712, !nonnull !26, !align !32, !noundef !26 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !8713, !align !32, !noundef !26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !8713 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !8711, !noalias !8712, !nonnull !26, !align !45, !noundef !26
  %i.v = load i32, ptr %i.u, align 4, !noalias !8713, !noundef !26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8715)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !8714, !noalias !8713, !noundef !26 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8716
  store i64 0, ptr %i.c, align 8, !noalias !8716
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !8716
  %.sroa.515.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !8716
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !8716
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !8716
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !8716
  %.sroa.521.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  store i64 0, ptr %.sroa.521.0..sroa_idx.i.i.i, align 8, !noalias !8716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8716
  store i64 0, ptr %i.b, align 8, !noalias !8716
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.aa, align 8, !noalias !8716
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 6 uses
  store i64 0, ptr %i.ab, align 8, !noalias !8716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8716
  store i64 0, ptr %i.a, align 8, !noalias !8716
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.ac, align 8, !noalias !8716
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ae = icmp ult i64 %i.j, %i.l
  br i1 %i.ae, label %.lr.ph131.i.i.i, label %._crit_edge132.thread.i.i.i

.lr.ph131.i.i.i:                                  ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !8714, !noalias !8713
  %.fr.i.i.i = freeze i64 %i.ag                   ; 3 uses
  %.not.i.i.i.i = icmp ugt i64 %i.x, %.fr.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !8714, !noalias !8713, !nonnull !26 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !8714, !noalias !8713 ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = icmp ugt i64 %i.ak, 15
  %.not.i49.i.i.i = icmp eq ptr %i.q, null        ; 2 uses
  br i1 %.not.i.i.i.i, label %.lr.ph131.split.us.i.i.i.preheader, label %.lr.ph131.split.i.i.i, !prof !55

.lr.ph131.split.us.i.i.i.preheader:               ; preds = %.lr.ph131.i.i.i
  %i.an = sub i64 %i.l, %i.j                      ; 3 uses
  %min.iters.check107 = icmp ult i64 %i.an, 96
  br i1 %min.iters.check107, label %.lr.ph131.split.us.i.i.i.preheader119, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph131.split.us.i.i.i.preheader
  %n.vec109 = and i64 %i.an, -16                  ; 3 uses
  %i.ao = add i64 %i.j, %n.vec109
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.x, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert110 = insertelement <16 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat111 = shufflevector <16 x i64> %broadcast.splatinsert110, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat111, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body.interim, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body.interim ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph108 ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.ap = xor <16 x i64> %vec.ind, splat (i64 -1)
  %i.aq = add <16 x i64> %broadcast.splat, %i.ap  ; 2 uses
  %i.ar = icmp ne <16 x i64> %i.aq, zeroinitializer ; 2 uses
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body112
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 16)
  %index.next114 = add nuw i64 %index113, 16      ; 2 uses
  %i.at = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.at, label %middle.block115, label %vector.body112, !llvm.loop !8670

middle.block115:                                  ; preds = %vector.body.interim
  %cmp.n116 = icmp eq i64 %i.an, %n.vec109
  br i1 %cmp.n116, label %._crit_edge132.thread.i.i.i, label %.lr.ph131.split.us.i.i.i.preheader119

.lr.ph131.split.us.i.i.i.preheader119:            ; preds = %.lr.ph131.split.us.i.i.i.preheader, %middle.block115
  %.sroa.0.0129.us.i.i.i.ph = phi i64 [ %i.j, %.lr.ph131.split.us.i.i.i.preheader ], [ %i.ao, %middle.block115 ]
  br label %.lr.ph131.split.us.i.i.i

vector.early.exit:                                ; preds = %vector.body112
  %first.active.lane = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.ar, i1 false)
  %i.au = extractelement <16 x i64> %i.aq, i64 %first.active.lane
  br label %.loopexit

.lr.ph131.split.us.i.i.i:                         ; preds = %.lr.ph131.split.us.i.i.i.preheader119, %.backedge.us.i.i.i
  %.sroa.0.0129.us.i.i.i = phi i64 [ %i.bh, %.backedge.us.i.i.i ], [ %.sroa.0.0129.us.i.i.i.ph, %.lr.ph131.split.us.i.i.i.preheader119 ] ; 2 uses
  %i.av = xor i64 %.sroa.0.0129.us.i.i.i, -1
  %i.aw = add i64 %i.x, %i.av                     ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.backedge.us.i.i.i, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph131.split.us.i.i.i, %vector.early.exit
  %.lcssa = phi i64 [ %i.au, %vector.early.exit ], [ %i.aw, %.lr.ph131.split.us.i.i.i ] ; 4 uses
  store i64 0, ptr %i.ab, align 8, !noalias !8716
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8718)
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %.lcssa, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.us.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8716

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.us.i.i.i: ; preds = %.loopexit
  %.pre.i.i.us.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !8719, !noalias !8716 ; 3 uses
  %.pre160.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !8719, !noalias !8716 ; 2 uses
  %i.ay = icmp ult i64 %.pre.i.i.us.i.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr [4 x i8], ptr %.pre160.i.i.i, i64 %.pre.i.i.us.i.i.i ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %.lcssa, 1
  br i1 %.not.us.i.i.i, label %.split.us.i.i.i, label %._crit_edge.thread.i.i.us.i.i.i

._crit_edge.thread.i.i.us.i.i.i:                  ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.us.i.i.i
  %i.ba = shl i64 %.lcssa, 2
  %i.bb = add i64 %i.ba, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 0, i64 %i.bb, i1 false), !noalias !8720
  %i.bc = add i64 %.pre.i.i.us.i.i.i, %.lcssa
  %i.bd = shl i64 %i.bc, 2
  %i.be = getelementptr i8, ptr %.pre160.i.i.i, i64 %i.bd
  %scevgep.i.i.us.i.i.i = getelementptr i8, ptr %i.be, i64 -4
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge.thread.i.i.us.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.us.i.i.i
  %.sroa.0.0.lcssa28.i.i.us.i.i.i = phi ptr [ %scevgep.i.i.us.i.i.i, %._crit_edge.thread.i.i.us.i.i.i ], [ %i.az, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.us.i.i.i ]
  store i32 0, ptr %.sroa.0.0.lcssa28.i.i.us.i.i.i, align 4, !noalias !8720
  br label %.split.us.invoke.i.i.i

.split.us.invoke.i.i.i:                           ; preds = %bb.v, %.split.us.i.i.i
  %i.bf = phi i64 [ 0, %.split.us.i.i.i ], [ %i.el, %bb.v ]
  %i.bg = phi i64 [ %i.x, %.split.us.i.i.i ], [ %i.em, %bb.v ]
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.bf, i64 noundef %i.bg, i64 noundef %.fr.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #74
          to label %.split.us.cont.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8716

.split.us.cont.i.i.i:                             ; preds = %.split.us.invoke.i.i.i
  unreachable

.backedge.us.i.i.i:                               ; preds = %.lr.ph131.split.us.i.i.i
  %i.bh = add nuw i64 %.sroa.0.0129.us.i.i.i, 1   ; 2 uses
  %exitcond159.not.i.i.i = icmp eq i64 %i.bh, %i.l
  br i1 %exitcond159.not.i.i.i, label %._crit_edge132.thread.i.i.i, label %.lr.ph131.split.us.i.i.i, !llvm.loop !8675

._crit_edge132.thread.i.i.i:                      ; preds = %.backedge.us.i.i.i, %middle.block115, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !8721
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

._crit_edge132.i.i.i:                             ; preds = %.backedge.i.i.i
  %.val39.pre.i.i.i = load i64, ptr %i.a, align 8, !noalias !8716 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !8721
  %i.bi = icmp eq i64 %.val39.pre.i.i.i, 0
  br i1 %i.bi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge132.i.i.i
  %.val40.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !8716, !nonnull !26, !noundef !26
  %i.bj = shl nuw i64 %.val39.pre.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40.i.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !8716
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

.lr.ph131.split.i.i.i:                            ; preds = %.lr.ph131.i.i.i, %.backedge.i.i.i
  %i.bk = phi ptr [ %i.bp, %.backedge.i.i.i ], [ inttoptr (i64 4 to ptr), %.lr.ph131.i.i.i ] ; 2 uses
  %.sroa.0.0129.i.i.i = phi i64 [ %i.bl, %.backedge.i.i.i ], [ %i.j, %.lr.ph131.i.i.i ] ; 10 uses
  %i.bl = add nuw i64 %.sroa.0.0129.i.i.i, 1      ; 6 uses
  %i.bm = xor i64 %.sroa.0.0129.i.i.i, -1
  %i.bn = add i64 %i.x, %i.bm                     ; 10 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %.backedge.i.i.i, label %bb.f

.backedge.i.i.i:                                  ; preds = %bb.o, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRSyE6map_oryNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming24process_row_range_binary0EB12_.exit.i.i.i, %.lr.ph131.split.i.i.i
  %i.bp = phi ptr [ %i.bk, %.lr.ph131.split.i.i.i ], [ %i.cr, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRSyE6map_oryNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming24process_row_range_binary0EB12_.exit.i.i.i ], [ %i.cr, %bb.o ] ; 3 uses
  %exitcond158.not.i.i.i = icmp eq i64 %i.bl, %i.l
  br i1 %exitcond158.not.i.i.i, label %._crit_edge132.i.i.i, label %.lr.ph131.split.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit47.i.i.i: ; preds = %bb.h, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val37.i.i.i = load i64, ptr %i.b, align 8, !noalias !8716 ; 2 uses
  %i.bq = icmp eq i64 %.val37.i.i.i, 0
  br i1 %i.bq, label %bb.y, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit47.i.i.i
  %.val38.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !8716, !nonnull !26, !noundef !26
  %i.br = shl nuw i64 %.val37.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val38.i.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !8716
  br label %bb.y

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %bb.c, %._crit_edge132.i.i.i, %._crit_edge132.thread.i.i.i
  %.val36180.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %._crit_edge132.thread.i.i.i ], [ %i.bp, %bb.c ], [ %i.bp, %._crit_edge132.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8716
  %.val35.i.i.i = load i64, ptr %i.b, align 8, !noalias !8716 ; 2 uses
  %i.bs = icmp eq i64 %.val35.i.i.i, 0
  br i1 %i.bs, label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsRNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming41pairwise_hamming_distance_binary_parallel0INtB6_5FnMutTTjjEEE8call_mutBV_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.bt = shl nuw i64 %.val35.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val36180.i.i.i, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !8716
  br label %_RNvXs_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsRNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7hamming41pairwise_hamming_distance_binary_parallel0INtB6_5FnMutTTjjEEE8call_mutBV_.exit

bb.f:                                             ; preds = %.lr.ph131.split.i.i.i
  store i64 0, ptr %i.ab, align 8, !noalias !8716
  call void @llvm.experimental.noalias.scope.decl(metadata !8717)
  call void @llvm.experimental.noalias.scope.decl(metadata !8718)
  %i.bu = load i64, ptr %i.b, align 8, !range !37, !alias.scope !8722, !noalias !8716, !noundef !26
  %i.bv = icmp ugt i64 %i.bn, %i.bu
  br i1 %i.bv, label %bb.g, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, !prof !31

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0, i64 noundef %i.bn, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !8716

.noexc.i.i.i:                                     ; preds = %bb.g
  %.pre.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !8719, !noalias !8716
  %.pre.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !8719, !noalias !8716
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i, %bb.f
  %i.bw = phi ptr [ %i.bk, %bb.f ], [ %.pre.i.i.i, %.noexc.i.i.i ] ; 2 uses
  %i.bx = phi i64 [ 0, %bb.f ], [ %.pre.i.i.i.i.i, %.noexc.i.i.i ] ; 4 uses
  %i.by = icmp ult i64 %i.bx, 2305843009213693952
  call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr [4 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bn, 1              ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %._crit_edge.thread.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %i.ca = shl i64 %i.bn, 2
  %i.cb = add i64 %i.ca, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 0, i64 %i.cb, i1 false), !noalias !8720
  %i.cc = add i64 %i.bx, %i.bn                    ; 2 uses
  %i.cd = shl i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.bw, i64 %i.cd
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ce, i64 -4
  %i.cf = add i64 %i.cc, -1
  br label %bb.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.n, %bb.t, %bb.s, %bb.r, %bb.j, %bb.g, %.invoke.i.i.i, %.split.us.invoke.i.i.i, %.loopexit
  %lpad.loopexit.split-lp131 = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !8716 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit47.i.i.i, label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.val34.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !8716, !nonnull !26, !noundef !26
  %i.ch = shl nuw i64 %.val.i.i.i, 2
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34.i.i.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !8716
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECs9JgWGBoX3PY_12lance_linalg.exit47.i.i.i

bb.i:                                             ; preds = %._crit_edge.thread.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.sroa.0.0.lcssa28.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i ], [ %i.bz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
  %storemerge.lcssa27.i.i.i.i.i = phi i64 [ %i.cf, %._crit_edge.thread.i.i.i.i.i ], [ %i.bx, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecmE7reserveCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ]
end_hunk_1
