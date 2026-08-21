Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser:bb.a
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !18
  %.not29 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not29, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.161, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.162, %bb.r ], [ 1, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !18 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.161, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.161 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.161
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.x, label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %i.cc, i64 noundef range(i64 0, 1152921504606846976) %i.by, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cn, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3462
  br label %bb.v

bb.x:                                             ; preds = %bb.z, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  %i.co = icmp eq i64 %i.by, 0
  %i.cp = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %.sroa.0.0.i.i35
  br i1 %i.cq, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i36 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i36, ptr %i.cr, ptr %i.cc
  %i.cs = shl nuw nsw i64 %.sroa.0.0.i.i35, 3     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !3468
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i36, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.critedge.i ]
  %i.cv = phi ptr [ %i.dd, %.preheader.i ], [ %i.cr, %.critedge.i ]
  %.sroa.0.0.i17.i = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -8 ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -8 ; 2 uses
  %.val.i.i = load i8, ptr %i.cx, align 4, !alias.scope !3466, !noalias !3469, !noundef !18
  %.val10.i.i = load i8, ptr %i.cw, align 4, !alias.scope !3463, !noalias !3472, !noundef !18
  %i.cz = icmp ult i8 %.val.i.i, %.val10.i.i      ; 3 uses
  %..i.i = select i1 %i.cz, ptr %i.cw, ptr %i.cx
  %i.da = load i64, ptr %..i.i, align 4, !alias.scope !3468, !noalias !3473
  store i64 %i.da, ptr %i.cy, align 4, !alias.scope !3463, !noalias !3472
  %i.db = xor i1 %i.cz, true
  %i.dc = zext i1 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dc ; 3 uses
  %i.de = zext i1 %i.cz to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.de ; 3 uses
  %i.dg = icmp eq ptr %i.dd, %i.cc
  %i.dh = icmp eq ptr %i.df, %2
  %or.cond.i.i = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2o_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.di = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %i.dj = phi ptr [ %i.do, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load i8, ptr %.sroa.0.02.i.i, align 4, !alias.scope !3463, !noalias !3474, !noundef !18
  %.val.i19.i = load i8, ptr %i.dj, align 4, !alias.scope !3466, !noalias !3477, !noundef !18
  %i.dk = icmp ult i8 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.dl = xor i1 %i.dk, true
  %spec.select.i.i = select i1 %i.dk, ptr %.sroa.0.02.i.i, ptr %i.dj
  %i.dm = load i64, ptr %spec.select.i.i, align 4, !alias.scope !3468, !noalias !3478
  store i64 %i.dm, ptr %i.di, align 4, !alias.scope !3463, !noalias !3474
  %i.dn = zext i1 %i.dl to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dn ; 3 uses
  %i.dp = zext i1 %i.dk to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.ds = icmp ne ptr %i.do, %i.ct
  %i.dt = icmp ne ptr %i.dq, %i.m
  %or.cond.i20.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2o_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2o_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dd, %.preheader.i ], [ %i.dr, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.df, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.do, %.lr.ph.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.sroa.7.0.i to i64
  %i.dv = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dw = sub nuw i64 %i.du, %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.13.1.i, ptr align 4 %.sroa.0.1.i, i64 %i.dw, i1 false), !alias.scope !3468, !noalias !3479
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.x, %bb.y, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateThcEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2o_14DecompositionsNtNtNtBb_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.dx = shl nuw nsw i64 %i.ca, 1
  %i.dy = or disjoint i64 %i.dx, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

bb.z:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by
  %i.ea = or i64 %i.bz, 1
  %i.eb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ea, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 1
  %i.ee = xor i32 %i.ed, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %i.dz, i64 noundef range(i64 0, 1152921504606846976) %i.bz, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.ee, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3462
  br label %bb.x

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB27_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit
  %.sroa.0.0.i = phi i64 [ %i.dy, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1X_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.ef = icmp ugt i64 %i.br, 1
  br i1 %i.ef, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.eg = add i64 %.sroa.02.1.lcssa, 1
  %i.eh = lshr i64 %.sroa.018.0, 1
  %i.ei = add nuw i64 %i.eh, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ej = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ej, 0
  br i1 %.not31, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ek = or i64 %1, 1
  %i.el = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ek, i1 true)
  %i.em = trunc nuw nsw i64 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 1
  %i.eo = xor i32 %i.en, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eo, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !3462
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB26_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 4 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 4 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 4                 ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph128 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kl, %.outer ] ; 22 uses
  %.sroa.16.0.ph127 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.jw, %.outer ] ; 2 uses
  %.sroa.025.0.ph126 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.er, %.outer ] ; 2 uses
  %.sroa.028.0.ph125 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = ptrtoint ptr %.sroa.0.0.ph128 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph125, null
  %i.e = icmp eq i32 %.sroa.025.0.ph126, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph298

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit
  %i.f = icmp eq i32 %i.er, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph298

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit, %bb.a
  %.sroa.0.0.ph.lcssa119 = phi ptr [ %.sroa.0.0.ph128, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %0, %bb.a ], [ %i.kl, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSThcE12split_at_mutCsb6FLkjZuKG_18ruff_python_parser.exit ], [ %1, %bb.a ], [ %i.jw, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  call void @llvm.experimental.noalias.scope.decl(metadata !3487)
  %i.g = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.g, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.h = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.i = icmp samesign ult i64 %3, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.k, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.l, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2a_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr noundef nonnull align 4 %2, ptr noundef %i.m)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2a_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 8
  %.val8.i.i = load i8, ptr %i.q, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val9.i.i = load i8, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.r = icmp ult i8 %.val8.i.i, %.val9.i.i       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.lcssa119, i64 16
  %.val6.i.i = load i8, ptr %i.s, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val7.i.i = load i8, ptr %i.t, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.u = icmp ult i8 %.val6.i.i, %.val7.i.i       ; 2 uses
  %i.v = zext i1 %i.r to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.v ; 3 uses
  %i.x = xor i1 %i.r, true
  %i.y = zext i1 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.y ; 4 uses
  %i.aa = select i1 %i.u, i64 3, i64 2
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.aa ; 4 uses
  %i.ac = select i1 %i.u, i64 2, i64 3
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.ac ; 3 uses
  %.val4.i.i = load i8, ptr %i.ab, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val5.i.i = load i8, ptr %i.w, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.ae = icmp ult i8 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i8, ptr %i.ad, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val3.i.i = load i8, ptr %i.z, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.af = icmp ult i8 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.ag = select i1 %i.ae, ptr %i.ab, ptr %i.w, !unpredictable !18
  %i.ah = select i1 %i.af, ptr %i.z, ptr %i.ad, !unpredictable !18
  %i.ai = select i1 %i.af, ptr %i.ab, ptr %i.z, !unpredictable !18
  %i.aj = select i1 %i.ae, ptr %i.w, ptr %i.ai, !unpredictable !18 ; 3 uses
  %i.ak = select i1 %i.ae, ptr %i.z, ptr %i.ab, !unpredictable !18
  %i.al = select i1 %i.af, ptr %i.ad, ptr %i.ak, !unpredictable !18 ; 3 uses
  %.val.i.i = load i8, ptr %i.al, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val1.i.i = load i8, ptr %i.aj, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.am = icmp ult i8 %.val.i.i, %.val1.i.i       ; 2 uses
  %i.an = select i1 %i.am, ptr %i.al, ptr %i.aj, !unpredictable !18
  %i.ao = select i1 %i.am, ptr %i.aj, ptr %i.al, !unpredictable !18
  %i.ap = load i64, ptr %i.ag, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ap, ptr %2, align 4, !alias.scope !3487, !noalias !3484
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.an, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ar, ptr %i.aq, align 4, !alias.scope !3487, !noalias !3484
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.at = load i64, ptr %i.ao, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.at, ptr %i.as, align 4, !alias.scope !3487, !noalias !3484
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.av = load i64, ptr %i.ah, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.av, ptr %i.au, align 4, !alias.scope !3487, !noalias !3484
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val8.i30.i = load i8, ptr %i.ay, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val9.i31.i = load i8, ptr %i.aw, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.az = icmp ult i8 %.val8.i30.i, %.val9.i31.i  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val6.i32.i = load i8, ptr %i.ba, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val7.i33.i = load i8, ptr %i.bb, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bc = icmp ult i8 %.val6.i32.i, %.val7.i33.i  ; 2 uses
  %i.bd = zext i1 %i.az to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bd ; 3 uses
  %i.bf = xor i1 %i.az, true
  %i.bg = zext i1 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg ; 4 uses
  %i.bi = select i1 %i.bc, i64 3, i64 2
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi ; 4 uses
  %i.bk = select i1 %i.bc, i64 2, i64 3
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk ; 3 uses
  %.val4.i34.i = load i8, ptr %i.bj, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val5.i35.i = load i8, ptr %i.be, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bm = icmp ult i8 %.val4.i34.i, %.val5.i35.i  ; 3 uses
  %.val2.i36.i = load i8, ptr %i.bl, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val3.i37.i = load i8, ptr %i.bh, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bn = icmp ult i8 %.val2.i36.i, %.val3.i37.i  ; 3 uses
  %i.bo = select i1 %i.bm, ptr %i.bj, ptr %i.be, !unpredictable !18
  %i.bp = select i1 %i.bn, ptr %i.bh, ptr %i.bl, !unpredictable !18
  %i.bq = select i1 %i.bn, ptr %i.bj, ptr %i.bh, !unpredictable !18
  %i.br = select i1 %i.bm, ptr %i.be, ptr %i.bq, !unpredictable !18 ; 3 uses
  %i.bs = select i1 %i.bm, ptr %i.bh, ptr %i.bj, !unpredictable !18
  %i.bt = select i1 %i.bn, ptr %i.bl, ptr %i.bs, !unpredictable !18 ; 3 uses
  %.val.i38.i = load i8, ptr %i.bt, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %.val1.i39.i = load i8, ptr %i.br, align 4, !alias.scope !3484, !noalias !3487, !noundef !18
  %i.bu = icmp ult i8 %.val.i38.i, %.val1.i39.i   ; 2 uses
  %i.bv = select i1 %i.bu, ptr %i.bt, ptr %i.br, !unpredictable !18
  %i.bw = select i1 %i.bu, ptr %i.br, ptr %i.bt, !unpredictable !18
  %i.bx = load i64, ptr %i.bo, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.bx, ptr %i.ax, align 4, !alias.scope !3487, !noalias !3484
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bz = load i64, ptr %i.bv, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.bz, ptr %i.by, align 4, !alias.scope !3487, !noalias !3484
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cb = load i64, ptr %i.bw, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.cb, ptr %i.ca, align 4, !alias.scope !3487, !noalias !3484
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.cd = load i64, ptr %i.bp, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.cd, ptr %i.cc, align 4, !alias.scope !3487, !noalias !3484
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ce = load i64, ptr %.sroa.0.0.ph.lcssa119, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ce, ptr %2, align 4, !alias.scope !3487, !noalias !3484
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.j
  %i.ch = load i64, ptr %i.cf, align 4, !alias.scope !3484, !noalias !3487
  store i64 %i.ch, ptr %i.cg, align 4, !alias.scope !3487, !noalias !3484
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %7 = sub nsw i64 %.sroa.16.0.lcssa, %i.j        ; 2 uses
  %i.ci = icmp samesign ult i64 %.sroa.0.0.i, %i.j
  br i1 %i.ci, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.j
  %8 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.j
  %9 = getelementptr [8 x i8], ptr %2, i64 %i.j   ; 6 uses
  %10 = icmp ult i64 %.sroa.0.0.i, %7
  br i1 %10, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cv, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %.sroa.05.08.1.i
  %.idx328 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 %.idx328 ; 3 uses
  %i.cl = load i64, ptr %i.cj, align 4, !alias.scope !3484, !noalias !3487 ; 3 uses
  store i64 %i.cl, ptr %i.ck, align 4, !alias.scope !3487, !noalias !3484
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -8 ; 3 uses
  %i.cn = trunc i64 %i.cl to i8                   ; 2 uses
  %.val10.i.1.i = load i8, ptr %i.cm, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.co = icmp ugt i8 %.val10.i.1.i, %i.cn
  br i1 %i.co, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cp = load i64, ptr %i.cm, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.cp, ptr %i.ck, align 4, !alias.scope !3487, !noalias !3484
  %i.cq = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cq, label %._crit_edge309, label %.lr.ph308

.preheader:                                       ; preds = %.lr.ph308
  %i.cr = load i64, ptr %i.ct, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.cr, ptr %.sroa.0.0.i41.1.i307, align 4, !alias.scope !3487, !noalias !3484
  %i.cs = icmp eq ptr %i.ct, %9
  br i1 %i.cs, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i307 = phi ptr [ %i.ct, %.preheader ], [ %i.cm, %.preheader.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i307, i64 -8 ; 4 uses
  %.val8.i42.1.i = load i8, ptr %i.ct, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.cu = icmp ugt i8 %.val8.i42.1.i, %i.cn
  br i1 %i.cu, label %.preheader, label %._crit_edge309

._crit_edge309:                                   ; preds = %.preheader, %.lr.ph308, %.preheader.preheader
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %9, %.preheader.preheader ], [ %9, %.preheader ], [ %.sroa.0.0.i41.1.i307, %.lr.ph308 ]
  %.sroa.0.sroa.0.0.insert.insert.i.1.i = and i64 %i.cl, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !3487, !noalias !3489
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i: ; preds = %._crit_edge309, %.lr.ph.1.i
  %i.cv = add nuw i64 %.sroa.05.08.1.i, 1         ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cv, %7
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3494)
  %i.cw = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cw
  %i.cz = getelementptr i8, ptr %9, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.da = getelementptr i8, ptr %i.dr, i64 8      ; 2 uses
  %i.db = getelementptr i8, ptr %i.dq, i64 8
  %i.dc = and i64 %.sroa.16.0.lcssa, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %bb.k

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa119, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.de, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.dl, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %9, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %i.cz, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cy, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i8, ptr %.sroa.011.07.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %.sroa.06.0.val.i.i = load i8, ptr %.sroa.06.08.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %i.df = icmp ult i8 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %i.df, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i23.i.i, align 4, !alias.scope !3497, !noalias !3498
  store i64 %i.dh, ptr %.sroa.0.010.i.i, align 4, !alias.scope !3484, !noalias !3502
  %i.di = zext i1 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.di ; 4 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.dk ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i8, ptr %.sroa.017.05.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %.sroa.015.0.val.i.i = load i8, ptr %.sroa.015.06.i.i, align 4, !alias.scope !3497, !noalias !3484, !noundef !18
  %i.dn = icmp ult i8 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dn, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.do = xor i1 %i.dn, true
  %i.dp = load i64, ptr %..i.i.i, align 4, !alias.scope !3497, !noalias !3503
  store i64 %i.dp, ptr %.sroa.019.04.i.i, align 4, !alias.scope !3484, !noalias !3507
  %.neg.i.i.i = sext i1 %i.do to i64
  %i.dq = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.dn to i64
  %i.dr = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.de, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.dt = icmp ult ptr %i.dl, %i.da               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dt, ptr %i.dl, ptr %i.dj
  %i.du = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !3497, !noalias !3484
  store i64 %i.du, ptr %i.dm, align 4, !alias.scope !3484, !noalias !3497
  %i.dv = zext i1 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dv
  %i.dx = xor i1 %i.dt, true
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dy
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dj, %._crit_edge.i.i ], [ %i.dz, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.dl, %._crit_edge.i.i ], [ %i.dw, %bb.k ]
  %i.ea = icmp ne ptr %.sroa.06.1.i.i, %i.da
  %i.eb = icmp ne ptr %.sroa.011.1.i.i, %i.db
  %or.cond.i.i = select i1 %i.ea, i1 true, i1 %i.eb, !prof !3437
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit, !prof !3437

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #41
          to label %.noexc.i unwind label %bb.n, !noalias !3484

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ec = landingpad { ptr, i32 }
          cleanup
  %i.ed = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa119, ptr nonnull align 4 %2, i64 %i.ed, i1 false), !alias.scope !3508, !noalias !3509
  resume { ptr, i32 } %i.ec

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  %.sroa.05.08.i = phi i64 [ %i.eq, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa119, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.eg = load i64, ptr %i.ee, align 4, !alias.scope !3484, !noalias !3487 ; 3 uses
  store i64 %i.eg, ptr %i.ef, align 4, !alias.scope !3487, !noalias !3484
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -8 ; 3 uses
  %i.ei = trunc i64 %i.eg to i8                   ; 2 uses
  %.val10.i.i = load i8, ptr %i.eh, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.ej = icmp ugt i8 %.val10.i.i, %i.ei
  br i1 %i.ej, label %.preheader85.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

.preheader85.preheader:                           ; preds = %.lr.ph.i
  %i.ek = load i64, ptr %i.eh, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.ek, ptr %i.ef, align 4, !alias.scope !3487, !noalias !3484
  %i.el = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.el, label %._crit_edge304, label %.lr.ph303

.preheader85:                                     ; preds = %.lr.ph303
  %i.em = load i64, ptr %i.eo, align 4, !alias.scope !3487, !noalias !3484
  store i64 %i.em, ptr %.sroa.0.0.i41.i302, align 4, !alias.scope !3487, !noalias !3484
  %i.en = icmp eq ptr %i.eo, %2
  br i1 %i.en, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %.preheader85.preheader, %.preheader85
  %.sroa.0.0.i41.i302 = phi ptr [ %i.eo, %.preheader85 ], [ %i.eh, %.preheader85.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i302, i64 -8 ; 4 uses
  %.val8.i42.i = load i8, ptr %i.eo, align 4, !alias.scope !3487, !noalias !3484, !noundef !18
  %i.ep = icmp ugt i8 %.val8.i42.i, %i.ei
  br i1 %i.ep, label %.preheader85, label %._crit_edge304

._crit_edge304:                                   ; preds = %.preheader85, %.lr.ph303, %.preheader85.preheader
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %.preheader85.preheader ], [ %2, %.preheader85 ], [ %.sroa.0.0.i41.i302, %.lr.ph303 ]
  %.sroa.0.sroa.0.0.insert.insert.i.i = and i64 %i.eg, -4294967041
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i, ptr %.sroa.0.0.i41.lcssa.i, align 4, !alias.scope !3487, !noalias !3489
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB29_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.eq = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eq, %i.j
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0121.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1W_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph128, i64 noundef %.sroa.16.0121.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit

.lr.ph298:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0120297 = phi i32 [ %i.er, %bb.b ], [ %.sroa.025.0.ph126, %.lr.ph ]
  %.sroa.16.0121296 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph127, %.lr.ph ] ; 19 uses
  %i.er = add i32 %.sroa.025.0120297, -1          ; 4 uses
  %i.es = lshr i64 %.sroa.16.0121296, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.es, 5
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.es, 56
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %.idx2.i ; 3 uses
  %i.ev = icmp samesign ult i64 %.sroa.16.0121296, 64
  br i1 %i.ev, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph298
  %i.ew = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB25_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph128, ptr noundef readonly %i.et, ptr noundef readonly %i.eu, i64 noundef %i.es)
  br label %bb.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %.lr.ph298
  %.val6.i = load i8, ptr %.sroa.0.0.ph128, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %.val7.i = load i8, ptr %i.et, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %i.ex = icmp ult i8 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i8, ptr %i.eu, align 4, !alias.scope !3514, !noundef !18 ; 2 uses
  %i.ey = icmp ult i8 %.val6.i, %.val5.i
  %i.ez = xor i1 %i.ex, %i.ey
  %i.fa = icmp ult i8 %.val7.i, %.val5.i
  %i.fb = xor i1 %i.ex, %i.fa
  %..i.i = select i1 %i.fb, ptr %i.eu, ptr %i.et
  %.sroa.0.0.i.i = select i1 %i.ez, ptr %.sroa.0.0.ph128, ptr %..i.i
  br label %bb.p

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB2t_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs7CqHJXwM7TD_21unicode_normalization9decomposeINtB1Z_14DecompositionsNtNtNtBa_3str4iter5CharsE12sort_pending0E0ECsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ %i.ew, %bb.o ]
  %i.fc = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fd = sub nuw i64 %i.fc, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fd, 3        ; 3 uses
  %i.fe = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0121296
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.fd ; 4 uses
  %i.fg = load i8, ptr %i.ff, align 4             ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fi = load i32, ptr %i.fh, align 4
  store i8 %i.fg, ptr %i.a, align 4
  store i32 %i.fi, ptr %i.c, align 4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i8, ptr %.sroa.028.0.ph125, align 4, !noundef !18
  %i.fj = icmp ult i8 %.sroa.028.0.val, %i.fg
  br i1 %i.fj, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  call void @llvm.experimental.noalias.scope.decl(metadata !3520)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0121296
  br i1 %.not83, label %bb.t, label %bb.s, !prof !3437

bb.s:                                             ; preds = %bb.r
  %i.fk = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0121296 ; 3 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.fk, %bb.s ], [ %i.hc, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.s ], [ %i.hf, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.s ], [ %.sroa.16.0121296, %bb.v ] ; 3 uses
  %i.fl = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.fl ; 2 uses
  %i.fn = icmp ult ptr %.sroa.9.0.i, %i.fm
  br i1 %i.fn, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gp, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.go, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gk, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
  %.val22.i = load i8, ptr %.sroa.9.131.i, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.fo = icmp ult i8 %.val22.i, %i.fg            ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fo, ptr %2, ptr %i.fp
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.fr = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !3517, !noalias !3522
  store i64 %i.fr, ptr %i.fq, align 4, !alias.scope !3520, !noalias !3525
  %i.fs = zext i1 %i.fo to i64
  %i.ft = add i64 %.sroa.27.130.i, %i.fs          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val20.i = load i8, ptr %i.fu, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.fv = icmp ult i8 %.val20.i, %i.fg            ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i24.i = select i1 %i.fv, ptr %2, ptr %i.fw
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.ft
  %i.fy = load i64, ptr %i.fu, align 4, !alias.scope !3517, !noalias !3526
  store i64 %i.fy, ptr %i.fx, align 4, !alias.scope !3520, !noalias !3529
  %i.fz = zext i1 %i.fv to i64
  %i.ga = add i64 %i.ft, %i.fz                    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val18.i = load i8, ptr %i.gb, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gc = icmp ult i8 %.val18.i, %i.fg            ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i25.i = select i1 %i.gc, ptr %2, ptr %i.gd
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.ga
  %i.gf = load i64, ptr %i.gb, align 4, !alias.scope !3517, !noalias !3530
  store i64 %i.gf, ptr %i.ge, align 4, !alias.scope !3520, !noalias !3533
  %i.gg = zext i1 %i.gc to i64
  %i.gh = add i64 %i.ga, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val16.i = load i8, ptr %i.gi, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gj = icmp ult i8 %.val16.i, %i.fg            ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gj, ptr %2, ptr %i.gk
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %i.gh
  %i.gm = load i64, ptr %i.gi, align 4, !alias.scope !3517, !noalias !3534
  store i64 %i.gm, ptr %i.gl, align 4, !alias.scope !3520, !noalias !3537
  %i.gn = zext i1 %i.gj to i64
  %i.go = add i64 %i.gh, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.gq = icmp ult ptr %i.gp, %i.fm
  br i1 %i.gq, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.u
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.u ], [ %i.gk, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.u ], [ %i.go, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.u ], [ %i.gp, %.lr.ph.i40 ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gs = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gr
  br i1 %i.gs, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gv, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gz, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.ha, %.lr.ph38.i ] ; 2 uses
  %i.gt = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0121296
  br i1 %i.gt, label %bb.w, label %bb.v

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.ha, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gz, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gv, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i8, ptr %.sroa.9.236.i, align 4, !alias.scope !3517, !noalias !3520, !noundef !18
  %i.gu = icmp ult i8 %.val.i, %i.fg              ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.gu, ptr %2, ptr %i.gv
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i
  %i.gx = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !3517, !noalias !3538
  store i64 %i.gx, ptr %i.gw, align 4, !alias.scope !3520, !noalias !3541
  %i.gy = zext i1 %i.gu to i64
  %i.gz = add i64 %.sroa.27.235.i, %i.gy          ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.hb = icmp ult ptr %i.ha, %i.gr
  br i1 %i.hb, label %.lr.ph38.i, label %._crit_edge39.i

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hc = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.sroa.27.2.lcssa.i
  %i.he = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !3517, !noalias !3542
  store i64 %i.he, ptr %i.hd, align 4, !alias.scope !3520, !noalias !3545
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge39.i
  %i.hg = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph128, ptr nonnull align 4 %2, i64 %i.hg, i1 false), !alias.scope !3546
  %i.hh = sub i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.w
  %i.hi = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.hh, 4
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph45.i
  %n.vec317 = and i64 %i.hh, -4                   ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 3 uses
  %i.hj = xor i64 %index319, -1
  %i.hk = getelementptr [8 x i8], ptr %i.fk, i64 %i.hj ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %i.hi, i64 %index319 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 -8
  %i.hn = getelementptr i8, ptr %i.hk, i64 -24
  %wide.load320.a = load <2 x i64>, ptr %i.hm, align 4, !alias.scope !3520, !noalias !3517
  %wide.load321 = load <2 x i64>, ptr %i.hn, align 4, !alias.scope !3520, !noalias !3517
  %reverse322.a = shufflevector <2 x i64> %wide.load320.a, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse323 = shufflevector <2 x i64> %wide.load321, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ho = getelementptr i8, ptr %i.hl, i64 16
  store <2 x i64> %reverse322.a, ptr %i.hl, align 4, !alias.scope !3517, !noalias !3520
  store <2 x i64> %reverse323, ptr %i.ho, align 4, !alias.scope !3517, !noalias !3520
end_hunk_0
