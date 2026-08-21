Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_:bb.a
._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.159 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.159
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9486
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9484, !noalias !9487, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9481, !noalias !9490, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9486, !noalias !9491
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cc
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9481, !noalias !9492, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9484, !noalias !9495, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9486, !noalias !9496
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9486, !noalias !9497
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i
  %i.ef = shl nuw nsw i64 %i.ca, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eh = icmp ugt i64 %i.br, 1
  br i1 %i.eh, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ei = add i64 %.sroa.02.1.lcssa, 1
  %i.ej = lshr i64 %.sroa.018.0, 1
  %i.ek = add nuw i64 %i.ej, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.el = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.el, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = or i64 %1, 1
  %i.en = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = xor i32 %i.ep, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kf, %.outer ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.jq, %.outer ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.el, %.outer ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph127, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph124, i64 8
  %i.g = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit
  %i.h = icmp eq i32 %i.el, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit ], [ %0, %bb.a ], [ %i.kf, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit ], [ %1, %bb.a ], [ %i.jq, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9502)
  call void @llvm.experimental.noalias.scope.decl(metadata !9505)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 11 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1c_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1c_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 24
  %.val8.i.i = load i64, ptr %i.s, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val9.i.i = load i64, ptr %i.t, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.u = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 56
  %.val6.i.i = load i64, ptr %i.v, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 40
  %.val7.i.i = load i64, ptr %i.w, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.x = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.u, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i = load i64, ptr %i.ah, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i = load i64, ptr %i.ai, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.aj = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i = load i64, ptr %i.al, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.am = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.an = select i1 %i.aj, ptr %i.ae, ptr %i.z, !unpredictable !5
  %i.ao = select i1 %i.am, ptr %i.ac, ptr %i.ag, !unpredictable !5
  %i.ap = select i1 %i.am, ptr %i.ae, ptr %i.ac, !unpredictable !5
  %i.aq = select i1 %i.aj, ptr %i.z, ptr %i.ap, !unpredictable !5 ; 3 uses
  %i.ar = select i1 %i.aj, ptr %i.ac, ptr %i.ae, !unpredictable !5
  %i.as = select i1 %i.am, ptr %i.ag, ptr %i.ar, !unpredictable !5 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val.i.i = load i64, ptr %i.at, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i.i = load i64, ptr %i.au, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.av = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aw = select i1 %i.av, ptr %i.as, ptr %i.aq, !unpredictable !5
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9507
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9507
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9507
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9507
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9502, !noalias !9505, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9507
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9507
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9507
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9507
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9507
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9507
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 3 uses
  %i.co = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.co, label %.loopexit.i, label %.loopexit.1.i

.loopexit.i:                                      ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i
  %.sroa.05.012.us.i = phi i64 [ %17, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.012.us.i
  %.idx = shl nuw nsw i64 %.sroa.05.012.us.i, 4
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !9507
  %8 = getelementptr i8, ptr %7, i64 8
  %.val9.i40.us.i = load i64, ptr %8, align 8, !alias.scope !9505, !noalias !9502, !noundef !5 ; 3 uses
  %9 = getelementptr i8, ptr %7, i64 -8
  %.val10.i.us.i = load i64, ptr %9, align 8, !alias.scope !9505, !noalias !9502, !noundef !5
  %i.cq = icmp ult i64 %.val9.i40.us.i, %.val10.i.us.i
  br i1 %i.cq, label %10, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i

10:                                               ; preds = %.loopexit.i
  %11 = load ptr, ptr %7, align 8, !alias.scope !9505, !noalias !9502, !nonnull !5, !align !97, !noundef !5
  %.sroa.0.0.i41.us.i297 = getelementptr inbounds i8, ptr %7, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i297, i64 16, i1 false), !alias.scope !9505, !noalias !9502
  %12 = icmp eq i64 %.sroa.05.012.us.i, 1
  br i1 %12, label %._crit_edge302, label %.lr.ph301

13:                                               ; preds = %.lr.ph301
  %.sroa.0.0.i41.us.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.us.i299, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i299, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i, i64 16, i1 false), !alias.scope !9505, !noalias !9502
  %14 = icmp eq ptr %.sroa.0.0.i41.us.i, %2
  br i1 %14, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %10, %13
  %.sroa.0.0.i41.us.i299 = phi ptr [ %.sroa.0.0.i41.us.i, %13 ], [ %.sroa.0.0.i41.us.i297, %10 ] ; 5 uses
  %.sroa.5.0.i.us.i298 = phi ptr [ %.sroa.0.0.i41.us.i299, %13 ], [ %7, %10 ] ; 2 uses
  %15 = getelementptr i8, ptr %.sroa.5.0.i.us.i298, i64 -24
  %.val8.i42.us.i = load i64, ptr %15, align 8, !alias.scope !9505, !noalias !9502, !noundef !5
  %16 = icmp ult i64 %.val9.i40.us.i, %.val8.i42.us.i
  br i1 %16, label %13, label %._crit_edge302

._crit_edge302:                                   ; preds = %13, %.lr.ph301, %10
  %.sroa.5.0.i.us.i.lcssa = phi ptr [ %7, %10 ], [ %.sroa.0.0.i41.us.i299, %13 ], [ %.sroa.5.0.i.us.i298, %.lr.ph301 ]
  %.sroa.0.0.i41.us.lcssa.i = phi ptr [ %2, %10 ], [ %2, %13 ], [ %.sroa.0.0.i41.us.i299, %.lr.ph301 ]
  store ptr %11, ptr %.sroa.0.0.i41.us.lcssa.i, align 8, !alias.scope !9505, !noalias !9508
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.i.lcssa, i64 -8
  store i64 %.val9.i40.us.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i, align 8, !alias.scope !9505, !noalias !9508
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i: ; preds = %._crit_edge302, %.loopexit.i
  %17 = add nuw nsw i64 %.sroa.05.012.us.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %17, %i.l
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %.loopexit.i

.lr.ph.1.i:                                       ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.db, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !9507
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %.val9.i40.1.i = load i64, ptr %i.ct, align 8, !alias.scope !9505, !noalias !9502, !noundef !5 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cu, align 8, !alias.scope !9505, !noalias !9502, !noundef !5
  %i.cv = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cv, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cw = load ptr, ptr %i.cs, align 8, !alias.scope !9505, !noalias !9502, !nonnull !5, !align !97, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cs, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9505, !noalias !9502
  %i.cx = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cx, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9505, !noalias !9502
  %i.cy = icmp eq ptr %.sroa.0.0.i41.1.i, %2
  br i1 %i.cy, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cs, %bb.k ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.cz, align 8, !alias.scope !9505, !noalias !9502, !noundef !5
  %i.da = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.da, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cs, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %2, %bb.k ], [ %2, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cw, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9505, !noalias !9508
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9505, !noalias !9508
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.db = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.db, %i.l
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %bb.j
  %i.dc = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %18 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.dc
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.dc
  %i.de = getelementptr [16 x i8], ptr %2, i64 %i.l ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %i.dz, i64 16     ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dy, i64 16
  %i.di = and i64 %.sroa.16.0.lcssa, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.n, label %bb.m

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.de, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dd, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %18, %.loopexit.1.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9513, !noalias !9502, !noundef !5
  %i.dm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.dm, align 8, !alias.scope !9513, !noalias !9502, !noundef !5
  %i.dn = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.do = xor i1 %i.dn, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9507, !noalias !9516
  %i.dp = zext i1 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dp ; 4 uses
  %i.dr = zext i1 %i.do to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dr ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.du, align 8, !alias.scope !9513, !noalias !9502, !noundef !5
  %i.dv = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dv, align 8, !alias.scope !9513, !noalias !9502, !noundef !5
  %i.dw = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dx = xor i1 %i.dw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9507, !noalias !9520
  %.neg.i.i.i = sext i1 %i.dx to i64
  %i.dy = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dw to i64
  %i.dz = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.eb = icmp ult ptr %i.ds, %i.dg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.eb, ptr %i.ds, ptr %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9507
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = xor i1 %i.eb, true
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ef
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dq, %._crit_edge.i.i ], [ %i.eg, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ed, %bb.m ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i, %i.dg
  %i.ei = icmp ne ptr %.sroa.011.1.i.i, %i.dh
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !9408
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !9408

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ek, i1 false), !alias.scope !9507, !noalias !9524
  resume { ptr, i32 } %i.ej

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.el, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.el = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.em = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.em, 6
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.em, 112
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.ep = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.ep, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph295
  %i.eq = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB17_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.en, ptr noundef readonly %i.eo, i64 noundef %i.em)
  br label %bb.r

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9529, !noundef !5 ; 2 uses
  %i.er = getelementptr i8, ptr %i.en, i64 8
  %.val7.i = load i64, ptr %i.er, align 8, !alias.scope !9529, !noundef !5 ; 2 uses
  %i.es = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.et = getelementptr i8, ptr %i.eo, i64 8
  %.val5.i = load i64, ptr %i.et, align 8, !alias.scope !9529, !noundef !5 ; 2 uses
  %i.eu = icmp ult i64 %.val6.i, %.val5.i
  %i.ev = xor i1 %i.es, %i.eu
  %i.ew = icmp ult i64 %.val7.i, %.val5.i
  %i.ex = xor i1 %i.es, %i.ew
  %..i.i = select i1 %i.ex, ptr %i.eo, ptr %i.en
  %.sroa.0.0.i.i = select i1 %i.ev, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.r

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.eq, %bb.q ]
  %i.ey = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ez = sub nuw i64 %i.ey, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.ez, 4        ; 3 uses
  %i.fa = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 5 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  store ptr %i.fc, ptr %i.a, align 8
  store i64 %i.fe, ptr %i.c, align 8
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.ff = icmp ult i64 %.sroa.028.0.val, %i.fe
  br i1 %i.ff, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !9532)
  %.not83.a = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83.a, label %bb.v, label %bb.u, !prof !9408

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.fg, %bb.u ], [ %i.gy, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.u ], [ %i.ha, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.u ], [ %.sroa.16.0120293, %bb.x ] ; 3 uses
  %i.fh = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fh ; 2 uses
  %i.fj = icmp ult ptr %.sroa.9.0.i, %i.fi
  br i1 %i.fj, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.w, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gl, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.w ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gk, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gh, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %i.fk = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fk, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %.val22.i = load i64, ptr %i.fd, align 8, !alias.scope !9535, !noalias !9532, !noundef !5 ; 4 uses
  %i.fl = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fl, ptr %2, ptr %i.fm
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9537, !noalias !9538
  %i.fo = zext i1 %i.fl to i64
  %i.fp = add i64 %.sroa.27.130.i, %i.fo          ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.fr = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.fr, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %i.fs = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.fs, ptr %2, ptr %i.ft
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !alias.scope !9537, !noalias !9541
  %i.fv = zext i1 %i.fs to i64
  %i.fw = add i64 %i.fp, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.fy = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.fy, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %i.fz = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.fz, ptr %2, ptr %i.ga
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !alias.scope !9537, !noalias !9544
  %i.gc = zext i1 %i.fz to i64
  %i.gd = add i64 %i.fw, %i.gc                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gf = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gf, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %i.gg = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gg, ptr %2, ptr %i.gh
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !alias.scope !9537, !noalias !9547
  %i.gj = zext i1 %i.gg to i64
  %i.gk = add i64 %i.gd, %i.gj                    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gm = icmp ult ptr %i.gl, %i.fi
  br i1 %i.gm, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.gh, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.gk, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.gl, %.lr.ph.i40 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.go = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gn
  br i1 %i.go, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gs, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gv, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gw, %.lr.ph38.i ] ; 2 uses
  %i.gp = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.gp, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gv, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.gq = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val.i = load i64, ptr %i.gq, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %.val14.i = load i64, ptr %i.fd, align 8, !alias.scope !9535, !noalias !9532, !noundef !5
  %i.gr = icmp ult i64 %.val.i, %.val14.i         ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !9537, !noalias !9550
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %.sroa.27.235.i, %i.gu          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.gn
  br i1 %i.gx, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !9537, !noalias !9553
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hb = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.hb, i1 false), !alias.scope !9537
  %i.hc = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hd = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.hc, 1
  %i.he = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.he, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.hc, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.hi, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.z ]
  %i.hf = xor i64 %.sroa.07.043.i, -1
  %i.hg = getelementptr [16 x i8], ptr %i.fg, i64 %i.hf
  %i.hh = getelementptr [16 x i8], ptr %i.hd, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !alias.scope !9537
  %i.hi = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hj = xor i64 %.sroa.07.043.i, -2
  %i.hk = getelementptr [16 x i8], ptr %i.fg, i64 %i.hj
  %i.hl = getelementptr [16 x i8], ptr %i.hd, i64 %.sroa.07.043.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_:bb.a
bb.ad:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %.sroa.43.0.i44 = phi ptr [ %i.ht, %bb.ac ], [ %i.jl, %bb.af ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.ac ], [ %i.jn, %bb.af ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph127, %bb.ac ], [ %i.jo, %bb.af ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.ac ], [ %.sroa.16.0120293, %bb.af ] ; 3 uses
  %i.hu = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.hu ; 2 uses
  %i.hw = icmp ult ptr %.sroa.9.0.i46, %i.hv
  br i1 %i.hw, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ae, %.lr.ph.i67
  %.sroa.9.131.i68 = phi ptr [ %i.iy, %.lr.ph.i67 ], [ %.sroa.9.0.i46, %bb.ae ] ; 9 uses
  %.sroa.27.130.i69 = phi i64 [ %i.ix, %.lr.ph.i67 ], [ %.sroa.27.0.i45, %bb.ae ] ; 2 uses
  %.sroa.43.129.i70 = phi ptr [ %i.iu, %.lr.ph.i67 ], [ %.sroa.43.0.i44, %bb.ae ] ; 4 uses
  %i.hx = getelementptr i8, ptr %.sroa.9.131.i68, i64 8
  %.val21.i71 = load i64, ptr %i.hx, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %.val22.i72 = load i64, ptr %i.fd, align 8, !alias.scope !9563, !noalias !9560, !noundef !5 ; 4 uses
  %i.hy = icmp uge i64 %.val22.i72, %.val21.i71   ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -16
  %.sroa.01.0.i.i73 = select i1 %i.hy, ptr %2, ptr %i.hz
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i68, i64 16, i1 false), !alias.scope !9565, !noalias !9566
  %i.ib = zext i1 %i.hy to i64
  %i.ic = add i64 %.sroa.27.130.i69, %i.ib        ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 16
  %i.ie = getelementptr i8, ptr %.sroa.9.131.i68, i64 24
  %.val19.i74 = load i64, ptr %i.ie, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %i.if = icmp uge i64 %.val22.i72, %.val19.i74   ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -32
  %.sroa.01.0.i23.i75 = select i1 %i.if, ptr %2, ptr %i.ig
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i75, i64 %i.ic
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ih, ptr noundef nonnull align 8 dereferenceable(16) %i.id, i64 16, i1 false), !alias.scope !9565, !noalias !9569
  %i.ii = zext i1 %i.if to i64
  %i.ij = add i64 %i.ic, %i.ii                    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 32
  %i.il = getelementptr i8, ptr %.sroa.9.131.i68, i64 40
  %.val17.i76 = load i64, ptr %i.il, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %i.im = icmp uge i64 %.val22.i72, %.val17.i76   ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -48
  %.sroa.01.0.i24.i77 = select i1 %i.im, ptr %2, ptr %i.in
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i77, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.ik, i64 16, i1 false), !alias.scope !9565, !noalias !9572
  %i.ip = zext i1 %i.im to i64
  %i.iq = add i64 %i.ij, %i.ip                    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 48
  %i.is = getelementptr i8, ptr %.sroa.9.131.i68, i64 56
  %.val15.i78 = load i64, ptr %i.is, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %i.it = icmp uge i64 %.val22.i72, %.val15.i78   ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i79 = select i1 %i.it, ptr %2, ptr %i.iu
  %i.iv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i79, i64 %i.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iv, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !9565, !noalias !9575
  %i.iw = zext i1 %i.it to i64
  %i.ix = add i64 %i.iq, %i.iw                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 64 ; 3 uses
  %i.iz = icmp ult ptr %i.iy, %i.hv
  br i1 %i.iz, label %.lr.ph.i67, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i67, %bb.ae
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ae ], [ %i.iu, %.lr.ph.i67 ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ae ], [ %i.ix, %.lr.ph.i67 ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ae ], [ %i.iy, %.lr.ph.i67 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i47 ; 2 uses
  %i.jb = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.ja
  br i1 %i.jb, label %.lr.ph38.i60, label %._crit_edge39.i52

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.jf, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.ji, %.lr.ph38.i60 ] ; 10 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.jj, %.lr.ph38.i60 ] ; 2 uses
  %i.jc = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0120293
  br i1 %i.jc, label %bb.ag, label %bb.af

.lr.ph38.i60:                                     ; preds = %._crit_edge.i48, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.jj, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.ji, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.jf, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ]
  %i.jd = getelementptr i8, ptr %.sroa.9.236.i61, i64 8
  %.val.i64 = load i64, ptr %i.jd, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %.val14.i65 = load i64, ptr %i.fd, align 8, !alias.scope !9563, !noalias !9560, !noundef !5
  %i.je = icmp uge i64 %.val14.i65, %.val.i64     ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i66 = select i1 %i.je, ptr %2, ptr %i.jf
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i66, i64 %.sroa.27.235.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i61, i64 16, i1 false), !alias.scope !9565, !noalias !9578
  %i.jh = zext i1 %i.je to i64
  %i.ji = add i64 %.sroa.27.235.i62, %i.jh        ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 16 ; 3 uses
  %i.jk = icmp ult ptr %i.jj, %i.ja
  br i1 %i.jk, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.af:                                            ; preds = %._crit_edge39.i52
  %i.jl = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -16
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i55, i64 16, i1 false), !alias.scope !9565, !noalias !9581
  %i.jn = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 16
  br label %bb.ae

bb.ag:                                            ; preds = %._crit_edge39.i52
  %i.jp = shl nuw nsw i64 %.sroa.27.2.lcssa.i54, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.jp, i1 false), !alias.scope !9565
  %i.jq = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54 ; 6 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ag
  %i.jr = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  %.neg400 = add i64 %.sroa.27.2.lcssa.i54, 1
  %xtraiter395 = and i64 %i.jq, 1
  %i.js = icmp eq i64 %.sroa.16.0120293, %.neg400
  br i1 %i.js, label %.epil.preheader388, label %.lr.ph45.i57.new

.lr.ph45.i57.new:                                 ; preds = %.lr.ph45.i57
  %unroll_iter398 = and i64 %i.jq, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph45.i57.new
  %.sroa.07.043.i58 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %i.jw, %bb.ah ] ; 5 uses
  %niter399 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %niter399.next.1, %bb.ah ]
  %i.jt = xor i64 %.sroa.07.043.i58, -1
  %i.ju = getelementptr [16 x i8], ptr %i.ht, i64 %i.jt
  %i.jv = getelementptr [16 x i8], ptr %i.jr, i64 %.sroa.07.043.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i64 16, i1 false), !alias.scope !9565
  %i.jw = add nuw i64 %.sroa.07.043.i58, 2        ; 2 uses
  %i.jx = xor i64 %.sroa.07.043.i58, -2
  %i.jy = getelementptr [16 x i8], ptr %i.ht, i64 %i.jx
  %i.jz = getelementptr [16 x i8], ptr %i.jr, i64 %.sroa.07.043.i58
  %i.ka = getelementptr i8, ptr %i.jz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i64 16, i1 false), !alias.scope !9565
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, label %bb.ah

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod396.not = icmp eq i64 %xtraiter395, 0
  br i1 %lcmp.mod396.not, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit, label %.epil.preheader388

.epil.preheader388:                               ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.lr.ph45.i57
  %.sroa.07.043.i58.epil.init = phi i64 [ 0, %.lr.ph45.i57 ], [ %i.jw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod397 = trunc i64 %i.jq to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.kb = xor i64 %.sroa.07.043.i58.epil.init, -1
  %i.kc = getelementptr [16 x i8], ptr %i.ht, i64 %i.kb
  %i.kd = getelementptr [16 x i8], ptr %i.jr, i64 %.sroa.07.043.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, ptr noundef nonnull align 8 dereferenceable(16) %i.kc, i64 16, i1 false), !alias.scope !9565
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.epil.preheader388
  %i.ke = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0120293
  br i1 %i.ke, label %bb.ai, label %.outer, !prof !252

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kg = icmp ult i64 %i.jq, 33
  br i1 %i.kg, label %.outer._crit_edge, label %.lr.ph

bb.ai:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0120293, i64 noundef %.sroa.16.0120293, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kf, %.outer ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.jq, %.outer ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.el, %.outer ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph127, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph124, i64 8
  %i.g = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit
  %i.h = icmp eq i32 %i.el, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit ], [ %0, %bb.a ], [ %i.kf, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit ], [ %1, %bb.a ], [ %i.jq, %.outer ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9584)
  call void @llvm.experimental.noalias.scope.decl(metadata !9587)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 11 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 24
  %.val8.i.i = load i64, ptr %i.s, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val9.i.i = load i64, ptr %i.t, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.u = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 56
  %.val6.i.i = load i64, ptr %i.v, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 40
  %.val7.i.i = load i64, ptr %i.w, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.x = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.u, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i = load i64, ptr %i.ah, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i = load i64, ptr %i.ai, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.aj = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i = load i64, ptr %i.al, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.am = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.an = select i1 %i.aj, ptr %i.ae, ptr %i.z, !unpredictable !5
  %i.ao = select i1 %i.am, ptr %i.ac, ptr %i.ag, !unpredictable !5
  %i.ap = select i1 %i.am, ptr %i.ae, ptr %i.ac, !unpredictable !5
  %i.aq = select i1 %i.aj, ptr %i.z, ptr %i.ap, !unpredictable !5 ; 3 uses
  %i.ar = select i1 %i.aj, ptr %i.ac, ptr %i.ae, !unpredictable !5
  %i.as = select i1 %i.am, ptr %i.ag, ptr %i.ar, !unpredictable !5 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val.i.i = load i64, ptr %i.at, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i.i = load i64, ptr %i.au, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.av = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aw = select i1 %i.av, ptr %i.as, ptr %i.aq, !unpredictable !5
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9589
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9589
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9589
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9589
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9584, !noalias !9587, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9589
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9589
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9589
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9589
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9589
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9589
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 3 uses
  %i.co = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.co, label %.loopexit.i, label %.loopexit.1.i

.loopexit.i:                                      ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i
  %.sroa.05.012.us.i = phi i64 [ %17, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.012.us.i
  %.idx = shl nuw nsw i64 %.sroa.05.012.us.i, 4
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !9589
  %8 = getelementptr i8, ptr %7, i64 8
  %.val9.i40.us.i = load i64, ptr %8, align 8, !alias.scope !9587, !noalias !9584, !noundef !5 ; 3 uses
  %9 = getelementptr i8, ptr %7, i64 -8
  %.val10.i.us.i = load i64, ptr %9, align 8, !alias.scope !9587, !noalias !9584, !noundef !5
  %i.cq = icmp ult i64 %.val9.i40.us.i, %.val10.i.us.i
  br i1 %i.cq, label %10, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i

10:                                               ; preds = %.loopexit.i
  %11 = load ptr, ptr %7, align 8, !alias.scope !9587, !noalias !9584, !nonnull !5, !align !97, !noundef !5
  %.sroa.0.0.i41.us.i297 = getelementptr inbounds i8, ptr %7, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i297, i64 16, i1 false), !alias.scope !9587, !noalias !9584
  %12 = icmp eq i64 %.sroa.05.012.us.i, 1
  br i1 %12, label %._crit_edge302, label %.lr.ph301

13:                                               ; preds = %.lr.ph301
  %.sroa.0.0.i41.us.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.us.i299, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i299, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.us.i, i64 16, i1 false), !alias.scope !9587, !noalias !9584
  %14 = icmp eq ptr %.sroa.0.0.i41.us.i, %2
  br i1 %14, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %10, %13
  %.sroa.0.0.i41.us.i299 = phi ptr [ %.sroa.0.0.i41.us.i, %13 ], [ %.sroa.0.0.i41.us.i297, %10 ] ; 5 uses
  %.sroa.5.0.i.us.i298 = phi ptr [ %.sroa.0.0.i41.us.i299, %13 ], [ %7, %10 ] ; 2 uses
  %15 = getelementptr i8, ptr %.sroa.5.0.i.us.i298, i64 -24
  %.val8.i42.us.i = load i64, ptr %15, align 8, !alias.scope !9587, !noalias !9584, !noundef !5
  %16 = icmp ult i64 %.val9.i40.us.i, %.val8.i42.us.i
  br i1 %16, label %13, label %._crit_edge302

._crit_edge302:                                   ; preds = %13, %.lr.ph301, %10
  %.sroa.5.0.i.us.i.lcssa = phi ptr [ %7, %10 ], [ %.sroa.0.0.i41.us.i299, %13 ], [ %.sroa.5.0.i.us.i298, %.lr.ph301 ]
  %.sroa.0.0.i41.us.lcssa.i = phi ptr [ %2, %10 ], [ %2, %13 ], [ %.sroa.0.0.i41.us.i299, %.lr.ph301 ]
  store ptr %11, ptr %.sroa.0.0.i41.us.lcssa.i, align 8, !alias.scope !9587, !noalias !9590
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.us.i.lcssa, i64 -8
  store i64 %.val9.i40.us.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.us.i, align 8, !alias.scope !9587, !noalias !9590
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i: ; preds = %._crit_edge302, %.loopexit.i
  %17 = add nuw nsw i64 %.sroa.05.012.us.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %17, %i.l
  br i1 %exitcond.not.i, label %.lr.ph.1.i, label %.loopexit.i

.lr.ph.1.i:                                       ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.db, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.us.i ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !9589
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  %.val9.i40.1.i = load i64, ptr %i.ct, align 8, !alias.scope !9587, !noalias !9584, !noundef !5 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cu, align 8, !alias.scope !9587, !noalias !9584, !noundef !5
  %i.cv = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cv, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cw = load ptr, ptr %i.cs, align 8, !alias.scope !9587, !noalias !9584, !nonnull !5, !align !97, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cs, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9587, !noalias !9584
  %i.cx = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cx, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9587, !noalias !9584
  %i.cy = icmp eq ptr %.sroa.0.0.i41.1.i, %2
  br i1 %i.cy, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cs, %bb.k ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.cz, align 8, !alias.scope !9587, !noalias !9584, !noundef !5
  %i.da = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.da, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cs, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %2, %bb.k ], [ %2, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cw, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9587, !noalias !9590
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9587, !noalias !9590
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.db = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.db, %i.l
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %bb.j
  %i.dc = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %18 = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.dc
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.dc
  %i.de = getelementptr [16 x i8], ptr %2, i64 %i.l ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.dg = getelementptr i8, ptr %i.dz, i64 16     ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dy, i64 16
  %i.di = and i64 %.sroa.16.0.lcssa, 1
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.n, label %bb.m

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.de, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dd, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %18, %.loopexit.1.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9595, !noalias !9584, !noundef !5
  %i.dm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.dm, align 8, !alias.scope !9595, !noalias !9584, !noundef !5
  %i.dn = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.do = xor i1 %i.dn, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9589, !noalias !9598
  %i.dp = zext i1 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dp ; 4 uses
  %i.dr = zext i1 %i.do to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dr ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.du, align 8, !alias.scope !9595, !noalias !9584, !noundef !5
  %i.dv = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dv, align 8, !alias.scope !9595, !noalias !9584, !noundef !5
  %i.dw = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dx = xor i1 %i.dw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9589, !noalias !9602
  %.neg.i.i.i = sext i1 %i.dx to i64
  %i.dy = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dw to i64
  %i.dz = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.eb = icmp ult ptr %i.ds, %i.dg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.eb, ptr %i.ds, ptr %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9589
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = xor i1 %i.eb, true
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ef
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dq, %._crit_edge.i.i ], [ %i.eg, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ed, %bb.m ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i, %i.dg
  %i.ei = icmp ne ptr %.sroa.011.1.i.i, %i.dh
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !9408
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !9408

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ek, i1 false), !alias.scope !9589, !noalias !9606
  resume { ptr, i32 } %i.ej

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.el, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.el = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.em = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.em, 6
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.em, 112
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.ep = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.ep, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph295
  %i.eq = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1b_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.en, ptr noundef readonly %i.eo, i64 noundef %i.em)
  br label %bb.r

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9611, !noundef !5 ; 2 uses
  %i.er = getelementptr i8, ptr %i.en, i64 8
  %.val7.i = load i64, ptr %i.er, align 8, !alias.scope !9611, !noundef !5 ; 2 uses
  %i.es = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.et = getelementptr i8, ptr %i.eo, i64 8
  %.val5.i = load i64, ptr %i.et, align 8, !alias.scope !9611, !noundef !5 ; 2 uses
  %i.eu = icmp ult i64 %.val6.i, %.val5.i
  %i.ev = xor i1 %i.es, %i.eu
  %i.ew = icmp ult i64 %.val7.i, %.val5.i
  %i.ex = xor i1 %i.es, %i.ew
  %..i.i = select i1 %i.ex, ptr %i.eo, ptr %i.en
  %.sroa.0.0.i.i = select i1 %i.ev, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.r

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.q
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.eq, %bb.q ]
  %i.ey = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ez = sub nuw i64 %i.ey, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.ez, 4        ; 3 uses
  %i.fa = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.ez ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 5 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  store ptr %i.fc, ptr %i.a, align 8
  store i64 %i.fe, ptr %i.c, align 8
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.ff = icmp ult i64 %.sroa.028.0.val, %i.fe
  br i1 %i.ff, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !9614)
  %.not83.a = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83.a, label %bb.v, label %bb.u, !prof !9408

bb.u:                                             ; preds = %bb.t
  %i.fg = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.fg, %bb.u ], [ %i.gy, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.u ], [ %i.ha, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.u ], [ %.sroa.16.0120293, %bb.x ] ; 3 uses
  %i.fh = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fh ; 2 uses
  %i.fj = icmp ult ptr %.sroa.9.0.i, %i.fi
  br i1 %i.fj, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.w, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gl, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.w ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gk, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gh, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %i.fk = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fk, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %.val22.i = load i64, ptr %i.fd, align 8, !alias.scope !9617, !noalias !9614, !noundef !5 ; 4 uses
  %i.fl = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fl, ptr %2, ptr %i.fm
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9619, !noalias !9620
  %i.fo = zext i1 %i.fl to i64
  %i.fp = add i64 %.sroa.27.130.i, %i.fo          ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.fr = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.fr, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %i.fs = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.fs, ptr %2, ptr %i.ft
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 16, i1 false), !alias.scope !9619, !noalias !9623
  %i.fv = zext i1 %i.fs to i64
  %i.fw = add i64 %i.fp, %i.fv                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.fy = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.fy, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %i.fz = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.fz, ptr %2, ptr %i.ga
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !alias.scope !9619, !noalias !9626
  %i.gc = zext i1 %i.fz to i64
  %i.gd = add i64 %i.fw, %i.gc                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gf = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gf, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %i.gg = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gg, ptr %2, ptr %i.gh
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gi, ptr noundef nonnull align 8 dereferenceable(16) %i.ge, i64 16, i1 false), !alias.scope !9619, !noalias !9629
  %i.gj = zext i1 %i.gg to i64
  %i.gk = add i64 %i.gd, %i.gj                    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gm = icmp ult ptr %i.gl, %i.fi
  br i1 %i.gm, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.gh, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.gk, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.gl, %.lr.ph.i40 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.go = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gn
  br i1 %i.go, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gs, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gv, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gw, %.lr.ph38.i ] ; 2 uses
  %i.gp = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.gp, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gw, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gv, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gs, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.gq = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val.i = load i64, ptr %i.gq, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %.val14.i = load i64, ptr %i.fd, align 8, !alias.scope !9617, !noalias !9614, !noundef !5
  %i.gr = icmp ult i64 %.val.i, %.val14.i         ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !9619, !noalias !9632
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %.sroa.27.235.i, %i.gu          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.gn
  br i1 %i.gx, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.gy = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !9619, !noalias !9635
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.hb = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.hb, i1 false), !alias.scope !9619
  %i.hc = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.hd = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.hc, 1
  %i.he = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.he, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.hc, -2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.hi, %bb.z ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.z ]
  %i.hf = xor i64 %.sroa.07.043.i, -1
  %i.hg = getelementptr [16 x i8], ptr %i.fg, i64 %i.hf
  %i.hh = getelementptr [16 x i8], ptr %i.hd, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !alias.scope !9619
  %i.hi = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hj = xor i64 %.sroa.07.043.i, -2
  %i.hk = getelementptr [16 x i8], ptr %i.fg, i64 %i.hj
  %i.hl = getelementptr [16 x i8], ptr %i.hd, i64 %.sroa.07.043.i
end_hunk_1
