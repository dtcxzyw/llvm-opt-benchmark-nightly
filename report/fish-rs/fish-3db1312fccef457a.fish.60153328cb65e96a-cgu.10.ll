Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.10?download=true
inline.NumInlined: 1780
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB11_5sliceSBW_7sort_byNCNvB1w_5print0E0EB1y_:bb.a
  %i.bt = add nuw nsw i64 %.sroa.01.019.i12.i.i.i67, 1 ; 2 uses
  %exitcond.not.i17.i.i.i71 = icmp eq i64 %i.bt, %..i.i9.i.i.i64
  br i1 %exitcond.not.i17.i.i.i71, label %._crit_edge.i18.i.i.i72, label %.lr.ph.i11.i.i.i66

._crit_edge.i18.i.i.i72:                          ; preds = %bb.u, %bb.t
  %i.bu = icmp ult i64 %i.bo, %i.bs
  br i1 %i.bu, label %.critedge.preheader, label %.preheader

.loopexit.i15.i.i.i70:                            ; preds = %.lr.ph.i11.i.i.i66
  %i.bv = icmp ult i32 %.val15.i13.i.i.i68, %.val16.i14.i.i.i69
  br i1 %i.bv, label %.critedge.preheader, label %.preheader

.lr.ph.i11.i.i.i66:                               ; preds = %bb.t, %bb.u
  %.sroa.01.019.i12.i.i.i67 = phi i64 [ %i.bt, %bb.u ], [ 0, %bb.t ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.sroa.01.019.i12.i.i.i67
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.sroa.01.019.i12.i.i.i67
  %.val15.i13.i.i.i68 = load i32, ptr %i.bw, align 4, !alias.scope !1338, !noalias !1340, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i69 = load i32, ptr %i.bx, align 4, !alias.scope !1339, !noalias !1341, !noundef !11 ; 2 uses
  %i.by = icmp eq i32 %.val15.i13.i.i.i68, %.val16.i14.i.i.i69
  br i1 %i.by, label %bb.u, label %.loopexit.i15.i.i.i70

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit87: ; preds = %bb.k, %bb.s
  %.sroa.0.0.i.i.i63 = phi i1 [ %i.bf, %bb.s ], [ %i.w, %bb.k ]
  br i1 %.sroa.0.0.i.i.i63, label %.critedge.preheader, label %.preheader

.preheader:                                       ; preds = %bb.l, %bb.q, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit87, %.split, %.loopexit.i15.i.i.i70, %.loopexit.i.i.i.i83, %.split90, %.split91, %._crit_edge.i18.i.i.i72, %._crit_edge.i.i.i.i85, %.split92, %.split93
  %.not187 = icmp eq i64 %i.n, 2
  br i1 %.not187, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %i.n, i64 3) ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread
  %i.bz = phi i32 [ %i.ce, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.val9.i = phi ptr [ %.val8.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread ], [ %.val10.i, %.lr.ph.preheader ] ; 9 uses
  %.sroa.01.0.i.i150 = phi i64 [ %i.ej, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread ], [ 2, %.lr.ph.preheader ] ; 14 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i150
  %i.cb = add nsw i64 %.sroa.01.0.i.i150, -1
  %i.cc = icmp ult i64 %i.cb, %i.n
  tail call void @llvm.assume(i1 %i.cc)
  %.val8.i = load ptr, ptr %i.ca, align 8, !alias.scope !1327, !noalias !1328, !nonnull !11, !noundef !11 ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val8.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343), !noalias !1330
  %i.ce = load i32, ptr %i.cd, align 8, !range !18, !alias.scope !1342, !noalias !1344, !noundef !11 ; 3 uses
  %i.cf = icmp eq i32 %i.ce, %i.bz
  %i.cg = icmp samesign ult i32 %i.ce, %i.bz
  br i1 %i.cf, label %bb.v, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62

bb.v:                                             ; preds = %.lr.ph
  switch i32 %i.bz, label %default.unreachable [
    i32 1, label %.split97
    i32 2, label %bb.w
    i32 3, label %bb.y
    i32 4, label %bb.z
    i32 5, label %.split99
    i32 6, label %bb.ad
    i32 0, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread
  ]

.split97:                                         ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %.val8.i, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !range !19, !alias.scope !1342, !noalias !1344, !noundef !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.val9.i, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !range !19, !alias.scope !1343, !noalias !1345, !noundef !11
  %i.cl = icmp slt i32 %i.ci, %i.ck
  br i1 %i.cl, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %.val8.i, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !1342, !noalias !1344, !nonnull !11, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !1342, !noalias !1344, !noundef !11 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1343, !noalias !1345, !nonnull !11, !noundef !11
  %i.cs = getelementptr inbounds nuw i8, ptr %.val9.i, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1343, !noalias !1345, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347), !noalias !1330
  %..i.i.i.i.i52 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.ct, i64 range(i64 0, 2305843009213693952) %i.cp) ; 2 uses
  %.not.i.i.i.i53 = icmp eq i64 %..i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i53, label %._crit_edge.i.i.i.i60, label %.lr.ph.i.i.i.i54

bb.x:                                             ; preds = %.lr.ph.i.i.i.i54
  %i.cu = add nuw nsw i64 %.sroa.01.019.i.i.i.i55, 1 ; 2 uses
  %exitcond.not.i.i.i.i59 = icmp eq i64 %i.cu, %..i.i.i.i.i52
  br i1 %exitcond.not.i.i.i.i59, label %._crit_edge.i.i.i.i60, label %.lr.ph.i.i.i.i54

._crit_edge.i.i.i.i60:                            ; preds = %bb.x, %bb.w
  %i.cv = icmp ult i64 %i.cp, %i.ct
  br i1 %i.cv, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

.loopexit.i.i.i.i58:                              ; preds = %.lr.ph.i.i.i.i54
  %i.cw = icmp ult i32 %.val15.i.i.i.i56, %.val16.i.i.i.i57
  br i1 %i.cw, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

.lr.ph.i.i.i.i54:                                 ; preds = %bb.w, %bb.x
  %.sroa.01.019.i.i.i.i55 = phi i64 [ %i.cu, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.sroa.01.019.i.i.i.i55
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.01.019.i.i.i.i55
  %.val15.i.i.i.i56 = load i32, ptr %i.cx, align 4, !alias.scope !1346, !noalias !1348, !noundef !11 ; 2 uses
  %.val16.i.i.i.i57 = load i32, ptr %i.cy, align 4, !alias.scope !1347, !noalias !1349, !noundef !11 ; 2 uses
  %i.cz = icmp eq i32 %.val15.i.i.i.i56, %.val16.i.i.i.i57
  br i1 %i.cz, label %bb.x, label %.loopexit.i.i.i.i58

bb.y:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %.val8.i, i64 44
  %i.db = load i32, ptr %i.da, align 4, !alias.scope !1342, !noalias !1344, !noundef !11 ; 2 uses
  %.not6.i.i.i50 = icmp eq i32 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %.val9.i, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !alias.scope !1343, !noalias !1345, !noundef !11 ; 2 uses
  br i1 %.not6.i.i.i50, label %.split101, label %.split98

.split98:                                         ; preds = %bb.y
  %i.de = icmp ult i32 %i.db, %i.dd
  br i1 %i.de, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

.split101:                                        ; preds = %bb.y
  %.not7.i.i.i51.not = icmp eq i32 %i.dd, 0
  br i1 %.not7.i.i.i51.not, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

bb.z:                                             ; preds = %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.val8.i, i64 44
  %i.dg = load i32, ptr %i.df, align 4, !alias.scope !1342, !noalias !1344, !noundef !11 ; 3 uses
  %.not.i.i.i48 = icmp eq i32 %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.val9.i, i64 44
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !1343, !noalias !1345, !noundef !11 ; 3 uses
  %.not4.i.i.i49 = icmp eq i32 %i.di, 0           ; 2 uses
  br i1 %.not.i.i.i48, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %.not4.i.i.i49, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  br i1 %.not4.i.i.i49, label %.split100, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.split100:                                        ; preds = %bb.ac, %bb.ab
  %i.dj = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1342, !noalias !1344, !noundef !11
  %i.dl = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !1343, !noalias !1345, !noundef !11
  %i.dn = icmp ult i64 %i.dk, %i.dm
  br i1 %i.dn, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

bb.ac:                                            ; preds = %bb.aa
  %i.do = icmp eq i32 %i.dg, %i.di
  %i.dp = icmp ult i32 %i.dg, %i.di
  br i1 %i.do, label %.split100, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62

.split99:                                         ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.val8.i, i64 48
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !1342, !noalias !1344, !noundef !11
  %i.ds = getelementptr inbounds nuw i8, ptr %.val9.i, i64 48
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !1343, !noalias !1345, !noundef !11
  %i.du = icmp ult i64 %i.dr, %i.dt
  br i1 %i.du, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

bb.ad:                                            ; preds = %bb.v
  %i.dv = getelementptr inbounds nuw i8, ptr %.val8.i, i64 56
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !1342, !noalias !1344, !nonnull !11, !noundef !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.val8.i, i64 64
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !1342, !noalias !1344, !noundef !11 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val9.i, i64 56
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !1343, !noalias !1345, !nonnull !11, !noundef !11
  %i.eb = getelementptr inbounds nuw i8, ptr %.val9.i, i64 64
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !1343, !noalias !1345, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351), !noalias !1330
  %..i.i9.i.i.i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.ec, i64 range(i64 0, 2305843009213693952) %i.dy) ; 2 uses
  %.not.i10.i.i.i40 = icmp eq i64 %..i.i9.i.i.i39, 0
  br i1 %.not.i10.i.i.i40, label %._crit_edge.i18.i.i.i47, label %.lr.ph.i11.i.i.i41

bb.ae:                                            ; preds = %.lr.ph.i11.i.i.i41
  %i.ed = add nuw nsw i64 %.sroa.01.019.i12.i.i.i42, 1 ; 2 uses
  %exitcond.not.i17.i.i.i46 = icmp eq i64 %i.ed, %..i.i9.i.i.i39
  br i1 %exitcond.not.i17.i.i.i46, label %._crit_edge.i18.i.i.i47, label %.lr.ph.i11.i.i.i41

._crit_edge.i18.i.i.i47:                          ; preds = %bb.ae, %bb.ad
  %i.ee = icmp ult i64 %i.dy, %i.ec
  br i1 %i.ee, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

.loopexit.i15.i.i.i45:                            ; preds = %.lr.ph.i11.i.i.i41
  %i.ef = icmp ult i32 %.val15.i13.i.i.i43, %.val16.i14.i.i.i44
  br i1 %i.ef, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

.lr.ph.i11.i.i.i41:                               ; preds = %bb.ad, %bb.ae
  %.sroa.01.019.i12.i.i.i42 = phi i64 [ %i.ed, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.01.019.i12.i.i.i42
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.01.019.i12.i.i.i42
  %.val15.i13.i.i.i43 = load i32, ptr %i.eg, align 4, !alias.scope !1350, !noalias !1352, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i44 = load i32, ptr %i.eh, align 4, !alias.scope !1351, !noalias !1353, !noundef !11 ; 2 uses
  %i.ei = icmp eq i32 %.val15.i13.i.i.i43, %.val16.i14.i.i.i44
  br i1 %i.ei, label %bb.ae, label %.loopexit.i15.i.i.i45

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62: ; preds = %.lr.ph, %bb.ac
  %.sroa.0.0.i.i.i38 = phi i1 [ %i.dp, %bb.ac ], [ %i.cg, %.lr.ph ]
  br i1 %.sroa.0.0.i.i.i38, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread: ; preds = %bb.v, %bb.aa, %._crit_edge.i18.i.i.i47, %._crit_edge.i.i.i.i60, %.split101, %.loopexit.i15.i.i.i45, %.split100, %.loopexit.i.i.i.i58, %.split99, %.split98, %.split97, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62
  %i.ej = add nuw i64 %.sroa.01.0.i.i150, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %umax
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %.lr.ph

.lr.ph164:                                        ; preds = %.lr.ph164.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103
  %i.ek = phi i32 [ %i.ep, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103 ], [ %i.t, %.lr.ph164.preheader ] ; 3 uses
  %.val7.i = phi ptr [ %.val.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103 ], [ %.val10.i, %.lr.ph164.preheader ] ; 9 uses
  %.sroa.01.1.i.i163 = phi i64 [ %i.gu, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103 ], [ 2, %.lr.ph164.preheader ] ; 15 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i163
  %i.em = add nsw i64 %.sroa.01.1.i.i163, -1
  %i.en = icmp ult i64 %i.em, %i.n
  tail call void @llvm.assume(i1 %i.en)
  %.val.i = load ptr, ptr %i.el, align 8, !alias.scope !1327, !noalias !1328, !nonnull !11, !noundef !11 ; 11 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1354), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355), !noalias !1330
  %i.ep = load i32, ptr %i.eo, align 8, !range !18, !alias.scope !1354, !noalias !1356, !noundef !11 ; 3 uses
  %i.eq = icmp eq i32 %i.ep, %i.ek
  %i.er = icmp samesign ult i32 %i.ep, %i.ek
  br i1 %i.eq, label %bb.af, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

bb.af:                                            ; preds = %.lr.ph164
  switch i32 %i.ek, label %default.unreachable [
    i32 1, label %.split105
    i32 2, label %bb.ag
    i32 3, label %bb.ai
    i32 4, label %bb.aj
    i32 5, label %.split107
    i32 6, label %bb.an
    i32 0, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i
  ]

.split105:                                        ; preds = %bb.af
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.et = load i32, ptr %i.es, align 4, !range !19, !alias.scope !1354, !noalias !1356, !noundef !11
  %i.eu = getelementptr inbounds nuw i8, ptr %.val7.i, i64 44
  %i.ev = load i32, ptr %i.eu, align 4, !range !19, !alias.scope !1355, !noalias !1357, !noundef !11
  %i.ew = icmp slt i32 %i.et, %i.ev
  br i1 %i.ew, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !1354, !noalias !1356, !nonnull !11, !noundef !11
  %i.ez = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !1354, !noalias !1356, !noundef !11 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val7.i, i64 56
  %i.fc = load ptr, ptr %i.fb, align 8, !alias.scope !1355, !noalias !1357, !nonnull !11, !noundef !11
  %i.fd = getelementptr inbounds nuw i8, ptr %.val7.i, i64 64
  %i.fe = load i64, ptr %i.fd, align 8, !alias.scope !1355, !noalias !1357, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1358), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1359), !noalias !1330
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.fe, i64 range(i64 0, 2305843009213693952) %i.fa) ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %..i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ff = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ff, %..i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ah, %bb.ag
  %i.fg = icmp ult i64 %i.fa, %i.fe
  br i1 %i.fg, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.fh = icmp ult i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.fh, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.ff, %bb.ah ], [ 0, %bb.ag ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.sroa.01.019.i.i.i.i
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %.sroa.01.019.i.i.i.i
  %.val15.i.i.i.i = load i32, ptr %i.fi, align 4, !alias.scope !1358, !noalias !1360, !noundef !11 ; 2 uses
  %.val16.i.i.i.i = load i32, ptr %i.fj, align 4, !alias.scope !1359, !noalias !1361, !noundef !11 ; 2 uses
  %i.fk = icmp eq i32 %.val15.i.i.i.i, %.val16.i.i.i.i
  br i1 %i.fk, label %bb.ah, label %.loopexit.i.i.i.i

bb.ai:                                            ; preds = %bb.af
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.fm = load i32, ptr %i.fl, align 4, !alias.scope !1354, !noalias !1356, !noundef !11 ; 2 uses
  %.not6.i.i.i = icmp eq i32 %i.fm, 0
  %i.fn = getelementptr inbounds nuw i8, ptr %.val7.i, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !alias.scope !1355, !noalias !1357, !noundef !11 ; 2 uses
  br i1 %.not6.i.i.i, label %.split109, label %.split106

.split106:                                        ; preds = %bb.ai
  %i.fp = icmp ult i32 %i.fm, %i.fo
  br i1 %i.fp, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.split109:                                        ; preds = %bb.ai
  %.not7.i.i.i.not = icmp eq i32 %i.fo, 0
  br i1 %.not7.i.i.i.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103

bb.aj:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i, i64 44
  %i.fr = load i32, ptr %i.fq, align 4, !alias.scope !1354, !noalias !1356, !noundef !11 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fr, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %.val7.i, i64 44
  %i.ft = load i32, ptr %i.fs, align 4, !alias.scope !1355, !noalias !1357, !noundef !11 ; 3 uses
  %.not4.i.i.i = icmp eq i32 %i.ft, 0             ; 2 uses
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not4.i.i.i, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %bb.am

bb.al:                                            ; preds = %bb.aj
  br i1 %.not4.i.i.i, label %.split108, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103

.split108:                                        ; preds = %bb.am, %bb.al
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !1354, !noalias !1356, !noundef !11
  %i.fw = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.fx = load i64, ptr %i.fw, align 8, !alias.scope !1355, !noalias !1357, !noundef !11
  %i.fy = icmp ult i64 %i.fv, %i.fx
  br i1 %i.fy, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.fz = icmp eq i32 %i.fr, %i.ft
  %i.ga = icmp ult i32 %i.fr, %i.ft
  br i1 %i.fz, label %.split108, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit

.split107:                                        ; preds = %bb.af
  %i.gb = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1354, !noalias !1356, !noundef !11
  %i.gd = getelementptr inbounds nuw i8, ptr %.val7.i, i64 48
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !1355, !noalias !1357, !noundef !11
  %i.gf = icmp ult i64 %i.gc, %i.ge
  br i1 %i.gf, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

bb.an:                                            ; preds = %bb.af
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !1354, !noalias !1356, !nonnull !11, !noundef !11
  %i.gi = getelementptr inbounds nuw i8, ptr %.val.i, i64 64
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !1354, !noalias !1356, !noundef !11 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val7.i, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !1355, !noalias !1357, !nonnull !11, !noundef !11
  %i.gm = getelementptr inbounds nuw i8, ptr %.val7.i, i64 64
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !1355, !noalias !1357, !noundef !11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1362), !noalias !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1363), !noalias !1330
  %..i.i9.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.gn, i64 range(i64 0, 2305843009213693952) %i.gj) ; 2 uses
  %.not.i10.i.i.i = icmp eq i64 %..i.i9.i.i.i, 0
  br i1 %.not.i10.i.i.i, label %._crit_edge.i18.i.i.i, label %.lr.ph.i11.i.i.i

bb.ao:                                            ; preds = %.lr.ph.i11.i.i.i
  %i.go = add nuw nsw i64 %.sroa.01.019.i12.i.i.i, 1 ; 2 uses
  %exitcond.not.i17.i.i.i = icmp eq i64 %i.go, %..i.i9.i.i.i
  br i1 %exitcond.not.i17.i.i.i, label %._crit_edge.i18.i.i.i, label %.lr.ph.i11.i.i.i

._crit_edge.i18.i.i.i:                            ; preds = %bb.ao, %bb.an
  %i.gp = icmp ult i64 %i.gj, %i.gn
  br i1 %i.gp, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.loopexit.i15.i.i.i:                              ; preds = %.lr.ph.i11.i.i.i
  %i.gq = icmp ult i32 %.val15.i13.i.i.i, %.val16.i14.i.i.i
  br i1 %i.gq, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

.lr.ph.i11.i.i.i:                                 ; preds = %bb.an, %bb.ao
  %.sroa.01.019.i12.i.i.i = phi i64 [ %i.go, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %.sroa.01.019.i12.i.i.i
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.01.019.i12.i.i.i
  %.val15.i13.i.i.i = load i32, ptr %i.gr, align 4, !alias.scope !1362, !noalias !1364, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i = load i32, ptr %i.gs, align 4, !alias.scope !1363, !noalias !1365, !noundef !11 ; 2 uses
  %i.gt = icmp eq i32 %.val15.i13.i.i.i, %.val16.i14.i.i.i
  br i1 %i.gt, label %bb.ao, label %.loopexit.i15.i.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit: ; preds = %.lr.ph164, %bb.am
  %.sroa.0.0.i.i.i = phi i1 [ %i.ga, %bb.am ], [ %i.er, %.lr.ph164 ]
  br i1 %.sroa.0.0.i.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103: ; preds = %bb.al, %._crit_edge.i18.i.i.i, %._crit_edge.i.i.i.i, %.split109, %.loopexit.i15.i.i.i, %.split108, %.loopexit.i.i.i.i, %.split107, %.split106, %.split105, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit
  %i.gu = add nuw i64 %.sroa.01.1.i.i163, 1       ; 2 uses
  %exitcond216.not = icmp eq i64 %i.gu, %umax215
  br i1 %exitcond216.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i, label %.lr.ph164

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62, %.split97, %.split98, %.split99, %.loopexit.i.i.i.i58, %.split100, %.loopexit.i15.i.i.i45, %.split101, %._crit_edge.i.i.i.i60, %._crit_edge.i18.i.i.i47, %bb.ab, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit, %.split105, %.split106, %.split107, %.loopexit.i.i.i.i, %.split108, %.loopexit.i15.i.i.i, %.split109, %._crit_edge.i.i.i.i, %._crit_edge.i18.i.i.i, %bb.ak, %bb.af, %.preheader, %.critedge.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %.critedge.preheader ], [ false, %.preheader ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103 ], [ true, %bb.af ], [ true, %bb.ak ], [ true, %._crit_edge.i18.i.i.i ], [ true, %._crit_edge.i.i.i.i ], [ true, %.split109 ], [ true, %.loopexit.i15.i.i.i ], [ true, %.split108 ], [ true, %.loopexit.i.i.i.i ], [ true, %.split107 ], [ true, %.split106 ], [ true, %.split105 ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit ], [ false, %bb.ab ], [ false, %._crit_edge.i18.i.i.i47 ], [ false, %._crit_edge.i.i.i.i60 ], [ false, %.split101 ], [ false, %.loopexit.i15.i.i.i45 ], [ false, %.split100 ], [ false, %.loopexit.i.i.i.i58 ], [ false, %.split99 ], [ false, %.split98 ], [ false, %.split97 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.critedge.preheader ], [ 2, %.preheader ], [ %umax215, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread103 ], [ %.sroa.01.1.i.i163, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit ], [ %.sroa.01.1.i.i163, %.split105 ], [ %.sroa.01.1.i.i163, %.split106 ], [ %.sroa.01.1.i.i163, %.split107 ], [ %.sroa.01.1.i.i163, %.loopexit.i.i.i.i ], [ %.sroa.01.1.i.i163, %.split108 ], [ %.sroa.01.1.i.i163, %.loopexit.i15.i.i.i ], [ %.sroa.01.1.i.i163, %.split109 ], [ %.sroa.01.1.i.i163, %._crit_edge.i.i.i.i ], [ %.sroa.01.1.i.i163, %._crit_edge.i18.i.i.i ], [ %.sroa.01.1.i.i163, %bb.ak ], [ %.sroa.01.1.i.i163, %bb.af ], [ %.sroa.01.0.i.i150, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62 ], [ %.sroa.01.0.i.i150, %.split97 ], [ %.sroa.01.0.i.i150, %.split98 ], [ %.sroa.01.0.i.i150, %.split99 ], [ %.sroa.01.0.i.i150, %.loopexit.i.i.i.i58 ], [ %.sroa.01.0.i.i150, %.split100 ], [ %.sroa.01.0.i.i150, %.loopexit.i15.i.i.i45 ], [ %.sroa.01.0.i.i150, %.split101 ], [ %.sroa.01.0.i.i150, %._crit_edge.i.i.i.i60 ], [ %.sroa.01.0.i.i150, %._crit_edge.i18.i.i.i47 ], [ %.sroa.01.0.i.i150, %bb.ab ], [ %umax, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit62.thread ] ; 9 uses
  %i.gv = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.gv)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB17_5sliceSB12_7sort_byNCNvB1C_5print0E0EB1E_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.as, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit

bb.aq:                                            ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.gw = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB18_5sliceSB13_7sort_byNCNvB1D_5print0E0EB1F_.exit

bb.ar:                                            ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1289
  %i.gx = shl nuw nsw i64 %..i35, 1
  %i.gy = or disjoint i64 %i.gx, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB18_5sliceSB13_7sort_byNCNvB1D_5print0E0EB1F_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i, %middle.block, %bb.j, %bb.as, %bb.ap
  %.sroa.0.0.i.i114117 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.ap ], [ %.sroa.0.0.i.i, %bb.as ], [ %.sroa.0.0.i.i, %middle.block ], [ %.sroa.0.0.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i ]
  %i.gz = shl nuw nsw i64 %.sroa.0.0.i.i114117, 1
  %i.ha = or disjoint i64 %i.gz, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB18_5sliceSB13_7sort_byNCNvB1D_5print0E0EB1F_.exit

bb.as:                                            ; preds = %bb.ap
  %i.hb = lshr i64 %.sroa.0.0.i.i, 1              ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366), !noalias !1328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367), !noalias !1328
  %.not.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.preheader.i.i: ; preds = %bb.as
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i ; 2 uses
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i, 8
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.preheader.i.i
  %n.vec = and i64 %i.hb, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hd = xor i64 %index, -1
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.hf = getelementptr [8 x i8], ptr %i.hc, i64 %i.hd ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %wide.load = load <2 x ptr>, ptr %i.he, align 8, !alias.scope !1368, !noalias !1369
  %wide.load325 = load <2 x ptr>, ptr %i.hg, align 8, !alias.scope !1368, !noalias !1369
  %i.hh = getelementptr i8, ptr %i.hf, i64 -8
  %i.hi = getelementptr i8, ptr %i.hf, i64 -24
  %wide.load326 = load <2 x i64>, ptr %i.hh, align 8, !alias.scope !1370, !noalias !1371
  %wide.load327 = load <2 x i64>, ptr %i.hi, align 8, !alias.scope !1370, !noalias !1371
  %reverse = shufflevector <2 x i64> %wide.load326, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse328 = shufflevector <2 x i64> %wide.load327, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store <2 x i64> %reverse, ptr %i.he, align 8, !alias.scope !1368, !noalias !1369
  store <2 x i64> %reverse328, ptr %i.hj, align 8, !alias.scope !1368, !noalias !1369
  %i.hk = getelementptr i8, ptr %i.hf, i64 -8
  %i.hl = getelementptr i8, ptr %i.hf, i64 -24
  %reverse329 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse330 = shufflevector <2 x ptr> %wide.load325, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse329, ptr %i.hk, align 8, !alias.scope !1370, !noalias !1371
  store <2 x ptr> %reverse330, ptr %i.hl, align 8, !alias.scope !1370, !noalias !1371
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %middle.block, label %vector.body, !llvm.loop !1295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hb, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.hs, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i.preheader ] ; 3 uses
  %i.hn = xor i64 %.sroa.0.016.i.i, -1
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.hc, i64 %i.hn ; 2 uses
  %i.hq = load ptr, ptr %i.ho, align 8, !alias.scope !1368, !noalias !1369, !nonnull !11, !noundef !11
  %i.hr = load i64, ptr %i.hp, align 8, !alias.scope !1370, !noalias !1371
  store i64 %i.hr, ptr %i.ho, align 8, !alias.scope !1368, !noalias !1369
  store ptr %i.hq, ptr %i.hp, align 8, !alias.scope !1370, !noalias !1371
  %i.hs = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.hs, %i.hb
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE12split_at_mutB16_.exit11.i.i, !llvm.loop !1296

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB18_5sliceSB13_7sort_byNCNvB1D_5print0E0EB1F_.exit: ; preds = %bb.aq, %bb.ar, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ha, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7reverseB16_.exit ], [ %i.gy, %bb.ar ], [ %i.gw, %bb.aq ] ; 2 uses
  %i.ht = lshr i64 %.sroa.023.0, 1
  %i.hu = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.hv = sub nsw i64 %factor, %i.ht
  %i.hw = add nuw nsw i64 %i.hu, %factor
  %i.hx = mul i64 %i.hv, %.sroa.0.0
  %i.hy = mul i64 %i.hw, %.sroa.0.0
  %i.hz = xor i64 %i.hy, %i.hx
  %i.ia = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hz, i1 false)
  %i.ib = trunc nuw nsw i64 %i.ia to i8
  br label %bb.g

bb.at:                                            ; preds = %.lr.ph181, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit
  %.sroa.02.1180 = phi i64 [ %.sroa.02.0, %.lr.ph181 ], [ %i.ic, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit ] ; 2 uses
  %.sroa.023.1179 = phi i64 [ %.sroa.023.0, %.lr.ph181 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit ] ; 4 uses
  %i.ic = add i64 %.sroa.02.1180, -1              ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.ie, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.au

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit, %bb.at, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1179, %bb.at ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1180, %bb.at ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit ] ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.if, align 8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ig, align 1
  br i1 %i.k, label %bb.bw, label %bb.bx

bb.au:                                            ; preds = %bb.at
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ic
  %i.ii = load i64, ptr %i.ih, align 8, !noundef !11 ; 3 uses
  %i.ij = lshr i64 %i.ii, 1                       ; 8 uses
  %i.ik = lshr i64 %.sroa.023.1179, 1             ; 6 uses
  %i.il = add nuw i64 %i.ij, %i.ik                ; 4 uses
  %i.im = sub i64 %.sroa.09.0, %i.il
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.im ; 6 uses
  %i.io = icmp samesign ugt i64 %i.il, %3
  %i.ip = trunc i64 %.sroa.023.1179 to i1
  %i.iq = or i64 %i.ii, %.sroa.023.1179
  %i.ir = trunc i64 %i.iq to i1
  %or.cond3.i = or i1 %i.io, %i.ir
  br i1 %or.cond3.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.is = trunc i64 %i.ii to i1
  br i1 %i.is, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.it = shl nuw nsw i64 %i.il, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit

bb.ax:                                            ; preds = %bb.ay, %bb.av
  br i1 %i.ip, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.av
  %i.iu = or i64 %i.ij, 1
  %i.iv = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.iu, i1 true)
  %i.iw = trunc nuw nsw i64 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 1
  %i.iy = xor i32 %i.ix, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %i.in, i64 noundef range(i64 0, 1152921504606846976) %i.ij, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.iy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1297
  br label %bb.ax

bb.az:                                            ; preds = %bb.ax
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ij
  %i.ja = or i64 %i.ik, 1
  %i.jb = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ja, i1 true)
  %i.jc = trunc nuw nsw i64 %i.jb to i32
  %i.jd = shl nuw nsw i32 %i.jc, 1
  %i.je = xor i32 %i.jd, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %i.iz, i64 noundef range(i64 0, 1152921504606846976) %i.ik, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.je, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1297
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1373)
  %i.jf = icmp eq i64 %i.ij, 0
  %i.jg = icmp eq i64 %i.ik, 0
  %or.cond.i = or i1 %i.jg, %i.jf
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ik, i64 range(i64 0, -9223372036854775808) %i.ij) ; 2 uses
  %i.jh = icmp samesign ult i64 %3, %..i.i
  br i1 %i.jh, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.bb
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.in, i64 %i.ij ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.ij, %i.ik  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.ji, ptr %i.in
  %i.jj = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.jj, i1 false), !alias.scope !1374
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 %i.jj ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i
  %i.jl = phi ptr [ %i.md, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.jk, %.critedge.i ]
  %i.jm = phi ptr [ %i.mb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.ji, %.critedge.i ]
  %.sroa.0.0.i.i34 = phi ptr [ %i.jp, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB11_5sliceSBW_7sort_byNCNvB1w_5print0E0EB1y_:bb.a
  %i.om = icmp ult i32 %.val15.i13.i.i.i.i31.i, %.val16.i14.i.i.i.i32.i
  br i1 %i.om, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

.lr.ph.i11.i.i.i.i29.i:                           ; preds = %bb.bu, %bb.bv
  %.sroa.01.019.i12.i.i.i.i30.i = phi i64 [ %i.ok, %bb.bv ], [ 0, %bb.bu ] ; 3 uses
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sroa.01.019.i12.i.i.i.i30.i
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %.sroa.01.019.i12.i.i.i.i30.i
  %.val15.i13.i.i.i.i31.i = load i32, ptr %i.on, align 4, !alias.scope !1399, !noalias !1401, !noundef !11 ; 2 uses
  %.val16.i14.i.i.i.i32.i = load i32, ptr %i.oo, align 4, !alias.scope !1400, !noalias !1402, !noundef !11 ; 2 uses
  %i.op = icmp eq i32 %.val15.i13.i.i.i.i31.i, %.val16.i14.i.i.i.i32.i
  br i1 %i.op, label %bb.bv, label %.loopexit.i15.i.i.i.i33.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i: ; preds = %bb.bt, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i20.i = phi i1 [ %i.nw, %bb.bt ], [ %i.mn, %.lr.ph.i.i ]
  %cond.fr.i21.i = freeze i1 %.sroa.0.0.i.i.i.i20.i
  br i1 %cond.fr.i21.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i, %.loopexit.i15.i.i.i.i33.i, %._crit_edge.i18.i.i.i.i35.i, %.split9.i36.i, %.split10.i39.i, %bb.bs, %.split11.i42.i, %.split8.i41.i, %.loopexit.i.i.i.i.i50.i, %._crit_edge.i.i.i.i.i52.i, %.split.i53.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i, %.loopexit.i15.i.i.i.i33.i, %._crit_edge.i18.i.i.i.i35.i, %.split9.i36.i, %.split10.i39.i, %bb.br, %.split11.i42.i, %.split8.i41.i, %.loopexit.i.i.i.i.i50.i, %._crit_edge.i.i.i.i.i52.i, %.split.i53.i, %bb.bm
  %.in.i23.i = phi ptr [ %.sroa.0.0.val.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ %.val.i18.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ %.val.i18.i, %._crit_edge.i18.i.i.i.i35.i ], [ %.val.i18.i, %.split.i53.i ], [ %.val.i18.i, %.split8.i41.i ], [ %.val.i18.i, %.split9.i36.i ], [ %.val.i18.i, %.loopexit.i.i.i.i.i50.i ], [ %.val.i18.i, %.split10.i39.i ], [ %.val.i18.i, %.loopexit.i15.i.i.i.i33.i ], [ %.val.i18.i, %.split11.i42.i ], [ %.val.i18.i, %._crit_edge.i.i.i.i.i52.i ], [ %.val.i18.i, %bb.br ], [ %.val.i18.i, %bb.bm ]
  %i.oq = phi i64 [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ 1, %._crit_edge.i18.i.i.i.i35.i ], [ 1, %.split.i53.i ], [ 1, %.split8.i41.i ], [ 1, %.split9.i36.i ], [ 1, %.loopexit.i.i.i.i.i50.i ], [ 1, %.split10.i39.i ], [ 1, %.loopexit.i15.i.i.i.i33.i ], [ 1, %.split11.i42.i ], [ 1, %._crit_edge.i.i.i.i.i52.i ], [ 1, %bb.br ], [ 1, %bb.bm ]
  %.sroa.0.0.i.i.i3.i24.i = phi i64 [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread4.i26.i ], [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.i19.i ], [ 0, %._crit_edge.i18.i.i.i.i35.i ], [ 0, %.split.i53.i ], [ 0, %.split8.i41.i ], [ 0, %.split9.i36.i ], [ 0, %.loopexit.i.i.i.i.i50.i ], [ 0, %.split10.i39.i ], [ 0, %.loopexit.i15.i.i.i.i33.i ], [ 0, %.split11.i42.i ], [ 0, %._crit_edge.i.i.i.i.i52.i ], [ 0, %bb.br ], [ 0, %bb.bm ]
  %i.or = ptrtoint ptr %.in.i23.i to i64
  store i64 %i.or, ptr %i.mg, align 8, !alias.scope !1372, !noalias !1389
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.oq ; 3 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.017.i.i, i64 %.sroa.0.0.i.i.i3.i24.i ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.mg, i64 8 ; 2 uses
  %i.ov = icmp ne ptr %i.os, %i.jk
  %i.ow = icmp ne ptr %i.ot, %i.m
  %or.cond.i25.i = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i25.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i
  %.sroa.13.1.i = phi ptr [ %i.mb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.ou, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ]
  %.sroa.7.0.i = phi ptr [ %i.md, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.jk, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i.i ], [ %i.os, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSINtNtB7_4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerE7sort_byNCNvBR_5print0E0BT_.exit.thread.i22.i ] ; 2 uses
  %i.ox = ptrtoint ptr %.sroa.7.0.i to i64
  %i.oy = ptrtoint ptr %.sroa.0.1.i to i64
  %i.oz = sub nuw i64 %i.ox, %i.oy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.oz, i1 false), !alias.scope !1374, !noalias !1403
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit: ; preds = %bb.ba, %bb.bb, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvB1K_5print0E0EB1M_.exit.i
  %i.pa = shl nuw nsw i64 %i.il, 1
  %i.pb = or disjoint i64 %i.pa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1b_5sliceSB16_7sort_byNCNvB1G_5print0E0EB1I_.exit: ; preds = %bb.aw, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit
  %.sroa.0.0.i = phi i64 [ %i.pb, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB12_5sliceSBX_7sort_byNCNvB1x_5print0E0EB1z_.exit ], [ %i.it, %bb.aw ] ; 2 uses
  %i.pc = icmp ugt i64 %i.ic, 1
  br i1 %i.pc, label %bb.at, label %._crit_edge

bb.bw:                                            ; preds = %._crit_edge
  %i.pd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.pe = lshr i64 %.sroa.018.0, 1
  %i.pf = add nuw i64 %i.pe, %.sroa.09.0
  br label %bb.f

bb.bx:                                            ; preds = %._crit_edge
  %i.pg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.pg, 0
  br i1 %.not30, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ph = or i64 %1, 1
  %i.pi = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ph, i1 true)
  %i.pj = trunc nuw nsw i64 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 1
  %i.pl = xor i32 %i.pk, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENCINvMNtB1a_5sliceSB15_7sort_byNCNvB1F_5print0E0EB1H_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.pl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1297
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.a, %bb.bz
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !alias.scope !1442, !noalias !1443, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val19.i = load ptr, ptr %i.s, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val20.i = load i64, ptr %i.t, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i44 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.u = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17.i, i64 noundef %.val18.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val19.i, i64 noundef %.val20.i), !noalias !1447 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i44) ], !noalias !1446
  %i.v = load i8, ptr %.val.i44, align 1, !range !21, !noalias !1447, !noundef !11
  %i.w = trunc nuw i8 %i.v to i1
  %switch.offset.i.i45 = sub nsw i8 0, %i.u
  %.sroa.0.0.i.i46 = select i1 %i.w, i8 %switch.offset.i.i45, i8 %i.u
  %i.x = icmp ne i8 %.sroa.0.0.i.i46, -1          ; 2 uses
  %.not89 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader57, label %.preheader56

.preheader57:                                     ; preds = %bb.k
  br i1 %.not89, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread, label %.lr.ph

.preheader56:                                     ; preds = %bb.k
  br i1 %.not89, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121, label %.lr.ph76

.lr.ph:                                           ; preds = %.preheader57, %bb.l
  %.sroa.01.0.i.i72 = phi i64 [ %i.ai, %bb.l ], [ 2, %.preheader57 ] ; 4 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72 ; 2 uses
  %i.z = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i72 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val12.i = load ptr, ptr %i.aa, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val13.i = load i64, ptr %i.ab, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.ac = getelementptr i8, ptr %i.z, i64 -16
  %.val14.i = load ptr, ptr %i.ac, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.ad = getelementptr i8, ptr %i.z, i64 -8
  %.val15.i = load i64, ptr %i.ad, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i41 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.ae = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i), !noalias !1448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i41) ], !noalias !1446
  %i.af = load i8, ptr %.val.i41, align 1, !range !21, !noalias !1448, !noundef !11
  %i.ag = trunc nuw i8 %i.af to i1
  %switch.offset.i.i42 = sub nsw i8 0, %i.ae
  %.sroa.0.0.i.i43 = select i1 %i.ag, i8 %switch.offset.i.i42, i8 %i.ae
  %i.ah = icmp eq i8 %.sroa.0.0.i.i43, -1
  br i1 %i.ah, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ai = add nuw i64 %.sroa.01.0.i.i72, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %.lr.ph

.lr.ph76:                                         ; preds = %.preheader56, %bb.m
  %.sroa.01.1.i.i75 = phi i64 [ %i.at, %bb.m ], [ 2, %.preheader56 ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75 ; 2 uses
  %i.ak = getelementptr [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i75 ; 2 uses
  %i.al = getelementptr i8, ptr %i.aj, i64 8
  %.val7.i = load ptr, ptr %i.al, align 8, !alias.scope !1441, !noalias !1444, !nonnull !11, !noundef !11
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  %.val8.i = load i64, ptr %i.am, align 8, !alias.scope !1441, !noalias !1444, !noundef !11
  %i.an = getelementptr i8, ptr %i.ak, i64 -16
  %.val9.i = load ptr, ptr %i.an, align 8, !alias.scope !1445, !noalias !1444, !nonnull !11, !noundef !11
  %i.ao = getelementptr i8, ptr %i.ak, i64 -8
  %.val10.i = load i64, ptr %i.ao, align 8, !alias.scope !1445, !noalias !1444, !noundef !11
  %.val.i39 = load ptr, ptr %.val16.i, align 8, !noalias !1446 ; 2 uses
  %i.ap = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i), !noalias !1449 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i39) ], !noalias !1446
  %i.aq = load i8, ptr %.val.i39, align 1, !range !21, !noalias !1449, !noundef !11
  %i.ar = trunc nuw i8 %i.aq to i1
  %switch.offset.i.i = sub nsw i8 0, %i.ap
  %.sroa.0.0.i.i40 = select i1 %i.ar, i8 %switch.offset.i.i, i8 %i.ap
  %i.as = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.as, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i

bb.m:                                             ; preds = %.lr.ph76
  %i.at = add nuw i64 %.sroa.01.1.i.i75, 1        ; 2 uses
  %exitcond102.not = icmp eq i64 %i.at, %i.n
  br i1 %exitcond102.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i, label %.lr.ph76

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i: ; preds = %bb.m, %.lr.ph76, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i72, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i75, %.lr.ph76 ], [ %i.n, %bb.m ] ; 5 uses
  %i.au = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.au)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121: ; preds = %.preheader56
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread: ; preds = %.preheader57
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.x, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.aw = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1416
  %i.ax = shl nuw nsw i64 %..i37, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i5154 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i ]
  %i.az = shl nuw nsw i64 %.sroa.0.0.i.i5154, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121
  %i.bb = phi i64 [ %i.av, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB30_.exit.i.thread121 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bh, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bd = xor i64 %.sroa.0.017.i.i, -1
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.bf = getelementptr [24 x i8], ptr %i.bc, i64 %i.bd
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1444

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1444
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.bh = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bh, %i.bb
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB31_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ba, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit ], [ %i.ay, %bb.p ], [ %i.aw, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph82, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit
  %.sroa.02.181 = phi i64 [ %.sroa.02.0, %.lr.ph82 ], [ %i.br, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 2 uses
  %.sroa.023.180 = phi i64 [ %.sroa.023.0, %.lr.ph82 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.181, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.180, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.181, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !11 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.180, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.180 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.180
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 384307168202282326) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !1452
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.cx, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.cz, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.df, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.da = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val12.i.i = load ptr, ptr %i.da, align 8, !alias.scope !1451, !noalias !1453, !nonnull !11, !noundef !11
  %i.db = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val13.i.i = load i64, ptr %i.db, align 8, !alias.scope !1451, !noalias !1453, !noundef !11
  %i.dc = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val14.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !1454, !noalias !1455, !nonnull !11, !noundef !11
  %i.dd = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val15.i.i = load i64, ptr %i.dd, align 8, !alias.scope !1454, !noalias !1455, !noundef !11
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !1456 ; 2 uses
  %i.de = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i.i, i64 noundef %.val15.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1452 ; 2 uses

.noexc.i:                                         ; preds = %.preheader
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.di = load i8, ptr %.val.i.i.i, align 1, !range !21, !noalias !1457, !noundef !11
  %i.dj = trunc nuw i8 %i.di to i1
  %switch.offset.i.i.i.i = sub nsw i8 0, %i.de
  %.sroa.0.0.i.i.i.i = select i1 %i.dj, i8 %switch.offset.i.i.i.i, i8 %i.de
  %i.dk = icmp eq i8 %.sroa.0.0.i.i.i.i, -1       ; 3 uses
  %..i18.i = select i1 %i.dk, ptr %i.dh, ptr %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %..i18.i, i64 24, i1 false), !alias.scope !1452, !noalias !1458
  %i.dl = xor i1 %i.dk, true
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dh, i64 %i.dm ; 3 uses
  %i.do = zext i1 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.do ; 3 uses
  %i.dq = icmp eq ptr %i.dn, %i.cc
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2T_:bb.a
  %i.ei = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ek, i1 false), !alias.scope !1452, !noalias !1465
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit

.loopexit.i:                                      ; preds = %.preheader
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cz, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.el = ptrtoint ptr %.sroa.7.1.i to i64
  %i.em = ptrtoint ptr %.sroa.0.2.i to i64
  %i.en = sub nuw i64 %i.el, %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.en, i1 false), !alias.scope !1452, !noalias !1466
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB3l_.exit.i
  %i.eo = shl nuw nsw i64 %i.ca, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB34_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit
  %.sroa.0.0.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB2U_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eq = icmp ugt i64 %i.br, 1
  br i1 %i.eq, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.er = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.es = lshr i64 %.sroa.018.0, 1
  %i.et = add nuw i64 %i.es, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.eu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eu, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ev = or i64 %1, 1
  %i.ew = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts1_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1417
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2T_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i129 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i134 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gd, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit
  %.sroa.021.0 = phi i8 [ %i.cj, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph84, label %._crit_edge

.lr.ph84:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1502)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val16.i = load ptr, ptr %5, align 8, !alias.scope !1502, !noalias !1503, !nonnull !11, !align !14, !noundef !11 ; 4 uses
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val17.i = load ptr, ptr %i.q, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val18.i = load i64, ptr %i.r, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val19.i = load ptr, ptr %i.s, align 8, !alias.scope !1501, !noalias !1504 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val20.i = load i64, ptr %i.t, align 8, !alias.scope !1501, !noalias !1504
  %.val.i45 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.u = getelementptr i8, ptr %.val16.i, i64 8   ; 3 uses
  %.val1.i46 = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.v = load ptr, ptr %.val.i45, align 8, !noalias !1506, !nonnull !11, !noundef !11
  %i.w = tail call { ptr, i64 } %i.v(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val17.i, i64 noundef %.val18.i), !noalias !1506, !inline_history !1473 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %.val.i45, align 8, !noalias !1506, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i) ], !noalias !1505
  %i.aa = tail call { ptr, i64 } %i.z(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val19.i, i64 noundef %.val20.i), !noalias !1506, !inline_history !1473 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %i.ad = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.x, i64 noundef %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ab, i64 noundef %i.ac), !noalias !1506 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i46) ], !noalias !1505
  %i.ae = load i8, ptr %.val1.i46, align 1, !range !21, !noalias !1506, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  %switch.offset.i.i47 = sub nsw i8 0, %i.ad
  %.sroa.0.0.i.i48 = select i1 %i.af, i8 %switch.offset.i.i47, i8 %i.ad
  %i.ag = icmp ne i8 %.sroa.0.0.i.i48, -1         ; 2 uses
  %.not91 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.ag, label %.preheader59, label %.preheader58

.preheader59:                                     ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread, label %.lr.ph

.preheader58:                                     ; preds = %bb.k
  br i1 %.not91, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132, label %.lr.ph78

.lr.ph:                                           ; preds = %.preheader59, %bb.l
  %.val15.i = phi i64 [ %.val13.i, %bb.l ], [ %.val18.i, %.preheader59 ]
  %.val14.i = phi ptr [ %.val12.i, %bb.l ], [ %.val17.i, %.preheader59 ]
  %.sroa.01.0.i.i74 = phi i64 [ %i.aw, %bb.l ], [ 2, %.preheader59 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i74 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val12.i = load ptr, ptr %i.ai, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val13.i = load i64, ptr %i.aj, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 2 uses
  %.val.i41 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i42 = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.ak = load ptr, ptr %.val.i41, align 8, !noalias !1507, !nonnull !11, !noundef !11
  %i.al = tail call { ptr, i64 } %i.ak(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1507, !inline_history !1473 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = load ptr, ptr %.val.i41, align 8, !noalias !1507, !nonnull !11, !noundef !11
  %i.ap = tail call { ptr, i64 } %i.ao(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i), !noalias !1507, !inline_history !1473 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = extractvalue { ptr, i64 } %i.ap, 1
  %i.as = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.am, i64 noundef %i.an, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aq, i64 noundef %i.ar), !noalias !1507 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i42) ], !noalias !1505
  %i.at = load i8, ptr %.val1.i42, align 1, !range !21, !noalias !1507, !noundef !11
  %i.au = trunc nuw i8 %i.at to i1
  %switch.offset.i.i43 = sub nsw i8 0, %i.as
  %.sroa.0.0.i.i44 = select i1 %i.au, i8 %switch.offset.i.i43, i8 %i.as
  %i.av = icmp eq i8 %.sroa.0.0.i.i44, -1
  br i1 %i.av, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aw = add nuw i64 %.sroa.01.0.i.i74, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %.lr.ph

.lr.ph78:                                         ; preds = %.preheader58, %bb.m
  %.val10.i = phi i64 [ %.val8.i, %bb.m ], [ %.val18.i, %.preheader58 ]
  %.val9.i = phi ptr [ %.val7.i, %bb.m ], [ %.val17.i, %.preheader58 ]
  %.sroa.01.1.i.i77 = phi i64 [ %i.bm, %bb.m ], [ 2, %.preheader58 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i77 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val7.i = load ptr, ptr %i.ay, align 8, !alias.scope !1501, !noalias !1504, !nonnull !11, !noundef !11 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 16
  %.val8.i = load i64, ptr %i.az, align 8, !alias.scope !1501, !noalias !1504, !noundef !11 ; 2 uses
  %.val.i39 = load ptr, ptr %.val16.i, align 8, !noalias !1505, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i = load ptr, ptr %i.u, align 8, !noalias !1505 ; 2 uses
  %i.ba = load ptr, ptr %.val.i39, align 8, !noalias !1508, !nonnull !11, !noundef !11
  %i.bb = tail call { ptr, i64 } %i.ba(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i), !noalias !1508, !inline_history !1473 ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  %i.be = load ptr, ptr %.val.i39, align 8, !noalias !1508, !nonnull !11, !noundef !11
  %i.bf = tail call { ptr, i64 } %i.be(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i), !noalias !1508, !inline_history !1473 ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  %i.bi = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bc, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bg, i64 noundef %i.bh), !noalias !1508 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ], !noalias !1505
  %i.bj = load i8, ptr %.val1.i, align 1, !range !21, !noalias !1508, !noundef !11
  %i.bk = trunc nuw i8 %i.bj to i1
  %switch.offset.i.i = sub nsw i8 0, %i.bi
  %.sroa.0.0.i.i40 = select i1 %i.bk, i8 %switch.offset.i.i, i8 %i.bi
  %i.bl = icmp eq i8 %.sroa.0.0.i.i40, -1
  br i1 %i.bl, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i

bb.m:                                             ; preds = %.lr.ph78
  %i.bm = add nuw i64 %.sroa.01.1.i.i77, 1        ; 2 uses
  %exitcond104.not = icmp eq i64 %i.bm, %i.n
  br i1 %exitcond104.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i, label %.lr.ph78

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i: ; preds = %bb.m, %.lr.ph78, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i74, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i77, %.lr.ph78 ], [ %i.n, %bb.m ] ; 5 uses
  %i.bn = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bn)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132: ; preds = %.preheader58
  br i1 %.not5.i134, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread: ; preds = %.preheader59
  br i1 %.not5.i129, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i
  %i.bo = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.bo, 0
  %or.cond = or i1 %i.ag, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.bp = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1478
  %i.bq = shl nuw nsw i64 %..i37, 1
  %i.br = or disjoint i64 %i.bq, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i5356 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread ], [ %.sroa.0.0.i.i130137141, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i ]
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i.i5356, 1
  %i.bt = or disjoint i64 %i.bs, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132
  %i.bu = phi i64 [ %i.bo, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132 ]
  %.sroa.0.0.i.i130137141 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB17_5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB30_.exit.i.thread132 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i130137141
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ca, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bw = xor i64 %.sroa.0.017.i.i, -1
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.by = getelementptr [24 x i8], ptr %i.bv, i64 %i.bw
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.by, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1504

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1504
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.ca = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ca, %i.bu
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB18_5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB31_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.bt, %_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE7reverseCs8frGy5WneL6_4fish.exit ], [ %i.br, %bb.p ], [ %i.bp, %bb.o ] ; 2 uses
  %i.cb = lshr i64 %.sroa.023.0, 1
  %i.cc = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.cd = sub nsw i64 %factor, %i.cb
  %i.ce = add nuw nsw i64 %i.cc, %factor
  %i.cf = mul i64 %i.cd, %.sroa.0.0
  %i.cg = mul i64 %i.ce, %.sroa.0.0
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ch, i1 false)
  %i.cj = trunc nuw nsw i64 %i.ci to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph84, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit
  %.sroa.02.183 = phi i64 [ %.sroa.02.0, %.lr.ph84 ], [ %i.ck, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit ] ; 2 uses
  %.sroa.023.182 = phi i64 [ %.sroa.023.0, %.lr.ph84 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit ] ; 4 uses
  %i.ck = add i64 %.sroa.02.183, -1               ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.cm, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.182, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.183, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.co, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ck
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !11 ; 3 uses
  %i.cr = lshr i64 %i.cq, 1                       ; 8 uses
  %i.cs = lshr i64 %.sroa.023.182, 1              ; 6 uses
  %i.ct = add nuw i64 %i.cr, %i.cs                ; 4 uses
  %i.cu = sub i64 %.sroa.09.0, %i.ct
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cu ; 6 uses
  %i.cw = icmp samesign ugt i64 %i.ct, %3
  %i.cx = trunc i64 %.sroa.023.182 to i1
  %i.cy = or i64 %i.cq, %.sroa.023.182
  %i.cz = trunc i64 %i.cy to i1
  %or.cond3.i = or i1 %i.cw, %i.cz
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = trunc i64 %i.cq to i1
  br i1 %i.da, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.db = shl nuw nsw i64 %i.ct, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1b_5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB34_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cx, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.dc = or i64 %i.cr, 1
  %i.dd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.dc, i1 true)
  %i.de = trunc nuw nsw i64 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 1
  %i.dg = xor i32 %i.df, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef range(i64 0, 384307168202282326) %i.cr, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1479
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cr
  %i.di = or i64 %i.cs, 1
  %i.dj = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB1a_5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB33_(ptr noalias nofree noundef nonnull align 8 %i.dh, i64 noundef range(i64 0, 384307168202282326) %i.cs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1479
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.val = load ptr, ptr %5, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.dn = icmp eq i64 %i.cr, 0
  %i.do = icmp eq i64 %i.cs, 0
  %or.cond.i = or i1 %i.do, %i.dn
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 range(i64 0, -9223372036854775808) %i.cr) ; 2 uses
  %i.dp = icmp samesign ult i64 %3, %..i.i
  br i1 %i.dp, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB12_5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2U_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cr ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cr, %i.cs  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.dq, ptr %i.cv
  %i.dr = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.dr, i1 false), !alias.scope !1511
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.dt = getelementptr i8, ptr %.val, i64 8      ; 2 uses
  br i1 %.not.i33, label %.preheader, label %.lr.ph.i.i

.preheader:                                       ; preds = %.critedge.i, %.noexc20.i
  %.sroa.13.0.i = phi ptr [ %i.ep, %.noexc20.i ], [ %i.dq, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.er, %.noexc20.i ], [ %i.ds, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dw, %.noexc20.i ], [ %i.m, %.critedge.i ]
  %i.du = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.dx = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val12.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !1510, !noalias !1512, !nonnull !11, !noundef !11
  %i.dy = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val13.i.i = load i64, ptr %i.dy, align 8, !alias.scope !1510, !noalias !1512, !noundef !11
  %i.dz = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val14.i.i = load ptr, ptr %i.dz, align 8, !alias.scope !1509, !noalias !1513 ; 2 uses
  %i.ea = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val15.i.i = load i64, ptr %i.ea, align 8, !alias.scope !1509, !noalias !1513
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !1514, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.dt, align 8, !noalias !1514 ; 2 uses
  %i.eb = load ptr, ptr %.val.i.i.i, align 8, !noalias !1515, !nonnull !11, !noundef !11
  %i.ec = invoke { ptr, i64 } %i.eb(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i.i, i64 noundef %.val13.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1511, !inline_history !1487 ; 2 uses

.noexc.i:                                         ; preds = %.preheader
  %i.ed = load ptr, ptr %.val.i.i.i, align 8, !noalias !1515, !nonnull !11, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  %i.ee = invoke { ptr, i64 } %i.ed(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i.i, i64 noundef %.val15.i.i)
          to label %.noexc19.i unwind label %.loopexit.i, !noalias !1511, !inline_history !1487 ; 2 uses

.noexc19.i:                                       ; preds = %.noexc.i
  %i.ef = extractvalue { ptr, i64 } %i.ec, 1
  %i.eg = extractvalue { ptr, i64 } %i.ec, 0
  %i.eh = extractvalue { ptr, i64 } %i.ee, 0
  %i.ei = extractvalue { ptr, i64 } %i.ee, 1
  %i.ej = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eg, i64 noundef %i.ef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eh, i64 noundef %i.ei)
end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCINvMNtB11_5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins4path9path_sorts_0E0EB2T_:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvBY_19sort_and_prioritizes_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.ap, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ap ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ix, %bb.ap ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.iv, %bb.ap ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.ef, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph113, label %._crit_edge

.lr.ph113:                                        ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 15 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.w, label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1591), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1593), !noalias !1592
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 107
  %i.s = load i8, ptr %i.r, align 1, !range !22, !alias.scope !1594, !noalias !1595, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 51
  %i.u = load i8, ptr %i.t, align 1, !range !22, !alias.scope !1596, !noalias !1597, !noundef !11 ; 2 uses
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.x = load i16, ptr %i.w, align 8, !alias.scope !1594, !noalias !1595, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.z = load i16, ptr %i.y, align 8, !alias.scope !1596, !noalias !1597, !noundef !11
  %i.aa = trunc i16 %i.x to i8
  %i.ab = lshr i8 %i.aa, 6
  %i.ac = and i8 %i.ab, 1
  %i.ad = trunc i16 %i.z to i8
  %i.ae = lshr i8 %i.ad, 6
  %i.af = and i8 %i.ae, 1
  %i.ag = sub nsw i8 %i.ac, %i.af
  switch i8 %i.ag, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader
    i8 0, label %bb.m
    i8 1, label %.split52.preheader
  ]

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader: ; preds = %.split, %switch.lookup.i.i47, %bb.l
  %.not120 = icmp eq i64 %i.n, 2
  br i1 %.not120, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph102

.split:                                           ; preds = %bb.k
  %i.ah = icmp samesign ult i8 %i.s, %i.u
  br i1 %i.ah, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, label %.split52.preheader

default.unreachable:                              ; preds = %bb.l, %bb.o, %bb.r, %bb.al, %bb.ai
  unreachable

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1599), !noalias !1592
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1600, !noalias !1601, !noundef !11 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ak), !noalias !1592
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %.split52.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1602, !noalias !1603, !noundef !11 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ao), !noalias !1592
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %.split52.preheader, label %switch.lookup.i.i47

switch.lookup.i.i47:                              ; preds = %bb.n
  %i.aq = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.q, i32 noundef 126), !noalias !1601
  %i.ar = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.o, i32 noundef 126), !noalias !1592
  %i.as = xor i1 %i.aq, true
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, label %.split52.preheader

.split52.preheader:                               ; preds = %bb.m, %bb.n, %.split, %switch.lookup.i.i47, %bb.l
  %.not119 = icmp eq i64 %i.n, 2
  br i1 %.not119, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split52.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread
  %.sroa.01.0.i.i97 = phi i64 [ %i.cb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ], [ 2, %.split52.preheader ] ; 6 uses
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i97 ; 4 uses
  %i.av = add nsw i64 %.sroa.01.0.i.i97, -1       ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.n
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607), !noalias !1592
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 51
  %i.az = load i8, ptr %i.ay, align 1, !range !22, !alias.scope !1608, !noalias !1609, !noundef !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 51
  %i.bb = load i8, ptr %i.ba, align 1, !range !22, !alias.scope !1610, !noalias !1611, !noundef !11 ; 2 uses
  %i.bc = icmp eq i8 %i.az, %i.bb
  br i1 %i.bc, label %bb.o, label %.split56

bb.o:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.be = load i16, ptr %i.bd, align 8, !alias.scope !1608, !noalias !1609, !noundef !11
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bg = load i16, ptr %i.bf, align 8, !alias.scope !1610, !noalias !1611, !noundef !11
  %i.bh = trunc i16 %i.be to i8
  %i.bi = lshr i8 %i.bh, 6
  %i.bj = and i8 %i.bi, 1
  %i.bk = trunc i16 %i.bg to i8
  %i.bl = lshr i8 %i.bk, 6
  %i.bm = and i8 %i.bl, 1
  %i.bn = sub nsw i8 %i.bj, %i.bm
  switch i8 %i.bn, label %default.unreachable [
    i8 -1, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
    i8 0, label %bb.p
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread
  ]

.split56:                                         ; preds = %.lr.ph
  %i.bo = icmp samesign ult i8 %i.az, %i.bb
  br i1 %i.bo, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613), !noalias !1592
  %i.bp = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1614, !noalias !1615, !noundef !11 ; 2 uses
  %i.br = icmp ult i64 %i.bq, 2305843009213693952
  tail call void @llvm.assume(i1 %i.br), !noalias !1592
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !1616, !noalias !1617, !noundef !11 ; 2 uses
  %i.bv = icmp ult i64 %i.bu, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bv), !noalias !1592
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45: ; preds = %bb.q
  %i.bx = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.au, i32 noundef 126), !noalias !1615
  %i.by = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ax, i32 noundef 126), !noalias !1592
  %i.bz = xor i1 %i.bx, true
  %i.ca = and i1 %i.by, %i.bz
  br i1 %i.ca, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread: ; preds = %bb.o, %bb.p, %bb.q, %.split56, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45
  %i.cb = add nuw i64 %.sroa.01.0.i.i97, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph

.lr.ph102:                                        ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58
  %.sroa.01.1.i.i101 = phi i64 [ %i.dj, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ] ; 8 uses
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i101 ; 4 uses
  %i.cd = add nsw i64 %.sroa.01.1.i.i101, -1      ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.n
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.cd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621), !noalias !1592
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 51
  %i.ch = load i8, ptr %i.cg, align 1, !range !22, !alias.scope !1622, !noalias !1623, !noundef !11 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 51
  %i.cj = load i8, ptr %i.ci, align 1, !range !22, !alias.scope !1624, !noalias !1625, !noundef !11 ; 2 uses
  %i.ck = icmp eq i8 %i.ch, %i.cj
  br i1 %i.ck, label %bb.r, label %.split60

bb.r:                                             ; preds = %.lr.ph102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cm = load i16, ptr %i.cl, align 8, !alias.scope !1622, !noalias !1623, !noundef !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.co = load i16, ptr %i.cn, align 8, !alias.scope !1624, !noalias !1625, !noundef !11
  %i.cp = trunc i16 %i.cm to i8
  %i.cq = lshr i8 %i.cp, 6
  %i.cr = and i8 %i.cq, 1
  %i.cs = trunc i16 %i.co to i8
  %i.ct = lshr i8 %i.cs, 6
  %i.cu = and i8 %i.ct, 1
  %i.cv = sub nsw i8 %i.cr, %i.cu
  switch i8 %i.cv, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58
    i8 0, label %bb.s
    i8 1, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
  ]

.split60:                                         ; preds = %.lr.ph102
  %i.cw = icmp samesign ult i8 %i.ch, %i.cj
  br i1 %i.cw, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626), !noalias !1592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1627), !noalias !1592
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !1628, !noalias !1629, !noundef !11 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cz), !noalias !1592
  %i.da = icmp eq i64 %i.cy, 0
  br i1 %i.da, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1630, !noalias !1631, !noundef !11 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dd), !noalias !1592
  %i.de = icmp eq i64 %i.dc, 0
  br i1 %i.de, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit: ; preds = %bb.t
  %i.df = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cc, i32 noundef 126), !noalias !1629
  %i.dg = tail call noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cf, i32 noundef 126), !noalias !1592
  %i.dh = xor i1 %i.df, true
  %i.di = and i1 %i.dg, %i.dh
  br i1 %i.di, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58: ; preds = %bb.r, %.split60, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit
  %i.dj = add nuw i64 %.sroa.01.1.i.i101, 1       ; 2 uses
  %exitcond141.not = icmp eq i64 %i.dj, %i.n
  br i1 %exitcond141.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i, label %.lr.ph102

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45, %.split56, %bb.o, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit, %.split60, %bb.t, %bb.s, %bb.r, %.split52.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ], [ false, %.split52.preheader ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.t ], [ true, %.split60 ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit ], [ false, %bb.o ], [ false, %.split56 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ]
  %.sroa.0.0.i.i = phi i64 [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit49.preheader ], [ 2, %.split52.preheader ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread58 ], [ %.sroa.01.1.i.i101, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit ], [ %.sroa.01.1.i.i101, %.split60 ], [ %.sroa.01.1.i.i101, %bb.t ], [ %.sroa.01.1.i.i101, %bb.s ], [ %.sroa.01.1.i.i101, %bb.r ], [ %.sroa.01.0.i.i97, %.split56 ], [ %.sroa.01.0.i.i97, %bb.o ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45.thread ], [ %.sroa.01.0.i.i97, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit45 ] ; 7 uses
  %i.dk = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.dk)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvB14_19sort_and_prioritizes_0E0EB16_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.x, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit

bb.v:                                             ; preds = %bb.i
  %..i39 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.dl = shl nuw nsw i64 %..i39, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

bb.w:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i38, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1554
  %i.dm = shl nuw nsw i64 %..i38, 1
  %i.dn = or disjoint i64 %i.dm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %bb.j, %bb.x, %bb.u
  %.sroa.0.0.i.i6568 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %bb.x ], [ %.sroa.0.0.i.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ]
  %i.do = shl nuw nsw i64 %.sroa.0.0.i.i6568, 1
  %i.dp = or disjoint i64 %i.do, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit

bb.x:                                             ; preds = %bb.u
  %i.dq = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i36 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i36, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.x
  %i.dr = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.dw, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ds = xor i64 %.sroa.0.017.i.i, -1
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.du = getelementptr [56 x i8], ptr %i.dr, i64 %i.ds
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.dt, ptr noundef nonnull %i.du, i64 noundef 7)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i unwind label %bb.y, !noalias !1592

bb.y:                                             ; preds = %.lr.ph.i.i37
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1592
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i: ; preds = %.lr.ph.i.i37
  %i.dw = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dw, %i.dq
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.i.i37

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvB15_19sort_and_prioritizes_0E0EB17_.exit: ; preds = %bb.v, %bb.w, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.dp, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit ], [ %i.dn, %bb.w ], [ %i.dl, %bb.v ] ; 2 uses
  %i.dx = lshr i64 %.sroa.023.0, 1
  %i.dy = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.dz = sub nsw i64 %factor, %i.dx
  %i.ea = add nuw nsw i64 %i.dy, %factor
  %i.eb = mul i64 %i.dz, %.sroa.0.0
  %i.ec = mul i64 %i.ea, %.sroa.0.0
  %i.ed = xor i64 %i.ec, %i.eb
  %i.ee = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ed, i1 false)
  %i.ef = trunc nuw nsw i64 %i.ee to i8
  br label %bb.g

bb.z:                                             ; preds = %.lr.ph113, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit
  %.sroa.02.1112 = phi i64 [ %.sroa.02.0, %.lr.ph113 ], [ %i.eg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.1111 = phi i64 [ %.sroa.023.0, %.lr.ph113 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 4 uses
  %i.eg = add i64 %.sroa.02.1112, -1              ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.ei, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.aa

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit, %bb.z, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.1111, %bb.z ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.1112, %bb.z ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.ek, align 1
  br i1 %i.k, label %bb.ap, label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.eg
  %i.em = load i64, ptr %i.el, align 8, !noundef !11 ; 3 uses
  %i.en = lshr i64 %i.em, 1                       ; 8 uses
  %i.eo = lshr i64 %.sroa.023.1111, 1             ; 6 uses
  %i.ep = add nuw i64 %i.en, %i.eo                ; 4 uses
  %i.eq = sub i64 %.sroa.09.0, %i.ep
  %i.er = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.eq ; 6 uses
  %i.es = icmp samesign ugt i64 %i.ep, %3
  %i.et = trunc i64 %.sroa.023.1111 to i1
  %i.eu = or i64 %i.em, %.sroa.023.1111
  %i.ev = trunc i64 %i.eu to i1
  %or.cond3.i = or i1 %i.es, %i.ev
  br i1 %or.cond3.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = trunc i64 %i.em to i1
  br i1 %i.ew, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.ex = shl nuw nsw i64 %i.ep, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit

bb.ad:                                            ; preds = %bb.ae, %bb.ab
  br i1 %i.et, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ey = or i64 %i.en, 1
  %i.ez = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ey, i1 true)
  %i.fa = trunc nuw nsw i64 %i.ez to i32
  %i.fb = shl nuw nsw i32 %i.fa, 1
  %i.fc = xor i32 %i.fb, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.er, i64 noundef range(i64 0, 164703072086692426) %i.en, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.fc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.fd = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %i.en
  %i.fe = or i64 %i.eo, 1
  %i.ff = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.fe, i1 true)
  %i.fg = trunc nuw nsw i64 %i.ff to i32
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = xor i32 %i.fh, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.fd, i64 noundef range(i64 0, 164703072086692426) %i.eo, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.fj = icmp eq i64 %i.en, 0
  %i.fk = icmp eq i64 %i.eo, 0
  %or.cond.i = or i1 %i.fk, %i.fj
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.eo, i64 range(i64 0, -9223372036854775808) %i.en) ; 2 uses
  %i.fl = icmp samesign ult i64 %3, %..i.i
  br i1 %i.fl, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %i.en ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.en, %i.eo  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.fm, ptr %i.er
  %i.fn = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.fn, i1 false), !alias.scope !1634
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fn ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %.sroa.13.0.i = phi ptr [ %i.gy, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.fm, %.critedge.i ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ %i.ha, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.fo, %.critedge.i ] ; 5 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.fr, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.m, %.critedge.i ]
  %i.fp = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 3 uses
  %i.fq = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 7 uses
  %i.fr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  %i.fs = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -5
  %i.ft = load i8, ptr %i.fs, align 1, !range !22, !alias.scope !1639, !noalias !1640, !noundef !11 ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -5
  %i.fv = load i8, ptr %i.fu, align 1, !range !22, !alias.scope !1641, !noalias !1642, !noundef !11 ; 2 uses
  %i.fw = icmp eq i8 %i.ft, %i.fv
  br i1 %i.fw, label %bb.ai, label %.split.i.i

bb.ai:                                            ; preds = %.preheader.i
  %i.fx = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8
  %i.fy = load i16, ptr %i.fx, align 8, !alias.scope !1639, !noalias !1640, !noundef !11
  %i.fz = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.ga = load i16, ptr %i.fz, align 8, !alias.scope !1641, !noalias !1642, !noundef !11
  %i.gb = trunc i16 %i.fy to i8
  %i.gc = lshr i8 %i.gb, 6
  %i.gd = and i8 %i.gc, 1
  %i.ge = trunc i16 %i.ga to i8
  %i.gf = lshr i8 %i.ge, 6
  %i.gg = and i8 %i.gf, 1
  %i.gh = sub nsw i8 %i.gd, %i.gg
  switch i8 %i.gh, label %default.unreachable [
    i8 -1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i
    i8 0, label %bb.aj
    i8 1, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  ]

.split.i.i:                                       ; preds = %.preheader.i
  %i.gi = icmp samesign ult i8 %i.ft, %i.fv
  br i1 %i.gi, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.gj = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -40
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !1645, !noalias !1646, !noundef !11 ; 2 uses
  %i.gl = icmp ult i64 %i.gk, 2305843009213693952
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = icmp eq i64 %i.gk, 0
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvBY_19sort_and_prioritizes_0E0EB10_:bb.a

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i: ; preds = %bb.an
  %i.ib = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.010.i.i, i32 noundef 126)
          to label %.noexc26.i unwind label %.loopexit.split-lp.i

.noexc26.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i
  %i.ic = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt9ends_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0.i34, i32 noundef 126)
          to label %.noexc27.i unwind label %.loopexit.split-lp.i

.noexc27.i:                                       ; preds = %.noexc26.i
  %i.id = xor i1 %i.ib, true
  %i.ie = and i1 %i.ic, %i.id
  br i1 %i.ie, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i: ; preds = %.noexc27.i, %.split.i19.i, %bb.al
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i, %.noexc27.i, %bb.an, %bb.am, %.split.i19.i, %bb.al
  %i.if = phi i64 [ 0, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ 1, %.noexc27.i ], [ 1, %.split.i19.i ], [ 1, %bb.an ], [ 1, %bb.am ], [ 1, %bb.al ]
  %.sroa.0.0.i.i3.i21.i = phi i64 [ 1, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ 0, %.noexc27.i ], [ 0, %.split.i19.i ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.al ]
  %i.ig = phi ptr [ %.sroa.0.010.i.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread4.i23.i ], [ %.sroa.0.0.i34, %.noexc27.i ], [ %.sroa.0.0.i34, %.split.i19.i ], [ %.sroa.0.0.i34, %bb.an ], [ %.sroa.0.0.i34, %bb.am ], [ %.sroa.0.0.i34, %bb.al ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(56) %i.ig, i64 56, i1 false), !alias.scope !1634, !noalias !1664
  %i.ih = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i34, i64 %i.if ; 3 uses
  %i.ii = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.010.i.i, i64 %.sroa.0.0.i.i3.i21.i ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 56 ; 2 uses
  %i.ik = icmp ne ptr %i.ih, %i.fo
  %i.il = icmp ne ptr %i.ii, %i.m
  %or.cond.i22.i = select i1 %i.ik, i1 %i.il, i1 false
  br i1 %or.cond.i22.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i
  %.sroa.13.4.i = phi ptr [ %i.gy, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.ij, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ]
  %.sroa.7.2.i = phi ptr [ %i.ha, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.fo, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i.i ], [ %i.ih, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.thread.i20.i ] ; 2 uses
  %i.im = ptrtoint ptr %.sroa.7.2.i to i64
  %i.in = ptrtoint ptr %.sroa.0.3.i to i64
  %i.io = sub nuw i64 %i.im, %i.in
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.io, i1 false), !alias.scope !1634, !noalias !1665
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit

.loopexit.i:                                      ; preds = %.noexc.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp.i:                             ; preds = %.noexc26.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNCNvBA_19sort_and_prioritizes_0E0BC_.exit.i24.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ao:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.fo, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ip = ptrtoint ptr %.sroa.7.1.i to i64
  %i.iq = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ir = sub nuw i64 %i.ip, %i.iq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.ir, i1 false), !alias.scope !1634, !noalias !1666
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit: ; preds = %bb.ag, %bb.ah, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvB1c_19sort_and_prioritizes_0E0EB1e_.exit.i
  %i.is = shl nuw nsw i64 %i.ep, 1
  %i.it = or disjoint i64 %i.is, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvB18_19sort_and_prioritizes_0E0EB1a_.exit: ; preds = %bb.ac, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.it, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvBZ_19sort_and_prioritizes_0E0EB11_.exit ], [ %i.ex, %bb.ac ] ; 2 uses
  %i.iu = icmp ugt i64 %i.eg, 1
  br i1 %i.iu, label %bb.z, label %._crit_edge

bb.ap:                                            ; preds = %._crit_edge
  %i.iv = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.iw = lshr i64 %.sroa.018.0, 1
  %i.ix = add nuw i64 %i.iw, %.sroa.09.0
  br label %bb.f

bb.aq:                                            ; preds = %._crit_edge
  %i.iy = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.iy, 0
  br i1 %.not30, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.iz = or i64 %1, 1
  %i.ja = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.iz, i1 true)
  %i.jb = trunc nuw nsw i64 %i.ja to i32
  %i.jc = shl nuw nsw i32 %i.jb, 1
  %i.jd = xor i32 %i.jc, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvB17_19sort_and_prioritizes_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.jd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1555
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.at

bb.at:                                            ; preds = %bb.a, %bb.as
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvMs0_NtB10_6expandNtB2w_8Expander15stage_wildcardss_0E0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 64
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 72
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1688, !noalias !1689, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1690
  %i.v = icmp ne i8 %i.u, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1690
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1688, !noalias !1689, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1688, !noalias !1689, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1690
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1671
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvMs0_NtB16_6expandNtB2D_8Expander15stage_wildcardss_0E0EB16_.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [56 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 7)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i unwind label %bb.q, !noalias !1689

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1689
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.av = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvMs0_NtB17_6expandNtB2E_8Expander15stage_wildcardss_0E0EB17_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit ], [ %i.am, %bb.p ], [ %i.ak, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 164703072086692426) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 164703072086692426) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [56 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1693
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -48
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1692, !noalias !1694, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -40
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1692, !noalias !1694, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -48
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1691, !noalias !1695, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -40
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1691, !noalias !1695, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1693

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 2 uses
  %i.cw = icmp eq i8 %i.cs, -1                    ; 3 uses
  %..i17.i = select i1 %i.cw, ptr %i.cv, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, ptr noundef nonnull align 8 dereferenceable(56) %..i17.i, i64 56, i1 false), !alias.scope !1693, !noalias !1696
  %i.cx = xor i1 %i.cw, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [56 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.cu, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bq
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.noexc21.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dm, %.noexc21.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.noexc21.i ], [ %i.cl, %.critedge.i ] ; 4 uses
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvMs0_NtB10_6expandNtB2w_8Expander15stage_wildcardss_0E0EB10_:bb.a
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dx, i1 false), !alias.scope !1693, !noalias !1701
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvMs0_NtB1e_6expandNtB2Y_8Expander15stage_wildcardss_0E0EB1e_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvMs0_NtB1a_6expandNtB2H_8Expander15stage_wildcardss_0E0EB1a_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvMs0_NtB11_6expandNtB2x_8Expander15stage_wildcardss_0E0EB11_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMs0_NtB19_6expandNtB2G_8Expander15stage_wildcardss_0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1672
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNvBY_27natural_compare_completionsE0EB10_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.al, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.al ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.gp, %bb.al ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.gn, %bb.al ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit
  %.sroa.021.0 = phi i8 [ %i.cu, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 14 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 13 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, %bb.h
  br i1 %4, label %bb.t, label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1769), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1772), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773), !noalias !1770
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.r = load i16, ptr %i.q, align 8, !alias.scope !1774, !noalias !1775, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.t = load i16, ptr %i.s, align 8, !alias.scope !1776, !noalias !1777, !noundef !11 ; 2 uses
  %i.u = and i16 %i.r, 32                         ; 2 uses
  %i.v = and i16 %i.u, %i.t
  %.not.i.i.i44 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i.i44, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  %.not1.i.i.i46 = icmp eq i16 %i.u, 0
  br i1 %.not1.i.i.i46, label %bb.m, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader: ; preds = %.split, %bb.l
  %.not100 = icmp eq i64 %i.n, 2
  br i1 %.not100, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph85

bb.m:                                             ; preds = %bb.l
  %i.w = and i16 %i.t, 32
  %.not2.i.i.i47 = icmp eq i16 %i.w, 0
  br i1 %.not2.i.i.i47, label %.split, label %.preheader

.split:                                           ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1774, !noalias !1775, !nonnull !11, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1774, !noalias !1775, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1776, !noalias !1777, !nonnull !11, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1776, !noalias !1777, !noundef !11
  %i.af = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.aa, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ac, i64 noundef %i.ae), !noalias !1778
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader, label %.preheader

.preheader:                                       ; preds = %bb.m, %bb.k, %.split
  %.not99 = icmp eq i64 %i.n, 2
  br i1 %.not99, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread
  %.sroa.01.0.i.i80 = phi i64 [ %i.bc, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread ], [ 2, %.preheader ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.0.i.i80 ; 3 uses
  %i.ai = add nsw i64 %.sroa.01.0.i.i80, -1       ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.n
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.ai ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1781), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1782), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1784), !noalias !1770
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.am = load i16, ptr %i.al, align 8, !alias.scope !1785, !noalias !1786, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ao = load i16, ptr %i.an, align 8, !alias.scope !1787, !noalias !1788, !noundef !11 ; 2 uses
  %i.ap = and i16 %i.am, 32                       ; 2 uses
  %i.aq = and i16 %i.ap, %i.ao
  %.not.i.i.i39 = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i39, label %bb.n, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

bb.n:                                             ; preds = %.lr.ph
  %.not1.i.i.i41 = icmp eq i16 %i.ap, 0
  br i1 %.not1.i.i.i41, label %bb.o, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.ar = and i16 %i.ao, 32
  %.not2.i.i.i42 = icmp eq i16 %i.ar, 0
  br i1 %.not2.i.i.i42, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43: ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1785, !noalias !1786, !nonnull !11, !noundef !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !1785, !noalias !1786, !noundef !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !1787, !noalias !1788, !nonnull !11, !noundef !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !1787, !noalias !1788, !noundef !11
  %i.ba = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef %i.av, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ax, i64 noundef %i.az), !noalias !1789
  %i.bb = icmp eq i8 %i.ba, -1
  br i1 %i.bb, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread: ; preds = %bb.o, %.lr.ph, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43
  %i.bc = add nuw i64 %.sroa.01.0.i.i80, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph

.lr.ph85:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55
  %.sroa.01.1.i.i84 = phi i64 [ %i.by, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55 ], [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.01.1.i.i84 ; 3 uses
  %i.be = add nsw i64 %.sroa.01.1.i.i84, -1       ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.n
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.be ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1792), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1793), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794), !noalias !1770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1795), !noalias !1770
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bi = load i16, ptr %i.bh, align 8, !alias.scope !1796, !noalias !1797, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bk = load i16, ptr %i.bj, align 8, !alias.scope !1798, !noalias !1799, !noundef !11 ; 2 uses
  %i.bl = and i16 %i.bi, 32                       ; 2 uses
  %i.bm = and i16 %i.bl, %i.bk
  %.not.i.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.p, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i

bb.p:                                             ; preds = %.lr.ph85
  %.not1.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not1.i.i.i, label %bb.q, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55

bb.q:                                             ; preds = %bb.p
  %i.bn = and i16 %i.bk, 32
  %.not2.i.i.i = icmp eq i16 %i.bn, 0
  br i1 %.not2.i.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit: ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1796, !noalias !1797, !nonnull !11, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !1796, !noalias !1797, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !1798, !noalias !1799, !nonnull !11, !noundef !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !1798, !noalias !1799, !noundef !11
  %i.bw = tail call noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bp, i64 noundef %i.br, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bt, i64 noundef %i.bv), !noalias !1800
  %i.bx = icmp eq i8 %i.bw, -1
  br i1 %i.bx, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55: ; preds = %bb.p, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit
  %i.by = add nuw i64 %.sroa.01.1.i.i84, 1        ; 2 uses
  %exitcond114.not = icmp eq i64 %i.by, %i.n
  br i1 %exitcond114.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i, label %.lr.ph85

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43, %bb.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit, %.lr.ph85, %bb.q, %.preheader, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader
  %.sroa.3.0.i.i = phi i1 [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55 ], [ false, %.preheader ], [ true, %bb.q ], [ true, %.lr.ph85 ], [ true, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit ], [ false, %bb.n ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43 ], [ false, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread ]
  %.sroa.0.0.i.i = phi i64 [ 2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit48.preheader ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread55 ], [ 2, %.preheader ], [ %.sroa.01.1.i.i84, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit ], [ %.sroa.01.1.i.i84, %.lr.ph85 ], [ %.sroa.01.1.i.i84, %bb.q ], [ %.sroa.01.0.i.i80, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43 ], [ %.sroa.01.0.i.i80, %bb.n ], [ %i.n, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit43.thread ] ; 7 uses
  %i.bz = icmp ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.bz)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.r

bb.r:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNvB14_27natural_compare_completionsE0EB16_.exit.i
  br i1 %.sroa.3.0.i.i, label %bb.u, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit

bb.s:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 %.sroa.01.0)
  %i.ca = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit

bb.t:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1732
  %i.cb = shl nuw nsw i64 %..i37, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %bb.j, %bb.u, %bb.r
  %.sroa.0.0.i.i6164 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i.i, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ]
  %i.cd = shl nuw nsw i64 %.sroa.0.0.i.i6164, 1
  %i.ce = or disjoint i64 %i.cd, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit

bb.u:                                             ; preds = %bb.r
  %i.cf = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.0.i.i
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.cl, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ch = xor i64 %.sroa.0.017.i.i, -1
  %i.ci = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.cj = getelementptr [56 x i8], ptr %i.cg, i64 %i.ch
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.cj, i64 noundef 7)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i unwind label %bb.v, !noalias !1770

bb.v:                                             ; preds = %.lr.ph.i.i36
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1770
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish8complete10CompletionEB14_.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.cl = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cl, %i.cf
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNvB15_27natural_compare_completionsE0EB17_.exit: ; preds = %bb.s, %bb.t, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ce, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7reverseBy_.exit ], [ %i.cc, %bb.t ], [ %i.ca, %bb.s ] ; 2 uses
  %i.cm = lshr i64 %.sroa.023.0, 1
  %i.cn = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.co = sub nsw i64 %factor, %i.cm
  %i.cp = add nuw nsw i64 %i.cn, %factor
  %i.cq = mul i64 %i.co, %.sroa.0.0
  %i.cr = mul i64 %i.cp, %.sroa.0.0
  %i.cs = xor i64 %i.cr, %i.cq
  %i.ct = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 false)
  %i.cu = trunc nuw nsw i64 %i.ct to i8
  br label %bb.g

bb.w:                                             ; preds = %.lr.ph93, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit
  %.sroa.02.192 = phi i64 [ %.sroa.02.0, %.lr.ph93 ], [ %i.cv, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit ] ; 2 uses
  %.sroa.023.191 = phi i64 [ %.sroa.023.0, %.lr.ph93 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit ] ; 4 uses
  %i.cv = add i64 %.sroa.02.192, -1               ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.cx, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit, %bb.w, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.191, %bb.w ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.192, %bb.w ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cz, align 1
  br i1 %i.k, label %bb.al, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cv
  %i.db = load i64, ptr %i.da, align 8, !noundef !11 ; 3 uses
  %i.dc = lshr i64 %i.db, 1                       ; 8 uses
  %i.dd = lshr i64 %.sroa.023.191, 1              ; 6 uses
  %i.de = add nuw i64 %i.dc, %i.dd                ; 4 uses
  %i.df = sub i64 %.sroa.09.0, %i.de
  %i.dg = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.df ; 6 uses
  %i.dh = icmp samesign ugt i64 %i.de, %3
  %i.di = trunc i64 %.sroa.023.191 to i1
  %i.dj = or i64 %i.db, %.sroa.023.191
  %i.dk = trunc i64 %i.dj to i1
  %or.cond3.i = or i1 %i.dh, %i.dk
  br i1 %or.cond3.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = trunc i64 %i.db to i1
  br i1 %i.dl, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.dm = shl nuw nsw i64 %i.de, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit

bb.aa:                                            ; preds = %bb.ab, %bb.y
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.dn = or i64 %i.dc, 1
  %i.do = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dn, i1 true)
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dg, i64 noundef range(i64 0, 164703072086692426) %i.dc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.dc
  %i.dt = or i64 %i.dd, 1
  %i.du = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %i.ds, i64 noundef range(i64 0, 164703072086692426) %i.dd, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1802)
  %i.dy = icmp eq i64 %i.dc, 0
  %i.dz = icmp eq i64 %i.dd, 0
  %or.cond.i = or i1 %i.dz, %i.dy
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 range(i64 0, -9223372036854775808) %i.dc) ; 2 uses
  %i.ea = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ea, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw [56 x i8], ptr %i.dg, i64 %i.dc ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.dc, %i.dd  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.eb, ptr %i.dg
  %i.ec = mul nuw nsw i64 %..i.i, 56              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ec, i1 false), !alias.scope !1803
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.ec ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i
  %.sroa.13.0.i = phi ptr [ %i.fb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.eb, %.critedge.i ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ %i.fd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.ed, %.critedge.i ] ; 5 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.eg, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.m, %.critedge.i ]
  %i.ee = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -56 ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -56 ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1809)
  %i.eh = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8
  %i.ei = load i16, ptr %i.eh, align 8, !alias.scope !1810, !noalias !1811, !noundef !11
  %i.ej = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -8
  %i.ek = load i16, ptr %i.ej, align 8, !alias.scope !1812, !noalias !1813, !noundef !11 ; 2 uses
  %i.el = and i16 %i.ei, 32                       ; 2 uses
  %i.em = and i16 %i.el, %i.ek
  %.not.i.i.i.i.i = icmp eq i16 %i.em, 0
  br i1 %.not.i.i.i.i.i, label %bb.af, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

bb.af:                                            ; preds = %.preheader.i
  %.not1.i.i.i.i.i = icmp eq i16 %i.el, 0
  br i1 %.not1.i.i.i.i.i, label %bb.ag, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

bb.ag:                                            ; preds = %bb.af
  %i.en = and i16 %i.ek, 32
  %.not2.i.i.i.i.i = icmp eq i16 %i.en, 0
  br i1 %.not2.i.i.i.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i: ; preds = %bb.ag
  %i.eo = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -48
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !1810, !noalias !1811, !nonnull !11, !noundef !11
  %i.eq = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -40
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !1810, !noalias !1811, !noundef !11
  %i.es = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -48
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !1812, !noalias !1813, !nonnull !11, !noundef !11
  %i.eu = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -40
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !1812, !noalias !1813, !noundef !11
  %i.ew = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ep, i64 noundef %i.er, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1803

.noexc.i:                                         ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i
  %i.ex = icmp eq i8 %i.ew, -1                    ; 2 uses
  %spec.select6.i.i = select i1 %i.ex, ptr %i.ee, ptr %i.ef
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i

end_hunk_5
begin_hunk_6_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNvBY_27natural_compare_completionsE0EB10_:bb.a
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !1821, !noalias !1822, !nonnull !11, !noundef !11
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1821, !noalias !1822, !noundef !11
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !1823, !noalias !1824, !nonnull !11, !noundef !11
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !1823, !noalias !1824, !noundef !11
  %i.fv = invoke noundef i8 @_RNvCs3pTQYeTDvAj_9fish_util10wcsfilecmp(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fo, i64 noundef %i.fq, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.fs, i64 noundef %i.fu)
          to label %.noexc25.i unwind label %.loopexit.split-lp.i, !noalias !1803

.noexc25.i:                                       ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i
  %i.fw = icmp eq i8 %i.fv, -1
  br i1 %i.fw, label %bb.aj, label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

bb.aj:                                            ; preds = %.noexc25.i
  br label %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i

_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i: ; preds = %bb.aj, %.noexc25.i, %bb.ai, %bb.ah, %.lr.ph.i.i
  %i.fx = phi i64 [ 0, %bb.ah ], [ 1, %.noexc25.i ], [ 0, %bb.aj ], [ 1, %.lr.ph.i.i ], [ 1, %bb.ai ]
  %.sroa.0.0.i.i.i2.i20.i = phi i64 [ 1, %bb.ah ], [ 0, %.noexc25.i ], [ 1, %bb.aj ], [ 0, %.lr.ph.i.i ], [ 0, %bb.ai ]
  %i.fy = phi ptr [ %.sroa.0.07.i.i, %bb.ah ], [ %.sroa.0.0.i34, %.noexc25.i ], [ %.sroa.0.07.i.i, %bb.aj ], [ %.sroa.0.0.i34, %.lr.ph.i.i ], [ %.sroa.0.0.i34, %bb.ai ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(56) %i.fy, i64 56, i1 false), !alias.scope !1803, !noalias !1825
  %i.fz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.i34, i64 %i.fx ; 3 uses
  %i.ga = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.07.i.i, i64 %.sroa.0.0.i.i.i2.i20.i ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 56 ; 2 uses
  %i.gc = icmp ne ptr %i.fz, %i.ed
  %i.gd = icmp ne ptr %i.ga, %i.m
  %or.cond.i21.i = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i: ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i
  %.sroa.13.4.i = phi ptr [ %i.fb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.gb, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ]
  %.sroa.7.2.i = phi ptr [ %i.fd, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.ed, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ]
  %.sroa.0.3.i = phi ptr [ %2, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i.i ], [ %i.fz, %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.thread3.i19.i ] ; 2 uses
  %i.ge = ptrtoint ptr %.sroa.7.2.i to i64
  %i.gf = ptrtoint ptr %.sroa.0.3.i to i64
  %i.gg = sub nuw i64 %i.ge, %i.gf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.gg, i1 false), !alias.scope !1803, !noalias !1826
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit

.loopexit.i:                                      ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp.i:                             ; preds = %_RNCINvMNtCs1xwejQucwHj_5alloc5sliceSNtNtCs8frGy5WneL6_4fish8complete10Completion7sort_byNvBA_27natural_compare_completionsE0BC_.exit.i24.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.ed, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.gh = ptrtoint ptr %.sroa.7.1.i to i64
  %i.gi = ptrtoint ptr %.sroa.0.2.i to i64
  %i.gj = sub nuw i64 %i.gh, %i.gi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.gj, i1 false), !alias.scope !1803, !noalias !1827
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit: ; preds = %bb.ad, %bb.ae, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCs8frGy5WneL6_4fish8complete10CompletionE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNvB1c_27natural_compare_completionsE0EB1e_.exit.i
  %i.gk = shl nuw nsw i64 %i.de, 1
  %i.gl = or disjoint i64 %i.gk, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNvB18_27natural_compare_completionsE0EB1a_.exit: ; preds = %bb.z, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit
  %.sroa.0.0.i = phi i64 [ %i.gl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNvBZ_27natural_compare_completionsE0EB11_.exit ], [ %i.dm, %bb.z ] ; 2 uses
  %i.gm = icmp ugt i64 %i.cv, 1
  br i1 %i.gm, label %bb.w, label %._crit_edge

bb.al:                                            ; preds = %._crit_edge
  %i.gn = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.go = lshr i64 %.sroa.018.0, 1
  %i.gp = add nuw i64 %i.go, %.sroa.09.0
  br label %bb.f

bb.am:                                            ; preds = %._crit_edge
  %i.gq = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.gq, 0
  br i1 %.not30, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gr = or i64 %1, 1
  %i.gs = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.gr, i1 true)
  %i.gt = trunc nuw nsw i64 %i.gs to i32
  %i.gu = shl nuw nsw i32 %i.gt, 1
  %i.gv = xor i32 %i.gu, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCs8frGy5WneL6_4fish8complete10CompletionNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNvB17_27natural_compare_completionsE0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.gv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1733
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2F_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ed, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1849, !noalias !1850, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1851
  %i.v = icmp ne i8 %i.u, -1                      ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1851
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1849, !noalias !1850, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1849, !noalias !1850, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1851
  %i.ag = icmp eq i8 %i.af, -1
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1832
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2M_.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [24 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1850

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1850
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.av = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2N_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit ], [ %i.am, %bb.p ], [ %i.ak, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1854
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1853, !noalias !1855, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1853, !noalias !1855, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1852, !noalias !1856, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1852, !noalias !1856, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1854

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.cw = icmp eq i8 %i.cs, -1                    ; 3 uses
  %..i17.i = select i1 %i.cw, ptr %i.cv, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !1854, !noalias !1857
  %i.cx = xor i1 %i.cw, true
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.da ; 3 uses
  %i.dc = icmp eq ptr %i.cz, %i.bq
  %i.dd = icmp eq ptr %i.db, %2
  %or.cond.i.i = select i1 %i.dc, i1 true, i1 %i.dd
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc21.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.noexc21.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dm, %.noexc21.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.do, %.noexc21.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %i.de = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !1852, !noalias !1858, !nonnull !11, !noundef !11
  %i.df = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.df, align 8, !alias.scope !1852, !noalias !1858, !noundef !11
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val.i19.i = load ptr, ptr %i.dg, align 8, !alias.scope !1853, !noalias !1859, !nonnull !11, !noundef !11
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val7.i.i = load i64, ptr %i.dh, align 8, !alias.scope !1853, !noalias !1859, !noundef !11
  %i.di = invoke noundef range(i8 -1, 2) i8 @_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i19.i, i64 noundef %.val7.i.i)
          to label %.noexc21.i unwind label %.loopexit.split-lp.i, !noalias !1854

.noexc21.i:                                       ; preds = %.lr.ph.i.i
  %i.dj = icmp eq i8 %i.di, -1                    ; 3 uses
  %i.dk = xor i1 %i.dj, true
  %.sroa.05.0.i.i = select i1 %i.dj, ptr %.sroa.0.02.i.i, ptr %.sroa.0.0.i34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1854, !noalias !1860
  %i.dl = zext i1 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.dl ; 3 uses
  %i.dn = zext i1 %i.dj to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.dq = icmp ne ptr %i.dm, %i.cn
  %i.dr = icmp ne ptr %i.do, %i.m
  %or.cond.i20.i = select i1 %i.dq, i1 %i.dr, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i: ; preds = %.noexc21.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cz, %.noexc.i ], [ %i.dp, %.noexc21.i ]
  %.sroa.7.2.i = phi ptr [ %i.db, %.noexc.i ], [ %i.cn, %.noexc21.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dm, %.noexc21.i ] ; 2 uses
  %i.ds = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dt = ptrtoint ptr %.sroa.0.3.i to i64
  %i.du = sub nuw i64 %i.ds, %i.dt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.du, i1 false), !alias.scope !1854, !noalias !1861
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cn, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dv = ptrtoint ptr %.sroa.7.1.i to i64
  %i.dw = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dx = sub nuw i64 %i.dv, %i.dw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dx, i1 false), !alias.scope !1854, !noalias !1862
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB37_.exit.i
  %i.dy = shl nuw nsw i64 %i.bo, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2Q_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit
  %.sroa.0.0.i = phi i64 [ %i.dz, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2G_.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.ea = icmp ugt i64 %i.bf, 1
  br i1 %i.ea, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eb = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ec = lshr i64 %.sroa.018.0, 1
  %i.ed = add nuw i64 %i.ec, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ee = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ee, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ef = or i64 %1, 1
  %i.eg = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ef, i1 true)
  %i.eh = trunc nuw nsw i64 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 1
  %i.ej = xor i32 %i.ei, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvNtNtCs8frGy5WneL6_4fish8builtins6status6statuss1_0E0EB2P_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1833
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBW_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i118 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i123 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.021.0 = phi i8 [ %i.be, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph73, label %._crit_edge

.lr.ph73:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 32
  %.val14.i = load ptr, ptr %i.q, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 40
  %.val15.i = load i64, ptr %i.r, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 8
  %.val16.i = load ptr, ptr %i.s, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11
  %i.t = getelementptr i8, ptr %i.o, i64 16
  %.val17.i = load i64, ptr %i.t, align 8, !alias.scope !1884, !noalias !1885, !noundef !11
  %i.u = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val14.i, i64 noundef %.val15.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val16.i, i64 noundef %.val17.i), !noalias !1886
  %i.v = icmp sgt i8 %i.u, -1                     ; 2 uses
  %.not80 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.v, label %.preheader48, label %.preheader

.preheader48:                                     ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not80, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121, label %.lr.ph67

.lr.ph:                                           ; preds = %.preheader48, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader48 ]
  %.val12.i = phi ptr [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader48 ]
  %.sroa.01.0.i.i63 = phi i64 [ %i.ab, %bb.l ], [ 2, %.preheader48 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i.i63 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val10.i = load ptr, ptr %i.x, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val11.i = load i64, ptr %i.y, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 2 uses
  %i.z = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val10.i, i64 noundef %.val11.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val12.i, i64 noundef %.val13.i), !noalias !1886
  %i.aa = icmp slt i8 %i.z, 0
  br i1 %i.aa, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = add nuw i64 %.sroa.01.0.i.i63, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.lr.ph

.lr.ph67:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi ptr [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ]
  %.sroa.01.1.i.i66 = phi i64 [ %i.ah, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i.i66 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.ad, align 8, !alias.scope !1884, !noalias !1885, !nonnull !11, !noundef !11 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !1884, !noalias !1885, !noundef !11 ; 2 uses
  %i.af = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i, i64 noundef %.val7.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val8.i, i64 noundef %.val9.i), !noalias !1886
  %i.ag = icmp slt i8 %i.af, 0
  br i1 %i.ag, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i

bb.m:                                             ; preds = %.lr.ph67
  %i.ah = add nuw i64 %.sroa.01.1.i.i66, 1        ; 2 uses
  %exitcond93.not = icmp eq i64 %i.ah, %i.n
  br i1 %exitcond93.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.lr.ph67

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.m, %.lr.ph67, %bb.l, %.lr.ph
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.0.i.i63, %.lr.ph ], [ %i.n, %bb.l ], [ %.sroa.01.1.i.i66, %.lr.ph67 ], [ %i.n, %bb.m ] ; 5 uses
  %i.ai = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121: ; preds = %.preheader
  br i1 %.not5.i123, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread: ; preds = %.preheader48
  br i1 %.not5.i118, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i
  %i.aj = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp eq i64 %i.aj, 0
  %or.cond = or i1 %i.v, %.not.i.i
  br i1 %or.cond, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.preheader.i.i

bb.o:                                             ; preds = %bb.i
  %..i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 %.sroa.01.0)
  %i.ak = shl nuw nsw i64 %..i38, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

bb.p:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i37, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1867
  %i.al = shl nuw nsw i64 %..i37, 1
  %i.am = or disjoint i64 %i.al, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4346 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread ], [ %.sroa.0.0.i.i119126130, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ]
  %i.an = shl nuw nsw i64 %.sroa.0.0.i.i4346, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121
  %i.ap = phi i64 [ %i.aj, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121 ]
  %.sroa.0.0.i.i119126130 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i.thread121 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i.i119126130
  br label %.lr.ph.i.i36

.lr.ph.i.i36:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.av, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ar = xor i64 %.sroa.0.017.i.i, -1
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.at = getelementptr [24 x i8], ptr %i.aq, i64 %i.ar
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.q, !noalias !1885

bb.q:                                             ; preds = %.lr.ph.i.i36
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1885
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i: ; preds = %.lr.ph.i.i36
  %i.av = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i36

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB13_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ao, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32String7reverseCs8frGy5WneL6_4fish.exit ], [ %i.am, %bb.p ], [ %i.ak, %bb.o ] ; 2 uses
  %i.aw = lshr i64 %.sroa.023.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ay = sub nsw i64 %factor, %i.aw
  %i.az = add nuw nsw i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph73, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.02.172 = phi i64 [ %.sroa.02.0, %.lr.ph73 ], [ %i.bf, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.023.171 = phi i64 [ %.sroa.023.0, %.lr.ph73 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 4 uses
  %i.bf = add i64 %.sroa.02.172, -1               ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bh, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.171, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.172, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bj, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bf
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !11 ; 3 uses
  %i.bm = lshr i64 %i.bl, 1                       ; 8 uses
  %i.bn = lshr i64 %.sroa.023.171, 1              ; 6 uses
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 4 uses
  %i.bp = sub i64 %.sroa.09.0, %i.bo
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bp ; 6 uses
  %i.br = icmp samesign ugt i64 %i.bo, %3
  %i.bs = trunc i64 %.sroa.023.171 to i1
  %i.bt = or i64 %i.bl, %.sroa.023.171
  %i.bu = trunc i64 %i.bt to i1
  %or.cond3.i = or i1 %i.br, %i.bu
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bv = trunc i64 %i.bl to i1
  br i1 %i.bv, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bw = shl nuw nsw i64 %i.bo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bs, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bx = or i64 %i.bm, 1
  %i.by = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bx, i1 true)
  %i.bz = trunc nuw nsw i64 %i.by to i32
  %i.ca = shl nuw nsw i32 %i.bz, 1
  %i.cb = xor i32 %i.ca, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.bq, i64 noundef range(i64 0, 384307168202282326) %i.bm, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm
  %i.cd = or i64 %i.bn, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 384307168202282326) %i.bn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1888)
  %i.ci = icmp eq i64 %i.bm, 0
  %i.cj = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %i.cj, %i.ci
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 range(i64 0, -9223372036854775808) %i.bm) ; 2 uses
  %i.ck = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ck, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bm ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bm, %i.bn  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cl, ptr %i.bq
  %i.cm = mul nuw nsw i64 %..i.i, 24              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cm, i1 false), !alias.scope !1889
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %.sroa.7.0.i = phi ptr [ %i.da, %.noexc.i ], [ %i.cn, %.critedge.i ] ; 4 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.ct, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.co = getelementptr i8, ptr %.sroa.7.0.i, i64 -16
  %.val.i.i = load ptr, ptr %i.co, align 8, !alias.scope !1888, !noalias !1890, !nonnull !11, !noundef !11
  %i.cp = getelementptr i8, ptr %.sroa.7.0.i, i64 -8
  %.val12.i.i = load i64, ptr %i.cp, align 8, !alias.scope !1888, !noalias !1890, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.13.0.i, i64 -16
  %.val13.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !1887, !noalias !1891, !nonnull !11, !noundef !11
  %i.cr = getelementptr i8, ptr %.sroa.13.0.i, i64 -8
  %.val14.i.i = load i64, ptr %i.cr, align 8, !alias.scope !1887, !noalias !1891, !noundef !11
  %i.cs = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i, i64 noundef %.val12.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val13.i.i, i64 noundef %.val14.i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !1889 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.0.i.i35, i64 -24 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -24 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -24 ; 2 uses
  %i.cw = icmp sgt i8 %i.cs, -1                   ; 2 uses
  %..i17.i = select i1 %i.cw, ptr %i.cu, ptr %i.cv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %..i17.i, i64 24, i1 false), !alias.scope !1889, !noalias !1892
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.cx ; 3 uses
  %.lobit.i.i = lshr i8 %i.cs, 7
  %i.cz = zext nneg i8 %.lobit.i.i to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cz ; 3 uses
  %i.db = icmp eq ptr %i.cy, %i.bq
  %i.dc = icmp eq ptr %i.da, %2
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.dn, %.noexc22.i ], [ %i.bq, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dk, %.noexc22.i ], [ %2, %.critedge.i ] ; 5 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dm, %.noexc22.i ], [ %i.cl, %.critedge.i ] ; 4 uses
  %i.dd = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !1887, !noalias !1893, !nonnull !11, !noundef !11
  %i.de = getelementptr i8, ptr %.sroa.0.02.i.i, i64 16
  %.sroa.0.0.val6.i.i = load i64, ptr %i.de, align 8, !alias.scope !1887, !noalias !1893, !noundef !11
  %i.df = getelementptr i8, ptr %.sroa.0.0.i34, i64 8
  %.val.i19.i = load ptr, ptr %i.df, align 8, !alias.scope !1888, !noalias !1894, !nonnull !11, !noundef !11
  %i.dg = getelementptr i8, ptr %.sroa.0.0.i34, i64 16
  %.val7.i.i = load i64, ptr %i.dg, align 8, !alias.scope !1888, !noalias !1894, !noundef !11
  %i.dh = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0.val.i.i, i64 noundef %.sroa.0.0.val6.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i19.i, i64 noundef %.val7.i.i)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !1889 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.di = icmp sgt i8 %i.dh, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.di, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.0.i.i, i64 24, i1 false), !alias.scope !1889, !noalias !1895
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.i34, i64 %i.dj ; 3 uses
  %.lobit.i20.i = lshr i8 %i.dh, 7
  %i.dl = zext nneg i8 %.lobit.i20.i to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 24 ; 2 uses
  %i.do = icmp ne ptr %i.dk, %i.cn
  %i.dp = icmp ne ptr %i.dm, %i.m
  %or.cond.i21.i = select i1 %i.do, i1 %i.dp, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.cy, %.noexc.i ], [ %i.dn, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.da, %.noexc.i ], [ %i.cn, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dk, %.noexc22.i ] ; 2 uses
  %i.dq = ptrtoint ptr %.sroa.7.2.i to i64
  %i.dr = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ds = sub nuw i64 %i.dq, %i.dr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ds, i1 false), !alias.scope !1889, !noalias !1896
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.cn, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.dt = ptrtoint ptr %.sroa.7.1.i to i64
  %i.du = ptrtoint ptr %.sroa.0.2.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr align 8 %.sroa.0.2.i, i64 %i.dv, i1 false), !alias.scope !1889, !noalias !1897
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit.i
  %i.dw = shl nuw nsw i64 %i.bo, 1
  %i.dx = or disjoint i64 %i.dw, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB16_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i = phi i64 [ %i.dx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYBX_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish.exit ], [ %i.bw, %bb.u ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bf, 1
  br i1 %i.dy, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.dz = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ec, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ed = or i64 %1, 1
  %i.ee = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNvYB15_NtNtBa_3cmp10PartialOrd2ltECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #28, !inline_history !1868
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BY_BW_20last_added_timestampE0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.em, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bk, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 136
  %.val14.i = load i64, ptr %i.q, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 4 uses
  %i.r = getelementptr i8, ptr %i.o, i64 144
  %.val15.i = load i32, ptr %i.r, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.s = getelementptr i8, ptr %i.o, i64 48
  %.val16.i = load i64, ptr %i.s, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 56
  %.val17.i = load i32, ptr %i.t, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11
  %i.u = icmp eq i64 %.val14.i, %.val16.i
  %i.v = icmp samesign ult i32 %.val15.i, %.val17.i
  %i.w = icmp slt i64 %.val14.i, %.val16.i
  %i.x = select i1 %i.u, i1 %i.v, i1 %i.w         ; 2 uses
  %.not69 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader47

.preheader47:                                     ; preds = %bb.k
  br i1 %.not69, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not69, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100, label %.lr.ph56

.lr.ph:                                           ; preds = %.preheader47, %bb.l
  %.val13.i = phi i32 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader47 ]
  %.val12.i = phi i64 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader47 ] ; 2 uses
  %.sroa.01.0.i.i52 = phi i64 [ %i.af, %bb.l ], [ 2, %.preheader47 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.0.i.i52 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 48
  %.val10.i = load i64, ptr %i.z, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 56
  %.val11.i = load i32, ptr %i.aa, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.ab = icmp eq i64 %.val10.i, %.val12.i
  %i.ac = icmp samesign ult i32 %.val11.i, %.val13.i
  %i.ad = icmp slt i64 %.val10.i, %.val12.i
  %i.ae = select i1 %i.ab, i1 %i.ac, i1 %i.ad
  br i1 %i.ae, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.af = add nuw i64 %.sroa.01.0.i.i52, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %.lr.ph

.lr.ph56:                                         ; preds = %.preheader, %bb.m
  %.val9.i = phi i32 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader ]
  %.val8.i = phi i64 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i55 = phi i64 [ %i.an, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.01.1.i.i55 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  %.val.i = load i64, ptr %i.ah, align 8, !alias.scope !1915, !noalias !1916, !noundef !11 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 56
  %.val7.i = load i32, ptr %i.ai, align 8, !range !23, !alias.scope !1915, !noalias !1916, !noundef !11 ; 2 uses
  %i.aj = icmp eq i64 %.val.i, %.val8.i
  %i.ak = icmp samesign ult i32 %.val7.i, %.val9.i
  %i.al = icmp slt i64 %.val.i, %.val8.i
  %i.am = select i1 %i.aj, i1 %i.ak, i1 %i.al
  br i1 %i.am, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph56
  %i.an = add nuw i64 %.sroa.01.1.i.i55, 1        ; 2 uses
  %exitcond76.not = icmp eq i64 %i.an, %i.n
  br i1 %exitcond76.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i, label %.lr.ph56

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph56
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i55, %.lr.ph56 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i52, %.lr.ph ], [ %i.n, %bb.l ] ; 5 uses
  %i.ao = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ao)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread: ; preds = %.preheader47
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i
  %i.ap = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  %or.cond.not = and i1 %.not.i.i, %i.x
  br i1 %or.cond.not, label %.lr.ph.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 %.sroa.01.0)
  %i.aq = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 104811045873349726) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1902
  %i.ar = shl nuw nsw i64 %..i36, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread, %bb.j, %bb.n
  %.sroa.0.0.i.i4245 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4245, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.n, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100
  %i.av = phi i64 [ %i.ap, %bb.n ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100 ]
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B14_B12_20last_added_timestampE0EB18_.exit.i.thread100 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109
  br label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.017.i.i, -1
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %.sroa.0.017.i.i
  %i.az = getelementptr [88 x i8], ptr %i.aw, i64 %i.ax
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i64 noundef 11)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i unwind label %bb.q, !noalias !1916

bb.q:                                             ; preds = %.lr.ph.i.i35
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #25, !noalias !1916
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemEB16_.exit.i.i: ; preds = %.lr.ph.i.i35
  %i.bb = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bb, %i.av
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit, label %.lr.ph.i.i35

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B15_B13_20last_added_timestampE0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItem7reverseBA_.exit ], [ %i.as, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %i.bc = lshr i64 %.sroa.023.0, 1
  %i.bd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.be = sub nsw i64 %factor, %i.bc
  %i.bf = add nuw nsw i64 %i.bd, %factor
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph62, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit
  %.sroa.02.161 = phi i64 [ %.sroa.02.0, %.lr.ph62 ], [ %i.bl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 2 uses
  %.sroa.023.160 = phi i64 [ %.sroa.023.0, %.lr.ph62 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 4 uses
  %i.bl = add i64 %.sroa.02.161, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.160, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.161, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !11 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 8 uses
  %i.bt = lshr i64 %.sroa.023.160, 1              ; 6 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 4 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %i.bv ; 6 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.160 to i1
  %i.bz = or i64 %i.br, %.sroa.023.160
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.by, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 104811045873349726) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds nuw [88 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 104811045873349726) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1918)
  %i.co = icmp eq i64 %i.bs, 0
  %i.cp = icmp eq i64 %i.bt, 0
  %or.cond.i = or i1 %i.cp, %i.co
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 range(i64 0, -9223372036854775808) %i.bs) ; 2 uses
  %i.cq = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cq, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw [88 x i8], ptr %i.bw, i64 %i.bs ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bs, %i.bt  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cr, ptr %i.bw
  %i.cs = mul nuw nsw i64 %..i.i, 88              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cs, i1 false), !alias.scope !1919
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 %i.cs ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.cu = phi ptr [ %i.dl, %.preheader.i ], [ %i.ct, %.critedge.i ] ; 3 uses
  %i.cv = phi ptr [ %i.dj, %.preheader.i ], [ %i.cr, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.cy, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -88 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -88 ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -88 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cu, i64 -40
  %.val.i.i = load i64, ptr %i.cz, align 8, !alias.scope !1918, !noalias !1920, !noundef !11 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 -32
  %.val12.i.i = load i32, ptr %i.da, align 8, !range !23, !alias.scope !1918, !noalias !1920, !noundef !11
  %i.db = getelementptr i8, ptr %i.cv, i64 -40
  %.val13.i.i = load i64, ptr %i.db, align 8, !alias.scope !1917, !noalias !1921, !noundef !11 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cv, i64 -32
  %.val14.i.i = load i32, ptr %i.dc, align 8, !range !23, !alias.scope !1917, !noalias !1921, !noundef !11
  %i.dd = icmp eq i64 %.val.i.i, %.val13.i.i
  %i.de = icmp samesign ult i32 %.val12.i.i, %.val14.i.i
  %i.df = icmp slt i64 %.val.i.i, %.val13.i.i
  %i.dg = select i1 %i.dd, i1 %i.de, i1 %i.df     ; 3 uses
  %..i17.i = select i1 %i.dg, ptr %i.cw, ptr %i.cx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.cy, ptr noundef nonnull align 8 dereferenceable(88) %..i17.i, i64 88, i1 false), !alias.scope !1919, !noalias !1922
  %i.dh = xor i1 %i.dg, true
  %i.di = zext i1 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [88 x i8], ptr %i.cw, i64 %i.di ; 3 uses
  %i.dk = zext i1 %i.dg to i64
  %i.dl = getelementptr inbounds nuw [88 x i8], ptr %i.cx, i64 %i.dk ; 3 uses
  %i.dm = icmp eq ptr %i.dj, %i.bw
  %i.dn = icmp eq ptr %i.dl, %2
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.do = phi ptr [ %i.ed, %.lr.ph.i.i ], [ %i.bw, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.cr, %.critedge.i ] ; 4 uses
  %i.dp = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 4 uses
  %i.dq = getelementptr i8, ptr %.sroa.0.02.i.i, i64 48
  %.sroa.0.0.val.i.i = load i64, ptr %i.dq, align 8, !alias.scope !1917, !noalias !1923, !noundef !11 ; 2 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 56
  %.sroa.0.0.val6.i.i = load i32, ptr %i.dr, align 8, !range !23, !alias.scope !1917, !noalias !1923, !noundef !11
  %i.ds = getelementptr i8, ptr %i.dp, i64 48
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !1918, !noalias !1924, !noundef !11 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dp, i64 56
  %.val7.i.i = load i32, ptr %i.dt, align 8, !range !23, !alias.scope !1918, !noalias !1924, !noundef !11
  %i.du = icmp eq i64 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.dv = icmp samesign ult i32 %.sroa.0.0.val6.i.i, %.val7.i.i
  %i.dw = icmp slt i64 %.sroa.0.0.val.i.i, %.val.i19.i
  %i.dx = select i1 %i.du, i1 %i.dv, i1 %i.dw     ; 3 uses
  %i.dy = xor i1 %i.dx, true
  %.sroa.05.0.i.i = select i1 %i.dx, ptr %.sroa.0.02.i.i, ptr %i.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.do, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.05.0.i.i, i64 88, i1 false), !alias.scope !1919, !noalias !1925
  %i.dz = zext i1 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [88 x i8], ptr %i.dp, i64 %i.dz ; 3 uses
  %i.eb = zext i1 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %.sroa.0.02.i.i, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.do, i64 88 ; 2 uses
  %i.ee = icmp ne ptr %i.ea, %i.ct
  %i.ef = icmp ne ptr %i.ec, %i.m
  %or.cond.i20.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dj, %.preheader.i ], [ %i.ed, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dl, %.preheader.i ], [ %i.ct, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ea, %.lr.ph.i.i ] ; 2 uses
  %i.eg = ptrtoint ptr %.sroa.7.0.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ei, i1 false), !alias.scope !1919, !noalias !1926
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B1c_B1a_20last_added_timestampE0EB1g_.exit.i
  %i.ej = shl nuw nsw i64 %i.bu, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B18_B16_20last_added_timestampE0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_BZ_BX_20last_added_timestampE0EB13_.exit ], [ %i.cc, %bb.u ] ; 2 uses
  %i.el = icmp ugt i64 %i.bl, 1
  br i1 %i.el, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.018.0, 1
  %i.eo = add nuw i64 %i.en, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.ep, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.eq = or i64 %1, 1
  %i.er = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCs8frGy5WneL6_4fish7history7history11HistoryItemNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNvMs2_B17_B15_20last_added_timestampE0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 104811045873349726) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 104811045873349726) %3, i32 noundef %i.eu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(88) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1903
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB10_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvB10_14complete_print0E0EB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i102 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.et, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.er, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit
  %.sroa.021.0 = phi i8 [ %i.br, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1949)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load ptr, ptr %i.r, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noalias !1951, !noundef !11 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val11.i, i64 24
  %i.v = load i64, ptr %i.u, align 8, !noalias !1951, !noundef !11
  %i.w = icmp ult i64 %i.t, %i.v                  ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %i.x = phi i64 [ %i.ab, %bb.l ], [ %i.t, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val8.i = load ptr, ptr %i.z, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.val8.i, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  br i1 %i.ac, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i51, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %i.ae = phi i64 [ %i.ai, %bb.m ], [ %i.t, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.ak, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val.i = load ptr, ptr %i.ag, align 8, !alias.scope !1949, !noalias !1950, !nonnull !11, !align !14, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1951, !noundef !11 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ae
  br i1 %i.aj, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.ak = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.ak, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i, label %.lr.ph55

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.al = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.al)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100: ; preds = %.preheader
  br i1 %.not5.i102, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i97, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.am = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1931
  %i.an = shl nuw nsw i64 %..i35, 1
  %i.ao = or disjoint i64 %i.an, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i ], [ %i.bi, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod128 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.ap = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.ar = getelementptr [16 x i8], ptr %i.ax, i64 %i.ap ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.as, ptr %i.ar, align 8, !alias.scope !1955, !noalias !1956
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i98105109, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957), !noalias !1950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1958), !noalias !1950
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100, %bb.q
  %i.aw = phi i64 [ %i.av, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100 ] ; 4 uses
  %.sroa.0.0.i.i98105109 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB16_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyjNCNvB16_14complete_print0E0EB18_.exit.i.thread100 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i98105109 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new ], [ %i.bi, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i ]
  %i.az = xor i64 %.sroa.0.016.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.ba, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.bc, ptr %i.bb, align 8, !alias.scope !1955, !noalias !1956
  %i.bd = xor i64 %.sroa.0.016.i.i, -2
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bg = getelementptr [16 x i8], ptr %i.ax, i64 %i.bd ; 2 uses
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !alias.scope !1952, !noalias !1953
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false), !alias.scope !1954, !noalias !1950
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !alias.scope !1955, !noalias !1956
  %i.bi = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE12split_at_mutBA_.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB17_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyjNCNvB17_14complete_print0E0EB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtBy_15CompletionEntryE7reverseBA_.exit ], [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.bj = lshr i64 %.sroa.023.0, 1
  %i.bk = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bl = sub nsw i64 %factor, %i.bj
  %i.bm = add nuw nsw i64 %i.bk, %factor
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = mul i64 %i.bm, %.sroa.0.0
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 false)
  %i.br = trunc nuw nsw i64 %i.bq to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bs, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 4 uses
  %i.bs = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bu, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bw, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bs
  %i.by = load i64, ptr %i.bx, align 8, !noundef !11 ; 3 uses
  %i.bz = lshr i64 %i.by, 1                       ; 8 uses
  %i.ca = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.cb = add nuw i64 %i.bz, %i.ca                ; 4 uses
  %i.cc = sub i64 %.sroa.09.0, %i.cb
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cc ; 6 uses
  %i.ce = icmp samesign ugt i64 %i.cb, %3
  %i.cf = trunc i64 %.sroa.023.159 to i1
  %i.cg = or i64 %i.by, %.sroa.023.159
  %i.ch = trunc i64 %i.cg to i1
  %or.cond3.i = or i1 %i.ce, %i.ch
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ci = trunc i64 %i.by to i1
  br i1 %i.ci, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.cb, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.cf, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.ck = or i64 %i.bz, 1
  %i.cl = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ck, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cm, 1
  %i.co = xor i32 %i.cn, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.cd, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz
  %i.cq = or i64 %i.ca, 1
  %i.cr = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 1
  %i.cu = xor i32 %i.ct, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.cp, i64 noundef range(i64 0, 576460752303423488) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  %i.cv = icmp eq i64 %i.bz, 0
  %i.cw = icmp eq i64 %i.ca, 0
  %or.cond.i = or i1 %i.cw, %i.cv
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 range(i64 0, -9223372036854775808) %i.bz) ; 2 uses
  %i.cx = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cx, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.bz ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bz, %i.ca  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cy, ptr %i.cd
  %i.cz = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cz, i1 false), !alias.scope !1961
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 %i.cz ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.db = phi ptr [ %i.dr, %.preheader.i ], [ %i.da, %.critedge.i ] ; 2 uses
  %i.dc = phi ptr [ %i.dp, %.preheader.i ], [ %i.cy, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.df, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
end_hunk_6
begin_hunk_7_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB10_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyjNCNvB10_14complete_print0E0EB12_:bb.a
  %.val12.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1959, !noalias !1963, !nonnull !11, !align !14, !noundef !11
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.dj = load i64, ptr %i.di, align 8, !noalias !1964, !noundef !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.val12.i.i, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !1964, !noundef !11
  %i.dm = icmp ult i64 %i.dj, %i.dl               ; 3 uses
  %..i17.i = select i1 %i.dm, ptr %i.dd, ptr %i.de
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !1961, !noalias !1965
  %i.dn = xor i1 %i.dm, true
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.do ; 3 uses
  %i.dq = zext i1 %i.dm to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cd
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.du = phi ptr [ %i.ei, %.lr.ph.i.i ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eh, %.lr.ph.i.i ], [ %i.cy, %.critedge.i ] ; 3 uses
  %i.dv = phi ptr [ %i.ef, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dw = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load ptr, ptr %i.dw, align 8, !alias.scope !1959, !noalias !1966, !nonnull !11, !align !14, !noundef !11
  %i.dx = getelementptr i8, ptr %i.dv, i64 8
  %.val.i19.i = load ptr, ptr %i.dx, align 8, !alias.scope !1960, !noalias !1967, !nonnull !11, !align !14, !noundef !11
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i.i, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !noalias !1968, !noundef !11
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i19.i, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !1968, !noundef !11
  %i.ec = icmp ult i64 %i.dz, %i.eb               ; 3 uses
  %i.ed = xor i1 %i.ec, true
  %.sroa.05.0.i.i = select i1 %i.ec, ptr %.sroa.0.02.i.i, ptr %i.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !1961, !noalias !1969
  %i.ee = zext i1 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ee ; 3 uses
  %i.eg = zext i1 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.ej = icmp ne ptr %i.ef, %i.da
  %i.ek = icmp ne ptr %i.eh, %i.m
  %or.cond.i20.i = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dp, %.preheader.i ], [ %i.ei, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dr, %.preheader.i ], [ %i.da, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.ef, %.lr.ph.i.i ] ; 2 uses
  %i.el = ptrtoint ptr %.sroa.7.0.i to i64
  %i.em = ptrtoint ptr %.sroa.0.1.i to i64
  %i.en = sub nuw i64 %i.el, %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.en, i1 false), !alias.scope !1961, !noalias !1970
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1e_15CompletionEntryEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyjNCNvB1e_14complete_print0E0EB1g_.exit.i
  %i.eo = shl nuw nsw i64 %i.cb, 1
  %i.ep = or disjoint i64 %i.eo, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB1a_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyjNCNvB1a_14complete_print0E0EB1c_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit
  %.sroa.0.0.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB11_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyjNCNvB11_14complete_print0E0EB13_.exit ], [ %i.cj, %bb.u ] ; 2 uses
  %i.eq = icmp ugt i64 %i.bs, 1
  br i1 %i.eq, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.er = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.es = lshr i64 %.sroa.018.0, 1
  %i.et = add nuw i64 %i.es, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.eu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.eu, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = or i64 %1, 1
  %i.ew = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = trunc nuw nsw i64 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = xor i32 %i.ey, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCs8frGy5WneL6_4fish8complete20CompletionEntryIndexRNtB19_15CompletionEntryENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyjNCNvB19_14complete_print0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ez, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1937
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvMNtB1W_20env_universal_commonNtB3s_12EnvUniversal19serialize_with_vars0E0EB1W_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i124 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ab, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ab ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eq, %bb.ab ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.eo, %bb.ab ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit
  %.sroa.021.0 = phi i8 [ %i.bt, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %.val10.i, i64 8
  %.val.i.i43 = load ptr, ptr %i.r, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %.val10.i, i64 16
  %.val1.i.i44 = load i64, ptr %i.s, align 8, !noalias !1999, !noundef !11
  %i.t = getelementptr i8, ptr %.val11.i, i64 8
  %.val2.i.i45 = load ptr, ptr %i.t, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.u = getelementptr i8, ptr %.val11.i, i64 16
  %.val3.i.i46 = load i64, ptr %i.u, align 8, !noalias !1999, !noundef !11
  %i.v = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i43, i64 noundef %.val1.i.i44, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i45, i64 noundef %.val3.i.i46), !noalias !1999
  %i.w = icmp slt i8 %i.v, 0                      ; 2 uses
  %.not88 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.w, label %.preheader, label %.preheader56

.preheader56:                                     ; preds = %bb.k
  br i1 %.not88, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not88, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122, label %.lr.ph75

.lr.ph:                                           ; preds = %.preheader56, %bb.l
  %.val9.i = phi ptr [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader56 ] ; 2 uses
  %.sroa.01.0.i.i71 = phi i64 [ %i.ae, %bb.l ], [ 2, %.preheader56 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i71
  %.val8.i = load ptr, ptr %i.x, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.y = getelementptr i8, ptr %.val8.i, i64 8
  %.val.i.i39 = load ptr, ptr %i.y, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.z = getelementptr i8, ptr %.val8.i, i64 16
  %.val1.i.i40 = load i64, ptr %i.z, align 8, !noalias !1999, !noundef !11
  %i.aa = getelementptr i8, ptr %.val9.i, i64 8
  %.val2.i.i41 = load ptr, ptr %i.aa, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %.val9.i, i64 16
  %.val3.i.i42 = load i64, ptr %i.ab, align 8, !noalias !1999, !noundef !11
  %i.ac = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i39, i64 noundef %.val1.i.i40, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i41, i64 noundef %.val3.i.i42), !noalias !1999
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.sroa.01.0.i.i71, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %.lr.ph

.lr.ph75:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi ptr [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i74 = phi i64 [ %i.am, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i74
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !1997, !noalias !1998, !nonnull !11, !align !14, !noundef !11 ; 3 uses
  %i.ag = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i38 = load ptr, ptr %i.ag, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.ah = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i = load i64, ptr %i.ah, align 8, !noalias !1999, !noundef !11
  %i.ai = getelementptr i8, ptr %.val7.i, i64 8
  %.val2.i.i = load ptr, ptr %i.ai, align 8, !noalias !1999, !nonnull !11, !noundef !11
  %i.aj = getelementptr i8, ptr %.val7.i, i64 16
  %.val3.i.i = load i64, ptr %i.aj, align 8, !noalias !1999, !noundef !11
  %i.ak = tail call noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i38, i64 noundef %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i, i64 noundef %.val3.i.i), !noalias !1999
  %i.al = icmp slt i8 %i.ak, 0
  br i1 %i.al, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i

bb.m:                                             ; preds = %.lr.ph75
  %i.am = add nuw i64 %.sroa.01.1.i.i74, 1        ; 2 uses
  %exitcond101.not = icmp eq i64 %i.am, %i.n
  br i1 %exitcond101.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i, label %.lr.ph75

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph75
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i74, %.lr.ph75 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i71, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.an = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.an)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122: ; preds = %.preheader
  br i1 %.not5.i124, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread: ; preds = %.preheader56
  br i1 %.not5.i119, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i
  br i1 %i.w, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit

bb.o:                                             ; preds = %bb.i
  %..i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ao = shl nuw nsw i64 %..i37, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit

bb.p:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i36, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1975
  %i.ap = shl nuw nsw i64 %..i36, 1
  %i.aq = or disjoint i64 %i.ap, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i ], [ %i.bk, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod168 = trunc i64 %i.ay to i1
  tail call void @llvm.assume(i1 %lcmp.mod168)
  %i.ar = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 2 uses
  %i.at = getelementptr [16 x i8], ptr %i.az, i64 %i.ar ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !alias.scope !2000, !noalias !2001
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !2002, !noalias !1998
  store <2 x ptr> %i.au, ptr %i.at, align 8, !alias.scope !2003, !noalias !2004
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i5154 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread ], [ %.sroa.0.0.i.i120127131, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i120127131, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader ]
  %i.av = shl nuw nsw i64 %.sroa.0.0.i.i5154, 1
  %i.aw = or disjoint i64 %i.av, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit

bb.q:                                             ; preds = %bb.n
  %i.ax = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2005), !noalias !1998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2006), !noalias !1998
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122, %bb.q
  %i.ay = phi i64 [ %i.ax, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122 ] ; 4 uses
  %.sroa.0.0.i.i120127131 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB12_11sort_by_keyB13_NCNvMNtB22_20env_universal_commonNtB3A_12EnvUniversal19serialize_with_vars0E0EB22_.exit.i.thread122 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i120127131 ; 3 uses
  %xtraiter = and i64 %i.ay, 1
  %i.ba = icmp eq i64 %i.ay, 1
  br i1 %i.ba, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ay, 9223372036854775806
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i.new ], [ %i.bk, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i ]
  %i.bb = xor i64 %.sroa.0.016.i.i, -1
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bb ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bc, align 8, !alias.scope !2000, !noalias !2001
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !alias.scope !2002, !noalias !1998
  store <2 x ptr> %i.be, ptr %i.bd, align 8, !alias.scope !2003, !noalias !2004
  %i.bf = xor i64 %.sroa.0.016.i.i, -2
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bi = getelementptr [16 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !alias.scope !2000, !noalias !2001
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !alias.scope !2002, !noalias !1998
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !alias.scope !2003, !noalias !2004
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE12split_at_mutB1u_.exit11.i.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB13_11sort_by_keyB14_NCNvMNtB23_20env_universal_commonNtB3B_12EnvUniversal19serialize_with_vars0E0EB23_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.aw, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarE7reverseB1u_.exit ], [ %i.aq, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.bl = lshr i64 %.sroa.023.0, 1
  %i.bm = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bn = sub nsw i64 %factor, %i.bl
  %i.bo = add nuw nsw i64 %i.bm, %factor
  %i.bp = mul i64 %i.bn, %.sroa.0.0
  %i.bq = mul i64 %i.bo, %.sroa.0.0
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 false)
  %i.bt = trunc nuw nsw i64 %i.bs to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph81, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit
  %.sroa.02.180 = phi i64 [ %.sroa.02.0, %.lr.ph81 ], [ %i.bu, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 2 uses
  %.sroa.023.179 = phi i64 [ %.sroa.023.0, %.lr.ph81 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 4 uses
  %i.bu = add i64 %.sroa.02.180, -1               ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bw, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.179, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.180, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.by, align 1
  br i1 %i.k, label %bb.ab, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bu
  %i.ca = load i64, ptr %i.bz, align 8, !noundef !11 ; 3 uses
  %i.cb = lshr i64 %i.ca, 1                       ; 8 uses
  %i.cc = lshr i64 %.sroa.023.179, 1              ; 6 uses
  %i.cd = add nuw i64 %i.cb, %i.cc                ; 4 uses
  %i.ce = sub i64 %.sroa.09.0, %i.cd
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ce ; 6 uses
  %i.cg = icmp samesign ugt i64 %i.cd, %3
  %i.ch = trunc i64 %.sroa.023.179 to i1
  %i.ci = or i64 %i.ca, %.sroa.023.179
  %i.cj = trunc i64 %i.ci to i1
  %or.cond3.i = or i1 %i.cg, %i.cj
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = trunc i64 %i.ca to i1
  br i1 %i.ck, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cl = shl nuw nsw i64 %i.cd, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ch, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cm = or i64 %i.cb, 1
  %i.cn = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef range(i64 0, 576460752303423488) %i.cb, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb
  %i.cs = or i64 %i.cc, 1
  %i.ct = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %i.cr, i64 noundef range(i64 0, 576460752303423488) %i.cc, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.cx = icmp eq i64 %i.cb, 0
  %i.cy = icmp eq i64 %i.cc, 0
  %or.cond.i = or i1 %i.cy, %i.cx
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 range(i64 0, -9223372036854775808) %i.cb) ; 2 uses
  %i.cz = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cz, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cb ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.cb, %i.cc  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.da, ptr %i.cf
  %i.db = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.db, i1 false), !alias.scope !2009
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db ; 4 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.da, %.critedge.i ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dc, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i35 = phi ptr [ %i.dk, %.noexc.i ], [ %i.m, %.critedge.i ]
  %i.dd = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load ptr, ptr %i.de, align 8, !alias.scope !2008, !noalias !2010, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !2007, !noalias !2011, !nonnull !11, !align !14, !noundef !11 ; 2 uses
end_hunk_7
begin_hunk_8_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_11sort_by_keyBX_NCNvMNtB1W_20env_universal_commonNtB3s_12EnvUniversal19serialize_with_vars0E0EB1W_:bb.a
  %i.dm = zext i1 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dm ; 3 uses
  %.lobit.i.i = lshr i8 %i.dj, 7
  %i.do = zext nneg i8 %.lobit.i.i to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = icmp eq ptr %i.dn, %i.cf
  %i.dr = icmp eq ptr %i.dp, %2
  %or.cond.i.i = select i1 %i.dq, i1 true, i1 %i.dr
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.noexc26.i
  %.sroa.13.1.i = phi ptr [ %i.ec, %.noexc26.i ], [ %i.cf, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i34 = phi ptr [ %i.dz, %.noexc26.i ], [ %2, %.critedge.i ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.eb, %.noexc26.i ], [ %i.da, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !2007, !noalias !2014, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %.val.i19.i = load ptr, ptr %.sroa.0.0.i34, align 8, !alias.scope !2008, !noalias !2015, !nonnull !11, !align !14, !noundef !11 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 8
  %.val.i.i.i20.i = load ptr, ptr %i.ds, align 8, !noalias !2016, !nonnull !11, !noundef !11
  %i.dt = getelementptr i8, ptr %.sroa.0.0.val.i.i, i64 16
  %.val1.i.i.i21.i = load i64, ptr %i.dt, align 8, !noalias !2016, !noundef !11
  %i.du = getelementptr i8, ptr %.val.i19.i, i64 8
  %.val2.i.i.i22.i = load ptr, ptr %i.du, align 8, !noalias !2016, !nonnull !11, !noundef !11
  %i.dv = getelementptr i8, ptr %.val.i19.i, i64 16
  %.val3.i.i.i23.i = load i64, ptr %i.dv, align 8, !noalias !2016, !noundef !11
  %i.dw = invoke noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCs3oUPovFnLWP_4core5slice3cmpmNtB5_8SliceOrd7compareCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val.i.i.i20.i, i64 noundef %.val1.i.i.i21.i, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.val2.i.i.i22.i, i64 noundef %.val3.i.i.i23.i)
          to label %.noexc26.i unwind label %.loopexit.split-lp.i, !noalias !2009 ; 2 uses

.noexc26.i:                                       ; preds = %.lr.ph.i.i
  %i.dx = icmp sgt i8 %i.dw, -1                   ; 2 uses
  %.sroa.05.0.i.i = select i1 %i.dx, ptr %.sroa.0.0.i34, ptr %.sroa.0.02.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !2009, !noalias !2017
  %i.dy = zext i1 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i34, i64 %i.dy ; 3 uses
  %.lobit.i24.i = lshr i8 %i.dw, 7
  %i.ea = zext nneg i8 %.lobit.i24.i to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.ed = icmp ne ptr %i.dz, %i.dc
  %i.ee = icmp ne ptr %i.eb, %i.m
  %or.cond.i25.i = select i1 %i.ed, i1 %i.ee, i1 false
  br i1 %or.cond.i25.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i

_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i: ; preds = %.noexc26.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dn, %.noexc.i ], [ %i.ec, %.noexc26.i ]
  %.sroa.7.2.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dc, %.noexc26.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dz, %.noexc26.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.sroa.7.2.i to i64
  %i.eg = ptrtoint ptr %.sroa.0.3.i to i64
  %i.eh = sub nuw i64 %i.ef, %i.eg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.eh, i1 false), !alias.scope !2009, !noalias !2018
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.dc, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i34, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.ei = ptrtoint ptr %.sroa.7.1.i to i64
  %i.ej = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ek = sub nuw i64 %i.ei, %i.ej
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ek, i1 false), !alias.scope !2009, !noalias !2019
  resume { ptr, i32 } %lpad.phi.i

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5mergeINtB3_10MergeStateTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEE10merge_downNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1a_11sort_by_keyB1b_NCNvMNtB2a_20env_universal_commonNtB3V_12EnvUniversal19serialize_with_vars0E0EB2a_.exit.i
  %i.el = shl nuw nsw i64 %i.cd, 1
  %i.em = or disjoint i64 %i.el, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB16_11sort_by_keyB17_NCNvMNtB26_20env_universal_commonNtB3E_12EnvUniversal19serialize_with_vars0E0EB26_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit
  %.sroa.0.0.i = phi i64 [ %i.em, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSBX_11sort_by_keyBY_NCNvMNtB1X_20env_universal_commonNtB3t_12EnvUniversal19serialize_with_vars0E0EB1X_.exit ], [ %i.cl, %bb.u ] ; 2 uses
  %i.en = icmp ugt i64 %i.bu, 1
  br i1 %i.en, label %bb.r, label %._crit_edge

bb.ab:                                            ; preds = %._crit_edge
  %i.eo = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ep = lshr i64 %.sroa.018.0, 1
  %i.eq = add nuw i64 %i.ep, %.sroa.09.0
  br label %bb.f

bb.ac:                                            ; preds = %._crit_edge
  %i.er = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.er, 0
  br i1 %.not30, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = or i64 %1, 1
  %i.et = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.es, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 1
  %i.ew = xor i32 %i.ev, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_11sort_by_keyB16_NCNvMNtB25_20env_universal_commonNtB3D_12EnvUniversal19serialize_with_vars0E0EB25_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !1981
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %bb.ae
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2e_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i89 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i94 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.du, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ds, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 3 uses
  %.val11.i = load i64, ptr %i.o, align 8, !alias.scope !2044, !noalias !2045, !noundef !11
  %i.r = icmp slt i64 %.val11.i, %.val10.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %.val8.i = load i64, ptr %i.s, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 2 uses
  %i.t = icmp slt i64 %.val9.i, %.val8.i
  br i1 %i.t, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.u = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %.val.i = load i64, ptr %i.v, align 8, !alias.scope !2044, !noalias !2045, !noundef !11 ; 2 uses
  %i.w = icmp slt i64 %.val7.i, %.val.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.x = add nuw i64 %.sroa.01.1.i.i54, 1         ; 2 uses
  %exitcond75.not = icmp eq i64 %i.x, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i, label %.lr.ph55

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92: ; preds = %.preheader
  br i1 %.not5.i94, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i89, label %bb.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit

bb.n:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.z = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2024
  %i.aa = shl nuw nsw i64 %..i35, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i, %middle.block, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread ], [ %.sroa.0.0.i.i9097101, %middle.block ], [ %.sroa.0.0.i.i9097101, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i ]
  %i.ac = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit

bb.q:                                             ; preds = %bb.n
  %i.ae = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2046), !noalias !2045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2047), !noalias !2045
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92, %bb.q
  %i.af = phi i64 [ %i.ae, %bb.q ], [ 1, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92 ] ; 4 uses
  %.sroa.0.0.i.i9097101 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtB8_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2k_.exit.i.thread92 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9097101 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 4
  br i1 %min.iters.check, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i
  %n.vec = and i64 %i.af, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = xor i64 %index, -1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 3 uses
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !2048, !noalias !2049
  %wide.load114 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !2048, !noalias !2049
  %i.al = getelementptr i8, ptr %i.aj, i64 -8     ; 2 uses
  %i.am = getelementptr i8, ptr %i.aj, i64 -24    ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !2050, !noalias !2051
  %wide.load116 = load <2 x i64>, ptr %i.am, align 8, !alias.scope !2050, !noalias !2051
  %reverse = shufflevector <2 x i64> %wide.load115, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse117 = shufflevector <2 x i64> %wide.load116, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ai, align 8, !alias.scope !2048, !noalias !2049
  store <2 x i64> %reverse117, ptr %i.ak, align 8, !alias.scope !2048, !noalias !2049
  %reverse118 = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse119 = shufflevector <2 x i64> %wide.load114, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse118, ptr %i.al, align 8, !alias.scope !2050, !noalias !2051
  store <2 x i64> %reverse119, ptr %i.am, align 8, !alias.scope !2050, !noalias !2051
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !2030

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ag, i64 %i.ao ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !2048, !noalias !2049, !noundef !11
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !2050, !noalias !2051
  store i64 %i.as, ptr %i.ap, align 8, !alias.scope !2048, !noalias !2049
  store i64 %i.ar, ptr %i.aq, align 8, !alias.scope !2050, !noalias !2051
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.af
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSi12split_at_mutCs8frGy5WneL6_4fish.exit11.i.i, !llvm.loop !2031

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift10create_runiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2l_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RNvMNtCs3oUPovFnLWP_4core5sliceSi7reverseCs8frGy5WneL6_4fish.exit ], [ %i.ab, %bb.p ], [ %i.z, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw nsw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.bd, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 4 uses
  %i.bd = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !11
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !11 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 8 uses
  %i.bl = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 4 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn ; 6 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.159 to i1
  %i.br = or i64 %i.bj, %.sroa.023.159
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift13logical_mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2o_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.bq, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.bo, i64 noundef range(i64 0, 1152921504606846976) %i.bk, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2032
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2n_(ptr noalias nofree noundef nonnull align 8 %i.ca, i64 noundef range(i64 0, 1152921504606846976) %i.bl, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #28, !inline_history !2032
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.cg = icmp eq i64 %i.bk, 0
  %i.ch = icmp eq i64 %i.bl, 0
  %or.cond.i = or i1 %i.ch, %i.cg
  br i1 %or.cond.i, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 range(i64 0, -9223372036854775808) %i.bk) ; 2 uses
  %i.ci = icmp samesign ult i64 %3, %..i.i
  br i1 %i.ci, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5merge5mergeiNCINvMNtCs1xwejQucwHj_5alloc5sliceSi11sort_by_keyINtNtBa_3cmp7ReverseiENCNvNtNtCs8frGy5WneL6_4fish8builtins3set17erased_at_indexes0E0EB2f_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bk ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.bk, %i.bl  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cj, ptr %i.bo
  %i.ck = shl nuw nsw i64 %..i.i, 3               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.ck, i1 false), !alias.scope !2054
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 %i.ck ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
end_hunk_8
