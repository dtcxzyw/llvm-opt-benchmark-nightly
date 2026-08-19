begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@base64_srp_bin2ascii_0 = internal unnamed_addr constant [256 x i8] c"0000111122223333444455556666777788889999AAAABBBBCCCCDDDDEEEEFFFFGGGGHHHHIIIIJJJJKKKKLLLLMMMMNNNNOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZaaaabbbbccccddddeeeeffffgggghhhhiiiijjjjkkkkllllmmmmnnnnooooppppqqqqrrrrssssttttuuuuvvvvwwwwxxxxyyyyzzzz....////", align 16
@base64_srp_bin2ascii_2 = internal unnamed_addr constant [256 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz./", align 16
@base64_std_bin2ascii_0 = internal unnamed_addr constant [256 x i8] c"AAAABBBBCCCCDDDDEEEEFFFFGGGGHHHHIIIIJJJJKKKKLLLLMMMMNNNNOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZaaaabbbbccccddddeeeeffffgggghhhhiiiijjjjkkkkllllmmmmnnnnooooppppqqqqrrrrssssttttuuuuvvvvwwwwxxxxyyyyzzzz0000111122223333444455556666777788889999++++////", align 16
@base64_std_bin2ascii_2 = internal unnamed_addr constant [256 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i64 @evp_encodeblock_int(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null                    ; 3 uses
  br i1 %.not, label %.thread170, label %.thread170.thread

.thread170:                                       ; preds = %bb.a
  %.in.in = load i32, ptr %4, align 4, !tbaa !8
  %.in = sdiv i32 %.in.in, 4
  %i.a = mul nsw i32 %.in, 3                      ; 2 uses
  %i.b = icmp sgt i32 %3, 2
  br i1 %i.b, label %.lr.ph.split.us, label %._crit_edge

.thread170.thread:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  %.fr177 = freeze i32 %i.d
  %i.e = and i32 %.fr177, 2
  %.not178 = icmp eq i32 %i.e, 0                  ; 3 uses
  %base64_std_bin2ascii_1.base64_srp_bin2ascii_1 = select i1 %.not178, ptr @base64_std_bin2ascii_2, ptr @base64_srp_bin2ascii_2 ; 4 uses
  %base64_std_bin2ascii_0.base64_srp_bin2ascii_0 = select i1 %.not178, ptr @base64_std_bin2ascii_0, ptr @base64_srp_bin2ascii_0 ; 3 uses
  %base64_std_bin2ascii_2.base64_srp_bin2ascii_2 = select i1 %.not178, ptr @base64_std_bin2ascii_2, ptr @base64_srp_bin2ascii_2 ; 3 uses
  %.in.in202 = load i32, ptr %4, align 4, !tbaa !8
  %.in203 = sdiv i32 %.in.in202, 4
  %i.f = mul nsw i32 %.in203, 3                   ; 3 uses
  %i.g = icmp sgt i32 %3, 2
  br i1 %i.g, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread170.thread
  %i.h = add nsw i32 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.thread170, %.lr.ph.split.us
  %indvars.iv196 = phi i64 [ %i.aq, %.lr.ph.split.us ], [ 0, %.thread170 ] ; 3 uses
  %indvars.iv196.a = phi i64 [ %indvars.iv.next197.a, %.lr.ph.split.us ], [ 0, %.thread170 ]
  %.4151179.us = phi ptr [ %i.ap, %.lr.ph.split.us ], [ %1, %.thread170 ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv196 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !11    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !11    ; 2 uses
  %i.p = zext i8 %i.k to i64
  %i.q = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 1
  store i8 %i.r, ptr %.4151179.us, align 1, !tbaa !11
  %i.t = shl i8 %i.k, 4
  %i.u = and i8 %i.t, 48
  %i.v = zext nneg i8 %i.u to i32
  %i.w = zext i8 %i.m to i32                      ; 2 uses
  %i.x = lshr i32 %i.w, 4
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 2
  store i8 %i.ab, ptr %i.s, align 1, !tbaa !11
  %i.ad = shl nuw nsw i32 %i.w, 2
  %i.ae = and i32 %i.ad, 60
  %i.af = lshr i8 %i.o, 6
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 3
  store i8 %i.ak, ptr %i.ac, align 1, !tbaa !11
  %i.am = zext i8 %i.o to i64
  %i.an = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 4 ; 2 uses
  store i8 %i.ao, ptr %i.al, align 1, !tbaa !11
  %indvars.iv.next197.a = add i64 %indvars.iv196.a, 4 ; 2 uses
  %i.aq = add nuw nsw i64 %indvars.iv196, 3       ; 2 uses
  %5 = trunc i64 %indvars.iv196 to i32
  %6 = add i32 %5, 5                              ; 2 uses
  %7 = icmp slt i32 %6, %3
  br i1 %7, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !12

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.4181 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %.5, %bb.d ] ; 2 uses
  %.4151179 = phi ptr [ %1, %.lr.ph.split.preheader ], [ %.5152, %bb.d ] ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11  ; 2 uses
  %i.ax = zext i8 %i.as to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.4151179, i64 1
  store i8 %i.az, ptr %.4151179, align 1, !tbaa !11
  %i.bb = shl i8 %i.as, 4
  %i.bc = and i8 %i.bb, 48
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = zext i8 %i.au to i32                    ; 2 uses
  %i.bf = lshr i32 %i.be, 4
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %.4151179, i64 2
  store i8 %i.bj, ptr %i.ba, align 1, !tbaa !11
  %i.bl = shl nuw nsw i32 %i.be, 2
  %i.bm = and i32 %i.bl, 60
  %i.bn = lshr i8 %i.aw, 6
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = getelementptr inbounds nuw i8, ptr %.4151179, i64 3
  store i8 %i.bs, ptr %i.bk, align 1, !tbaa !11
  %i.bu = zext i8 %i.aw to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
  %i.bx = getelementptr inbounds nuw i8, ptr %.4151179, i64 4 ; 3 uses
  store i8 %i.bw, ptr %i.bt, align 1, !tbaa !11
  %i.by = add i64 %.4181, 4                       ; 2 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  %i.ca = add i32 %i.h, %i.bz
  %i.cb = srem i32 %i.ca, 48
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split
  %i.cd = load i32, ptr %i.i, align 4, !tbaa !9
  %i.ce = and i32 %i.cd, 1
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %.4151179, i64 5
  store i8 10, ptr %i.bx, align 1, !tbaa !11
  %i.ch = add i64 %.4181, 5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split
  %.5152 = phi ptr [ %i.cg, %bb.c ], [ %i.bx, %bb.b ], [ %i.bx, %.lr.ph.split ] ; 2 uses
  %.5 = phi i64 [ %i.ch, %bb.c ], [ %i.by, %bb.b ], [ %i.by, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %8 = trunc i64 %indvars.iv to i32
  %9 = add i32 %8, 5                              ; 2 uses
  %10 = icmp slt i32 %9, %3
  br i1 %10, label %.lr.ph.split, label %._crit_edge.loopexit188, !llvm.loop !12

._crit_edge.loopexit:                             ; preds = %.lr.ph.split.us
  %i.ci = trunc nuw i64 %i.aq to i32
  br label %._crit_edge

._crit_edge.loopexit188:                          ; preds = %bb.d
  %i.cj = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread170.thread, %._crit_edge.loopexit188, %._crit_edge.loopexit, %.thread170
  %i.ck = phi i32 [ %i.a, %.thread170 ], [ %i.a, %._crit_edge.loopexit ], [ %i.f, %._crit_edge.loopexit188 ], [ %i.f, %.thread170.thread ] ; 2 uses
  %i.cl = phi ptr [ @base64_std_bin2ascii_2, %.thread170 ], [ @base64_std_bin2ascii_2, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, %.thread170.thread ]
  %i.cm = phi ptr [ @base64_std_bin2ascii_0, %.thread170 ], [ @base64_std_bin2ascii_0, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, %.thread170.thread ] ; 2 uses
  %i.cn = phi ptr [ @base64_std_bin2ascii_2, %.thread170 ], [ @base64_std_bin2ascii_2, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, %.thread170.thread ] ; 2 uses
  %.4151.lcssa = phi ptr [ %1, %.thread170 ], [ %i.ap, %._crit_edge.loopexit ], [ %.5152, %._crit_edge.loopexit188 ], [ %1, %.thread170.thread ] ; 13 uses
  %.3144.lcssa = phi i32 [ 0, %.thread170 ], [ %i.ci, %._crit_edge.loopexit ], [ %i.cj, %._crit_edge.loopexit188 ], [ 0, %.thread170.thread ] ; 4 uses
  %.4.lcssa = phi i64 [ 0, %.thread170 ], [ %indvars.iv.next197.a, %._crit_edge.loopexit ], [ %.5, %._crit_edge.loopexit188 ], [ 0, %.thread170.thread ] ; 5 uses
  %.lcssa = phi i32 [ 2, %.thread170 ], [ %6, %._crit_edge.loopexit ], [ %9, %._crit_edge.loopexit188 ], [ 2, %.thread170.thread ]
  %i.co = sub nsw i32 %3, %.3144.lcssa
  switch i32 %i.co, label %bb.m [
    i32 2, label %bb.i
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.cp = zext nneg i32 %.3144.lcssa to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11  ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 1
  store i8 %i.cu, ptr %.4151.lcssa, align 1, !tbaa !11
  %i.cw = shl i8 %i.cr, 4
  %i.cx = and i8 %i.cw, 48
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 2
  store i8 %i.da, ptr %i.cv, align 1, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 3
  store i8 61, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 4 ; 4 uses
  store i8 61, ptr %i.dc, align 1, !tbaa !11
  %i.de = add i64 %.4.lcssa, 4                    ; 3 uses
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = add nsw i32 %i.ck, 1
  %i.dg = add i32 %i.df, %.3144.lcssa
  %i.dh = srem i32 %i.dg, 48
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9
  %i.dl = and i32 %i.dk, 1
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 5
  store i8 10, ptr %i.dd, align 1, !tbaa !11
  %i.do = add i64 %.4.lcssa, 5
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %i.dp = zext nneg i32 %.3144.lcssa to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !11  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !11
  %i.du = zext i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !11
  %i.dx = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 1
  store i8 %i.dw, ptr %.4151.lcssa, align 1, !tbaa !11
  %i.dy = shl i8 %i.dr, 4
  %i.dz = and i8 %i.dy, 48
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = zext i8 %i.dt to i32                    ; 2 uses
  %i.ec = lshr i32 %i.eb, 4
  %i.ed = or disjoint i32 %i.ec, %i.ea
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 2
  store i8 %i.eg, ptr %i.dx, align 1, !tbaa !11
  %i.ei = shl nuw nsw i32 %i.eb, 2
  %i.ej = and i32 %i.ei, 60
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !11
  %i.en = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 3
  store i8 %i.em, ptr %i.eh, align 1, !tbaa !11
  %i.eo = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 4 ; 4 uses
  store i8 61, ptr %i.en, align 1, !tbaa !11
  %i.ep = add i64 %.4.lcssa, 4                    ; 3 uses
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.eq = add nsw i32 %.lcssa, %i.ck
  %i.er = srem i32 %i.eq, 48
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9
  %i.ev = and i32 %i.eu, 1
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 5
  store i8 10, ptr %i.eo, align 1, !tbaa !11
  %i.ey = add i64 %.4.lcssa, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %bb.e, %bb.h, %bb.g, %bb.f, %._crit_edge
  %.7154 = phi ptr [ %.4151.lcssa, %._crit_edge ], [ %i.ex, %bb.l ], [ %i.eo, %bb.k ], [ %i.eo, %bb.j ], [ %i.eo, %bb.i ], [ %i.dn, %bb.h ], [ %i.dd, %bb.g ], [ %i.dd, %bb.f ], [ %i.dd, %bb.e ]
  %.7 = phi i64 [ %.4.lcssa, %._crit_edge ], [ %i.ey, %bb.l ], [ %i.ep, %bb.k ], [ %i.ep, %bb.j ], [ %i.ep, %bb.i ], [ %i.do, %bb.h ], [ %i.de, %bb.g ], [ %i.de, %bb.f ], [ %i.de, %bb.e ]
  store i8 0, ptr %.7154, align 1, !tbaa !11
  ret i64 %.7
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 88}
!10 = !{!"evp_Encode_Ctx_st", !5, i64 0, !6, i64 4, !5, i64 84, !5, i64 88}
!11 = !{!6, !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
