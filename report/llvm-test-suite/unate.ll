Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/unate?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@unate_complement:bb.a

bb.u:                                             ; preds = %.lr.ph132, %bb.u
  %.3131 = phi i32 [ 0, %.lr.ph132 ], [ %i.ip, %bb.u ]
  %.298130 = phi ptr [ %i.id, %.lr.ph132 ], [ %i.io, %bb.u ] ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %.298130, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 4      ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7
  %i.il = or i32 %i.ik, %i.if
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !7
  %i.im = load i32, ptr %i.hy, align 8, !tbaa !20
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
  %i.iu = load ptr, ptr %i.bj, align 8, !tbaa !14
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
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !7  ; 2 uses
  %i.je = and i32 %i.jd, %i.iy
  %.not = icmp eq i32 %i.je, 0
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jf = and i32 %i.jd, %i.iz
  store i32 %i.jf, ptr %i.jc, align 4, !tbaa !7
  %i.jg = load i32, ptr %.399134, align 4, !tbaa !7
  %i.jh = add i32 %i.jg, -65536
  store i32 %i.jh, ptr %.399134, align 4, !tbaa !7
  %.pre140 = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ji = phi i32 [ %i.ja, %bb.v ], [ %.pre140, %bb.w ] ; 2 uses
  %i.jj = load i32, ptr %0, align 8, !tbaa !20
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %.399134, i64 %i.jk
  %i.jm = add nuw nsw i32 %.4135, 1               ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %i.ji
  br i1 %i.jn, label %bb.v, label %._crit_edge138

._crit_edge138:                                   ; preds = %bb.x, %._crit_edge133
  %i.jo = tail call ptr @unate_complement(ptr noundef nonnull %0)
  %i.jp = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %i.hy, ptr noundef %i.jo) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph129, %abs_covered_many.exit, %._crit_edge138, %bb.l
  %.0100 = phi ptr [ %0, %bb.l ], [ %i.jp, %._crit_edge138 ], [ %i.ec, %abs_covered_many.exit ], [ %i.ec, %.lr.ph129 ] ; 2 uses
  %.not106 = icmp eq ptr %i.bg, null
  br i1 %.not106, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.bg) #11
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
  %i.a = tail call i64 (...) @util_cpu_time() #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.e = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e                 ; 2 uses
  %i.g = tail call ptr (ptr, ...) @sf_save(ptr noundef nonnull %0) #11
  %i.h = tail call ptr (ptr, ...) @lex_sort(ptr noundef %i.g) #11 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 8 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.j) #11 ; 5 uses
  store ptr %i.k, ptr %1, align 16, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.f, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14
  %i.o = load i32, ptr %i.k, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13   ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !13
  %i.s = mul nsw i32 %i.q, %i.o
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.t
  %i.v = load i32, ptr %i.i, align 4, !tbaa !19
  %i.w = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.u, i32 noundef %i.v) #11 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 3 uses
  %i.z = load i32, ptr %i.h, align 8, !tbaa !20   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = mul nsw i32 %i.ac, %i.z
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ae
  %i.ag = mul nsw i32 %i.ab, %i.z                 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %.idx = shl nsw i64 %i.ah, 2
  %i.ai = getelementptr inbounds i8, ptr %i.y, i64 %.idx
  %i.aj = icmp sgt i32 %i.ag, 0
  br i1 %i.aj, label %.lr.ph119, label %._crit_edge120

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !19
  %i.am = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.al) #11
  br label %bb.r

.lr.ph119:                                        ; preds = %.preheader.preheader, %.critedge
  %.1117 = phi i32 [ %.2.lcssa, %.critedge ], [ 1, %.preheader.preheader ] ; 3 uses
  %.096116 = phi ptr [ %i.ff, %.critedge ], [ %i.y, %.preheader.preheader ] ; 4 uses
  %i.an = tail call i32 (ptr, ...) @set_ord(ptr noundef %.096116) #11
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !19
  %i.ap = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.an, i32 noundef %i.ao) #11 ; 4 uses
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !19  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph119
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi i32 [ %i.aq, %.lr.ph ], [ %i.bp, %bb.e ] ; 2 uses
  %.095110 = phi i32 [ 0, %.lr.ph ], [ %i.bq, %bb.e ] ; 3 uses
  %i.av = lshr i32 %.095110, 5
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.096116, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = and i32 %.095110, 31
  %i.bb = shl nuw i32 1, %i.ba                    ; 2 uses
  %i.bc = and i32 %i.az, %i.bb
  %.not107 = icmp eq i32 %i.bc, 0
  br i1 %.not107, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.be = load i32, ptr %i.ap, align 8, !tbaa !20
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !13 ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.at, align 4, !tbaa !13
  %i.bh = mul nsw i32 %i.bf, %i.be
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.bj, i32 noundef %i.au) #11
  %i.bl = xor i32 %i.bb, -1
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ax ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = and i32 %i.bn, %i.bl
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !7
  %.pre = load i32, ptr %i.i, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bp = phi i32 [ %i.au, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.bq = add nuw nsw i32 %.095110, 1             ; 2 uses
  %i.br = icmp slt i32 %i.bq, %i.bp
  br i1 %i.br, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.lr.ph119
  %i.bs = sext i32 %.1117 to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %1, i64 %i.bs ; 2 uses
  store ptr %i.ap, ptr %i.bt, align 16, !tbaa !43
  %i.bu = add i32 %.1117, 1                       ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i32 %i.f, ptr %i.bv, align 8, !tbaa !44
  %i.bw = icmp sgt i32 %.1117, 0
  br i1 %i.bw, label %.lr.ph113, label %.critedge

.lr.ph113:                                        ; preds = %._crit_edge
  %i.bx = icmp eq ptr %.096116, %i.af
  %2 = zext i32 %i.bu to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bu, i32 2)
  %3 = add i32 %smin, -1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph113, %bb.n
  %indvars.iv = phi i64 [ %2, %.lr.ph113 ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.by = getelementptr [16 x i8], ptr %1, i64 %indvars.iv ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !44 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.by, i64 -32    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 -24    ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !44 ; 2 uses
  %i.ce = icmp eq i32 %i.ca, %i.cd
  %i.cf = select i1 %i.ce, i1 true, i1 %i.bx
  %4 = trunc nuw i64 %indvars.iv to i32           ; 2 uses
  br i1 %i.cf, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr i8, ptr %i.by, i64 -16
  %i.ch = load ptr, ptr %i.cg, align 16, !tbaa !43 ; 6 uses
  %i.ci = load ptr, ptr %i.cb, align 16, !tbaa !43 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19
  %i.cl = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.ck) #11 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !13
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !20 ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp                ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %.idx.i = shl nsw i64 %i.cs, 2
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %.idx.i
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.lr.ph104.i, label %._crit_edge105.thread.i

._crit_edge105.thread.i:                          ; preds = %bb.g
  %i.cv = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.cl) #11
  br label %unate_intersect.exit

.lr.ph104.i:                                      ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %.pre130.i = load i32, ptr %i.ci, align 8, !tbaa !20
  br label %.lr.ph104.split.i

.lr.ph104.split.i:                                ; preds = %._crit_edge.split.us.i, %.lr.ph104.i
  %i.da = phi i32 [ %i.ed, %._crit_edge.split.us.i ], [ %i.cq, %.lr.ph104.i ]
  %i.db = phi i32 [ %i.ee, %._crit_edge.split.us.i ], [ %.pre130.i, %.lr.ph104.i ] ; 2 uses
  %.054101.i = phi ptr [ %.155.lcssa.i, %._crit_edge.split.us.i ], [ null, %.lr.ph104.i ] ; 2 uses
  %.057100.i = phi ptr [ %.158.lcssa.i, %._crit_edge.split.us.i ], [ %i.cl, %.lr.ph104.i ] ; 2 uses
  %.06099.i = phi ptr [ %.161.lcssa.i, %._crit_edge.split.us.i ], [ %i.cx, %.lr.ph104.i ] ; 2 uses
  %.06597.i = phi ptr [ %i.eg, %._crit_edge.split.us.i ], [ %i.cn, %.lr.ph104.i ] ; 2 uses
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !14 ; 2 uses
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
  %i.di = tail call i32 (ptr, ptr, ptr, ...) @set_andp(ptr noundef %.16187.us.i, ptr noundef %.06597.i, ptr noundef %.06486.us.i) #11
  %.not69.us.i = icmp eq i32 %i.di, 0
  br i1 %.not69.us.i, label %.thread80.us.i, label %.thread.us.i

.thread.us.i:                                     ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 12 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !13
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.15888.us.i, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !23
  %.not70.us.i = icmp slt i32 %i.dl, %i.dn
  br i1 %.not70.us.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread.us.i
  %i.do = tail call ptr (ptr, ...) @sf_contain(ptr noundef nonnull %.15888.us.i) #11 ; 2 uses
  %i.dp = icmp eq ptr %.15589.us.i, null
  br i1 %i.dp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.15589.us.i, ptr noundef %i.do) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dr = phi ptr [ %i.dq, %bb.i ], [ %i.do, %bb.h ]
  %i.ds = load i32, ptr %i.cj, align 4, !tbaa !19
  %i.dt = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.ds) #11 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !14
  br label %.thread80.us.i

bb.k:                                             ; preds = %.thread.us.i
  %i.dw = load i32, ptr %.15888.us.i, align 8, !tbaa !20
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.16187.us.i, i64 %i.dx
  br label %.thread80.us.i

.thread80.us.i:                                   ; preds = %bb.k, %bb.j, %.lr.ph.i
  %.363.us.i = phi ptr [ %i.dv, %bb.j ], [ %i.dy, %bb.k ], [ %.16187.us.i, %.lr.ph.i ] ; 2 uses
  %.259.us.i = phi ptr [ %i.dt, %bb.j ], [ %.15888.us.i, %bb.k ], [ %.15888.us.i, %.lr.ph.i ] ; 2 uses
  %.4.us.i = phi ptr [ %i.dr, %bb.j ], [ %.15589.us.i, %bb.k ], [ %.15589.us.i, %.lr.ph.i ] ; 2 uses
  %i.dz = load i32, ptr %i.ci, align 8, !tbaa !20 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %.06486.us.i, i64 %i.ea ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.dg
  br i1 %i.ec, label %.lr.ph.i, label %._crit_edge.split.us.loopexit.i

._crit_edge.split.us.loopexit.i:                  ; preds = %.thread80.us.i
  %.pre131.i = load i32, ptr %i.ch, align 8, !tbaa !20
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
  %i.ei = tail call ptr (ptr, ...) @sf_contain(ptr noundef %.158.lcssa.i) #11 ; 2 uses
  %i.ej = icmp eq ptr %.155.lcssa.i, null
  br i1 %i.ej, label %unate_intersect.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge105.i
  %i.ek = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef nonnull %.155.lcssa.i, ptr noundef %i.ei) #11
  br label %unate_intersect.exit

unate_intersect.exit:                             ; preds = %._crit_edge105.thread.i, %._crit_edge105.i, %bb.l
  %i.el = phi ptr [ %i.ek, %bb.l ], [ %i.ei, %._crit_edge105.i ], [ %i.cv, %._crit_edge105.thread.i ] ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cd) ; 2 uses
  %i.em = add nsw i32 %., -1                      ; 2 uses
  %i.en = load i32, ptr @debug, align 4, !tbaa !7
  %i.eo = and i32 %i.en, 2048
  %i.ep = icmp ne i32 %i.eo, 0
  %i.eq = icmp slt i32 %., 11
  %or.cond = and i1 %i.eq, %i.ep
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %unate_intersect.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !13
  %i.et = load i32, ptr %i.co, align 4, !tbaa !13
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !13
  %i.ew = tail call i64 (...) @util_cpu_time() #11
  %i.ex = sub nsw i64 %i.ew, %i.a
  %i.ey = tail call ptr @util_print_time(i64 noundef %i.ex) #11
  %i.ez = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.em, i32 noundef %i.es, i32 noundef %i.et, i32 noundef %i.ev, ptr noundef %i.ey) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !46
  %i.fb = tail call i32 @fflush(ptr noundef %i.fa) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %unate_intersect.exit
  tail call void (ptr, ...) @sf_free(ptr noundef %i.ci) #11
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.ch) #11
  store ptr %i.el, ptr %i.cb, align 16, !tbaa !43
  store i32 %i.em, ptr %i.cc, align 8, !tbaa !44
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fc = icmp sgt i32 %4, 2
  br i1 %i.fc, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.n, %bb.f, %._crit_edge
  %.2.lcssa = phi i32 [ %i.bu, %._crit_edge ], [ %4, %bb.f ], [ %3, %bb.n ]
  %i.fd = load i32, ptr %i.h, align 8, !tbaa !20
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %.096116, i64 %i.fe ; 2 uses
  %i.fg = icmp ult ptr %i.ff, %i.ai
  br i1 %i.fg, label %.lr.ph119, label %._crit_edge120.loopexit

._crit_edge120.loopexit:                          ; preds = %.critedge
  %.pre128 = load ptr, ptr %1, align 16, !tbaa !43
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %.preheader.preheader
  %i.fh = phi ptr [ %.pre128, %._crit_edge120.loopexit ], [ %i.k, %.preheader.preheader ] ; 6 uses
  %i.fi = load i32, ptr %i.i, align 4, !tbaa !19  ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 33
  %i.fk = add nsw i32 %i.fi, -1
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = and i32 %i.fl, 536870908
  %i.fn = add nuw nsw i32 %i.fm, 8
  %narrow = select i1 %i.fj, i32 8, i32 %i.fn
  %i.fo = zext nneg i32 %narrow to i64
  %i.fp = tail call noalias ptr @malloc(i64 noundef %i.fo) #12
  %i.fq = load i32, ptr %i.i, align 4, !tbaa !19
  %i.fr = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.fp, i32 noundef %i.fq) #11
  %i.fs = load i32, ptr %i.i, align 4, !tbaa !19
  %i.ft = tail call ptr (ptr, i32, ...) @set_fill(ptr noundef %i.fr, i32 noundef %i.fs) #11 ; 7 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !14 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !13
  %i.fy = load i32, ptr %i.fh, align 8, !tbaa !20
  %i.fz = mul nsw i32 %i.fy, %i.fx                ; 2 uses
  %i.ga = sext i32 %i.fz to i64
  %.idx125 = shl nsw i64 %i.ga, 2
  %i.gb = getelementptr inbounds i8, ptr %i.fv, i64 %.idx125
  %i.gc = icmp sgt i32 %i.fz, 0
  br i1 %i.gc, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge120, %.loopexit
  %.197121 = phi ptr [ %i.hq, %.loopexit ], [ %i.fv, %._crit_edge120 ] ; 7 uses
  %i.gd = load i32, ptr %i.ft, align 4, !tbaa !7  ; 2 uses
  %i.ge = and i32 %i.gd, 1023
  %i.gf = load i32, ptr %.197121, align 4, !tbaa !7
  %i.gg = and i32 %i.gf, -1024
  %i.gh = or disjoint i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %.197121, align 4, !tbaa !7
  %i.gi = and i32 %i.gd, 1023                     ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64              ; 6 uses
  %i.gk = icmp ne i32 %i.gi, 0                    ; 2 uses
  %.neg = sext i1 %i.gk to i64
  %i.gl = add nuw nsw i64 %i.gj, 1
  %i.gm = add nsw i64 %i.gl, %.neg                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.gm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.gn = select i1 %i.gk, i64 4, i64 0           ; 2 uses
  %i.go = getelementptr i8, ptr %.197121, i64 %i.gn
  %i.gp = shl nuw nsw i64 %i.gj, 2
  %i.gq = add nuw nsw i64 %i.gp, 4                ; 2 uses
  %i.gr = getelementptr i8, ptr %.197121, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.ft, i64 %i.gn
  %i.gt = getelementptr i8, ptr %i.ft, i64 %i.gq
  %bound0 = icmp ult ptr %i.go, %i.gt
  %bound1 = icmp ult ptr %i.gs, %i.gr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gm, -8                      ; 3 uses
  %i.gu = sub nsw i64 %i.gj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gv = sub i64 %i.gj, %index                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -12
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gx, align 4, !tbaa !7, !alias.scope !47
  %wide.load143 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !7, !alias.scope !47
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %i.gv ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -12 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -28 ; 2 uses
  %wide.load144 = load <4 x i32>, ptr %i.ha, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %wide.load145 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %i.hc = xor <4 x i32> %wide.load144, splat (i32 -1)
  %i.hd = xor <4 x i32> %wide.load145, splat (i32 -1)
  %i.he = and <4 x i32> %wide.load, %i.hc
  %i.hf = and <4 x i32> %wide.load143, %i.hd
  store <4 x i32> %i.he, ptr %i.ha, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  store <4 x i32> %i.hf, ptr %i.hb, align 4, !tbaa !7, !alias.scope !48, !noalias !47
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph123, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gj, %vector.memcheck ], [ %i.gj, %.lr.ph123 ], [ %i.gu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.a
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !7
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.197121, i64 %indvars.iv.a ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = xor i32 %i.hk, -1
  %i.hm = and i32 %i.hi, %i.hl
  store i32 %i.hm, ptr %i.hj, align 4, !tbaa !7
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1
  %i.hn = icmp samesign ugt i64 %indvars.iv.a, 1
  br i1 %i.hn, label %scalar.ph, label %.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.ho = load i32, ptr %i.fh, align 8, !tbaa !20
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %.197121, i64 %i.hp ; 2 uses
  %i.hr = icmp ult ptr %i.hq, %i.gb
  br i1 %i.hr, label %.lr.ph123, label %._crit_edge124.thread

._crit_edge124:                                   ; preds = %._crit_edge120
  %.not105 = icmp eq ptr %i.ft, null
  br i1 %.not105, label %bb.o, label %._crit_edge124.thread

._crit_edge124.thread:                            ; preds = %.loopexit, %._crit_edge124
  tail call void @free(ptr noundef nonnull %i.ft) #11
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge124.thread, %._crit_edge124
  %i.hs = load i32, ptr @debug, align 4, !tbaa !7
  %i.ht = and i32 %i.hs, 4096
  %.not106 = icmp eq i32 %i.ht, 0
  br i1 %.not106, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void (ptr, ...) @sf_print(ptr noundef nonnull %i.fh) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.h) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b
  %.098 = phi ptr [ %i.am, %bb.b ], [ %i.fh, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 500, i32 noundef %i.b) #11 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13
  %i.h = load i32, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %.idx ; 2 uses
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph104, label %._crit_edge105.thread

._crit_edge105.thread:                            ; preds = %bb.a
  %i.m = tail call ptr (ptr, ...) @sf_contain(ptr noundef %i.c) #11
  br label %bb.p

.lr.ph104:                                        ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not = icmp eq i32 %2, 0
  %.pre130 = load i32, ptr %1, align 8, !tbaa !20 ; 2 uses
  br i1 %.not, label %.lr.ph104.split, label %.lr.ph104.split.us
end_hunk_0
