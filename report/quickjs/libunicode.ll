inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@cr_sort_and_remove_overlap:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.018039.i.lcssa, i64 %i.aw ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !9
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !9
  %.not2.i.i = icmp ugt i32 %i.bb, %i.bc
  %i.bd = add i64 %i.ax, 16
  %spec.select86.i.i = select i1 %.not2.i.i, i64 %i.aw, i64 %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.180.i.i = phi i64 [ %i.aw, %bb.k ], [ %spec.select86.i.i, %bb.l ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.018039.i.lcssa, i64 %.1788.i.i ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.018039.i.lcssa, i64 %.180.i.i ; 2 uses
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bi = icmp ugt i32 %i.bg, %i.bh
  br i1 %i.bi, label %._crit_edge11.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void %.0.i.i.i(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, i64 noundef 8) #21, !inline_history !75
  %i.bj = shl i64 %.180.i.i, 1                    ; 2 uses
  %i.bk = add i64 %i.bj, 8                        ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %.116.i.i
  br i1 %i.bl, label %bb.k, label %._crit_edge11.i.i, !llvm.loop !78

._crit_edge11.i.i:                                ; preds = %bb.n, %bb.m, %.lr.ph17.i.i
  %.1.i.i = add i64 %.116.i.i, -8                 ; 2 uses
  %.not85.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph17.i.i, !llvm.loop !79

.lr.ph159:                                        ; preds = %.lr.ph43.preheader.i, %.lr.ph43.i
  %.in = phi i32 [ %i.bm, %.lr.ph43.i ], [ %i.t, %.lr.ph43.preheader.i ]
  %.018039.i158 = phi ptr [ %.1181.i, %.lr.ph43.i ], [ %i.o, %.lr.ph43.preheader.i ] ; 12 uses
  %.116741.i157 = phi ptr [ %.2168.i, %.lr.ph43.i ], [ %i.n, %.lr.ph43.preheader.i ] ; 4 uses
  %.042.i156 = phi i64 [ %.1.i, %.lr.ph43.i ], [ %i.q, %.lr.ph43.preheader.i ] ; 3 uses
  %i.bm = add nsw i32 %.in, 1                     ; 3 uses
  %i.bn = shl i64 %.042.i156, 1
  %i.bo = and i64 %i.bn, -8                       ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.018039.i158, i64 %i.bo ; 3 uses
  %i.bq = shl i64 %i.bo, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.018039.i158, i64 %i.bq ; 3 uses
  %i.bs = mul i64 %i.bo, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %.018039.i158, i64 %i.bs ; 3 uses
  %i.bu = load i32, ptr %i.bp, align 4, !tbaa !9  ; 3 uses
  %i.bv = load i32, ptr %i.br, align 4, !tbaa !9  ; 3 uses
  %i.bw = icmp ult i32 %i.bu, %i.bv
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !9  ; 4 uses
  br i1 %i.bw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.lr.ph159
  %i.by = icmp ult i32 %i.bv, %i.bx
  br i1 %i.by, label %med3.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = icmp ult i32 %i.bu, %i.bx
  %i.ca = select i1 %i.bz, ptr %i.bt, ptr %i.bp
  br label %med3.exit.i

bb.q:                                             ; preds = %.lr.ph159
  %i.cb = icmp ugt i32 %i.bv, %i.bx
  br i1 %i.cb, label %med3.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp ult i32 %i.bu, %i.bx
  %i.cd = select i1 %i.cc, ptr %i.bp, ptr %i.bt
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.ce = phi ptr [ %i.ca, %bb.p ], [ %i.cd, %bb.r ], [ %i.br, %bb.o ], [ %i.br, %bb.q ]
  call void %.0.i104.i(ptr noundef nonnull %.018039.i158, ptr noundef nonnull %i.ce, i64 noundef 8) #21, !inline_history !80
  %i.cf = getelementptr inbounds nuw i8, ptr %.018039.i158, i64 8 ; 2 uses
  %i.cg = shl i64 %.042.i156, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %.018039.i158, i64 %i.cg ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.z, %med3.exit.i
  %.0191.i = phi ptr [ %i.ch, %med3.exit.i ], [ %i.ct, %bb.z ] ; 3 uses
  %.0188.i = phi ptr [ %i.cf, %med3.exit.i ], [ %.1189.lcssa.i, %bb.z ] ; 2 uses
  %.0185.i = phi ptr [ %i.ch, %med3.exit.i ], [ %.118624.i, %bb.z ] ; 2 uses
  %.0182.i = phi ptr [ %i.cf, %med3.exit.i ], [ %i.dc, %bb.z ] ; 3 uses
  %.0178.i = phi i64 [ 1, %med3.exit.i ], [ %i.db, %bb.z ] ; 2 uses
  %.0175.i = phi i64 [ 1, %med3.exit.i ], [ %.1176.lcssa.i, %bb.z ] ; 2 uses
  %.0172.i = phi i64 [ %.042.i156, %med3.exit.i ], [ %.117325.i, %bb.z ] ; 2 uses
  %i.ci = icmp ult ptr %.0182.i, %.0191.i
  br i1 %i.ci, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.s, %bb.v
  %.117615.i = phi i64 [ %.2177.i, %bb.v ], [ %.0175.i, %bb.s ] ; 3 uses
  %.117914.i = phi i64 [ %i.co, %bb.v ], [ %.0178.i, %bb.s ] ; 2 uses
  %.118313.i = phi ptr [ %i.cp, %bb.v ], [ %.0182.i, %bb.s ] ; 4 uses
  %.118912.i = phi ptr [ %.2190.i, %bb.v ], [ %.0188.i, %bb.s ] ; 4 uses
  %i.cj = load i32, ptr %.018039.i158, align 4, !tbaa !9 ; 2 uses
  %i.ck = load i32, ptr %.118313.i, align 4, !tbaa !9 ; 2 uses
  %.not.i = icmp ult i32 %i.cj, %i.ck
  br i1 %.not.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void %.0.i104.i(ptr noundef %.118912.i, ptr noundef nonnull %.118313.i, i64 noundef 8) #21, !inline_history !80
  %i.cm = add i64 %.117615.i, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.118912.i, i64 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2190.i = phi ptr [ %i.cn, %bb.u ], [ %.118912.i, %bb.t ] ; 2 uses
  %.2177.i = phi i64 [ %i.cm, %bb.u ], [ %.117615.i, %bb.t ] ; 2 uses
  %i.co = add i64 %.117914.i, 1                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.118313.i, i64 8 ; 3 uses
  %i.cq = icmp ult ptr %i.cp, %.0191.i
  br i1 %i.cq, label %.lr.ph.i, label %.critedge.i, !llvm.loop !81

.critedge.i:                                      ; preds = %bb.v, %.lr.ph.i, %bb.s
  %.1189.lcssa.i = phi ptr [ %.0188.i, %bb.s ], [ %.118912.i, %.lr.ph.i ], [ %.2190.i, %bb.v ] ; 2 uses
  %.1183.lcssa.i = phi ptr [ %.0182.i, %bb.s ], [ %.118313.i, %.lr.ph.i ], [ %i.cp, %bb.v ] ; 7 uses
  %.1179.lcssa.i = phi i64 [ %.0178.i, %bb.s ], [ %.117914.i, %.lr.ph.i ], [ %i.co, %bb.v ] ; 3 uses
  %.1176.lcssa.i = phi i64 [ %.0175.i, %bb.s ], [ %.117615.i, %.lr.ph.i ], [ %.2177.i, %bb.v ] ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.0191.i, i64 -8 ; 2 uses
  %i.cs = icmp ult ptr %.1183.lcssa.i, %i.cr
  br i1 %i.cs, label %.lr.ph26.i, label %.critedge3.i

.lr.ph26.i:                                       ; preds = %.critedge.i, %bb.y
  %i.ct = phi ptr [ %i.cz, %bb.y ], [ %i.cr, %.critedge.i ] ; 5 uses
  %.117325.i = phi i64 [ %.2174.i, %bb.y ], [ %.0172.i, %.critedge.i ] ; 3 uses
  %.118624.i = phi ptr [ %.2187.i, %bb.y ], [ %.0185.i, %.critedge.i ] ; 3 uses
  %i.cu = load i32, ptr %.018039.i158, align 4, !tbaa !9 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !9  ; 2 uses
  %.not1.i = icmp ugt i32 %i.cu, %i.cv
  br i1 %.not1.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph26.i
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cx = add i64 %.117325.i, -1
  %i.cy = getelementptr inbounds i8, ptr %.118624.i, i64 -8 ; 2 uses
  call void %.0.i104.i(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.ct, i64 noundef 8) #21, !inline_history !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.2187.i = phi ptr [ %i.cy, %bb.x ], [ %.118624.i, %bb.w ] ; 2 uses
  %.2174.i = phi i64 [ %i.cx, %bb.x ], [ %.117325.i, %bb.w ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 2 uses
  %i.da = icmp ult ptr %.1183.lcssa.i, %i.cz
  br i1 %i.da, label %.lr.ph26.i, label %.critedge3.i, !llvm.loop !82

bb.z:                                             ; preds = %.lr.ph26.i
  call void %.0.i104.i(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.ct, i64 noundef 8) #21, !inline_history !80
  %i.db = add i64 %.1179.lcssa.i, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.1183.lcssa.i, i64 8
  br label %bb.s

.critedge3.i:                                     ; preds = %.critedge.i, %bb.y
  %.1186.lcssa.i = phi ptr [ %.2187.i, %bb.y ], [ %.0185.i, %.critedge.i ]
  %.1173.lcssa.i = phi i64 [ %.2174.i, %bb.y ], [ %.0172.i, %.critedge.i ]
  %i.dd = ptrtoint ptr %.1189.lcssa.i to i64      ; 2 uses
  %i.de = ptrtoint ptr %.018039.i158 to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ptrtoint ptr %.1183.lcssa.i to i64      ; 2 uses
  %i.dh = sub i64 %i.dg, %i.dd
  %i.di = sub i64 %.1179.lcssa.i, %.1176.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dh) ; 2 uses
  %i.dj = sub i64 0, %spec.select.i
  %i.dk = getelementptr inbounds i8, ptr %.1183.lcssa.i, i64 %i.dj
  call void %.0.i209.i(ptr noundef nonnull %.018039.i158, ptr noundef %i.dk, i64 noundef %spec.select.i) #21, !inline_history !80
  %i.dl = ptrtoint ptr %i.ch to i64
  %i.dm = ptrtoint ptr %.1186.lcssa.i to i64      ; 2 uses
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = sub i64 %i.dm, %i.dg                    ; 2 uses
  %i.dp = sub i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.ch, i64 %i.dp ; 2 uses
  %i.dr = sub i64 %.1173.lcssa.i, %.1179.lcssa.i  ; 3 uses
  %.1171.i = call i64 @llvm.umin.i64(i64 %i.dn, i64 %i.do) ; 2 uses
  %i.ds = sub i64 0, %.1171.i
  %i.dt = getelementptr inbounds i8, ptr %i.ch, i64 %i.ds
  call void %.0.i209.i(ptr noundef %.1183.lcssa.i, ptr noundef nonnull %i.dt, i64 noundef %.1171.i) #21, !inline_history !80
  %i.du = icmp ugt i64 %i.di, %i.dr
  br i1 %i.du, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge3.i
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge3.i
  %.sink71.i = phi ptr [ %i.dq, %bb.aa ], [ %.018039.i158, %.critedge3.i ]
  %.sink.i = phi i64 [ %i.dr, %bb.aa ], [ %i.di, %.critedge3.i ]
  %.1181.i = phi ptr [ %.018039.i158, %bb.aa ], [ %i.dq, %.critedge3.i ] ; 3 uses
  %.1.i = phi i64 [ %i.di, %bb.aa ], [ %i.dr, %.critedge3.i ] ; 4 uses
  store ptr %.sink71.i, ptr %.116741.i157, align 8, !tbaa !69
  %i.dv = getelementptr inbounds nuw i8, ptr %.116741.i157, i64 8
  store i64 %.sink.i, ptr %i.dv, align 8, !tbaa !71
  %i.dw = getelementptr inbounds nuw i8, ptr %.116741.i157, i64 16
  store i32 %i.bm, ptr %i.dw, align 8, !tbaa !72
  %.2168.i = getelementptr inbounds nuw i8, ptr %.116741.i157, i64 24 ; 3 uses
  %i.dx = icmp ugt i64 %.1.i, 6
  br i1 %i.dx, label %.lr.ph43.i, label %heapsortx.exit.i, !llvm.loop !74

heapsortx.exit.i:                                 ; preds = %bb.ab, %bb.g
  %.018011.i = phi ptr [ %i.o, %bb.g ], [ %.1181.i, %bb.ab ] ; 3 uses
  %.11679.i = phi ptr [ %i.n, %bb.g ], [ %.2168.i, %bb.ab ] ; 2 uses
  %.2.i = phi i64 [ %i.q, %bb.g ], [ %.1.i, %bb.ab ] ; 2 uses
  %i.dy = shl nuw nsw i64 %.2.i, 3
  %i.dz = getelementptr inbounds nuw i8, ptr %.018011.i, i64 %i.dy
  %i.ea = icmp samesign ugt i64 %.2.i, 1
  br i1 %i.ea, label %.preheader.preheader.i, label %.loopexit.i

.preheader.preheader.i:                           ; preds = %heapsortx.exit.i
  %.218450.i = getelementptr inbounds nuw i8, ptr %.018011.i, i64 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge5.i, %.preheader.preheader.i
  %.218451.i = phi ptr [ %.2184.i, %.critedge5.i ], [ %.218450.i, %.preheader.preheader.i ] ; 2 uses
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.preheader.i, %bb.ac
  %.219347.i = phi ptr [ %i.eb, %bb.ac ], [ %.218451.i, %.preheader.i ] ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.219347.i, i64 -8 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !9
  %i.ed = load i32, ptr %.219347.i, align 4, !tbaa !9
  %i.ee = icmp ugt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.ac, label %.critedge5.i

bb.ac:                                            ; preds = %.lr.ph48.i
  call void %.0.i104.i(ptr noundef nonnull %.219347.i, ptr noundef nonnull %i.eb, i64 noundef 8) #21, !inline_history !80
  %i.ef = icmp ugt ptr %i.eb, %.018011.i
  br i1 %i.ef, label %.lr.ph48.i, label %.critedge5.i, !llvm.loop !83

.critedge5.i:                                     ; preds = %.lr.ph48.i, %bb.ac
  %.2184.i = getelementptr inbounds nuw i8, ptr %.218451.i, i64 8 ; 2 uses
  %i.eg = icmp ult ptr %.2184.i, %i.dz
  br i1 %i.eg, label %.preheader.i, label %.loopexit.i, !llvm.loop !84

rqsort.exit.loopexit:                             ; preds = %.loopexit.i
  %.pre = load i32, ptr %0, align 8, !tbaa !26
  br label %rqsort.exit

rqsort.exit:                                      ; preds = %rqsort.exit.loopexit, %exchange_func.exit210.i
  %i.eh = phi i32 [ %.pre, %rqsort.exit.loopexit ], [ %i.c, %exchange_func.exit210.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.not = icmp eq i32 %i.eh, 0
  br i1 %.not, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %rqsort.exit
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !24  ; 6 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph62, %._crit_edge
  %i.ej = phi i32 [ %i.eh, %.lr.ph62 ], [ %i.fh, %._crit_edge ] ; 2 uses
  %.061 = phi i32 [ 0, %.lr.ph62 ], [ %i.fg, %._crit_edge ] ; 3 uses
  %.03060 = phi i32 [ 0, %.lr.ph62 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.ek = zext i32 %.03060 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = add nuw i32 %.03060, 1
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !9  ; 2 uses
  %.152 = add i32 %.03060, 2                      ; 3 uses
  %i.er = icmp ult i32 %.152, %i.ej
  br i1 %i.er, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.155 = phi i32 [ %.1, %bb.ae ], [ %.152, %bb.ad ] ; 4 uses
  %.1.in54 = phi i32 [ %.155, %bb.ae ], [ %.03060, %bb.ad ]
  %.03153 = phi i32 [ %..031, %bb.ae ], [ %i.eq, %bb.ad ] ; 3 uses
  %i.es = zext i32 %.155 to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9
  %i.ev = icmp ugt i32 %i.eu, %.03153
  br i1 %i.ev, label %._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ew = add i32 %.1.in54, 3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !9
  %..031 = call i32 @llvm.umax.i32(i32 %i.ez, i32 %.03153) ; 2 uses
  %.1 = add i32 %.155, 2                          ; 3 uses
  %i.fa = icmp ult i32 %.1, %i.ej
  br i1 %i.fa, label %.lr.ph, label %._crit_edge, !llvm.loop !85

._crit_edge:                                      ; preds = %bb.ae, %.lr.ph, %bb.ad
  %.031.lcssa = phi i32 [ %i.eq, %bb.ad ], [ %.03153, %.lr.ph ], [ %..031, %bb.ae ]
  %.1.lcssa = phi i32 [ %.152, %bb.ad ], [ %.155, %.lr.ph ], [ %.1, %bb.ae ] ; 2 uses
  %i.fb = zext i32 %.061 to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fb
  store i32 %i.em, ptr %i.fc, align 4, !tbaa !9
  %i.fd = or disjoint i32 %.061, 1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.fe
  store i32 %.031.lcssa, ptr %i.ff, align 4, !tbaa !9
  %i.fg = add i32 %.061, 2                        ; 2 uses
  %i.fh = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.fi = icmp ult i32 %.1.lcssa, %i.fh
  br i1 %i.fi, label %bb.ad, label %._crit_edge63, !llvm.loop !86

._crit_edge63:                                    ; preds = %._crit_edge, %rqsort.exit
  %.0.lcssa = phi i32 [ 0, %rqsort.exit ], [ %i.fg, %._crit_edge ]
  store i32 %.0.lcssa, ptr %0, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_general_category(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01929.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.02028.i = phi ptr [ %i.i, %bb.h ], [ @unicode_gc_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.02028.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01929.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !12
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !58

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = icmp samesign ult i32 %.01929.i, 30
  %i.m = zext nneg i32 %.01929.i to i64           ; 2 uses
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.n = shl nuw nsw i64 1, %i.m
  %i.o = trunc nuw nsw i64 %i.n to i32
  br label %bb.k

bb.j:                                             ; preds = %unicode_find_name.exit
  %i.p = getelementptr [4 x i8], ptr @unicode_gc_mask_table, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 -120
  %i.r = load i32, ptr %i.q, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.s = tail call fastcc i32 @unicode_general_category1(ptr noundef %0, i32 noundef %.0)
  br label %unicode_find_name.exit.thread

unicode_find_name.exit.thread:                    ; preds = %bb.h, %bb.k
  %.07 = phi i32 [ %i.s, %bb.k ], [ -2, %bb.h ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_general_category1(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %1, 6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.phi.trans.insert.i60 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = lshr i32 %1, 2
  %.lobit = and i32 %i.e, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.04275 = phi i32 [ 0, %bb.a ], [ %i.ac, %.loopexit ] ; 3 uses
  %.043.idx74 = phi i64 [ 0, %bb.a ], [ %.1.idx, %.loopexit ] ; 5 uses
  %.043.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.043.idx74 ; 2 uses
  %.043.add = add nuw nsw i64 %.043.idx74, 1      ; 2 uses
  %i.f = load i8, ptr %.043.ptr, align 1, !tbaa !12
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 5                         ; 2 uses
  %i.i = and i32 %i.g, 31                         ; 2 uses
  %i.j = icmp eq i32 %i.h, 7
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.043.add
  %.add = add nuw nsw i64 %.043.idx74, 2          ; 2 uses
  %i.k = load i8, ptr %.ptr, align 1, !tbaa !12   ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.l, 7
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.ptr52 = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.add
  %i.o = icmp samesign ult i8 %i.k, -64
  %i.p = load i8, ptr %.ptr52, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.l, 8
  %.add51 = add nuw nsw i64 %.043.idx74, 3
  %i.s = add nsw i32 %i.r, -32633
  %i.t = add nuw nsw i32 %i.s, %i.q
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.l, 16
end_hunk_0
