Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaFx?download=true
inline.NumInlined: 258
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Gia_ManComputeTruths:bb.a
  br i1 %i.az, label %.lr.ph.i50, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.h, %Vec_IntCheckUniqueSmall.exit
  %.0.lcssa.i = phi i32 [ 1, %Vec_IntCheckUniqueSmall.exit ], [ %.1.i, %bb.h ] ; 2 uses
  store i32 %.0.lcssa.i, ptr %i.r, align 4, !tbaa !51
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %.val38 = load ptr, ptr %i.bb, align 8, !tbaa !19 ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val38, i64 %indvars.iv93 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %.val38, i64 %i.be
  store i32 %.0.lcssa.i, ptr %i.bf, align 4, !tbaa !22
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !51
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %Vec_IntReverseOrder.exit

.lr.ph:                                           ; preds = %._crit_edge.i, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %._crit_edge.i ] ; 2 uses
  %i.bi = load i32, ptr %i.bc, align 4, !tbaa !22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bk = add i32 %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val47.pre.pre, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val38, i64 %i.bn
  store i32 %i.bm, ptr %i.bo, align 4, !tbaa !22
  %i.bp = load i32, ptr %i.r, align 4, !tbaa !51  ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.lr.ph, label %.loopexit70, !llvm.loop !56

.loopexit70:                                      ; preds = %.loopexit.i, %.lr.ph
  %.val47 = phi ptr [ %.val47.pre.pre, %.lr.ph ], [ %i.ae, %.loopexit.i ] ; 10 uses
  %.val48 = phi i32 [ %i.bp, %.lr.ph ], [ %i.aa, %.loopexit.i ] ; 3 uses
  %i.bs = icmp sgt i32 %.val48, 1
  br i1 %i.bs, label %.lr.ph27.preheader.i, label %Vec_IntReverseOrder.exit

.lr.ph27.preheader.i:                             ; preds = %.loopexit70
  %i.bt = add nsw i32 %.val48, -1
  %wide.trip.count35.i = zext nneg i32 %i.bt to i64
  %wide.trip.count.i = zext nneg i32 %.val48 to i64 ; 3 uses
  %i.bu = add nsw i64 %wide.trip.count.i, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i59, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.i59 ] ; 5 uses
  %indvars.iv.i54 = phi i64 [ 1, %.lr.ph27.preheader.i ], [ %indvars.iv.next.i60, %._crit_edge.i59 ] ; 3 uses
  %i.bv = xor i64 %indvars.iv32.i, -1
  %i.bw = add nsw i64 %i.bv, %wide.trip.count.i
  %i.bx = sub i64 %i.bu, %indvars.iv32.i
  %i.by = trunc nuw nsw i64 %indvars.iv32.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv32.i ; 2 uses
  %.pre.i55 = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22 ; 3 uses
  %xtraiter = and i64 %i.bw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i56.prol.loopexit, label %.lr.ph.i56.prol

.lr.ph.i56.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i56.prol
  %i.bz = phi i32 [ %i.ce, %.lr.ph.i56.prol ], [ %.pre.i55, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv29.i.prol = phi i64 [ %indvars.iv.next30.i.prol, %.lr.ph.i56.prol ], [ %indvars.iv.i54, %.lr.ph.preheader.i ] ; 3 uses
  %.024.i57.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i56.prol ], [ %i.by, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i56.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv29.i.prol
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, %i.bz
  %i.cd = trunc nuw nsw i64 %indvars.iv29.i.prol to i32
  %spec.select.i.prol = select i1 %i.cc, i32 %i.cd, i32 %.024.i57.prol ; 3 uses
  %indvars.iv.next30.i.prol = add nuw nsw i64 %indvars.iv29.i.prol, 1 ; 2 uses
  %i.ce = call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.bz) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i56.prol.loopexit, label %.lr.ph.i56.prol, !llvm.loop !57

.lr.ph.i56.prol.loopexit:                         ; preds = %.lr.ph.i56.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i56.prol ]
  %.unr = phi i32 [ %.pre.i55, %.lr.ph.preheader.i ], [ %i.ce, %.lr.ph.i56.prol ]
  %indvars.iv29.i.unr = phi i64 [ %indvars.iv.i54, %.lr.ph.preheader.i ], [ %indvars.iv.next30.i.prol, %.lr.ph.i56.prol ]
  %.024.i57.unr = phi i32 [ %i.by, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i56.prol ]
  %i.cf = icmp ult i64 %i.bx, 3
  br i1 %i.cf, label %._crit_edge.i59, label %.lr.ph.i56

.lr.ph.i56:                                       ; preds = %.lr.ph.i56.prol.loopexit, %.lr.ph.i56
  %i.cg = phi i32 [ %i.da, %.lr.ph.i56 ], [ %.unr, %.lr.ph.i56.prol.loopexit ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i56 ], [ %indvars.iv29.i.unr, %.lr.ph.i56.prol.loopexit ] ; 6 uses
  %.024.i57 = phi i32 [ %spec.select.i.3, %.lr.ph.i56 ], [ %.024.i57.unr, %.lr.ph.i56.prol.loopexit ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv29.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !22 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.cg
  %i.ck = trunc nuw nsw i64 %indvars.iv29.i to i32
  %spec.select.i = select i1 %i.cj, i32 %i.ck, i32 %.024.i57
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.cl = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cg) ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next30.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !22 ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.cl
  %i.cp = trunc nuw nsw i64 %indvars.iv.next30.i to i32
  %spec.select.i.1 = select i1 %i.co, i32 %i.cp, i32 %spec.select.i
  %indvars.iv.next30.i.1 = add nuw nsw i64 %indvars.iv29.i, 2 ; 2 uses
  %i.cq = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cl) ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next30.i.1
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22 ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %i.cq
  %i.cu = trunc nuw nsw i64 %indvars.iv.next30.i.1 to i32
  %spec.select.i.2 = select i1 %i.ct, i32 %i.cu, i32 %spec.select.i.1
  %indvars.iv.next30.i.2 = add nuw nsw i64 %indvars.iv29.i, 3 ; 2 uses
  %i.cv = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.cq) ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.next30.i.2
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !22 ; 2 uses
  %i.cy = icmp slt i32 %i.cx, %i.cv
  %i.cz = trunc nuw nsw i64 %indvars.iv.next30.i.2 to i32
  %spec.select.i.3 = select i1 %i.cy, i32 %i.cz, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next30.i.3 = add nuw nsw i64 %indvars.iv29.i, 4 ; 2 uses
  %exitcond.not.i58.3 = icmp eq i64 %indvars.iv.next30.i.3, %wide.trip.count.i
  %i.da = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.cv)
  br i1 %exitcond.not.i58.3, label %._crit_edge.i59, label %.lr.ph.i56, !llvm.loop !59

._crit_edge.i59:                                  ; preds = %.lr.ph.i56, %.lr.ph.i56.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i56.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i56 ]
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.db = sext i32 %spec.select.i.lcssa to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.val47, i64 %i.db ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  store i32 %i.dd, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  store i32 %.pre.i55, ptr %i.dc, align 4, !tbaa !22
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i54, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %Vec_IntSelectSort.exit, label %.lr.ph.preheader.i, !llvm.loop !60

Vec_IntSelectSort.exit:                           ; preds = %._crit_edge.i59
  %.pre = load i32, ptr %i.r, align 4             ; 2 uses
  %i.de = icmp sgt i32 %.pre, 1
  %or.cond = select i1 %.not37, i1 %i.de, i1 false
  br i1 %or.cond, label %.lr.ph.i62, label %Vec_IntReverseOrder.exit

.lr.ph.i62:                                       ; preds = %Vec_IntSelectSort.exit, %.lr.ph.i62
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %.lr.ph.i62 ], [ 0, %Vec_IntSelectSort.exit ] ; 3 uses
  %i.df = phi i32 [ %i.ds, %.lr.ph.i62 ], [ %.pre, %Vec_IntSelectSort.exit ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv.i63 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !22
  %i.di = trunc nuw nsw i64 %indvars.iv.i63 to i32
  %i.dj = xor i32 %i.di, -1                       ; 2 uses
  %i.dk = add i32 %i.df, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %.val47, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !22
  store i32 %i.dn, ptr %i.dg, align 4, !tbaa !22
  %i.do = load i32, ptr %i.r, align 4, !tbaa !51
  %i.dp = add i32 %i.do, %i.dj
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.val47, i64 %i.dq
  store i32 %i.dh, ptr %i.dr, align 4, !tbaa !22
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %i.ds = load i32, ptr %i.r, align 4, !tbaa !51  ; 2 uses
  %i.dt = sdiv i32 %i.ds, 2
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next.i64, %i.du
  br i1 %i.dv, label %.lr.ph.i62, label %Vec_IntReverseOrder.exit, !llvm.loop !61

Vec_IntReverseOrder.exit:                         ; preds = %.lr.ph.i62, %._crit_edge.i, %bb.d, %.loopexit70, %Vec_IntSelectSort.exit
  %.val49 = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %.val49, i64 %indvars.iv93
  %i.dx = call ptr @Gia_ObjComputeTruthTableCut(ptr noundef %0, ptr noundef nonnull %i.dw, ptr noundef nonnull %4) #19
  br i1 %i.u, label %.lr.ph73, label %.loopexit

.lr.ph73:                                         ; preds = %Vec_IntReverseOrder.exit
  %i.dy = sext i32 %.promoted to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph73, %Vec_WrdPush.exit
  %indvars.iv88 = phi i64 [ 0, %.lr.ph73 ], [ %indvars.iv.next89, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv86 = phi i64 [ %i.dy, %.lr.ph73 ], [ %indvars.iv.next87, %Vec_WrdPush.exit ] ; 7 uses
  %storemerge79 = phi ptr [ %.promoted78, %.lr.ph73 ], [ %storemerge80, %Vec_WrdPush.exit ] ; 6 uses
  %spec.select.sink.i77 = phi i32 [ %.promoted75, %.lr.ph73 ], [ %spec.select.sink.i76, %Vec_WrdPush.exit ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv88
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !63
  %i.eb = trunc nsw i64 %indvars.iv86 to i32
  %i.ec = icmp eq i32 %spec.select.sink.i77, %i.eb
  br i1 %i.ec, label %bb.j, label %Vec_WrdPush.exit

bb.j:                                             ; preds = %bb.i
  %i.ed = icmp slt i64 %indvars.iv86, 16
  br i1 %i.ed, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not9.i.i = icmp eq ptr %storemerge79, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ee = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge79, i64 noundef 128) #21
  br label %Vec_WrdPush.exit

bb.m:                                             ; preds = %bb.k
  %i.ef = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #20
  br label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.j
  %i.eg = icmp samesign ult i64 %indvars.iv86, 1073741823
  %indvars.iv86.tr = trunc i64 %indvars.iv86 to i32
  %i.eh = shl i32 %indvars.iv86.tr, 1
  %spec.select.i65 = select i1 %i.eg, i32 %i.eh, i32 2147483647 ; 4 uses
  %i.ei = sext i32 %spec.select.i65 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv86, %i.ei
  br i1 %.not.i9.i, label %bb.o, label %Vec_WrdPush.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i10.i = icmp eq ptr %storemerge79, null
  %i.ej = zext nneg i32 %spec.select.i65 to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = call ptr @realloc(ptr noundef nonnull %storemerge79, i64 noundef %i.ek) #21
  br label %Vec_WrdPush.exit

bb.q:                                             ; preds = %bb.o
  %i.em = call noalias ptr @malloc(i64 noundef %i.ek) #20
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.m, %bb.l, %bb.q, %bb.p, %bb.i, %bb.n
  %storemerge80 = phi ptr [ %storemerge79, %bb.i ], [ %storemerge79, %bb.n ], [ %i.ef, %bb.m ], [ %i.ee, %bb.l ], [ %i.el, %bb.p ], [ %i.em, %bb.q ] ; 4 uses
  %spec.select.sink.i76 = phi i32 [ %spec.select.sink.i77, %bb.i ], [ %spec.select.sink.i77, %bb.n ], [ 16, %bb.m ], [ 16, %bb.l ], [ %spec.select.i65, %bb.p ], [ %spec.select.i65, %bb.q ] ; 3 uses
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %storemerge80, i64 %indvars.iv86
  store i64 %i.ea, ptr %i.en, align 8, !tbaa !63
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.i, !llvm.loop !64

..loopexit_crit_edge:                             ; preds = %Vec_WrdPush.exit
  %i.eo = trunc nsw i64 %indvars.iv.next87 to i32 ; 2 uses
  store i32 %i.eo, ptr %i.i, align 4, !tbaa !26
  store i32 %spec.select.sink.i76, ptr %i.g, align 8
  store ptr %storemerge80, ptr %i.n, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %Vec_IntReverseOrder.exit, %..loopexit_crit_edge, %bb.c
  %.promoted78102 = phi ptr [ %.promoted78, %Vec_IntReverseOrder.exit ], [ %storemerge80, %..loopexit_crit_edge ], [ %.promoted78, %bb.c ]
  %.promoted75100 = phi i32 [ %.promoted75, %Vec_IntReverseOrder.exit ], [ %spec.select.sink.i76, %..loopexit_crit_edge ], [ %.promoted75, %bb.c ]
  %.promoted98 = phi i32 [ %.promoted, %Vec_IntReverseOrder.exit ], [ %i.eo, %..loopexit_crit_edge ], [ %.promoted, %bb.c ]
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %.val39 = load i32, ptr %i.o, align 8, !tbaa !31
  %i.ep = sext i32 %.val39 to i64
  %i.eq = icmp slt i64 %indvars.iv.next94, %i.ep
  br i1 %i.eq, label %bb.c, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.loopexit, %Vec_WrdAlloc.exit
  call void @Gia_ObjComputeTruthTableStop(ptr noundef nonnull %0) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret ptr %i.g
}

declare void @Gia_ObjComputeTruthTableStart(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Gia_ObjComputeTruthTableCut(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gia_ObjComputeTruthTableStop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @Gia_ManAssignNumbers(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @Gia_ManFillValue(ptr noundef %0) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val21 = load i32, ptr %i.c, align 4, !tbaa !51 ; 5 uses
  %i.d = icmp sgt i32 %.val21, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.e, align 8, !tbaa !62 ; 6 uses
  %.not = icmp eq ptr %.val23, null
  br i1 %.not, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %.val24.val = load ptr, ptr %i.f, align 8, !tbaa !19 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val21 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %.val21, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.3, %bb.b ]
  %indvars34 = trunc i64 %indvars.iv to i32
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val24.val, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [12 x i8], ptr %.val23, i64 %i.j
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %indvars34, ptr %i.l, align 4, !tbaa !67
  %indvars34.1 = trunc i64 %indvars.iv.next to i32
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.val24.val, i64 %indvars.iv.next
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [12 x i8], ptr %.val23, i64 %i.o
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 %indvars34.1, ptr %i.q, align 4, !tbaa !67
  %indvars34.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.val24.val, i64 %indvars.iv.next.1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !22
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [12 x i8], ptr %.val23, i64 %i.t
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %indvars34.2, ptr %i.v, align 4, !tbaa !67
  %indvars34.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val24.val, i64 %indvars.iv.next.2
  %i.x = load i32, ptr %i.w, align 4, !tbaa !22
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [12 x i8], ptr %.val23, i64 %i.y
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %indvars34.3, ptr %i.aa, align 4, !tbaa !67
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !69

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %indvars34.epil = trunc i64 %indvars.iv.epil to i32
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val24.val, i64 %indvars.iv.epil
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [12 x i8], ptr %.val23, i64 %i.ad
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %indvars34.epil, ptr %i.af, align 4, !tbaa !67
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %bb.c, !llvm.loop !70

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %.val21, %bb.c ], [ %.val21, %.critedge.loopexit.unr-lcssa ] ; 3 uses
  %i.ag = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.ag, align 8, !tbaa !31 ; 3 uses
  %i.ah = icmp sgt i32 %.val, 1
  br i1 %i.ah, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.critedge
  %i.ai = getelementptr i8, ptr %0, i64 264
  %.val20 = load ptr, ptr %i.ai, align 8, !tbaa !50
  %i.aj = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 32        ; 3 uses
  %wide.trip.count40 = zext nneg i32 %.val to i64
  %i.al = add nsw i64 %wide.trip.count40, -1      ; 3 uses
  %xtraiter44 = and i64 %i.al, 1
  %i.am = icmp eq i32 %.val, 2
  br i1 %i.am, label %.epil.preheader43, label %.lr.ph32.new

.lr.ph32.new:                                     ; preds = %.lr.ph32
  %unroll_iter49 = and i64 %i.al, -2
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph32.new
  %indvars.iv37 = phi i64 [ 1, %.lr.ph32.new ], [ %indvars.iv.next38.1, %bb.h ] ; 4 uses
  %.131 = phi i32 [ %.0.lcssa, %.lr.ph32.new ], [ %.2.1, %bb.h ] ; 3 uses
  %niter50 = phi i64 [ 0, %.lr.ph32.new ], [ %niter50.next.1, %bb.h ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val20.val, i64 %indvars.iv37
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %.not25 = icmp eq i32 %i.ao, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = add nuw nsw i32 %.131, 1
  %.val22 = load ptr, ptr %i.ak, align 8, !tbaa !62
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %.val22, i64 %indvars.iv37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %.131, ptr %i.ar, align 4, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i32 [ %i.ap, %bb.e ], [ %.131, %bb.d ] ; 3 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val20.val, i64 %indvars.iv.next38
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %.not25.1 = icmp eq i32 %i.at, 0
  br i1 %.not25.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@Gia_ManFxRetrieve:bb.a
  %i.dj = sext i32 %i.cd to i64
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.dj
  %i.dl = sub nsw i32 16, %i.cd
  br label %Vec_WecPushLevel.exit.sink.split

bb.t:                                             ; preds = %bb.p
  %i.dm = shl nuw nsw i32 %i.cd, 1                ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.cc, null
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  br i1 %.not13.i10.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.do) #21
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.dq = tail call noalias ptr @malloc(i64 noundef %i.do) #20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dr = phi ptr [ %i.dp, %bb.u ], [ %i.dq, %bb.v ] ; 3 uses
  store ptr %i.dr, ptr %i.bn, align 8, !tbaa !76
  %i.ds = zext nneg i32 %i.cd to i64
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ds
  br label %Vec_WecPushLevel.exit.sink.split

Vec_WecPushLevel.exit.sink.split:                 ; preds = %bb.w, %Vec_WecGrow.exit.i
  %.sink205 = phi i32 [ %i.dl, %Vec_WecGrow.exit.i ], [ %i.cd, %bb.w ]
  %.sink202 = phi ptr [ %i.dk, %Vec_WecGrow.exit.i ], [ %i.dt, %bb.w ]
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i ], [ %i.dm, %bb.w ] ; 2 uses
  %.val8.pre.i168.ph = phi ptr [ %i.di, %Vec_WecGrow.exit.i ], [ %i.dr, %bb.w ]
  %i.du = zext nneg i32 %.sink205 to i64
  %i.dv = shl nuw nsw i64 %i.du, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %.sink202, i8 0, i64 %i.dv, i1 false)
  store i32 %.sink, ptr %i.bk, align 8, !tbaa !75
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %Vec_WecPushLevel.exit.sink.split, %bb.o
  %.val8.pre.i168 = phi ptr [ %i.cc, %bb.o ], [ %.val8.pre.i168.ph, %Vec_WecPushLevel.exit.sink.split ] ; 3 uses
  %i.dw = phi i32 [ %i.cd, %bb.o ], [ %.sink, %Vec_WecPushLevel.exit.sink.split ] ; 2 uses
  %i.dx = add nsw i32 %i.cf, 1                    ; 3 uses
  store i32 %i.dx, ptr %i.bl, align 4, !tbaa !73
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %.val8.pre.i168, i64 %i.dy ; 5 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -16 ; 2 uses
  %i.eb = load i32, ptr %i.cy, align 4, !tbaa !67
  %i.ec = getelementptr inbounds i8, ptr %i.dz, i64 -12 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !51 ; 7 uses
  %i.ee = load i32, ptr %i.ea, align 8, !tbaa !52
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.x, label %Vec_IntPush.exit

bb.x:                                             ; preds = %Vec_WecPushLevel.exit
  %i.eg = icmp slt i32 %i.ed, 16
  br i1 %i.eg, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eh = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ei, null
  br i1 %.not9.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ej = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ei, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.ek = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.aa, %bb.z
  %i.el = phi ptr [ %i.ej, %bb.z ], [ %i.ek, %bb.aa ]
  store ptr %i.el, ptr %i.eh, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ab:                                            ; preds = %bb.x
  %i.em = icmp samesign ult i32 %i.ed, 1073741823
  %i.en = shl nuw nsw i32 %i.ed, 1
  %spec.select.i = select i1 %i.em, i32 %i.en, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.ed, %spec.select.i
  br i1 %.not.i9.i, label %bb.ac, label %Vec_IntPush.exit

bb.ac:                                            ; preds = %bb.ab
  %i.eo = getelementptr inbounds i8, ptr %i.dz, i64 -8 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ep, null
  %i.eq = zext nneg i32 %spec.select.i to i64
  %i.er = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.es = tail call ptr @realloc(ptr noundef nonnull %i.ep, i64 noundef %i.er) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.et = tail call noalias ptr @malloc(i64 noundef %i.er) #20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eu = phi ptr [ %i.es, %bb.ad ], [ %i.et, %bb.ae ]
  store ptr %i.eu, ptr %i.eo, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.af, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.af ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %i.ea, align 8, !tbaa !52
  %.pre173 = load i32, ptr %i.ec, align 4, !tbaa !51
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_WecPushLevel.exit, %bb.ab, %Vec_IntGrow.exit11.sink.split.i
  %i.ev = phi i32 [ %i.ed, %Vec_WecPushLevel.exit ], [ %i.ed, %bb.ab ], [ %.pre173, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.ey = add nsw i32 %i.ev, 1
  store i32 %i.ey, ptr %i.ec, align 4, !tbaa !51
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.ez
  store i32 %i.eb, ptr %i.fa, align 4, !tbaa !22
  br label %.critedge

bb.ag:                                            ; preds = %bb.n, %bb.m
  %i.fb = load ptr, ptr %1, align 8, !tbaa !81
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !67
  %i.fe = trunc i32 %i.cs to i8
  %i.ff = getelementptr i8, ptr %i.fb, i64 8
  %.val91 = load ptr, ptr %i.ff, align 8, !tbaa !79
  %i.fg = sext i32 %i.fd to i64
  %i.fh = getelementptr inbounds i8, ptr %.val91, i64 %i.fg
  store i8 %i.fe, ptr %i.fh, align 1, !tbaa !16
  %.val82139 = load i32, ptr %i.bh, align 4, !tbaa !51
  %i.fi = icmp sgt i32 %.val82139, 0
  br i1 %i.fi, label %.lr.ph142, label %.critedge

.lr.ph142:                                        ; preds = %bb.ag
  %i.fj = icmp sgt i32 %i.cm, 0
  %i.fk = sext i32 %i.cf to i64
  %wide.trip.count = zext nneg i32 %i.cm to i64
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph142, %Vec_IntSelectSort.exit
  %.val8.pre.i171 = phi ptr [ %i.cc, %.lr.ph142 ], [ %.val8.pre.i172, %Vec_IntSelectSort.exit ]
  %i.fl = phi i32 [ %i.cd, %.lr.ph142 ], [ %i.gh, %Vec_IntSelectSort.exit ]
  %i.fm = phi ptr [ %.val8.pre.i95161, %.lr.ph142 ], [ %.val8.pre.i95164, %Vec_IntSelectSort.exit ] ; 4 uses
  %i.fn = phi i32 [ %i.ce, %.lr.ph142 ], [ %i.gi, %Vec_IntSelectSort.exit ] ; 3 uses
  %indvars.iv151 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next152, %Vec_IntSelectSort.exit ] ; 2 uses
  %indvars.iv149 = phi i64 [ %i.fk, %.lr.ph142 ], [ %indvars.iv.next150, %Vec_IntSelectSort.exit ] ; 8 uses
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv151
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !22
  %i.fq = trunc nsw i64 %indvars.iv149 to i32
  %i.fr = icmp eq i32 %i.fn, %i.fq
  br i1 %i.fr, label %bb.ai, label %Vec_WecPushLevel.exit102

bb.ai:                                            ; preds = %bb.ah
  %i.fs = icmp slt i64 %indvars.iv149, 16
  %.not13.i.i99 = icmp eq ptr %i.fm, null         ; 2 uses
  br i1 %i.fs, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not13.i.i99, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ft = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.fm, i64 noundef 256) #21
  br label %Vec_WecGrow.exit.i101

bb.al:                                            ; preds = %bb.aj
  %i.fu = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #20
  br label %Vec_WecGrow.exit.i101

Vec_WecGrow.exit.i101:                            ; preds = %bb.al, %bb.ak
  %i.fv = phi ptr [ %i.ft, %bb.ak ], [ %i.fu, %bb.al ] ; 3 uses
  store ptr %i.fv, ptr %i.bn, align 8, !tbaa !76
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fv, i64 %indvars.iv149
  %i.fx = sub nsw i32 16, %i.fn
  %i.fy = sext i32 %i.fx to i64
  %i.fz = shl nsw i64 %i.fy, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fw, i8 0, i64 %i.fz, i1 false)
  br label %Vec_WecPushLevel.exit102.sink.split

bb.am:                                            ; preds = %bb.ai
  %i.ga = shl nuw nsw i64 %indvars.iv149, 5       ; 2 uses
  br i1 %.not13.i.i99, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = tail call ptr @realloc(ptr noundef nonnull %i.fm, i64 noundef %i.ga) #21
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gc = tail call noalias ptr @malloc(i64 noundef %i.ga) #20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gd = phi ptr [ %i.gb, %bb.an ], [ %i.gc, %bb.ao ] ; 3 uses
  store ptr %i.gd, ptr %i.bn, align 8, !tbaa !76
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %indvars.iv149
  %i.gf = shl nsw i64 %indvars.iv149, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ge, i8 0, i64 %i.gf, i1 false)
  %indvars.iv149.tr = trunc i64 %indvars.iv149 to i32
  %i.gg = shl i32 %indvars.iv149.tr, 1
  br label %Vec_WecPushLevel.exit102.sink.split

Vec_WecPushLevel.exit102.sink.split:              ; preds = %bb.ap, %Vec_WecGrow.exit.i101
  %.sink208 = phi i32 [ 16, %Vec_WecGrow.exit.i101 ], [ %i.gg, %bb.ap ] ; 3 uses
  %.val8.pre.i172.ph = phi ptr [ %i.fv, %Vec_WecGrow.exit.i101 ], [ %i.gd, %bb.ap ] ; 2 uses
  store i32 %.sink208, ptr %i.bk, align 8, !tbaa !75
  br label %Vec_WecPushLevel.exit102

Vec_WecPushLevel.exit102:                         ; preds = %Vec_WecPushLevel.exit102.sink.split, %bb.ah
  %.val8.pre.i172 = phi ptr [ %.val8.pre.i171, %bb.ah ], [ %.val8.pre.i172.ph, %Vec_WecPushLevel.exit102.sink.split ] ; 2 uses
  %i.gh = phi i32 [ %i.fl, %bb.ah ], [ %.sink208, %Vec_WecPushLevel.exit102.sink.split ] ; 2 uses
  %.val8.pre.i95164 = phi ptr [ %i.fm, %bb.ah ], [ %.val8.pre.i172.ph, %Vec_WecPushLevel.exit102.sink.split ] ; 3 uses
  %i.gi = phi i32 [ %i.fn, %bb.ah ], [ %.sink208, %Vec_WecPushLevel.exit102.sink.split ] ; 2 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.gj = getelementptr inbounds [16 x i8], ptr %.val8.pre.i95164, i64 %indvars.iv.next150 ; 5 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -16 ; 5 uses
  %i.gl = load i32, ptr %i.fc, align 4, !tbaa !67
  %i.gm = getelementptr inbounds i8, ptr %i.gj, i64 -12 ; 8 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !51 ; 7 uses
  %i.go = load i32, ptr %i.gk, align 8, !tbaa !52
  %i.gp = icmp eq i32 %i.gn, %i.go
  br i1 %i.gp, label %bb.aq, label %Vec_IntPush.exit110

bb.aq:                                            ; preds = %Vec_WecPushLevel.exit102
  %i.gq = icmp slt i32 %i.gn, 16
  br i1 %i.gq, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gr = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i108 = icmp eq ptr %i.gs, null
  br i1 %.not9.i.i108, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gt = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gs, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i109

bb.at:                                            ; preds = %bb.ar
  %i.gu = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i109

Vec_IntGrow.exit.i109:                            ; preds = %bb.at, %bb.as
  %i.gv = phi ptr [ %i.gt, %bb.as ], [ %i.gu, %bb.at ]
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i106

bb.au:                                            ; preds = %bb.aq
  %i.gw = icmp samesign ult i32 %i.gn, 1073741823
  %i.gx = shl nuw nsw i32 %i.gn, 1
  %spec.select.i103 = select i1 %i.gw, i32 %i.gx, i32 2147483647 ; 3 uses
  %.not.i9.i104 = icmp samesign ult i32 %i.gn, %spec.select.i103
  br i1 %.not.i9.i104, label %bb.av, label %Vec_IntPush.exit110

bb.av:                                            ; preds = %bb.au
  %i.gy = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !19 ; 2 uses
  %.not9.i10.i105 = icmp eq ptr %i.gz, null
  %i.ha = zext nneg i32 %spec.select.i103 to i64
  %i.hb = shl nuw nsw i64 %i.ha, 2                ; 2 uses
  br i1 %.not9.i10.i105, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hc = tail call ptr @realloc(ptr noundef nonnull %i.gz, i64 noundef %i.hb) #21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.hd = tail call noalias ptr @malloc(i64 noundef %i.hb) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.he = phi ptr [ %i.hc, %bb.aw ], [ %i.hd, %bb.ax ]
  store ptr %i.he, ptr %i.gy, align 8, !tbaa !19
  br label %Vec_IntGrow.exit11.sink.split.i106

Vec_IntGrow.exit11.sink.split.i106:               ; preds = %bb.ay, %Vec_IntGrow.exit.i109
  %spec.select.sink.i107 = phi i32 [ %spec.select.i103, %bb.ay ], [ 16, %Vec_IntGrow.exit.i109 ]
  store i32 %spec.select.sink.i107, ptr %i.gk, align 8, !tbaa !52
  %.pre = load i32, ptr %i.gm, align 4, !tbaa !51
  br label %Vec_IntPush.exit110

Vec_IntPush.exit110:                              ; preds = %Vec_WecPushLevel.exit102, %bb.au, %Vec_IntGrow.exit11.sink.split.i106
  %i.hf = phi i32 [ %i.gn, %Vec_WecPushLevel.exit102 ], [ %i.gn, %bb.au ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i106 ] ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %i.gj, i64 -8 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !19 ; 5 uses
  %i.hi = add nsw i32 %i.hf, 1
  store i32 %i.hi, ptr %i.gm, align 4, !tbaa !51
  %i.hj = sext i32 %i.hf to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hj
  store i32 %i.gl, ptr %i.hk, align 4, !tbaa !22
  br i1 %i.fj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_IntPush.exit110, %bb.br
  %i.hl = phi ptr [ %i.jh, %bb.br ], [ %i.hh, %Vec_IntPush.exit110 ] ; 7 uses
  %i.hm = phi ptr [ %i.ji, %bb.br ], [ %i.hh, %Vec_IntPush.exit110 ] ; 7 uses
  %i.hn = phi ptr [ %i.jj, %bb.br ], [ %i.hh, %Vec_IntPush.exit110 ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.br ], [ 0, %Vec_IntPush.exit110 ] ; 4 uses
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ho = shl i32 %indvars.iv.tr, 1
  %i.hp = ashr i32 %i.fp, %i.ho
  %i.hq = and i32 %i.hp, 3
  switch i32 %i.hq, label %bb.br [
    i32 1, label %bb.az
    i32 2, label %bb.bi
  ]

bb.az:                                            ; preds = %.lr.ph
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !22
  %.val87 = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [12 x i8], ptr %.val87, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !67
  %i.hx = shl nsw i32 %i.hw, 1
  %i.hy = or disjoint i32 %i.hx, 1                ; 6 uses
  %i.hz = load i32, ptr %i.gm, align 4, !tbaa !51 ; 7 uses
  %i.ia = load i32, ptr %i.gk, align 8, !tbaa !52
  %i.ib = icmp eq i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ba, label %.sink.split

bb.ba:                                            ; preds = %bb.az
  %i.ic = icmp slt i32 %i.hz, 16
  br i1 %i.ic, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %.not9.i.i116 = icmp eq ptr %i.hm, null
  br i1 %.not9.i.i116, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.id = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hm, i64 noundef 64) #21
  br label %.sink.split.sink.split

bb.bd:                                            ; preds = %bb.bb
  %i.ie = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %.sink.split.sink.split

bb.be:                                            ; preds = %bb.ba
  %i.if = icmp samesign ult i32 %i.hz, 1073741823
  %i.ig = shl nuw nsw i32 %i.hz, 1
  %spec.select.i111 = select i1 %i.if, i32 %i.ig, i32 2147483647 ; 4 uses
  %.not.i9.i112 = icmp samesign ult i32 %i.hz, %spec.select.i111
  br i1 %.not.i9.i112, label %bb.bf, label %.sink.split

bb.bf:                                            ; preds = %bb.be
  %.not9.i10.i113 = icmp eq ptr %i.hm, null
  %i.ih = zext nneg i32 %spec.select.i111 to i64
  %i.ii = shl nuw nsw i64 %i.ih, 2                ; 2 uses
  br i1 %.not9.i10.i113, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ij = tail call ptr @realloc(ptr noundef nonnull %i.hm, i64 noundef %i.ii) #21
  br label %.sink.split.sink.split

bb.bh:                                            ; preds = %bb.bf
  %i.ik = tail call noalias ptr @malloc(i64 noundef %i.ii) #20
  br label %.sink.split.sink.split

bb.bi:                                            ; preds = %.lr.ph
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv
  %i.im = load i32, ptr %i.il, align 4, !tbaa !22
  %.val86 = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [12 x i8], ptr %.val86, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !67
  %i.ir = shl nsw i32 %i.iq, 1                    ; 6 uses
  %i.is = load i32, ptr %i.gm, align 4, !tbaa !51 ; 7 uses
  %i.it = load i32, ptr %i.gk, align 8, !tbaa !52
  %i.iu = icmp eq i32 %i.is, %i.it
  br i1 %i.iu, label %bb.bj, label %.sink.split

bb.bj:                                            ; preds = %bb.bi
  %i.iv = icmp slt i32 %i.is, 16
  br i1 %i.iv, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %.not9.i.i124 = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i124, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef 64) #21
  br label %.sink.split.sink.split

bb.bm:                                            ; preds = %bb.bk
  %i.ix = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %.sink.split.sink.split

bb.bn:                                            ; preds = %bb.bj
  %i.iy = icmp samesign ult i32 %i.is, 1073741823
  %i.iz = shl nuw nsw i32 %i.is, 1
  %spec.select.i119 = select i1 %i.iy, i32 %i.iz, i32 2147483647 ; 4 uses
  %.not.i9.i120 = icmp samesign ult i32 %i.is, %spec.select.i119
  br i1 %.not.i9.i120, label %bb.bo, label %.sink.split

bb.bo:                                            ; preds = %bb.bn
  %.not9.i10.i121 = icmp eq ptr %i.hn, null
  %i.ja = zext nneg i32 %spec.select.i119 to i64
  %i.jb = shl nuw nsw i64 %i.ja, 2                ; 2 uses
  br i1 %.not9.i10.i121, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jc = tail call ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef %i.jb) #21
  br label %.sink.split.sink.split

bb.bq:                                            ; preds = %bb.bo
  %i.jd = tail call noalias ptr @malloc(i64 noundef %i.jb) #20
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.bm, %bb.bl, %bb.bq, %bb.bp, %bb.bd, %bb.bc, %bb.bh, %bb.bg
  %storemerge.sink = phi ptr [ %i.ik, %bb.bh ], [ %i.ie, %bb.bd ], [ %i.id, %bb.bc ], [ %i.ij, %bb.bg ], [ %i.ix, %bb.bm ], [ %i.iw, %bb.bl ], [ %i.jc, %bb.bp ], [ %i.jd, %bb.bq ] ; 3 uses
  %spec.select.sink.i123.sink = phi i32 [ %spec.select.i111, %bb.bh ], [ 16, %bb.bd ], [ 16, %bb.bc ], [ %spec.select.i111, %bb.bg ], [ 16, %bb.bm ], [ 16, %bb.bl ], [ %spec.select.i119, %bb.bp ], [ %spec.select.i119, %bb.bq ]
  %.sink212.ph = phi i32 [ %i.hy, %bb.bh ], [ %i.hy, %bb.bd ], [ %i.hy, %bb.bc ], [ %i.hy, %bb.bg ], [ %i.ir, %bb.bm ], [ %i.ir, %bb.bl ], [ %i.ir, %bb.bp ], [ %i.ir, %bb.bq ]
  store ptr %storemerge.sink, ptr %i.hg, align 8, !tbaa !19
  store i32 %spec.select.sink.i123.sink, ptr %i.gk, align 8, !tbaa !52
  %.pre165 = load i32, ptr %i.gm, align 4, !tbaa !51
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.bn, %bb.bi, %bb.be, %bb.az
  %.sink218 = phi i32 [ %i.is, %bb.bn ], [ %i.hz, %bb.az ], [ %i.hz, %bb.be ], [ %i.is, %bb.bi ], [ %.pre165, %.sink.split.sink.split ] ; 2 uses
  %.sink214 = phi ptr [ %i.hm, %bb.bn ], [ %i.hl, %bb.az ], [ %i.hl, %bb.be ], [ %i.hm, %bb.bi ], [ %storemerge.sink, %.sink.split.sink.split ] ; 3 uses
  %.sink212 = phi i32 [ %i.ir, %bb.bn ], [ %i.hy, %bb.az ], [ %i.hy, %bb.be ], [ %i.ir, %bb.bi ], [ %.sink212.ph, %.sink.split.sink.split ]
  %.ph209 = phi ptr [ %i.hl, %bb.bn ], [ %i.hl, %bb.az ], [ %i.hl, %bb.be ], [ %i.hl, %bb.bi ], [ %storemerge.sink, %.sink.split.sink.split ]
  %i.je = add nsw i32 %.sink218, 1
  store i32 %i.je, ptr %i.gm, align 4, !tbaa !51
  %i.jf = sext i32 %.sink218 to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %.sink214, i64 %i.jf
  store i32 %.sink212, ptr %i.jg, align 4, !tbaa !22
  br label %bb.br

bb.br:                                            ; preds = %.sink.split, %.lr.ph
  %i.jh = phi ptr [ %i.hl, %.lr.ph ], [ %.ph209, %.sink.split ] ; 2 uses
  %i.ji = phi ptr [ %i.hm, %.lr.ph ], [ %.sink214, %.sink.split ]
  %i.jj = phi ptr [ %i.hn, %.lr.ph ], [ %.sink214, %.sink.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.br, %Vec_IntPush.exit110
  %.val80 = phi ptr [ %i.hh, %Vec_IntPush.exit110 ], [ %i.jh, %bb.br ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.val80, i64 4 ; 7 uses
  %.val81 = load i32, ptr %i.gm, align 4, !tbaa !51 ; 3 uses
  %i.jl = icmp sgt i32 %.val81, 2
  br i1 %i.jl, label %.lr.ph27.preheader.i, label %Vec_IntSelectSort.exit

.lr.ph27.preheader.i:                             ; preds = %._crit_edge
  %i.jm = add nsw i32 %.val81, -1
  %i.jn = add nsw i32 %.val81, -2
  %wide.trip.count35.i = zext nneg i32 %i.jn to i64
  %wide.trip.count.i127 = zext nneg i32 %i.jm to i64 ; 3 uses
  %i.jo = add nsw i64 %wide.trip.count.i127, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv.i128 = phi i64 [ 1, %.lr.ph27.preheader.i ], [ %indvars.iv.next.i133, %._crit_edge.i ] ; 3 uses
  %i.jp = xor i64 %indvars.iv32.i, -1
  %i.jq = add nsw i64 %i.jp, %wide.trip.count.i127
  %i.jr = sub i64 %i.jo, %indvars.iv32.i
  %i.js = trunc nuw nsw i64 %indvars.iv32.i to i32 ; 2 uses
  %.phi.trans.insert.i129 = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv32.i ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i129, align 4, !tbaa !22 ; 3 uses
  %xtraiter232 = and i64 %i.jq, 3                 ; 2 uses
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol

.lr.ph.i130.prol:                                 ; preds = %.lr.ph.preheader.i, %.lr.ph.i130.prol
  %i.jt = phi i32 [ %i.jy, %.lr.ph.i130.prol ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv29.i.prol = phi i64 [ %indvars.iv.next30.i.prol, %.lr.ph.i130.prol ], [ %indvars.iv.i128, %.lr.ph.preheader.i ] ; 3 uses
  %.024.i.prol = phi i32 [ %spec.select.i131.prol, %.lr.ph.i130.prol ], [ %i.js, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i130.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv29.i.prol
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !22 ; 2 uses
  %i.jw = icmp slt i32 %i.jv, %i.jt
  %i.jx = trunc nuw nsw i64 %indvars.iv29.i.prol to i32
  %spec.select.i131.prol = select i1 %i.jw, i32 %i.jx, i32 %.024.i.prol ; 3 uses
  %indvars.iv.next30.i.prol = add nuw nsw i64 %indvars.iv29.i.prol, 1 ; 2 uses
  %i.jy = tail call i32 @llvm.smin.i32(i32 %i.jv, i32 %i.jt) ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter232
  br i1 %prol.iter.cmp.not, label %.lr.ph.i130.prol.loopexit, label %.lr.ph.i130.prol, !llvm.loop !83

.lr.ph.i130.prol.loopexit:                        ; preds = %.lr.ph.i130.prol, %.lr.ph.preheader.i
  %spec.select.i131.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i131.prol, %.lr.ph.i130.prol ]
  %.unr = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %i.jy, %.lr.ph.i130.prol ]
  %indvars.iv29.i.unr = phi i64 [ %indvars.iv.i128, %.lr.ph.preheader.i ], [ %indvars.iv.next30.i.prol, %.lr.ph.i130.prol ]
  %.024.i.unr = phi i32 [ %i.js, %.lr.ph.preheader.i ], [ %spec.select.i131.prol, %.lr.ph.i130.prol ]
  %i.jz = icmp ult i64 %i.jr, 3
  br i1 %i.jz, label %._crit_edge.i, label %.lr.ph.i130

.lr.ph.i130:                                      ; preds = %.lr.ph.i130.prol.loopexit, %.lr.ph.i130
  %i.ka = phi i32 [ %i.ku, %.lr.ph.i130 ], [ %.unr, %.lr.ph.i130.prol.loopexit ] ; 2 uses
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i.3, %.lr.ph.i130 ], [ %indvars.iv29.i.unr, %.lr.ph.i130.prol.loopexit ] ; 6 uses
  %.024.i = phi i32 [ %spec.select.i131.3, %.lr.ph.i130 ], [ %.024.i.unr, %.lr.ph.i130.prol.loopexit ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv29.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !22 ; 2 uses
  %i.kd = icmp slt i32 %i.kc, %i.ka
  %i.ke = trunc nuw nsw i64 %indvars.iv29.i to i32
  %spec.select.i131 = select i1 %i.kd, i32 %i.ke, i32 %.024.i
end_hunk_1
begin_hunk_2_@Gia_ManFxInsert:bb.a
.lr.ph378:                                        ; preds = %Vec_IntFillExtra.exit
  %i.fn = getelementptr i8, ptr %i.g, i64 8
  %i.fo = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.fp = getelementptr i8, ptr %i.ao, i64 8      ; 5 uses
  %i.fq = getelementptr i8, ptr %2, i64 8
  %i.fr = sext i32 %.val227.val to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph378, %bb.cj
  %.promoted364438 = phi ptr [ %i.fb, %.lr.ph378 ], [ %.promoted364439, %bb.cj ] ; 2 uses
  %.val189 = phi ptr [ %.val189435, %.lr.ph378 ], [ %.val202, %bb.cj ]
  %indvars.iv416 = phi i64 [ %i.fr, %.lr.ph378 ], [ %indvars.iv.next417, %bb.cj ] ; 2 uses
  %.val199 = load ptr, ptr %i.fn, align 8, !tbaa !19
  %i.fs = getelementptr inbounds [4 x i8], ptr %.val199, i64 %indvars.iv416
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !22 ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  %.val198 = load ptr, ptr %i.fv, align 8, !tbaa !19
  %i.fw = sext i32 %i.ft to i64                   ; 4 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %.val198, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !22 ; 3 uses
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  %.val197 = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gb = getelementptr inbounds [4 x i8], ptr %.val197, i64 %i.fw
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !22 ; 4 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !51
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph342.preheader, label %.thread

.thread:                                          ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  br label %.sink.split

.lr.ph342.preheader:                              ; preds = %bb.ak
  %i.ge = sext i32 %i.fy to i64
  %wide.trip.count = zext nneg i32 %i.gc to i64
  br label %.lr.ph342

.lr.ph342:                                        ; preds = %.lr.ph342.preheader, %.critedge4
  %indvars.iv386 = phi i64 [ 0, %.lr.ph342.preheader ], [ %indvars.iv.next387, %.critedge4 ] ; 2 uses
  %.val232 = load ptr, ptr %i.fo, align 8, !tbaa !76
  %i.gf = getelementptr [16 x i8], ptr %.val232, i64 %indvars.iv386
  %i.gg = getelementptr [16 x i8], ptr %i.gf, i64 %i.ge ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 4      ; 2 uses
  %.val219338 = load i32, ptr %i.gh, align 4, !tbaa !51 ; 2 uses
  %i.gi = icmp sgt i32 %.val219338, 1
  br i1 %i.gi, label %.lr.ph340, label %.critedge4

.lr.ph340:                                        ; preds = %.lr.ph342
  %i.gj = getelementptr i8, ptr %i.gg, i64 8
  %.val195 = load ptr, ptr %i.fp, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph340, %bb.av
  %.val219431 = phi i32 [ %.val219338, %.lr.ph340 ], [ %.val219, %bb.av ]
  %indvars.iv = phi i64 [ 1, %.lr.ph340 ], [ %indvars.iv.next, %bb.av ] ; 2 uses
  %.val196 = load ptr, ptr %i.gj, align 8, !tbaa !19
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.val196, i64 %indvars.iv
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !22
  %i.gm = ashr i32 %i.gl, 1                       ; 2 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %.val195, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !22
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %bb.am, label %bb.av

bb.am:                                            ; preds = %bb.al
  %.val218 = load i32, ptr %i.fi, align 4, !tbaa !51 ; 8 uses
  store i32 %.val218, ptr %i.go, align 4, !tbaa !22
  %i.gr = load i32, ptr %i.fh, align 8, !tbaa !52
  %i.gs = icmp eq i32 %.val218, %i.gr
  br i1 %i.gs, label %bb.an, label %.Vec_IntPush.exit266_crit_edge

.Vec_IntPush.exit266_crit_edge:                   ; preds = %bb.am
  %.pre428 = load ptr, ptr %i.fk, align 8, !tbaa !19
  br label %Vec_IntPush.exit266

bb.an:                                            ; preds = %bb.am
  %i.gt = icmp slt i32 %.val218, 16
  br i1 %i.gt, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.gu = load ptr, ptr %i.fk, align 8, !tbaa !19 ; 2 uses
  %.not9.i.i264 = icmp eq ptr %i.gu, null
  br i1 %.not9.i.i264, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gv = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.gu, i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.aq:                                            ; preds = %bb.ao
  %i.gw = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.ar:                                            ; preds = %bb.an
  %i.gx = icmp samesign ult i32 %.val218, 1073741823
  %i.gy = shl nuw nsw i32 %.val218, 1
  %spec.select.i259 = select i1 %i.gx, i32 %i.gy, i32 2147483647 ; 4 uses
  %.not.i9.i260 = icmp samesign ult i32 %.val218, %spec.select.i259
  %.pre429 = load ptr, ptr %i.fk, align 8, !tbaa !19 ; 3 uses
  br i1 %.not.i9.i260, label %bb.as, label %Vec_IntPush.exit266

bb.as:                                            ; preds = %bb.ar
  %.not9.i10.i261 = icmp eq ptr %.pre429, null
  %i.gz = zext nneg i32 %spec.select.i259 to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  br i1 %.not9.i10.i261, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hb = call ptr @realloc(ptr noundef nonnull %.pre429, i64 noundef %i.ha) #21
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.au:                                            ; preds = %bb.as
  %i.hc = call noalias ptr @malloc(i64 noundef %i.ha) #20
  br label %Vec_IntGrow.exit11.sink.split.i262

Vec_IntGrow.exit11.sink.split.i262:               ; preds = %bb.at, %bb.au, %bb.ap, %bb.aq
  %storemerge334 = phi ptr [ %i.gw, %bb.aq ], [ %i.gv, %bb.ap ], [ %i.hb, %bb.at ], [ %i.hc, %bb.au ] ; 2 uses
  %spec.select.sink.i263 = phi i32 [ 16, %bb.aq ], [ 16, %bb.ap ], [ %spec.select.i259, %bb.at ], [ %spec.select.i259, %bb.au ]
  store ptr %storemerge334, ptr %i.fk, align 8, !tbaa !19
  store i32 %spec.select.sink.i263, ptr %i.fh, align 8, !tbaa !52
  %.pre430 = load i32, ptr %i.fi, align 4, !tbaa !51
  br label %Vec_IntPush.exit266

Vec_IntPush.exit266:                              ; preds = %.Vec_IntPush.exit266_crit_edge, %bb.ar, %Vec_IntGrow.exit11.sink.split.i262
  %i.hd = phi i32 [ %.val218, %.Vec_IntPush.exit266_crit_edge ], [ %.val218, %bb.ar ], [ %.pre430, %Vec_IntGrow.exit11.sink.split.i262 ] ; 2 uses
  %i.he = phi ptr [ %.pre428, %.Vec_IntPush.exit266_crit_edge ], [ %.pre429, %bb.ar ], [ %storemerge334, %Vec_IntGrow.exit11.sink.split.i262 ]
  %i.hf = add nsw i32 %i.hd, 1
  store i32 %i.hf, ptr %i.fi, align 4, !tbaa !51
  %i.hg = sext i32 %i.hd to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.he, i64 %i.hg
  store i32 %i.gm, ptr %i.hh, align 4, !tbaa !22
  %.val219.pre = load i32, ptr %i.gh, align 4, !tbaa !51
  br label %bb.av

bb.av:                                            ; preds = %bb.al, %Vec_IntPush.exit266
  %.val219 = phi i32 [ %.val219431, %bb.al ], [ %.val219.pre, %Vec_IntPush.exit266 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hi = sext i32 %.val219 to i64
  %i.hj = icmp slt i64 %indvars.iv.next, %i.hi
  br i1 %i.hj, label %bb.al, label %.critedge4, !llvm.loop !101

.critedge4:                                       ; preds = %bb.av, %.lr.ph342
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next387, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph342, !llvm.loop !102

._crit_edge:                                      ; preds = %.critedge4
  %.val217.pre = load i32, ptr %i.fi, align 4, !tbaa !51 ; 3 uses
  %i.hk = icmp sgt i32 %.val217.pre, 6
  br i1 %i.hk, label %.preheader.preheader, label %.lr.ph349

.preheader.preheader:                             ; preds = %._crit_edge
  store i32 0, ptr %i.fa, align 4, !tbaa !80
  %i.hl = sext i32 %i.fy to i64
  %wide.trip.count411 = zext nneg i32 %i.gc to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %Vec_StrPush.exit295
  %.promoted364 = phi ptr [ %.promoted364438, %.preheader.preheader ], [ %i.kk, %Vec_StrPush.exit295 ] ; 2 uses
  %.promoted359 = phi i32 [ 0, %.preheader.preheader ], [ %i.kl, %Vec_StrPush.exit295 ] ; 2 uses
  %indvars.iv408 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next409, %Vec_StrPush.exit295 ] ; 2 uses
  %.val216355 = load i32, ptr %i.fi, align 4, !tbaa !51
  %i.hm = icmp sgt i32 %.val216355, 0
  br i1 %i.hm, label %.lr.ph357, label %bb.bf

.lr.ph357:                                        ; preds = %.preheader
  %.promoted361 = load i32, ptr %i.ez, align 8, !tbaa !77
  %i.hn = sext i32 %.promoted359 to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph357, %Vec_StrPush.exit
  %indvars.iv402 = phi i64 [ %i.hn, %.lr.ph357 ], [ %indvars.iv.next403, %Vec_StrPush.exit ] ; 7 uses
  %storemerge333365 = phi ptr [ %.promoted364, %.lr.ph357 ], [ %storemerge333366, %Vec_StrPush.exit ] ; 6 uses
  %spec.select.sink.i270363 = phi i32 [ %.promoted361, %.lr.ph357 ], [ %spec.select.sink.i270362, %Vec_StrPush.exit ] ; 3 uses
  %.1356 = phi i32 [ 0, %.lr.ph357 ], [ %i.ia, %Vec_StrPush.exit ]
  %i.ho = trunc nsw i64 %indvars.iv402 to i32
  %i.hp = icmp eq i32 %spec.select.sink.i270363, %i.ho
  br i1 %i.hp, label %bb.ax, label %Vec_StrPush.exit

bb.ax:                                            ; preds = %bb.aw
  %i.hq = icmp slt i64 %indvars.iv402, 16
  br i1 %i.hq, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not9.i.i271 = icmp eq ptr %storemerge333365, null
  br i1 %.not9.i.i271, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hr = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %storemerge333365, i64 noundef 16) #21
  br label %Vec_StrPush.exit

bb.ba:                                            ; preds = %bb.ay
  %i.hs = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20
  br label %Vec_StrPush.exit

bb.bb:                                            ; preds = %bb.ax
  %i.ht = icmp samesign ult i64 %indvars.iv402, 1073741823
  %indvars.iv402.tr = trunc i64 %indvars.iv402 to i32
  %i.hu = shl i32 %indvars.iv402.tr, 1
  %spec.select.i267 = select i1 %i.ht, i32 %i.hu, i32 2147483647 ; 4 uses
  %i.hv = sext i32 %spec.select.i267 to i64
  %.not.i9.i268 = icmp samesign ult i64 %indvars.iv402, %i.hv
  br i1 %.not.i9.i268, label %bb.bc, label %Vec_StrPush.exit

bb.bc:                                            ; preds = %bb.bb
  %.not9.i10.i269 = icmp eq ptr %storemerge333365, null
  %i.hw = zext nneg i32 %spec.select.i267 to i64  ; 2 uses
  br i1 %.not9.i10.i269, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hx = call ptr @realloc(ptr noundef nonnull %storemerge333365, i64 noundef %i.hw) #21
  br label %Vec_StrPush.exit

bb.be:                                            ; preds = %bb.bc
  %i.hy = call noalias ptr @malloc(i64 noundef %i.hw) #20
  br label %Vec_StrPush.exit

Vec_StrPush.exit:                                 ; preds = %bb.ba, %bb.az, %bb.be, %bb.bd, %bb.aw, %bb.bb
  %storemerge333366 = phi ptr [ %storemerge333365, %bb.aw ], [ %storemerge333365, %bb.bb ], [ %i.hs, %bb.ba ], [ %i.hr, %bb.az ], [ %i.hx, %bb.bd ], [ %i.hy, %bb.be ] ; 4 uses
  %spec.select.sink.i270362 = phi i32 [ %spec.select.sink.i270363, %bb.aw ], [ %spec.select.sink.i270363, %bb.bb ], [ 16, %bb.ba ], [ 16, %bb.az ], [ %spec.select.i267, %bb.bd ], [ %spec.select.i267, %bb.be ] ; 2 uses
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, 1 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %storemerge333366, i64 %indvars.iv402
  store i8 45, ptr %i.hz, align 1, !tbaa !16
  %i.ia = add nuw nsw i32 %.1356, 1               ; 2 uses
  %.val216 = load i32, ptr %i.fi, align 4, !tbaa !51
  %i.ib = icmp slt i32 %i.ia, %.val216
  br i1 %i.ib, label %bb.aw, label %._crit_edge358, !llvm.loop !103

._crit_edge358:                                   ; preds = %Vec_StrPush.exit
  %i.ic = trunc nsw i64 %indvars.iv.next403 to i32 ; 2 uses
  store i32 %i.ic, ptr %i.fa, align 4, !tbaa !80
  store i32 %spec.select.sink.i270362, ptr %i.ez, align 8
  store ptr %storemerge333366, ptr %i.fc, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge358, %.preheader
  %.val229 = phi ptr [ %storemerge333366, %._crit_edge358 ], [ %.promoted364, %.preheader ]
  %.val234 = phi i32 [ %i.ic, %._crit_edge358 ], [ %.promoted359, %.preheader ] ; 2 uses
  %.val231 = load ptr, ptr %i.fo, align 8, !tbaa !76
  %i.id = getelementptr [16 x i8], ptr %.val231, i64 %indvars.iv408
  %i.ie = getelementptr [16 x i8], ptr %i.id, i64 %i.hl ; 2 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 4      ; 2 uses
  %.val215367 = load i32, ptr %i.if, align 4, !tbaa !51
  %i.ig = icmp sgt i32 %.val215367, 1
  br i1 %i.ig, label %.lr.ph370, label %.critedge6

.lr.ph370:                                        ; preds = %bb.bf
  %i.ih = getelementptr i8, ptr %i.ie, i64 8
  %.val209 = load ptr, ptr %i.fp, align 8, !tbaa !19
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph370, %bb.bg
  %indvars.iv405 = phi i64 [ 1, %.lr.ph370 ], [ %indvars.iv.next406, %bb.bg ] ; 2 uses
  %.val194 = load ptr, ptr %i.ih, align 8, !tbaa !19
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.val194, i64 %indvars.iv405
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !22 ; 2 uses
  %i.ik = ashr i32 %i.ij, 1
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %.val209, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !22
  %.val214 = load i32, ptr %i.fi, align 4, !tbaa !51
  %i.io = add i32 %.val234, %i.in
  %i.ip = sub i32 %i.io, %.val214
  %i.iq = and i32 %i.ij, 1
  %.not188 = icmp eq i32 %i.iq, 0
  %i.ir = select i1 %.not188, i8 49, i8 48
  %i.is = sext i32 %i.ip to i64
  %i.it = getelementptr inbounds i8, ptr %.val229, i64 %i.is
  store i8 %i.ir, ptr %i.it, align 1, !tbaa !16
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %.val215 = load i32, ptr %i.if, align 4, !tbaa !51
  %i.iu = sext i32 %.val215 to i64
  %i.iv = icmp slt i64 %indvars.iv.next406, %i.iu
  br i1 %i.iv, label %bb.bg, label %.critedge6.loopexit, !llvm.loop !104

.critedge6.loopexit:                              ; preds = %bb.bg
  %.pre442 = load i32, ptr %i.fa, align 4, !tbaa !80
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %bb.bf
  %i.iw = phi i32 [ %.pre442, %.critedge6.loopexit ], [ %.val234, %bb.bf ] ; 14 uses
  %i.ix = load i32, ptr %i.ez, align 8, !tbaa !77
  %i.iy = icmp eq i32 %i.iw, %i.ix
  br i1 %i.iy, label %bb.bh, label %.critedge6.Vec_StrPush.exit279_crit_edge

.critedge6.Vec_StrPush.exit279_crit_edge:         ; preds = %.critedge6
  %.pre443 = load ptr, ptr %i.fc, align 8, !tbaa !79
  br label %Vec_StrPush.exit279

bb.bh:                                            ; preds = %.critedge6
  %i.iz = icmp slt i32 %i.iw, 16
  br i1 %i.iz, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.ja = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 2 uses
  %.not9.i.i277 = icmp eq ptr %i.ja, null
  br i1 %.not9.i.i277, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jb = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef 16) #21
  br label %Vec_StrGrow.exit11.sink.split.i275

bb.bk:                                            ; preds = %bb.bi
  %i.jc = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20
  br label %Vec_StrGrow.exit11.sink.split.i275

bb.bl:                                            ; preds = %bb.bh
  %i.jd = icmp samesign ult i32 %i.iw, 1073741823
  %i.je = shl nuw nsw i32 %i.iw, 1
  %spec.select.i272 = select i1 %i.jd, i32 %i.je, i32 2147483647 ; 4 uses
  %.not.i9.i273 = icmp samesign ult i32 %i.iw, %spec.select.i272
  %.pre444 = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 3 uses
  br i1 %.not.i9.i273, label %bb.bm, label %Vec_StrPush.exit279

bb.bm:                                            ; preds = %bb.bl
  %.not9.i10.i274 = icmp eq ptr %.pre444, null
  %i.jf = zext nneg i32 %spec.select.i272 to i64  ; 2 uses
  br i1 %.not9.i10.i274, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jg = call ptr @realloc(ptr noundef nonnull %.pre444, i64 noundef %i.jf) #21
  br label %Vec_StrGrow.exit11.sink.split.i275

bb.bo:                                            ; preds = %bb.bm
  %i.jh = call noalias ptr @malloc(i64 noundef %i.jf) #20
  br label %Vec_StrGrow.exit11.sink.split.i275

Vec_StrGrow.exit11.sink.split.i275:               ; preds = %bb.bn, %bb.bo, %bb.bj, %bb.bk
  %storemerge330 = phi ptr [ %i.jc, %bb.bk ], [ %i.jb, %bb.bj ], [ %i.jg, %bb.bn ], [ %i.jh, %bb.bo ] ; 2 uses
  %spec.select.sink.i276 = phi i32 [ 16, %bb.bk ], [ 16, %bb.bj ], [ %spec.select.i272, %bb.bn ], [ %spec.select.i272, %bb.bo ]
  store ptr %storemerge330, ptr %i.fc, align 8, !tbaa !79
  store i32 %spec.select.sink.i276, ptr %i.ez, align 8, !tbaa !77
  br label %Vec_StrPush.exit279

Vec_StrPush.exit279:                              ; preds = %.critedge6.Vec_StrPush.exit279_crit_edge, %bb.bl, %Vec_StrGrow.exit11.sink.split.i275
  %i.ji = phi ptr [ %.pre443, %.critedge6.Vec_StrPush.exit279_crit_edge ], [ %.pre444, %bb.bl ], [ %storemerge330, %Vec_StrGrow.exit11.sink.split.i275 ] ; 2 uses
  %i.jj = add nsw i32 %i.iw, 1                    ; 7 uses
  store i32 %i.jj, ptr %i.fa, align 4, !tbaa !80
  %i.jk = sext i32 %i.iw to i64
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 %i.jk
  store i8 32, ptr %i.jl, align 1, !tbaa !16
  %i.jm = load i32, ptr %i.ez, align 8, !tbaa !77 ; 2 uses
  %i.jn = icmp eq i32 %i.jj, %i.jm
  br i1 %i.jn, label %bb.bp, label %Vec_StrPush.exit287

bb.bp:                                            ; preds = %Vec_StrPush.exit279
  %i.jo = icmp slt i32 %i.iw, 15
  br i1 %i.jo, label %Vec_StrGrow.exit11.sink.split.i283, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jp = icmp samesign ult i32 %i.iw, 1073741822
  %i.jq = shl nuw nsw i32 %i.jj, 1
  %spec.select.i280 = select i1 %i.jp, i32 %i.jq, i32 2147483647 ; 3 uses
  %.not.i9.i281 = icmp samesign ult i32 %i.jj, %spec.select.i280
  br i1 %.not.i9.i281, label %bb.br, label %Vec_StrPush.exit287.thread

Vec_StrPush.exit287.thread:                       ; preds = %bb.bq
  %i.jr = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 2 uses
  %i.js = add nuw nsw i32 %i.iw, 2
  %i.jt = zext nneg i32 %i.jj to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jt
  store i8 49, ptr %i.ju, align 1, !tbaa !16
  br label %Vec_StrPush.exit295

bb.br:                                            ; preds = %bb.bq
  %i.jv = zext nneg i32 %spec.select.i280 to i64
  br label %Vec_StrGrow.exit11.sink.split.i283

Vec_StrGrow.exit11.sink.split.i283:               ; preds = %bb.bp, %bb.br
  %.sink = phi i64 [ %i.jv, %bb.br ], [ 16, %bb.bp ]
  %spec.select.sink.i284 = phi i32 [ %spec.select.i280, %bb.br ], [ 16, %bb.bp ] ; 2 uses
  %i.jw = call ptr @realloc(ptr noundef nonnull %i.ji, i64 noundef %.sink) #21
  store ptr %i.jw, ptr %i.fc, align 8, !tbaa !79
  store i32 %spec.select.sink.i284, ptr %i.ez, align 8, !tbaa !77
  br label %Vec_StrPush.exit287

Vec_StrPush.exit287:                              ; preds = %Vec_StrPush.exit279, %Vec_StrGrow.exit11.sink.split.i283
  %i.jx = phi i32 [ %i.jm, %Vec_StrPush.exit279 ], [ %spec.select.sink.i284, %Vec_StrGrow.exit11.sink.split.i283 ] ; 5 uses
  %i.jy = load ptr, ptr %i.fc, align 8, !tbaa !79 ; 4 uses
  %i.jz = add nsw i32 %i.iw, 2                    ; 4 uses
  %i.ka = sext i32 %i.jj to i64
  %i.kb = getelementptr inbounds i8, ptr %i.jy, i64 %i.ka
  store i8 49, ptr %i.kb, align 1, !tbaa !16
  %i.kc = icmp eq i32 %i.jz, %i.jx
  br i1 %i.kc, label %bb.bs, label %Vec_StrPush.exit295

bb.bs:                                            ; preds = %Vec_StrPush.exit287
  %i.kd = icmp slt i32 %i.iw, 14
  br i1 %i.kd, label %Vec_StrGrow.exit11.sink.split.i291, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ke = icmp samesign ult i32 %i.iw, 1073741821
  %i.kf = shl nuw nsw i32 %i.jx, 1
  %spec.select.i288 = select i1 %i.ke, i32 %i.kf, i32 2147483647 ; 3 uses
  %.not.i9.i289 = icmp samesign ult i32 %i.jx, %spec.select.i288
  br i1 %.not.i9.i289, label %bb.bu, label %Vec_StrPush.exit295

bb.bu:                                            ; preds = %bb.bt
  %i.kg = zext nneg i32 %spec.select.i288 to i64
end_hunk_2
