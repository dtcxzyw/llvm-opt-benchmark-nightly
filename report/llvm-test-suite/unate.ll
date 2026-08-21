inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@unate_complement:bb.a
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !4
  %i.il = or i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !4
  %i.im = load i32, ptr %i.hy, align 8, !tbaa !23
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %.298130, i64 %i.in
  %i.ip = add nuw nsw i32 %.3131, 1               ; 2 uses
  %i.iq = load i32, ptr %i.hz, align 4, !tbaa !13
  %i.ir = icmp slt i32 %i.ip, %i.iq
  br i1 %i.ir, label %bb.u, label %._crit_edge133

._crit_edge133:                                   ; preds = %bb.u, %abs_covered.exit
  %i.is = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %i.it = icmp sgt i32 %i.is, 0
  br i1 %i.it, label %.lr.ph137, label %._crit_edge138

.lr.ph137:                                        ; preds = %._crit_edge133
  %i.iu = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.iv = ashr i32 %.014.lcssa2830.i, 5
  %i.iw = sext i32 %i.iv to i64
  %i.ix = and i32 %.014.lcssa2830.i, 31
  %i.iy = shl nuw i32 1, %i.ix                    ; 2 uses
  %i.iz = xor i32 %i.iy, -1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph137, %bb.x
  %i.ja = phi i32 [ %i.is, %.lr.ph137 ], [ %i.ji, %bb.x ]
  %.4135 = phi i32 [ 0, %.lr.ph137 ], [ %i.jm, %bb.x ]
  %.399134 = phi ptr [ %i.iu, %.lr.ph137 ], [ %i.jl, %bb.x ] ; 4 uses
  %i.jb = getelementptr [4 x i8], ptr %.399134, i64 %i.iw
  %i.jc = getelementptr i8, ptr %i.jb, i64 4      ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4  ; 2 uses
  %i.je = and i32 %i.jd, %i.iy
  %.not = icmp eq i32 %i.je, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = and i32 %i.jd, %i.iz
  store i32 %i.jf, ptr %i.jc, align 4, !tbaa !4
  %i.jg = load i32, ptr %.399134, align 4, !tbaa !4
  %i.jh = add i32 %i.jg, -65536
  store i32 %i.jh, ptr %.399134, align 4, !tbaa !4
  %.pre140 = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ji = phi i32 [ %i.ja, %bb.v ], [ %.pre140, %bb.w ] ; 2 uses
  %i.jj = load i32, ptr %0, align 8, !tbaa !23
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %.399134, i64 %i.jk
  %i.jm = add nuw nsw i32 %.4135, 1               ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %i.ji
  br i1 %i.jn, label %bb.v, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.x, %._crit_edge133
  %i.jo = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.jp = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.hy, ptr noundef %i.jo) #10
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph129, %abs_covered_many.exit, %._crit_edge138, %bb.l
  %.0100 = phi ptr [ %0, %bb.l ], [ %i.jp, %._crit_edge138 ], [ %i.ec, %abs_covered_many.exit ], [ %i.ec, %.lr.ph129 ] ; 2 uses
  %.not106 = icmp eq ptr %i.bg, null
  br i1 %.not106, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.bg) #10
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.y, %.loopexit, %bb.b
  %.1101 = phi ptr [ %i.e, %bb.b ], [ %i.u, %._crit_edge ], [ %.0100, %bb.y ], [ %.0100, %.loopexit ]
  ret ptr %.1101
}

declare void @sf_free(...) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #2

declare ptr @set_or(...) local_unnamed_addr #2

declare ptr @sf_append(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @exact_minimum_cover(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [32 x %struct.anon], align 16       ; 7 uses
  %i.a = tail call i64 (...) @util_cpu_time() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.f) #10
  br label %bb.s

.preheader:                                       ; preds = %bb.a, %.preheader
  %.093109 = phi i32 [ %i.i, %.preheader ], [ 0, %bb.a ]
  %.094108 = phi i32 [ %i.h, %.preheader ], [ %i.c, %bb.a ]
  %i.h = lshr i32 %.094108, 1                     ; 2 uses
  %i.i = add nuw nsw i32 %.093109, 1              ; 3 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %.preheader

bb.c:                                             ; preds = %.preheader
  %i.j = tail call ptr (ptr, ...) @sf_save(ptr noundef nonnull %0) #10
  %i.k = tail call ptr (ptr, ...) @lex_sort(ptr noundef %i.j) #10 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 8 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !22
  %i.n = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.m) #10 ; 5 uses
  store ptr %i.n, ptr %1, align 16, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.o, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.r = load i32, ptr %i.n, align 8, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13   ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !13
  %i.v = mul nsw i32 %i.t, %i.r
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.w
  %i.y = load i32, ptr %i.l, align 4, !tbaa !22
  %i.z = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.x, i32 noundef %i.y) #10 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 3 uses
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !23  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = mul nsw i32 %i.af, %i.ac
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ah
  %i.aj = mul nsw i32 %i.ae, %i.ac                ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %.idx = shl nsw i64 %i.ak, 2
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 %.idx
  %i.am = icmp sgt i32 %i.aj, 0
  br i1 %i.am, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.c, %.critedge
  %.1117 = phi i32 [ %.2.lcssa, %.critedge ], [ 1, %bb.c ] ; 3 uses
  %.096116 = phi ptr [ %i.ff, %.critedge ], [ %i.ab, %bb.c ] ; 4 uses
  %i.an = tail call i32 (ptr, ...) @set_ord(ptr noundef %.096116) #10
  %i.ao = load i32, ptr %i.l, align 4, !tbaa !22
  %i.ap = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.an, i32 noundef %i.ao) #10 ; 4 uses
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !22  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph119
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.au = phi i32 [ %i.aq, %.lr.ph ], [ %i.bp, %bb.f ] ; 2 uses
  %.095110 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %bb.f ] ; 3 uses
  %i.av = lshr i32 %.095110, 5
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.096116, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = and i32 %.095110, 31
  %i.bb = shl nuw i32 1, %i.ba                    ; 2 uses
  %i.bc = and i32 %i.az, %i.bb
  %.not107 = icmp eq i32 %i.bc, 0
  br i1 %.not107, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !23
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !13
  %i.bh = mul nsw i32 %i.bf, %i.be
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.bj, i32 noundef %i.au) #10
  %i.bl = xor i32 %i.bb, -1
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ax ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !4
  %.pre = load i32, ptr %i.l, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.bp = phi i32 [ %i.au, %bb.d ], [ %.pre, %bb.e ] ; 2 uses
  %i.bq = add nuw nsw i32 %.095110, 1             ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph119
  %i.bs = sext i32 %.1117 to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bs ; 2 uses
  store ptr %i.ap, ptr %i.bt, align 16, !tbaa !36
  %i.bu = add nsw i32 %.1117, 1                   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.i, ptr %i.bv, align 8, !tbaa !38
  %i.bw = icmp sgt i32 %.1117, 0
  br i1 %i.bw, label %.lr.ph113, label %.critedge

.lr.ph113:                                        ; preds = %._crit_edge
  %i.bx = icmp eq ptr %.096116, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph113, %bb.o
  %.2111 = phi i32 [ %i.bu, %.lr.ph113 ], [ %3, %bb.o ] ; 4 uses
  %2 = zext nneg i32 %.2111 to i64
  %i.by = getelementptr [16 x i8], ptr %1, i64 %2 ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !38 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 -32    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 -24    ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !38 ; 2 uses
  %i.ce = icmp eq i32 %i.ca, %i.cd
  %i.cf = select i1 %i.ce, i1 true, i1 %i.bx
  br i1 %i.cf, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr i8, ptr %i.by, i64 -16
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !36 ; 6 uses
  %i.ci = load ptr, ptr %i.cb, align 16, !tbaa !36 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.cl = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.ck) #10 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !23 ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp                ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %.idx.i = shl nsw i64 %i.cs, 2
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.lr.ph104.i, label %._crit_edge105.thread.i

._crit_edge105.thread.i:                          ; preds = %bb.h
  %i.cv = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.cl) #10
  br label %unate_intersect.exit

.lr.ph104.i:                                      ; preds = %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %.pre130.i = load i32, ptr %i.ci, align 8, !tbaa !23
  br label %.lr.ph104.split.i

.lr.ph104.split.i:                                ; preds = %._crit_edge.split.us.i, %.lr.ph104.i
  %i.da = phi i32 [ %i.ed, %._crit_edge.split.us.i ], [ %i.cq, %.lr.ph104.i ]
  %i.db = phi i32 [ %i.ee, %._crit_edge.split.us.i ], [ %.pre130.i, %.lr.ph104.i ] ; 2 uses
  %.054101.i = phi ptr [ %.155.lcssa.i, %._crit_edge.split.us.i ], [ null, %.lr.ph104.i ] ; 2 uses
  %.057100.i = phi ptr [ %.158.lcssa.i, %._crit_edge.split.us.i ], [ %i.cl, %.lr.ph104.i ] ; 2 uses
  %.06099.i = phi ptr [ %.161.lcssa.i, %._crit_edge.split.us.i ], [ %i.cx, %.lr.ph104.i ] ; 2 uses
  %.06597.i = phi ptr [ %i.eg, %._crit_edge.split.us.i ], [ %i.cn, %.lr.ph104.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !16 ; 2 uses
  %i.dd = load i32, ptr %i.cz, align 4, !tbaa !13
  %i.de = mul nsw i32 %i.dd, %i.db                ; 2 uses
  %i.df = sext i32 %i.de to i64
  %.idx125.i = shl nsw i64 %i.df, 2
  %i.dg = getelementptr inbounds i8, ptr %i.dc, i64 %.idx125.i
  %i.dh = icmp sgt i32 %i.de, 0
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph104.split.i, %.thread80.us.i
  %.15589.us.i = phi ptr [ %.4.us.i, %.thread80.us.i ], [ %.054101.i, %.lr.ph104.split.i ] ; 4 uses
  %.15888.us.i = phi ptr [ %.259.us.i, %.thread80.us.i ], [ %.057100.i, %.lr.ph104.split.i ] ; 6 uses
  %.16187.us.i = phi ptr [ %.363.us.i, %.thread80.us.i ], [ %.06099.i, %.lr.ph104.split.i ] ; 3 uses
  %.06486.us.i = phi ptr [ %i.eb, %.thread80.us.i ], [ %i.dc, %.lr.ph104.split.i ] ; 2 uses
  %i.di = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us.i, ptr noundef %.06597.i, ptr noundef %.06486.us.i) #10
  %.not69.us.i = icmp eq i32 %i.di, 0
  br i1 %.not69.us.i, label %.thread80.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 12 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !39
  %.not70.us.i = icmp slt i32 %i.dl, %i.dn
  br i1 %.not70.us.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.thread.us.i
  %i.do = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us.i) #10 ; 2 uses
  %i.dp = icmp eq ptr %.15589.us.i, null
  br i1 %i.dp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15589.us.i, ptr noundef %i.do) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dr = phi ptr [ %i.dq, %bb.j ], [ %i.do, %bb.i ]
  %i.ds = load i32, ptr %i.cj, align 4, !tbaa !22
  %i.dt = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.ds) #10 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !16
  br label %.thread80.us.i

bb.l:                                             ; preds = %.thread.us.i
  %i.dw = load i32, ptr %.15888.us.i, align 8, !tbaa !23
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.16187.us.i, i64 %i.dx
  br label %.thread80.us.i

.thread80.us.i:                                   ; preds = %bb.l, %bb.k, %.lr.ph.i
  %.363.us.i = phi ptr [ %i.dv, %bb.k ], [ %i.dy, %bb.l ], [ %.16187.us.i, %.lr.ph.i ] ; 2 uses
  %.259.us.i = phi ptr [ %i.dt, %bb.k ], [ %.15888.us.i, %bb.l ], [ %.15888.us.i, %.lr.ph.i ] ; 2 uses
  %.4.us.i = phi ptr [ %i.dr, %bb.k ], [ %.15589.us.i, %bb.l ], [ %.15589.us.i, %.lr.ph.i ] ; 2 uses
  %i.dz = load i32, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %.06486.us.i, i64 %i.ea ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.dg
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.split.us.loopexit.i

._crit_edge.split.us.loopexit.i:                  ; preds = %.thread80.us.i
  %.pre131.i = load i32, ptr %i.ch, align 8, !tbaa !23
  br label %._crit_edge.split.us.i

._crit_edge.split.us.i:                           ; preds = %._crit_edge.split.us.loopexit.i, %.lr.ph104.split.i
  %i.ed = phi i32 [ %i.da, %.lr.ph104.split.i ], [ %.pre131.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %i.ee = phi i32 [ %i.db, %.lr.ph104.split.i ], [ %i.dz, %._crit_edge.split.us.loopexit.i ]
  %.161.lcssa.i = phi ptr [ %.06099.i, %.lr.ph104.split.i ], [ %.363.us.i, %._crit_edge.split.us.loopexit.i ]
  %.158.lcssa.i = phi ptr [ %.057100.i, %.lr.ph104.split.i ], [ %.259.us.i, %._crit_edge.split.us.loopexit.i ] ; 2 uses
  %.155.lcssa.i = phi ptr [ %.054101.i, %.lr.ph104.split.i ], [ %.4.us.i, %._crit_edge.split.us.loopexit.i ] ; 3 uses
  %i.ef = sext i32 %i.ed to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %.06597.i, i64 %i.ef ; 2 uses
  %i.eh = icmp ult ptr %i.eg, %i.ct
  br i1 %i.eh, label %.lr.ph104.split.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge.split.us.i
  %i.ei = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.158.lcssa.i) #10 ; 2 uses
  %i.ej = icmp eq ptr %.155.lcssa.i, null
  br i1 %i.ej, label %unate_intersect.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge105.i
  %i.ek = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.155.lcssa.i, ptr noundef %i.ei) #10
  br label %unate_intersect.exit

unate_intersect.exit:                             ; preds = %._crit_edge105.thread.i, %._crit_edge105.i, %bb.m
  %i.el = phi ptr [ %i.ek, %bb.m ], [ %i.ei, %._crit_edge105.i ], [ %i.cv, %._crit_edge105.thread.i ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cd) ; 2 uses
  %i.em = add nsw i32 %., -1                      ; 2 uses
  %i.en = load i32, ptr @debug, align 4, !tbaa !4
  %i.eo = and i32 %i.en, 2048
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = icmp slt i32 %., 11
  %or.cond = and i1 %i.eq, %i.ep
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %unate_intersect.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !13
  %i.et = load i32, ptr %i.co, align 4, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !13
  %i.ew = tail call i64 (...) @util_cpu_time() #10
  %i.ex = sub nsw i64 %i.ew, %i.a
  %i.ey = tail call ptr @util_print_time(i64 noundef %i.ex) #10
  %i.ez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.em, i32 noundef %i.es, i32 noundef %i.et, i32 noundef %i.ev, ptr noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !40
  %i.fb = tail call i32 @fflush(ptr noundef %i.fa) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %unate_intersect.exit
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ci) #10
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.ch) #10
  store ptr %i.el, ptr %i.cb, align 16, !tbaa !36
  store i32 %i.em, ptr %i.cc, align 8, !tbaa !38
  %3 = add nsw i32 %.2111, -1                     ; 2 uses
  %i.fc = icmp sgt i32 %.2111, 2
  br i1 %i.fc, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.g, %._crit_edge
  %.2.lcssa = phi i32 [ %i.bu, %._crit_edge ], [ %.2111, %bb.g ], [ %3, %bb.o ]
  %i.fd = load i32, ptr %i.k, align 8, !tbaa !23
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.096116, i64 %i.fe ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %i.al
  br i1 %i.fg, label %.lr.ph119, label %._crit_edge120.loopexit

._crit_edge120.loopexit:                          ; preds = %.critedge
  %.pre128 = load ptr, ptr %1, align 16, !tbaa !36
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %bb.c
  %i.fh = phi ptr [ %.pre128, %._crit_edge120.loopexit ], [ %i.n, %bb.c ] ; 6 uses
  %i.fi = load i32, ptr %i.l, align 4, !tbaa !22  ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 33
  %i.fk = add nsw i32 %i.fi, -1
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = and i32 %i.fl, 536870908
  %i.fn = add nuw nsw i32 %i.fm, 8
  %narrow = select i1 %i.fj, i32 8, i32 %i.fn
  %i.fo = zext nneg i32 %narrow to i64
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.fo) #11
  %i.fq = load i32, ptr %i.l, align 4, !tbaa !22
  %i.fr = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fp, i32 noundef %i.fq) #10
  %i.fs = load i32, ptr %i.l, align 4, !tbaa !22
  %i.ft = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.fr, i32 noundef %i.fs) #10 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !13
  %i.fy = load i32, ptr %i.fh, align 8, !tbaa !23
  %i.fz = mul nsw i32 %i.fy, %i.fx                ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.idx125 = shl nsw i64 %i.ga, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %.idx125
  %i.gc = icmp sgt i32 %i.fz, 0
  br i1 %i.gc, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %._crit_edge120
  %scevgep143.a = getelementptr i8, ptr %i.ft, i64 4
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.preheader, %.loopexit
  %.197121 = phi ptr [ %i.hl, %.loopexit ], [ %i.fv, %.lr.ph123.preheader ] ; 7 uses
  %i.gd = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %i.ge = and i32 %i.gd, 1023
  %i.gf = load i32, ptr %.197121, align 4, !tbaa !4
  %i.gg = and i32 %i.gf, -1024
  %i.gh = or disjoint i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %.197121, align 4, !tbaa !4
  %i.gi = and i32 %i.gd, 1023                     ; 3 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 6 uses
  %i.gk = icmp ne i32 %i.gi, 0
  %.neg = sext i1 %i.gk to i64
  %i.gl = add nuw nsw i64 %i.gj, 1
  %i.gm = add nsw i64 %i.gl, %.neg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.gm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %.not148 = icmp eq i32 %i.gi, 0
  %i.gn = select i1 %.not148, i64 0, i64 4        ; 2 uses
  %scevgep = getelementptr i8, ptr %.197121, i64 %i.gn
  %scevgep140 = getelementptr i8, ptr %.197121, i64 4
  %i.go = shl nuw nsw i64 %i.gj, 2                ; 2 uses
  %scevgep141 = getelementptr i8, ptr %scevgep140, i64 %i.go
  %scevgep142 = getelementptr i8, ptr %i.ft, i64 %i.gn
  %scevgep144 = getelementptr i8, ptr %scevgep143.a, i64 %i.go
  %bound0 = icmp ult ptr %scevgep, %scevgep144
  %bound1 = icmp ult ptr %scevgep142, %scevgep141
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gm, -8                      ; 3 uses
  %i.gp = sub nsw i64 %i.gj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gq = sub i64 %i.gj, %index                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gq ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -12
  %i.gt = getelementptr inbounds i8, ptr %i.gr, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gs, align 4, !tbaa !4, !alias.scope !42
  %wide.load145 = load <4 x i32>, ptr %i.gt, align 4, !tbaa !4, !alias.scope !42
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %i.gq ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -12 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -28 ; 2 uses
  %wide.load146 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %wide.load147 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %i.gx = xor <4 x i32> %wide.load146, splat (i32 -1)
  %i.gy = xor <4 x i32> %wide.load147, splat (i32 -1)
  %i.gz = and <4 x i32> %wide.load, %i.gx
  %i.ha = and <4 x i32> %wide.load145, %i.gy
  store <4 x i32> %i.gz, ptr %i.gv, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  store <4 x i32> %i.ha, ptr %i.gw, align 4, !tbaa !4, !alias.scope !45, !noalias !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gj, %vector.memcheck ], [ %i.gj, %.lr.ph123 ], [ %i.gp, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.a
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !4
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %indvars.iv.a ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = xor i32 %i.hf, -1
  %i.hh = and i32 %i.hd, %i.hg
  store i32 %i.hh, ptr %i.he, align 4, !tbaa !4
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %i.hi = icmp samesign ugt i64 %indvars.iv.a, 1
  br i1 %i.hi, label %scalar.ph, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.hj = load i32, ptr %i.fh, align 8, !tbaa !23
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %.197121, i64 %i.hk ; 2 uses
  %i.hm = icmp ult ptr %i.hl, %i.gb
  br i1 %i.hm, label %.lr.ph123, label %._crit_edge124.thread

._crit_edge124:                                   ; preds = %._crit_edge120
  %.not105 = icmp eq ptr %i.ft, null
  br i1 %.not105, label %bb.p, label %._crit_edge124.thread

._crit_edge124.thread:                            ; preds = %.loopexit, %._crit_edge124
  tail call void @free(ptr noundef nonnull %i.ft) #10
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge124.thread, %._crit_edge124
  %i.hn = load i32, ptr @debug, align 4, !tbaa !4
  %i.ho = and i32 %i.hn, 4096
  %.not106 = icmp eq i32 %i.ho, 0
  br i1 %.not106, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @sf_print(ptr noundef nonnull %i.fh) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.k) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.b
  %.098 = phi ptr [ %i.g, %bb.b ], [ %i.fh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %.098
}

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare ptr @lex_sort(...) local_unnamed_addr #2

declare ptr @sf_save(...) local_unnamed_addr #2

declare ptr @set_fill(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare void @sf_print(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @unate_intersect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %i.c = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.b) #10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph104, label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %bb.a
  %i.m = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.c) #10
  br label %bb.p

.lr.ph104:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 2 uses
end_hunk_0
