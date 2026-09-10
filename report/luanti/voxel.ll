Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/voxel?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_ZN16VoxelManipulator8copyFromEP7MapNodebRK9VoxelAreaN4core8vector3dIsEES7_RKS7_:bb.a
  %i.bx = add i32 %.03455, %i.bw
  br label %._crit_edge

.lr.ph.split.us.splitthread-pre-split:            ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us
  %.pr79 = load i16, ptr %6, align 2, !tbaa !45
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.splitthread-pre-split, %.lr.ph.split.us.split.preheader
  %i.by = phi i16 [ %.pr79, %.lr.ph.split.us.splitthread-pre-split ], [ %i.bq, %.lr.ph.split.us.split.preheader ] ; 2 uses
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph.split.us.splitthread-pre-split ], [ %i.bs, %.lr.ph.split.us.split.preheader ] ; 3 uses
  %.049.us = phi i16 [ %i.cr, %.lr.ph.split.us.splitthread-pre-split ], [ 0, %.lr.ph.split.us.split.preheader ]
  %.13645.us = phi i32 [ %i.cq, %.lr.ph.split.us.splitthread-pre-split ], [ %.03554, %.lr.ph.split.us.split.preheader ]
  %i.bz = icmp slt i16 %i.by, 1
  br i1 %i.bz, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us, label %.lr.ph.preheader.i.i.i.i.us

.lr.ph.preheader.i.i.i.i.us:                      ; preds = %.lr.ph.split.us.split
  %i.ca = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %indvars.iv69 ; 4 uses
  %i.cc = zext nneg i16 %i.by to i64
  %.idx.i.i.us = shl nuw nsw i64 %i.cc, 2         ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i.i.us
  %.pre.i.i.i.i.us = load i32, ptr %1, align 4    ; 2 uses
  %i.ce = add nsw i64 %.idx.i.i.us, -4            ; 2 uses
  %i.cf = lshr exact i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.us
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 3 uses
  %i.ch = shl i64 %n.vec, 2
  %i.ci = getelementptr i8, ptr %i.cb, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cb, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, label %.lr.ph.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.us.preheader:                      ; preds = %.lr.ph.preheader.i.i.i.i.us, %middle.block
  %.06.i.i.i.i.us.ph = phi ptr [ %i.cb, %.lr.ph.preheader.i.i.i.i.us ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.lr.ph.i.i.i.i.us.preheader, %.lr.ph.i.i.i.i.us
  %.06.i.i.i.i.us = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.us ], [ %.06.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.us.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i.us, ptr %.06.i.i.i.i.us, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.us, i64 4 ; 2 uses
  %.not.i.i.i.i.us = icmp eq ptr %i.cm, %i.cd
  br i1 %.not.i.i.i.i.us, label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !132

.lr.ph.i.i.i.i38.us:                              ; preds = %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us
  %i.cn = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %indvars.iv69
  %i.cp = zext nneg i16 %.pr.us to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.co, i8 0, i64 %i.cp, i1 false), !tbaa !25
  br label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us

_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us:           ; preds = %.lr.ph.i.i.i.i38.us, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us, %.lr.ph.split.us.split
  %i.cq = add nsw i32 %.13645.us, %i.b            ; 2 uses
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, %i.bj ; 2 uses
  %i.cr = add nuw nsw i16 %.049.us, 1             ; 2 uses
  %i.cs = load i16, ptr %i.e, align 2, !tbaa !44  ; 3 uses
  %i.ct = icmp slt i16 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph.split.us.splitthread-pre-split, label %._crit_edge.loopexit59, !llvm.loop !133

_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.us, %middle.block
  %.pr.us = load i16, ptr %6, align 2, !tbaa !45  ; 2 uses
  %i.cu = icmp slt i16 %.pr.us, 1
  br i1 %i.cu, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us, label %.lr.ph.i.i.i.i38.us

._crit_edge57:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit59:                           ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit.us
  %i.cv = trunc nsw i64 %indvars.iv.next70 to i32
  br label %._crit_edge

._crit_edge.loopexit60:                           ; preds = %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit
  %i.cw = trunc nsw i64 %indvars.iv.next68 to i32
  %i.cx = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit60, %._crit_edge.loopexit59, %.lr.ph.split.us.split.us, %.preheader
  %i.cy = phi i16 [ %i.bl, %.preheader ], [ %i.bl, %.lr.ph.split.us.split.us ], [ %i.cs, %._crit_edge.loopexit59 ], [ %i.dp, %._crit_edge.loopexit60 ]
  %i.cz = phi i16 [ %i.bm, %.preheader ], [ %i.bl, %.lr.ph.split.us.split.us ], [ %i.cs, %._crit_edge.loopexit59 ], [ %i.dp, %._crit_edge.loopexit60 ]
  %.136.lcssa = phi i32 [ %.03554, %.preheader ], [ %i.bv, %.lr.ph.split.us.split.us ], [ %i.cq, %._crit_edge.loopexit59 ], [ %i.cw, %._crit_edge.loopexit60 ]
  %.1.lcssa = phi i32 [ %.03455, %.preheader ], [ %i.bx, %.lr.ph.split.us.split.us ], [ %i.cv, %._crit_edge.loopexit59 ], [ %i.cx, %._crit_edge.loopexit60 ]
  %.reass = add i32 %.1.lcssa, %invariant.op
  %i.da = add nuw nsw i16 %.03356, 1              ; 2 uses
  %i.db = load i16, ptr %i.f, align 2, !tbaa !43
  %i.dc = icmp slt i16 %i.da, %i.db
  br i1 %i.dc, label %.preheader, label %._crit_edge57, !llvm.loop !134

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit
  %indvars.iv67 = phi i64 [ %i.bp, %.lr.ph.split.preheader ], [ %indvars.iv.next68, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bo, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ] ; 3 uses
  %.049 = phi i16 [ 0, %.lr.ph.split.preheader ], [ %i.do, %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit ]
  %i.dd = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv67 ; 2 uses
  %i.de = load i16, ptr %6, align 2, !tbaa !45    ; 3 uses
  %i.df = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dh = icmp slt i16 %i.de, 1
  br i1 %i.dh, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %.not.i = icmp eq i16 %i.de, 1
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !138

bb.c:                                             ; preds = %bb.b
  %i.di = zext nneg i16 %i.de to i64
  %.idx.i.i37 = shl nuw nsw i64 %i.di, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dg, ptr align 4 %i.dd, i64 %.idx.i.i37, i1 false)
  br label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.dj = load i32, ptr %i.dd, align 4
  store i32 %i.dj, ptr %i.dg, align 4
  br label %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit

_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit:     ; preds = %bb.d, %bb.c
  %.pr.pr = load i16, ptr %6, align 2, !tbaa !45  ; 2 uses
  %i.dk = icmp slt i16 %.pr.pr, 1
  br i1 %i.dk, label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit
  %i.dl = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv
  %i.dn = zext nneg i16 %.pr.pr to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dm, i8 0, i64 %i.dn, i1 false), !tbaa !25
  br label %_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit

_ZSt6fill_nIPhsiET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.split, %_ZSt6fill_nIP7MapNodesS0_ET_S2_T0_RKT1_.exit, %.lr.ph.i.i.i.i38
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, %i.bk ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bj ; 2 uses
  %i.do = add nuw nsw i16 %.049, 1                ; 2 uses
  %i.dp = load i16, ptr %i.e, align 2, !tbaa !44  ; 3 uses
  %i.dq = icmp slt i16 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph.split, label %._crit_edge.loopexit60, !llvm.loop !135
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK16VoxelManipulator6copyToEP7MapNodeRK9VoxelAreaN4core8vector3dIsEES7_RKS7_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2, i48 %3, i48 %4, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(6) %5) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.221.0.extract.shift = lshr i48 %3, 16
  %.sroa.221.0.extract.trunc = trunc i48 %.sroa.221.0.extract.shift to i16
  %.sroa.2.0.extract.shift = lshr i48 %4, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !43   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge39

.preheader.lr.ph:                                 ; preds = %bb.a
  %.sroa.0.0.extract.trunc = trunc i48 %4 to i16
  %.sroa.020.0.extract.trunc = trunc i48 %3 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = sext i16 %.sroa.020.0.extract.trunc to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.o = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i16, ptr %i.d, align 2, !tbaa !44   ; 3 uses
  %i.r = icmp sgt i16 %i.q, 0
  br i1 %i.r, label %.preheader.preheader, label %._crit_edge39

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = lshr i48 %4, 32
  %i.t = trunc nuw i48 %i.s to i16
  %i.u = lshr i48 %3, 32
  %i.v = trunc nuw i48 %i.u to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge37
  %i.w = phi i16 [ %i.b, %.preheader.preheader ], [ %i.ac, %._crit_edge37 ]
  %i.x = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ad, %._crit_edge37 ] ; 2 uses
  %i.y = phi i16 [ %i.q, %.preheader.preheader ], [ %i.ae, %._crit_edge37 ] ; 2 uses
  %indvars.iv46 = phi i16 [ %i.v, %.preheader.preheader ], [ %indvars.iv.next47, %._crit_edge37 ] ; 2 uses
  %indvars.iv = phi i16 [ %i.t, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge37 ] ; 2 uses
  %.02638 = phi i16 [ 0, %.preheader.preheader ], [ %i.af, %._crit_edge37 ]
  %i.z = sext i16 %indvars.iv to i32
  %i.aa = sext i16 %indvars.iv46 to i32
  %i.ab = icmp sgt i16 %i.y, 0
  br i1 %i.ab, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %.preheader
  %.pre = load i16, ptr %5, align 2, !tbaa !45    ; 2 uses
  br label %.lr.ph36.split

._crit_edge39:                                    ; preds = %._crit_edge37, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge37.loopexit:                           ; preds = %._crit_edge
  %.pre53 = load i16, ptr %i.a, align 2, !tbaa !43
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %.preheader
  %i.ac = phi i16 [ %.pre53, %._crit_edge37.loopexit ], [ %i.w, %.preheader ] ; 2 uses
  %i.ad = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.x, %.preheader ]
  %i.ae = phi i16 [ %i.bt, %._crit_edge37.loopexit ], [ %i.y, %.preheader ]
  %i.af = add nuw nsw i16 %.02638, 1              ; 2 uses
  %i.ag = icmp slt i16 %i.af, %i.ac
  %indvars.iv.next = add i16 %indvars.iv, 1
  %indvars.iv.next47 = add i16 %indvars.iv46, 1
  br i1 %i.ag, label %.preheader, label %._crit_edge39, !llvm.loop !139

.lr.ph36.split:                                   ; preds = %.lr.ph36, %._crit_edge
  %i.ah = phi i16 [ %i.x, %.lr.ph36 ], [ %i.bt, %._crit_edge ]
  %i.ai = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bu, %._crit_edge ] ; 2 uses
  %i.aj = phi i16 [ %.pre, %.lr.ph36 ], [ %i.bv, %._crit_edge ] ; 2 uses
  %indvars.iv48 = phi i16 [ %.sroa.221.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next49, %._crit_edge ] ; 2 uses
  %indvars.iv42 = phi i16 [ %.sroa.2.0.extract.trunc, %.lr.ph36 ], [ %indvars.iv.next43, %._crit_edge ] ; 2 uses
  %.02535 = phi i16 [ 0, %.lr.ph36 ], [ %i.bw, %._crit_edge ]
  %i.ak = icmp sgt i16 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph36.split
  %i.al = load i16, ptr %i.j, align 8, !tbaa !36
  %i.am = sext i16 %i.al to i32
  %i.an = load i16, ptr %i.n, align 2, !tbaa !35
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.l, align 4, !tbaa !34
  %i.aq = load i32, ptr %i.m, align 8, !tbaa !33
  %i.ar = load i16, ptr %i.k, align 4, !tbaa !32
  %i.as = sext i16 %i.ar to i32
  %i.at = load i16, ptr %2, align 4, !tbaa !36
  %i.au = sext i16 %i.at to i32
  %i.av = load i16, ptr %i.h, align 2, !tbaa !35
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.f, align 4, !tbaa !34
  %i.ay = load i32, ptr %i.g, align 4, !tbaa !33
  %i.az = load i16, ptr %i.e, align 4, !tbaa !32
  %i.ba = sext i16 %i.az to i32
  %i.bb = sext i16 %indvars.iv48 to i32
  %i.bc = sext i16 %indvars.iv42 to i32
  %i.bd = sub nsw i32 %i.z, %i.as
  %i.be = mul i32 %i.aq, %i.bd
  %i.bf = add i32 %i.be, %i.bc
  %i.bg = sub i32 %i.bf, %i.ao
  %i.bh = mul i32 %i.ap, %i.bg
  %i.bi = add i32 %i.bh, %i.o
  %i.bj = sub i32 %i.bi, %i.am
  %i.bk = sext i32 %i.bj to i64
  %i.bl = sub nsw i32 %i.aa, %i.ba
  %i.bm = mul i32 %i.ay, %i.bl
  %i.bn = add i32 %i.bm, %i.bb
  %i.bo = sub i32 %i.bn, %i.aw
  %i.bp = mul i32 %i.ax, %i.bo
  %i.bq = add i32 %i.bp, %i.i
  %i.br = sub i32 %i.bq, %i.au
  %i.bs = sext i32 %i.br to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre52 = load i16, ptr %i.d, align 2, !tbaa !44
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph36.split
  %i.bt = phi i16 [ %.pre52, %._crit_edge.loopexit ], [ %i.ah, %.lr.ph36.split ] ; 4 uses
  %i.bu = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.ai, %.lr.ph36.split ]
  %i.bv = phi i16 [ %i.ce, %._crit_edge.loopexit ], [ %i.aj, %.lr.ph36.split ]
  %i.bw = add nuw nsw i16 %.02535, 1              ; 2 uses
  %i.bx = icmp slt i16 %i.bw, %i.bt
  %indvars.iv.next43 = add i16 %indvars.iv42, 1
  %indvars.iv.next49 = add i16 %indvars.iv48, 1
  br i1 %i.bx, label %.lr.ph36.split, label %._crit_edge37.loopexit, !llvm.loop !140

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %i.by = phi i16 [ %i.ai, %.lr.ph.preheader ], [ %i.ce, %bb.c ]
  %indvars.iv50 = phi i64 [ %i.bs, %.lr.ph.preheader ], [ %indvars.iv.next51, %bb.c ] ; 2 uses
  %indvars.iv44 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %indvars.iv.next45, %bb.c ] ; 2 uses
  %.034 = phi i16 [ 0, %.lr.ph.preheader ], [ %i.cf, %bb.c ]
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %indvars.iv44 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !143
  %.not = icmp eq i16 %i.cb, 127
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv50
  %i.cd = load i32, ptr %i.ca, align 4
  store i32 %i.cd, ptr %i.cc, align 4
  %.pre.a = load i16, ptr %5, align 2, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.ce = phi i16 [ %.pre.a, %bb.b ], [ %i.by, %.lr.ph ] ; 4 uses
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  %i.cf = add nuw nsw i16 %.034, 1                ; 2 uses
  %i.cg = icmp slt i16 %i.cf, %i.ce
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !141
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN16VoxelManipulator8setFlagsERK9VoxelAreah(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1, i8 noundef zeroext %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 4
  %.not1.i = icmp eq i32 %i.d, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not2.i
  br i1 %or.cond, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 4, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !41   ; 2 uses
  %.not30 = icmp sgt i16 %i.h, %i.j
  br i1 %.not30, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.b
  %i.k = sext i16 %i.h to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i16, ptr %i.m, align 4, !tbaa !40  ; 2 uses
  %i.t = icmp sgt i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph33, %._crit_edge29
  %i.u = phi i16 [ %i.j, %.lr.ph33 ], [ %i.z, %._crit_edge29 ]
  %i.v = phi i16 [ %.pre, %.lr.ph33 ], [ %i.aa, %._crit_edge29 ] ; 2 uses
  %i.w = phi i16 [ %.pre, %.lr.ph33 ], [ %i.ab, %._crit_edge29 ] ; 2 uses
  %.02131 = phi i32 [ %i.k, %.lr.ph33 ], [ %i.ac, %._crit_edge29 ] ; 3 uses
  %i.x = load i16, ptr %i.l, align 2, !tbaa !35   ; 2 uses
  %.not2225 = icmp sgt i16 %i.x, %i.w
  br i1 %.not2225, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %bb.c
  %i.y = sext i16 %i.x to i32
  br label %.lr.ph28

._crit_edge29.loopexit:                           ; preds = %._crit_edge
  %.pre36 = load i16, ptr %i.i, align 2, !tbaa !41
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %bb.c
  %i.z = phi i16 [ %.pre36, %._crit_edge29.loopexit ], [ %i.u, %bb.c ] ; 2 uses
  %i.aa = phi i16 [ %i.bb, %._crit_edge29.loopexit ], [ %i.v, %bb.c ]
  %i.ab = phi i16 [ %i.bb, %._crit_edge29.loopexit ], [ %i.w, %bb.c ]
  %i.ac = add nsw i32 %.02131, 1
  %i.ad = sext i16 %i.z to i32
  %.not.not = icmp slt i32 %.02131, %i.ad
  br i1 %.not.not, label %bb.c, label %_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread, !llvm.loop !144

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %._crit_edge
  %i.ae = phi i16 [ %i.bb, %._crit_edge ], [ %i.v, %.lr.ph28.preheader ]
  %.02026 = phi i32 [ %i.bc, %._crit_edge ], [ %i.y, %.lr.ph28.preheader ] ; 3 uses
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph28
  %i.af = load i16, ptr %1, align 4, !tbaa !36
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = load i16, ptr %i.n, align 8, !tbaa !36
  %i.ai = sext i16 %i.ah to i32                   ; 2 uses
  %i.aj = sub nsw i32 %i.ag, %i.ai
  %i.ak = load i16, ptr %i.o, align 4, !tbaa !32
  %i.al = sext i16 %i.ak to i32
  %i.am = sub i32 %.02131, %i.al
  %i.an = load i32, ptr %i.q, align 8, !tbaa !33
  %i.ao = mul i32 %i.am, %i.an
  %i.ap = add i32 %i.ao, %.02026
  %i.aq = load i16, ptr %i.r, align 2, !tbaa !35
  %i.ar = sext i16 %i.aq to i32
  %i.as = sub i32 %i.ap, %i.ar
  %i.at = load i32, ptr %i.p, align 4, !tbaa !34
  %i.au = mul i32 %i.as, %i.at                    ; 2 uses
  %i.av = add nsw i32 %i.aj, %i.au
  %i.aw = add nsw i32 %i.av, %i.b
  %i.ax = add i32 %i.au, %i.ag
  %i.ay = sub i32 %i.ax, %i.ai
  %i.az = sext i32 %i.ay to i64
  %i.ba = sext i32 %i.aw to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre35 = load i16, ptr %i.m, align 4, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph28
  %i.bb = phi i16 [ %.pre35, %._crit_edge.loopexit ], [ %i.ae, %.lr.ph28 ] ; 4 uses
  %i.bc = add nsw i32 %.02026, 1
  %i.bd = sext i16 %i.bb to i32
  %.not22.not = icmp slt i32 %.02026, %i.bd
  br i1 %.not22.not, label %.lr.ph28, label %._crit_edge29.loopexit, !llvm.loop !145

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.az, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !25
  %i.bh = or i8 %i.bg, %2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bi = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !146

_ZNK9VoxelArea14hasEmptyExtentEv.exit.thread:     ; preds = %._crit_edge29, %bb.b, %bb.a
  ret void
}
end_hunk_0
begin_hunk_1_@_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smax.v2i16(<2 x i16>, <2 x i16>) #17

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN4core8vector3dIsEE", !12, i64 0, !12, i64 2, !12, i64 4}
!15 = !{!"_ZTSN4core8vector3dIiEE", !6, i64 0, !6, i64 4, !6, i64 8}
!16 = !{!"_ZTS9VoxelArea", !14, i64 0, !14, i64 6, !15, i64 12}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS7MapNode", !17, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = !{!"_ZTS16VoxelManipulator", !16, i64 8, !18, i64 32, !19, i64 40}
!21 = !{!20, !18, i64 32}
!22 = !{!20, !19, i64 40}
!23 = !{!15, !6, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!5, !5, i64 0}
!26 = !{!20, !12, i64 16}
!27 = !{!20, !12, i64 10}
!28 = !{!20, !12, i64 12}
!29 = !{!20, !12, i64 18}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!20, !12, i64 8}
!32 = !{!16, !12, i64 4}
!33 = !{!16, !6, i64 16}
!34 = !{!16, !6, i64 12}
!35 = !{!16, !12, i64 2}
!36 = !{!16, !12, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !24, i64 8, !5, i64 16}
!39 = !{!38, !24, i64 8}
!40 = !{!16, !12, i64 8}
!41 = !{!16, !12, i64 10}
!42 = !{!38, !19, i64 0}
!43 = !{!14, !12, i64 4}
!44 = !{!14, !12, i64 2}
!45 = !{!14, !12, i64 0}
!46 = !{!"llvm.loop.unswitch.partial.disable"}
!47 = !{!37, !19, i64 0}
!48 = !{ptr @_ZN16VoxelManipulatorD2Ev}
!49 = distinct !{null, null, null, null}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = !{!15, !6, i64 4}
!54 = !{!15, !6, i64 8}
!55 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!56 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!57 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !17, i64 0}
!58 = !{!"_ZTSNSt8ios_base6_WordsE", !17, i64 0, !24, i64 8}
!59 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !17, i64 0}
!60 = !{!"p1 _ZTSNSt6locale5_ImplE", !17, i64 0}
!61 = !{!"_ZTSSt6locale", !60, i64 0}
!62 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !55, i64 24, !56, i64 28, !56, i64 32, !57, i64 40, !58, i64 48, !5, i64 64, !6, i64 192, !59, i64 200, !61, i64 208}
!63 = !{!"p1 _ZTSSo", !17, i64 0}
!64 = !{!"bool", !5, i64 0}
!65 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !17, i64 0}
!66 = !{!"p1 _ZTSSt5ctypeIcE", !17, i64 0}
!67 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!68 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !17, i64 0}
!69 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !62, i64 0, !63, i64 216, !5, i64 224, !64, i64 225, !65, i64 232, !66, i64 240, !67, i64 248, !68, i64 256}
!70 = !{!69, !66, i64 240}
!71 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!72 = !{!"p1 _ZTS15__locale_struct", !17, i64 0}
!73 = !{!"p1 int", !17, i64 0}
!74 = !{!"p1 short", !17, i64 0}
!75 = !{!"_ZTSSt5ctypeIcE", !71, i64 0, !72, i64 16, !64, i64 24, !73, i64 32, !73, i64 40, !74, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!76 = !{!75, !5, i64 56}
!77 = !{!20, !12, i64 14}
!78 = !{!62, !24, i64 16}
!79 = !{!"p1 _ZTS15ContentFeatures", !17, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseI15ContentFeaturesSaIS0_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 8}
!82 = !{!80, !79, i64 0}
!83 = !{!"any p2 pointer", !17, i64 0}
!84 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !83, i64 0}
!85 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!86 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !85, i64 0}
!87 = !{!"float", !5, i64 0}
!88 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !87, i64 0, !24, i64 8}
!89 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !84, i64 0, !24, i64 8, !86, i64 16, !24, i64 24, !88, i64 32, !85, i64 48}
!90 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE", !89, i64 0}
!91 = !{!"_ZTS16ContentParamType", !5, i64 0}
!92 = !{!"_ZTS17ContentParamType2", !5, i64 0}
!93 = !{!"_ZTS12NodeDrawType", !5, i64 0}
!94 = !{!"_ZTS9AlphaMode", !5, i64 0}
!95 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!96 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !99, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!102 = !{!"_ZTSNSt12_Vector_baseItSaItEE12_Vector_implE", !101, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseItSaItEE", !102, i64 0}
!104 = !{!"_ZTSSt6vectorItSaItEE", !103, i64 0}
!105 = !{!"_ZTS16PointabilityType", !5, i64 0}
!106 = !{!"_ZTS10LiquidType", !5, i64 0}
!107 = !{!"_ZTS11NodeBoxType", !5, i64 0}
!108 = !{!"p1 _ZTSN4core8aabbox3dIfEE", !17, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!110 = !{!"_ZTSNSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE12_Vector_implE", !109, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN4core8aabbox3dIfEESaIS2_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorIN4core8aabbox3dIfEESaIS2_EE", !111, i64 0}
!113 = !{!"_ZTSN4core8vector3dIfEE", !87, i64 0, !87, i64 4, !87, i64 8}
!114 = !{!"_ZTSN4core8aabbox3dIfEE", !113, i64 0, !113, i64 12}
!115 = !{!"p1 _ZTS16NodeBoxConnected", !17, i64 0}
!116 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!117 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !116, i64 0}
!118 = !{!"_ZTSSt12__shared_ptrI16NodeBoxConnectedLN9__gnu_cxx12_Lock_policyE2EE", !115, i64 0, !117, i64 8}
!119 = !{!"_ZTSSt10shared_ptrI16NodeBoxConnectedE", !118, i64 0}
!120 = !{!"_ZTS7NodeBox", !107, i64 0, !112, i64 8, !114, i64 32, !114, i64 56, !114, i64 80, !119, i64 104}
!121 = !{!"_ZTS9SoundSpec", !38, i64 0, !87, i64 32, !87, i64 36, !87, i64 40, !87, i64 44, !64, i64 48, !64, i64 49}
!122 = !{!"_ZTS15ContentFeatures", !64, i64 0, !64, i64 1, !64, i64 2, !64, i64 3, !38, i64 8, !90, i64 40, !91, i64 96, !92, i64 97, !93, i64 98, !38, i64 104, !87, i64 136, !5, i64 144, !5, i64 528, !5, i64 912, !94, i64 1296, !95, i64 1300, !38, i64 1304, !5, i64 1336, !5, i64 1337, !100, i64 1344, !104, i64 1368, !95, i64 1392, !64, i64 1396, !5, i64 1397, !5, i64 1398, !64, i64 1399, !64, i64 1400, !5, i64 1401, !64, i64 1402, !64, i64 1403, !105, i64 1404, !64, i64 1405, !64, i64 1406, !64, i64 1407, !64, i64 1408, !6, i64 1412, !38, i64 1416, !5, i64 1448, !106, i64 1449, !64, i64 1450, !38, i64 1456, !12, i64 1488, !38, i64 1496, !12, i64 1528, !5, i64 1530, !64, i64 1531, !5, i64 1532, !5, i64 1533, !64, i64 1534, !120, i64 1536, !120, i64 1656, !120, i64 1776, !121, i64 1896, !121, i64 1952, !121, i64 2008, !64, i64 2064, !64, i64 2065}
!123 = !{!122, !106, i64 1449}
!124 = !{!122, !5, i64 1401}
!125 = !{!122, !64, i64 1399}
!126 = !{i8 0, i8 2}
!127 = !{}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !30}
!130 = !{!16, !12, i64 6}
!131 = distinct !{!131, !30, !136, !137}
!132 = distinct !{!132, !30, !137, !136}
!133 = distinct !{!133, !30, !46}
!134 = distinct !{!134, !30, !46}
!135 = distinct !{!135, !30}
!136 = !{!"llvm.loop.isvectorized", i32 1}
!137 = !{!"llvm.loop.unroll.runtime.disable"}
!138 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!139 = distinct !{!139, !30, !46}
!140 = distinct !{!140, !30}
!141 = distinct !{!141, !30}
!142 = !{!"_ZTS7MapNode", !12, i64 0, !5, i64 2, !5, i64 3}
!143 = !{!142, !12, i64 0}
!144 = distinct !{!144, !30}
!145 = distinct !{!145, !30}
!146 = distinct !{!146, !30}
!147 = distinct !{!147, !30}
!148 = distinct !{!148, !30}
!149 = distinct !{!149, !30}
!150 = distinct !{!150, !30}
!151 = distinct !{!151, !30}
!152 = !{!24, !24, i64 0}
!153 = !{ptr @_ZN13BaseExceptionD2Ev}
end_hunk_1
