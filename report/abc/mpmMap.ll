Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mpmMap?download=true
inline.NumInlined: 277
inline.NumDeleted: 100
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@Mpm_ObjAddChoiceCutsToStore:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 6 uses
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 134217727
  %i.cr = or disjoint i32 %i.cq, %i.cn            ; 2 uses
  store i32 %i.cr, ptr %i.co, align 4
  store i32 0, ptr %i.ch, align 4, !tbaa !66
  %i.cs = load i32, ptr %i.ar, align 4
  %i.ct = and i32 %i.cs, 33554431
  %i.cu = and i32 %i.cr, -33554432
  %i.cv = or disjoint i32 %i.ct, %i.cu            ; 2 uses
  store i32 %i.cv, ptr %i.co, align 4
  %i.cw = load i32, ptr %i.ar, align 4
  %i.cx = and i32 %i.cw, 67108864
  %i.cy = and i32 %i.cv, -67108865
  %i.cz = or disjoint i32 %i.cy, %i.cx            ; 2 uses
  store i32 %i.cz, ptr %i.co, align 4
  %i.da = load i32, ptr %i.ar, align 4
  %i.db = and i32 %i.da, 33554432
  %i.dc = and i32 %i.cz, -33554433
  %i.dd = or disjoint i32 %i.dc, %i.db
  store i32 %i.dd, ptr %i.co, align 4
  %i.de = load <2 x i32>, ptr %i.q, align 8, !tbaa !12
  %i.df = add nsw <2 x i32> %i.de, splat (i32 1)
  store <2 x i32> %i.df, ptr %i.q, align 8, !tbaa !12
  %i.dg = load ptr, ptr %i.p, align 8, !tbaa !39
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  %.not90.i = icmp eq i32 %i.di, 0
  br i1 %.not90.i, label %Mpm_ManMergeCuts.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.thread.i
  %i.dj = load i32, ptr %i.co, align 4            ; 2 uses
  %i.dk = icmp ugt i32 %i.dj, 268435455
  br i1 %i.dk, label %.lr.ph27.preheader.i.i, label %Mpm_ManMergeCuts.exit

.lr.ph27.preheader.i.i:                           ; preds = %bb.e
  %i.dl = lshr i32 %i.dj, 27                      ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1
  %wide.trip.count35.i.i = zext nneg i32 %i.dm to i64
  %wide.trip.count.i102.i = zext nneg i32 %i.dl to i64 ; 3 uses
  %i.dn = add nsw i64 %wide.trip.count.i102.i, -2
  br label %.lr.ph.preheader.i103.i

.lr.ph.preheader.i103.i:                          ; preds = %._crit_edge.i.i, %.lr.ph27.preheader.i.i
  %indvars.iv32.i.i = phi i64 [ 0, %.lr.ph27.preheader.i.i ], [ %indvars.iv.next33.i.i, %._crit_edge.i.i ] ; 5 uses
  %indvars.iv.i104.i = phi i64 [ 1, %.lr.ph27.preheader.i.i ], [ %indvars.iv.next.i107.i, %._crit_edge.i.i ] ; 3 uses
  %i.do = xor i64 %indvars.iv32.i.i, -1
  %i.dp = add nsw i64 %i.do, %wide.trip.count.i102.i
  %i.dq = sub i64 %i.dn, %indvars.iv32.i.i
  %i.dr = trunc nuw nsw i64 %indvars.iv32.i.i to i32 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv32.i.i ; 2 uses
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12 ; 3 uses
  %xtraiter40 = and i64 %i.dp, 3                  ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.lr.ph.i105.i.prol.loopexit, label %.lr.ph.i105.i.prol

.lr.ph.i105.i.prol:                               ; preds = %.lr.ph.preheader.i103.i, %.lr.ph.i105.i.prol
  %i.ds = phi i32 [ %i.dx, %.lr.ph.i105.i.prol ], [ %.pre.i.i, %.lr.ph.preheader.i103.i ] ; 2 uses
  %indvars.iv29.i.i.prol = phi i64 [ %indvars.iv.next30.i.i.prol, %.lr.ph.i105.i.prol ], [ %indvars.iv.i104.i, %.lr.ph.preheader.i103.i ] ; 3 uses
  %.024.i.i.prol = phi i32 [ %spec.select.i.i.prol, %.lr.ph.i105.i.prol ], [ %i.dr, %.lr.ph.preheader.i103.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i105.i.prol ], [ 0, %.lr.ph.preheader.i103.i ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv29.i.i.prol
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12 ; 2 uses
  %i.dv = icmp slt i32 %i.du, %i.ds
  %i.dw = trunc nuw nsw i64 %indvars.iv29.i.i.prol to i32
  %spec.select.i.i.prol = select i1 %i.dv, i32 %i.dw, i32 %.024.i.i.prol ; 3 uses
  %indvars.iv.next30.i.i.prol = add nuw nsw i64 %indvars.iv29.i.i.prol, 1 ; 2 uses
  %i.dx = tail call i32 @llvm.smin.i32(i32 %i.du, i32 %i.ds) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter40
  br i1 %prol.iter.cmp.not, label %.lr.ph.i105.i.prol.loopexit, label %.lr.ph.i105.i.prol, !llvm.loop !97

.lr.ph.i105.i.prol.loopexit:                      ; preds = %.lr.ph.i105.i.prol, %.lr.ph.preheader.i103.i
  %spec.select.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i103.i ], [ %spec.select.i.i.prol, %.lr.ph.i105.i.prol ]
  %.unr = phi i32 [ %.pre.i.i, %.lr.ph.preheader.i103.i ], [ %i.dx, %.lr.ph.i105.i.prol ]
  %indvars.iv29.i.i.unr = phi i64 [ %indvars.iv.i104.i, %.lr.ph.preheader.i103.i ], [ %indvars.iv.next30.i.i.prol, %.lr.ph.i105.i.prol ]
  %.024.i.i.unr = phi i32 [ %i.dr, %.lr.ph.preheader.i103.i ], [ %spec.select.i.i.prol, %.lr.ph.i105.i.prol ]
  %i.dy = icmp ult i64 %i.dq, 3
  br i1 %i.dy, label %._crit_edge.i.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %.lr.ph.i105.i.prol.loopexit, %.lr.ph.i105.i
  %i.dz = phi i32 [ %i.et, %.lr.ph.i105.i ], [ %.unr, %.lr.ph.i105.i.prol.loopexit ] ; 2 uses
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i.3, %.lr.ph.i105.i ], [ %indvars.iv29.i.i.unr, %.lr.ph.i105.i.prol.loopexit ] ; 6 uses
  %.024.i.i = phi i32 [ %spec.select.i.i.3, %.lr.ph.i105.i ], [ %.024.i.i.unr, %.lr.ph.i105.i.prol.loopexit ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv29.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, %i.dz
  %i.ed = trunc nuw nsw i64 %indvars.iv29.i.i to i32
  %spec.select.i.i = select i1 %i.ec, i32 %i.ed, i32 %.024.i.i
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.ee = tail call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.dz) ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next30.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12 ; 2 uses
  %i.eh = icmp slt i32 %i.eg, %i.ee
  %i.ei = trunc nuw nsw i64 %indvars.iv.next30.i.i to i32
  %spec.select.i.i.1 = select i1 %i.eh, i32 %i.ei, i32 %spec.select.i.i
  %indvars.iv.next30.i.i.1 = add nuw nsw i64 %indvars.iv29.i.i, 2 ; 2 uses
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.ee) ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next30.i.i.1
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12 ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.ej
  %i.en = trunc nuw nsw i64 %indvars.iv.next30.i.i.1 to i32
  %spec.select.i.i.2 = select i1 %i.em, i32 %i.en, i32 %spec.select.i.i.1
  %indvars.iv.next30.i.i.2 = add nuw nsw i64 %indvars.iv29.i.i, 3 ; 2 uses
  %i.eo = tail call i32 @llvm.smin.i32(i32 %i.el, i32 %i.ej) ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next30.i.i.2
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !12 ; 2 uses
  %i.er = icmp slt i32 %i.eq, %i.eo
  %i.es = trunc nuw nsw i64 %indvars.iv.next30.i.i.2 to i32
  %spec.select.i.i.3 = select i1 %i.er, i32 %i.es, i32 %spec.select.i.i.2 ; 2 uses
  %indvars.iv.next30.i.i.3 = add nuw nsw i64 %indvars.iv29.i.i, 4 ; 2 uses
  %exitcond.not.i106.i.3 = icmp eq i64 %indvars.iv.next30.i.i.3, %wide.trip.count.i102.i
  %i.et = tail call i32 @llvm.smin.i32(i32 %i.eq, i32 %i.eo)
  br i1 %exitcond.not.i106.i.3, label %._crit_edge.i.i, label %.lr.ph.i105.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i105.i, %.lr.ph.i105.i.prol.loopexit
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.lcssa.unr, %.lr.ph.i105.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i105.i ]
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1 ; 2 uses
  %i.eu = sext i32 %spec.select.i.i.lcssa to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !12
  store i32 %i.ew, ptr %.phi.trans.insert.i.i, align 4, !tbaa !12
  store i32 %.pre.i.i, ptr %i.ev, align 4, !tbaa !12
  %indvars.iv.next.i107.i = add nuw nsw i64 %indvars.iv.i104.i, 1
  %exitcond36.not.i.i = icmp eq i64 %indvars.iv.next33.i.i, %wide.trip.count35.i.i
  br i1 %exitcond36.not.i.i, label %Mpm_ManMergeCuts.exit, label %.lr.ph.preheader.i103.i, !llvm.loop !3

Mpm_ManMergeCuts.exit:                            ; preds = %._crit_edge.i.i, %.loopexit.thread.i, %bb.e
  %i.ex = tail call i32 @Mpm_ObjAddCutToStore(ptr noundef %0, ptr noundef nonnull %i.ch, i32 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %Mpm_CutGetArrTime.exit, %bb.c, %Mpm_ManMergeCuts.exit
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !98

.critedge:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @Mpm_ManMergeCuts(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 3252
  %.val = load i32, ptr %i.a, align 4, !tbaa !20
  %i.b = getelementptr i8, ptr %0, i64 3256
  %.val91 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = sext i32 %.val to i64
  %i.d = getelementptr [8 x i8], ptr %.val91, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 18 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = lshr i32 %i.k, 25
  %i.m = and i32 %i.l, 124
  %i.n = zext nneg i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.i, i64 %i.n, i1 false)
  %i.o = load i32, ptr %i.j, align 4
  %i.p = and i32 %i.o, -134217728
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 14 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 134217727
  %i.t = or disjoint i32 %i.s, %i.p               ; 3 uses
  store i32 %i.t, ptr %i.q, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !69
  %.not = icmp eq i32 %i.x, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.z = icmp eq ptr %2, null                     ; 2 uses
  br i1 %.not, label %.preheader110, label %.preheader112

.preheader112:                                    ; preds = %bb.a
  br i1 %i.z, label %.loopexit.thread, label %bb.b

.preheader110:                                    ; preds = %bb.a
  br i1 %i.z, label %.loopexit.thread, label %.preheader

bb.b:                                             ; preds = %.preheader112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 11308 ; 3 uses
  store i32 262143, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 11320 ; 3 uses
  store i32 0, ptr %i.ab, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %.not122 = icmp ult i32 %i.ad, 134217728
  br i1 %.not122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.h
  %i.af = phi i32 [ 262143, %.lr.ph ], [ %i.ba, %bb.h ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  %i.ai = load i32, ptr %i.q, align 4             ; 2 uses
  %i.aj = lshr i32 %i.ai, 27                      ; 6 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %Mpm_CutFindLeaf.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %i.aj to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %.unshifted = xor i32 %i.al, %i.ah
  %i.am = icmp ult i32 %.unshifted, 2
  br i1 %i.am, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Mpm_CutFindLeaf.exit.thread, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %.lr.ph.i
  %i.an = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %Mpm_CutFindLeaf.exit

Mpm_CutFindLeaf.exit:                             ; preds = %bb.c, %._crit_edge.loopexit.split.loop.exit13.i
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.an, %._crit_edge.loopexit.split.loop.exit13.i ] ; 3 uses
  %i.ao = icmp eq i32 %.0.lcssa.i, %i.aj
  br i1 %i.ao, label %Mpm_CutFindLeaf.exit.thread, label %bb.f

Mpm_CutFindLeaf.exit.thread:                      ; preds = %bb.d, %Mpm_CutFindLeaf.exit
  %.0.lcssa.i155 = phi i32 [ %.0.lcssa.i, %Mpm_CutFindLeaf.exit ], [ %i.aj, %bb.d ]
  %i.ap = load i32, ptr %i.y, align 8, !tbaa !70
  %i.aq = icmp eq i32 %i.aj, %i.ap
  br i1 %i.aq, label %Vec_IntSelectSort.exit, label %bb.e

bb.e:                                             ; preds = %Mpm_CutFindLeaf.exit.thread
  %i.ar = add i32 %i.ai, 134217728
  store i32 %i.ar, ptr %i.q, align 4
  %i.as = zext nneg i32 %i.aj to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.as
  store i32 %i.ah, ptr %i.at, align 4, !tbaa !12
  %.pre = load i32, ptr %i.aa, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Mpm_CutFindLeaf.exit
  %.0.lcssa.i154 = phi i32 [ %.0.lcssa.i155, %bb.e ], [ %.0.lcssa.i, %Mpm_CutFindLeaf.exit ] ; 3 uses
  %i.au = phi i32 [ %.pre, %bb.e ], [ %i.af, %Mpm_CutFindLeaf.exit ]
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = and i32 %i.av, 7
  %i.ax = xor i32 %i.aw, 7
  %i.ay = mul nsw i32 %.0.lcssa.i154, 3
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = xor i32 %i.au, %i.az                    ; 2 uses
  store i32 %i.ba, ptr %i.aa, align 4, !tbaa !12
  %i.bb = load i32, ptr %i.ag, align 4, !tbaa !12
  %i.bc = sext i32 %.0.lcssa.i154 to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %.not89 = icmp eq i32 %i.bb, %i.be
  br i1 %.not89, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = shl nuw i32 1, %.0.lcssa.i154
  %i.bg = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.bh = or i32 %i.bg, %i.bf
  store i32 %i.bh, ptr %i.ab, align 8, !tbaa !12
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load i32, ptr %i.ac, align 4
  %i.bj = lshr i32 %i.bi, 27
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.c, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %i.bm = icmp eq ptr %3, null
  br i1 %i.bm, label %.loopexit.thread162, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 11312 ; 3 uses
  store i32 262143, ptr %i.bn, align 8, !tbaa !12
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 11324 ; 3 uses
  store i32 0, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %.not122.1 = icmp ult i32 %i.bq, 134217728
  br i1 %.not122.1, label %.loopexit.thread162, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %.lr.ph.1
  %i.bs = phi i32 [ 262143, %.lr.ph.1 ], [ %i.cn, %bb.o ]
  %indvars.iv.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.o ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.1 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12 ; 2 uses
  %i.bv = load i32, ptr %i.q, align 4             ; 2 uses
  %i.bw = lshr i32 %i.bv, 27                      ; 6 uses
  %.not.i.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.1, label %Mpm_CutFindLeaf.exit.1, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %bb.j
  %wide.trip.count.i.1 = zext nneg i32 %i.bw to i64
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.k, %.lr.ph.preheader.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next.i.1, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.1
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %.unshifted.1 = xor i32 %i.by, %i.bu
  %i.bz = icmp ult i32 %.unshifted.1, 2
  br i1 %i.bz, label %._crit_edge.loopexit.split.loop.exit13.i.1, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %Mpm_CutFindLeaf.exit.1.thread, label %.lr.ph.i.1, !llvm.loop !0

._crit_edge.loopexit.split.loop.exit13.i.1:       ; preds = %.lr.ph.i.1
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.1 to i32
  br label %Mpm_CutFindLeaf.exit.1

Mpm_CutFindLeaf.exit.1:                           ; preds = %._crit_edge.loopexit.split.loop.exit13.i.1, %bb.j
  %.0.lcssa.i.1 = phi i32 [ 0, %bb.j ], [ %i.ca, %._crit_edge.loopexit.split.loop.exit13.i.1 ] ; 3 uses
  %i.cb = icmp eq i32 %.0.lcssa.i.1, %i.bw
  br i1 %i.cb, label %Mpm_CutFindLeaf.exit.1.thread, label %bb.m

Mpm_CutFindLeaf.exit.1.thread:                    ; preds = %bb.k, %Mpm_CutFindLeaf.exit.1
  %.0.lcssa.i.1158 = phi i32 [ %.0.lcssa.i.1, %Mpm_CutFindLeaf.exit.1 ], [ %i.bw, %bb.k ]
  %i.cc = load i32, ptr %i.y, align 8, !tbaa !70
  %i.cd = icmp eq i32 %i.bw, %i.cc
  br i1 %i.cd, label %Vec_IntSelectSort.exit, label %bb.l

bb.l:                                             ; preds = %Mpm_CutFindLeaf.exit.1.thread
  %i.ce = add i32 %i.bv, 134217728
  store i32 %i.ce, ptr %i.q, align 4
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cf
  store i32 %i.bu, ptr %i.cg, align 4, !tbaa !12
  %.pre138 = load i32, ptr %i.bn, align 8, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Mpm_CutFindLeaf.exit.1
  %.0.lcssa.i.1157 = phi i32 [ %.0.lcssa.i.1158, %bb.l ], [ %.0.lcssa.i.1, %Mpm_CutFindLeaf.exit.1 ] ; 3 uses
  %i.ch = phi i32 [ %.pre138, %bb.l ], [ %i.bs, %Mpm_CutFindLeaf.exit.1 ]
  %i.ci = trunc nuw nsw i64 %indvars.iv.1 to i32
  %i.cj = and i32 %i.ci, 7
  %i.ck = xor i32 %i.cj, 7
  %i.cl = mul nsw i32 %.0.lcssa.i.1157, 3
  %i.cm = shl i32 %i.ck, %i.cl
  %i.cn = xor i32 %i.ch, %i.cm                    ; 2 uses
  store i32 %i.cn, ptr %i.bn, align 8, !tbaa !12
  %i.co = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.cp = sext i32 %.0.lcssa.i.1157 to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12
  %.not89.1 = icmp eq i32 %i.co, %i.cr
  br i1 %.not89.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cs = shl nuw i32 1, %.0.lcssa.i.1157
  %i.ct = load i32, ptr %i.bo, align 4, !tbaa !12
  %i.cu = or i32 %i.ct, %i.cs
  store i32 %i.cu, ptr %i.bo, align 4, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.cv = load i32, ptr %i.bp, align 4
  %i.cw = lshr i32 %i.cv, 27
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next.1, %i.cx
  br i1 %i.cy, label %bb.j, label %.loopexit, !llvm.loop !99

.preheader:                                       ; preds = %.preheader110
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4            ; 2 uses
  %.not123 = icmp ult i32 %i.da, 134217728
  br i1 %.not123, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph119, %bb.s
  %i.dc = phi i32 [ %i.da, %.lr.ph119 ], [ %i.dr, %bb.s ]
  %i.dd = phi i32 [ %i.t, %.lr.ph119 ], [ %i.ds, %bb.s ] ; 3 uses
  %indvars.iv134 = phi i64 [ 0, %.lr.ph119 ], [ %indvars.iv.next135, %bb.s ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv134
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12 ; 2 uses
  %i.dg = lshr i32 %i.dd, 27                      ; 5 uses
  %.not.i92 = icmp eq i32 %i.dg, 0
  br i1 %.not.i92, label %Mpm_CutFindLeaf.exit101.thread, label %.lr.ph.preheader.i93

.lr.ph.preheader.i93:                             ; preds = %bb.p
  %wide.trip.count.i94 = zext nneg i32 %i.dg to i64
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.preheader.i93
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.preheader.i93 ], [ %indvars.iv.next.i97, %bb.q ] ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i96
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %.unshifted108 = xor i32 %i.di, %i.df
  %i.dj = icmp ult i32 %.unshifted108, 2
  br i1 %i.dj, label %Mpm_CutFindLeaf.exit101, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i95
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, %wide.trip.count.i94
  br i1 %exitcond.not.i98, label %Mpm_CutFindLeaf.exit101.thread, label %.lr.ph.i95, !llvm.loop !0

Mpm_CutFindLeaf.exit101:                          ; preds = %.lr.ph.i95
  %i.dk = trunc nuw nsw i64 %indvars.iv.i96 to i32
  %i.dl = icmp eq i32 %i.dg, %i.dk
  br i1 %i.dl, label %Mpm_CutFindLeaf.exit101.thread, label %bb.s

Mpm_CutFindLeaf.exit101.thread:                   ; preds = %bb.q, %bb.p, %Mpm_CutFindLeaf.exit101
  %i.dm = load i32, ptr %i.y, align 8, !tbaa !70
  %i.dn = icmp eq i32 %i.dg, %i.dm
  br i1 %i.dn, label %Vec_IntSelectSort.exit, label %bb.r

bb.r:                                             ; preds = %Mpm_CutFindLeaf.exit101.thread
  %i.do = add i32 %i.dd, 134217728                ; 2 uses
  store i32 %i.do, ptr %i.q, align 4
  %i.dp = zext nneg i32 %i.dg to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dp
  store i32 %i.df, ptr %i.dq, align 4, !tbaa !12
  %.pre139 = load i32, ptr %i.cz, align 4
  br label %bb.s

bb.s:                                             ; preds = %Mpm_CutFindLeaf.exit101, %bb.r
  %i.dr = phi i32 [ %i.dc, %Mpm_CutFindLeaf.exit101 ], [ %.pre139, %bb.r ] ; 2 uses
  %i.ds = phi i32 [ %i.dd, %Mpm_CutFindLeaf.exit101 ], [ %i.do, %bb.r ] ; 2 uses
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.dt = lshr i32 %i.dr, 27
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = icmp samesign ult i64 %indvars.iv.next135, %i.du
  br i1 %i.dv, label %bb.p, label %._crit_edge120, !llvm.loop !100

._crit_edge120:                                   ; preds = %bb.s, %.preheader
  %i.dw = phi i32 [ %i.t, %.preheader ], [ %i.ds, %bb.s ]
  %i.dx = icmp eq ptr %3, null
  br i1 %i.dx, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge120
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4            ; 2 uses
  %.not123.1 = icmp ult i32 %i.dz, 134217728
  br i1 %.not123.1, label %.loopexit, label %.lr.ph119.1

.lr.ph119.1:                                      ; preds = %.preheader.1
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph119.1
  %i.eb = phi i32 [ %i.dz, %.lr.ph119.1 ], [ %i.eq, %bb.w ]
  %i.ec = phi i32 [ %i.dw, %.lr.ph119.1 ], [ %i.er, %bb.w ] ; 3 uses
  %indvars.iv134.1 = phi i64 [ 0, %.lr.ph119.1 ], [ %indvars.iv.next135.1, %bb.w ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv134.1
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !12 ; 2 uses
  %i.ef = lshr i32 %i.ec, 27                      ; 5 uses
  %.not.i92.1 = icmp eq i32 %i.ef, 0
  br i1 %.not.i92.1, label %Mpm_CutFindLeaf.exit101.1.thread, label %.lr.ph.preheader.i93.1

.lr.ph.preheader.i93.1:                           ; preds = %bb.t
  %wide.trip.count.i94.1 = zext nneg i32 %i.ef to i64
  br label %.lr.ph.i95.1

.lr.ph.i95.1:                                     ; preds = %bb.u, %.lr.ph.preheader.i93.1
  %indvars.iv.i96.1 = phi i64 [ 0, %.lr.ph.preheader.i93.1 ], [ %indvars.iv.next.i97.1, %bb.u ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i96.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !12
  %.unshifted108.1 = xor i32 %i.eh, %i.ee
  %i.ei = icmp ult i32 %.unshifted108.1, 2
  br i1 %i.ei, label %Mpm_CutFindLeaf.exit101.1, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i95.1
  %indvars.iv.next.i97.1 = add nuw nsw i64 %indvars.iv.i96.1, 1 ; 2 uses
  %exitcond.not.i98.1 = icmp eq i64 %indvars.iv.next.i97.1, %wide.trip.count.i94.1
  br i1 %exitcond.not.i98.1, label %Mpm_CutFindLeaf.exit101.1.thread, label %.lr.ph.i95.1, !llvm.loop !0

Mpm_CutFindLeaf.exit101.1:                        ; preds = %.lr.ph.i95.1
  %i.ej = trunc nuw nsw i64 %indvars.iv.i96.1 to i32
  %i.ek = icmp eq i32 %i.ef, %i.ej
  br i1 %i.ek, label %Mpm_CutFindLeaf.exit101.1.thread, label %bb.w

Mpm_CutFindLeaf.exit101.1.thread:                 ; preds = %bb.u, %bb.t, %Mpm_CutFindLeaf.exit101.1
  %i.el = load i32, ptr %i.y, align 8, !tbaa !70
  %i.em = icmp eq i32 %i.ef, %i.el
  br i1 %i.em, label %Vec_IntSelectSort.exit, label %bb.v

bb.v:                                             ; preds = %Mpm_CutFindLeaf.exit101.1.thread
  %i.en = add i32 %i.ec, 134217728                ; 2 uses
  store i32 %i.en, ptr %i.q, align 4
  %i.eo = zext nneg i32 %i.ef to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.eo
  store i32 %i.ee, ptr %i.ep, align 4, !tbaa !12
  %.pre140 = load i32, ptr %i.dy, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %Mpm_CutFindLeaf.exit101.1
  %i.eq = phi i32 [ %.pre140, %bb.v ], [ %i.eb, %Mpm_CutFindLeaf.exit101.1 ] ; 2 uses
  %i.er = phi i32 [ %i.en, %bb.v ], [ %i.ec, %Mpm_CutFindLeaf.exit101.1 ]
  %indvars.iv.next135.1 = add nuw nsw i64 %indvars.iv134.1, 1 ; 2 uses
  %i.es = lshr i32 %i.eq, 27
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = icmp samesign ult i64 %indvars.iv.next135.1, %i.et
  br i1 %i.eu, label %bb.t, label %.loopexit, !llvm.loop !100

.loopexit:                                        ; preds = %bb.o, %bb.w, %._crit_edge120, %.preheader.1
  %i.ev = icmp eq ptr %2, null
  br i1 %i.ev, label %.loopexit.thread, label %.loopexit.thread162

.loopexit.thread:                                 ; preds = %.preheader110, %.preheader112, %.loopexit
  store i32 0, ptr %i.g, align 4, !tbaa !66
  %i.ew = load i32, ptr %i.j, align 4
  %i.ex = and i32 %i.ew, 33554431
  %i.ey = load i32, ptr %i.q, align 4
  %i.ez = and i32 %i.ey, -33554432
  %i.fa = or disjoint i32 %i.ez, %i.ex            ; 2 uses
  store i32 %i.fa, ptr %i.q, align 4
  %i.fb = load i32, ptr %i.j, align 4
  %i.fc = and i32 %i.fb, 67108864
  %i.fd = and i32 %i.fa, -67108865
  %i.fe = or disjoint i32 %i.fd, %i.fc            ; 2 uses
  store i32 %i.fe, ptr %i.q, align 4
  %i.ff = load i32, ptr %i.j, align 4
  %i.fg = and i32 %i.ff, 33554432
  %i.fh = and i32 %i.fe, -33554433
  %i.fi = or disjoint i32 %i.fh, %i.fg
  br label %bb.x

.loopexit.thread162:                              ; preds = %bb.i, %._crit_edge, %.loopexit
  store i32 0, ptr %i.g, align 4, !tbaa !66
  %i.fj = load i32, ptr %i.q, align 4
  %i.fk = and i32 %i.fj, -134217728
  %i.fl = or disjoint i32 %i.fk, 33554431
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.thread162, %.loopexit.thread
  %storemerge = phi i32 [ %i.fl, %.loopexit.thread162 ], [ %i.fi, %.loopexit.thread ]
  store i32 %storemerge, ptr %i.q, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 13888 ; 2 uses
  %i.fn = load <2 x i32>, ptr %i.fm, align 8, !tbaa !12
  %i.fo = add nsw <2 x i32> %i.fn, splat (i32 1)
  store <2 x i32> %i.fo, ptr %i.fm, align 8, !tbaa !12
  %i.fp = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 28
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !67
  %.not90 = icmp eq i32 %i.fr, 0
  br i1 %.not90, label %Vec_IntSelectSort.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fs = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ft = icmp ugt i32 %i.fs, 268435455
  br i1 %i.ft, label %.lr.ph27.preheader.i, label %Vec_IntSelectSort.exit

.lr.ph27.preheader.i:                             ; preds = %bb.y
  %i.fu = lshr i32 %i.fs, 27                      ; 2 uses
  %i.fv = add nsw i32 %i.fu, -1
  %wide.trip.count35.i = zext nneg i32 %i.fv to i64
  %wide.trip.count.i102 = zext nneg i32 %i.fu to i64 ; 3 uses
  %i.fw = add nsw i64 %wide.trip.count.i102, -2
  br label %.lr.ph.preheader.i103

.lr.ph.preheader.i103:                            ; preds = %._crit_edge.i, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv.i104 = phi i64 [ 1, %.lr.ph27.preheader.i ], [ %indvars.iv.next.i107, %._crit_edge.i ] ; 3 uses
  %i.fx = xor i64 %indvars.iv32.i, -1
  %i.fy = add nsw i64 %i.fx, %wide.trip.count.i102
  %i.fz = sub i64 %i.fw, %indvars.iv32.i
  %i.ga = trunc nuw nsw i64 %indvars.iv32.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv32.i ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !12 ; 3 uses
  %xtraiter = and i64 %i.fy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol

.lr.ph.i105.prol:                                 ; preds = %.lr.ph.preheader.i103, %.lr.ph.i105.prol
  %i.gb = phi i32 [ %i.gg, %.lr.ph.i105.prol ], [ %.pre.i, %.lr.ph.preheader.i103 ] ; 2 uses
  %indvars.iv29.i.prol = phi i64 [ %indvars.iv.next30.i.prol, %.lr.ph.i105.prol ], [ %indvars.iv.i104, %.lr.ph.preheader.i103 ] ; 3 uses
  %.024.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i105.prol ], [ %i.ga, %.lr.ph.preheader.i103 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i105.prol ], [ 0, %.lr.ph.preheader.i103 ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv29.i.prol
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, %i.gb
  %i.gf = trunc nuw nsw i64 %indvars.iv29.i.prol to i32
  %spec.select.i.prol = select i1 %i.ge, i32 %i.gf, i32 %.024.i.prol ; 3 uses
  %indvars.iv.next30.i.prol = add nuw nsw i64 %indvars.iv29.i.prol, 1 ; 2 uses
  %i.gg = tail call i32 @llvm.smin.i32(i32 %i.gd, i32 %i.gb) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i105.prol.loopexit, label %.lr.ph.i105.prol, !llvm.loop !101

.lr.ph.i105.prol.loopexit:                        ; preds = %.lr.ph.i105.prol, %.lr.ph.preheader.i103
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i103 ], [ %spec.select.i.prol, %.lr.ph.i105.prol ]
  %.unr = phi i32 [ %.pre.i, %.lr.ph.preheader.i103 ], [ %i.gg, %.lr.ph.i105.prol ]
  %indvars.iv29.i.unr = phi i64 [ %indvars.iv.i104, %.lr.ph.preheader.i103 ], [ %indvars.iv.next30.i.prol, %.lr.ph.i105.prol ]
  %.024.i.unr = phi i32 [ %i.ga, %.lr.ph.preheader.i103 ], [ %spec.select.i.prol, %.lr.ph.i105.prol ]
  %i.gh = icmp ult i64 %i.fz, 3
  br i1 %i.gh, label %._crit_edge.i, label %.lr.ph.i105

.lr.ph.i105:                                      ; preds = %.lr.ph.i105.prol.loopexit, %.lr.ph.i105
  %i.gi = phi i32 [ %i.hc, %.lr.ph.i105 ], [ %.unr, %.lr.ph.i105.prol.loopexit ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i105 ], [ %indvars.iv29.i.unr, %.lr.ph.i105.prol.loopexit ] ; 6 uses
  %.024.i = phi i32 [ %spec.select.i.3, %.lr.ph.i105 ], [ %.024.i.unr, %.lr.ph.i105.prol.loopexit ]
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv29.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !12 ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.gi
  %i.gm = trunc nuw nsw i64 %indvars.iv29.i to i32
  %spec.select.i = select i1 %i.gl, i32 %i.gm, i32 %.024.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.gn = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 %i.gi) ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next30.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !12 ; 2 uses
  %i.gq = icmp slt i32 %i.gp, %i.gn
  %i.gr = trunc nuw nsw i64 %indvars.iv.next30.i to i32
  %spec.select.i.1 = select i1 %i.gq, i32 %i.gr, i32 %spec.select.i
  %indvars.iv.next30.i.1 = add nuw nsw i64 %indvars.iv29.i, 2 ; 2 uses
  %i.gs = tail call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gn) ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next30.i.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !12 ; 2 uses
  %i.gv = icmp slt i32 %i.gu, %i.gs
  %i.gw = trunc nuw nsw i64 %indvars.iv.next30.i.1 to i32
  %spec.select.i.2 = select i1 %i.gv, i32 %i.gw, i32 %spec.select.i.1
  %indvars.iv.next30.i.2 = add nuw nsw i64 %indvars.iv29.i, 3 ; 2 uses
  %i.gx = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 %i.gs) ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next30.i.2
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12 ; 2 uses
  %i.ha = icmp slt i32 %i.gz, %i.gx
  %i.hb = trunc nuw nsw i64 %indvars.iv.next30.i.2 to i32
  %spec.select.i.3 = select i1 %i.ha, i32 %i.hb, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next30.i.3 = add nuw nsw i64 %indvars.iv29.i, 4 ; 2 uses
  %exitcond.not.i106.3 = icmp eq i64 %indvars.iv.next30.i.3, %wide.trip.count.i102
  %i.hc = tail call i32 @llvm.smin.i32(i32 %i.gz, i32 %i.gx)
  br i1 %exitcond.not.i106.3, label %._crit_edge.i, label %.lr.ph.i105, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i105, %.lr.ph.i105.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i105.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i105 ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.hd = sext i32 %spec.select.i.lcssa to i64
  %i.he = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12
  store i32 %i.hf, ptr %.phi.trans.insert.i, align 4, !tbaa !12
  store i32 %.pre.i, ptr %i.he, align 4, !tbaa !12
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i104, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %Vec_IntSelectSort.exit, label %.lr.ph.preheader.i103, !llvm.loop !3

Vec_IntSelectSort.exit:                           ; preds = %Mpm_CutFindLeaf.exit.thread, %Mpm_CutFindLeaf.exit.1.thread, %Mpm_CutFindLeaf.exit101.thread, %Mpm_CutFindLeaf.exit101.1.thread, %._crit_edge.i, %bb.y, %bb.x
  %.084 = phi ptr [ %i.g, %._crit_edge.i ], [ null, %Mpm_CutFindLeaf.exit101.thread ], [ %i.g, %bb.x ], [ %i.g, %bb.y ], [ null, %Mpm_CutFindLeaf.exit.1.thread ], [ null, %Mpm_CutFindLeaf.exit101.1.thread ], [ null, %Mpm_CutFindLeaf.exit.thread ]
  ret ptr %.084
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Mpm_ObjTranslateCutsFromStore(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr i8, ptr %0, i64 11360
  %.val18 = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr i8, ptr %1, i64 12         ; 2 uses
  %.val19 = load i32, ptr %i.d, align 4
  %i.e = lshr i32 %.val19, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !54
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3252 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3256 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 2 uses
  %.021 = phi ptr [ %i.g, %.lr.ph ], [ %i.w, %Vec_PtrPush.exit ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 6 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = lshr i32 %i.r, 27
  %i.t = call fastcc i32 @Mpm_CutAlloc(ptr noundef nonnull readonly %0, i32 noundef %i.s, ptr noundef nonnull %i.b)
  %i.u = load i32, ptr %i.q, align 4
  %i.v = and i32 %i.u, 33554431
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !72   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 5 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, -33554432
  %i.aa = or disjoint i32 %i.z, %i.v              ; 2 uses
  store i32 %i.aa, ptr %i.x, align 4
  %i.ab = load i32, ptr %i.q, align 4
  %i.ac = and i32 %i.ab, 33554432
  %i.ad = and i32 %i.aa, -33554433
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 2 uses
  store i32 %i.ae, ptr %i.x, align 4
  %i.af = load i32, ptr %i.q, align 4
end_hunk_0
