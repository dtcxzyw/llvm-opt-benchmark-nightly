Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/enc_b64_scalar?download=true
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
  %.in.in = load i32, ptr %4, align 4, !tbaa !9
  %.in = sdiv i32 %.in.in, 4
  %i.a = mul nsw i32 %.in, 3                      ; 2 uses
  %i.b = icmp sgt i32 %3, 2
  br i1 %i.b, label %.lr.ph.split.us.preheader, label %._crit_edge

.thread170.thread:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %.fr177 = freeze i32 %i.d
  %i.e = and i32 %.fr177, 2
  %.not178 = icmp eq i32 %i.e, 0                  ; 3 uses
  %base64_std_bin2ascii_1.base64_srp_bin2ascii_1 = select i1 %.not178, ptr @base64_std_bin2ascii_2, ptr @base64_srp_bin2ascii_2 ; 4 uses
  %base64_std_bin2ascii_0.base64_srp_bin2ascii_0 = select i1 %.not178, ptr @base64_std_bin2ascii_0, ptr @base64_srp_bin2ascii_0 ; 3 uses
  %base64_std_bin2ascii_2.base64_srp_bin2ascii_2 = select i1 %.not178, ptr @base64_std_bin2ascii_2, ptr @base64_srp_bin2ascii_2 ; 3 uses
  %.in.in202 = load i32, ptr %4, align 4, !tbaa !9
  %.in203 = sdiv i32 %.in.in202, 4
  %i.f = mul nsw i32 %.in203, 3                   ; 3 uses
  %i.g = icmp sgt i32 %3, 2
  br i1 %i.g, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.thread170.thread
  %i.h = add nsw i32 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = zext nneg i32 %3 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread170
  %i.k = zext nneg i32 %3 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv196 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next197, %.lr.ph.split.us ] ; 3 uses
  %indvars.iv196.a = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %5, %.lr.ph.split.us ]
  %.4151179.us = phi ptr [ %1, %.lr.ph.split.us.preheader ], [ %i.ar, %.lr.ph.split.us ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv196 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 2 uses
  %i.r = zext i8 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 1
  store i8 %i.t, ptr %.4151179.us, align 1, !tbaa !12
  %i.v = shl i8 %i.m, 4
  %i.w = and i8 %i.v, 48
  %i.x = zext nneg i8 %i.w to i32
  %i.y = zext i8 %i.o to i32                      ; 2 uses
  %i.z = lshr i32 %i.y, 4
  %i.aa = or disjoint i32 %i.z, %i.x
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 2
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !12
  %i.af = shl nuw nsw i32 %i.y, 2
  %i.ag = and i32 %i.af, 60
  %i.ah = lshr i8 %i.q, 6
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 3
  store i8 %i.am, ptr %i.ae, align 1, !tbaa !12
  %i.ao = zext i8 %i.q to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @base64_std_bin2ascii_2, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %.4151179.us, i64 4 ; 2 uses
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !12
  %5 = add nuw nsw i64 %indvars.iv196.a, 4        ; 2 uses
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 3 ; 2 uses
  %i.as = add nuw nsw i64 %indvars.iv196, 5       ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.k
  br i1 %i.at, label %.lr.ph.split.us, label %._crit_edge.loopexit, !llvm.loop !8

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.4181 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %.5, %bb.d ] ; 2 uses
  %.4151179 = phi ptr [ %1, %.lr.ph.split.preheader ], [ %.5152, %bb.d ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv ; 3 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12  ; 2 uses
  %i.ba = zext i8 %i.av to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %.4151179, i64 1
  store i8 %i.bc, ptr %.4151179, align 1, !tbaa !12
  %i.be = shl i8 %i.av, 4
  %i.bf = and i8 %i.be, 48
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = zext i8 %i.ax to i32                    ; 2 uses
  %i.bi = lshr i32 %i.bh, 4
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.4151179, i64 2
  store i8 %i.bm, ptr %i.bd, align 1, !tbaa !12
  %i.bo = shl nuw nsw i32 %i.bh, 2
  %i.bp = and i32 %i.bo, 60
  %i.bq = lshr i8 %i.az, 6
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !12
  %i.bw = getelementptr inbounds nuw i8, ptr %.4151179, i64 3
  store i8 %i.bv, ptr %i.bn, align 1, !tbaa !12
  %i.bx = zext i8 %i.az to i64
  %i.by = getelementptr inbounds nuw i8, ptr %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %.4151179, i64 4 ; 3 uses
  store i8 %i.bz, ptr %i.bw, align 1, !tbaa !12
  %i.cb = add i64 %.4181, 4                       ; 2 uses
  %i.cc = trunc nuw nsw i64 %indvars.iv to i32
  %i.cd = add i32 %i.h, %i.cc
  %i.ce = srem i32 %i.cd, 48
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.split
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !11
  %i.ch = and i32 %i.cg, 1
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.cj = getelementptr inbounds nuw i8, ptr %.4151179, i64 5
  store i8 10, ptr %i.ca, align 1, !tbaa !12
  %i.ck = add i64 %.4181, 5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split
  %.5152 = phi ptr [ %i.cj, %bb.c ], [ %i.ca, %bb.b ], [ %i.ca, %.lr.ph.split ] ; 2 uses
  %.5 = phi i64 [ %i.ck, %bb.c ], [ %i.cb, %bb.b ], [ %i.cb, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cl = add nuw nsw i64 %indvars.iv, 5          ; 2 uses
  %i.cm = icmp samesign ult i64 %i.cl, %i.j
  br i1 %i.cm, label %.lr.ph.split, label %._crit_edge.loopexit188, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %.lr.ph.split.us
  %i.cn = trunc nuw nsw i64 %i.as to i32
  %i.co = trunc nuw nsw i64 %indvars.iv.next197 to i32
  br label %._crit_edge

._crit_edge.loopexit188:                          ; preds = %bb.d
  %i.cp = trunc nuw nsw i64 %i.cl to i32
  %i.cq = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread170.thread, %._crit_edge.loopexit188, %._crit_edge.loopexit, %.thread170
  %i.cr = phi i32 [ %i.a, %.thread170 ], [ %i.a, %._crit_edge.loopexit ], [ %i.f, %._crit_edge.loopexit188 ], [ %i.f, %.thread170.thread ] ; 2 uses
  %i.cs = phi ptr [ @base64_std_bin2ascii_2, %.thread170 ], [ @base64_std_bin2ascii_2, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_2.base64_srp_bin2ascii_2, %.thread170.thread ]
  %i.ct = phi ptr [ @base64_std_bin2ascii_0, %.thread170 ], [ @base64_std_bin2ascii_0, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_0.base64_srp_bin2ascii_0, %.thread170.thread ] ; 2 uses
  %i.cu = phi ptr [ @base64_std_bin2ascii_2, %.thread170 ], [ @base64_std_bin2ascii_2, %._crit_edge.loopexit ], [ %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, %._crit_edge.loopexit188 ], [ %base64_std_bin2ascii_1.base64_srp_bin2ascii_1, %.thread170.thread ] ; 2 uses
  %.4151.lcssa = phi ptr [ %1, %.thread170 ], [ %i.ar, %._crit_edge.loopexit ], [ %.5152, %._crit_edge.loopexit188 ], [ %1, %.thread170.thread ] ; 13 uses
  %.3144.lcssa = phi i32 [ 0, %.thread170 ], [ %i.co, %._crit_edge.loopexit ], [ %i.cq, %._crit_edge.loopexit188 ], [ 0, %.thread170.thread ] ; 4 uses
  %.4.lcssa = phi i64 [ 0, %.thread170 ], [ %5, %._crit_edge.loopexit ], [ %.5, %._crit_edge.loopexit188 ], [ 0, %.thread170.thread ] ; 5 uses
  %.lcssa = phi i32 [ 2, %.thread170 ], [ %i.cn, %._crit_edge.loopexit ], [ %i.cp, %._crit_edge.loopexit188 ], [ 2, %.thread170.thread ]
  %i.cv = sub nsw i32 %3, %.3144.lcssa
  switch i32 %i.cv, label %bb.m [
    i32 2, label %bb.i
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.cw = zext nneg i32 %.3144.lcssa to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !12  ; 2 uses
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !12
  %i.dc = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 1
  store i8 %i.db, ptr %.4151.lcssa, align 1, !tbaa !12
  %i.dd = shl i8 %i.cy, 4
  %i.de = and i8 %i.dd, 48
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.di = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 2
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !12
  %i.dj = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 3
  store i8 61, ptr %i.di, align 1, !tbaa !12
  %i.dk = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 4 ; 4 uses
  store i8 61, ptr %i.dj, align 1, !tbaa !12
  %i.dl = add i64 %.4.lcssa, 4                    ; 3 uses
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = add nsw i32 %i.cr, 1
  %i.dn = add i32 %i.dm, %.3144.lcssa
  %i.do = srem i32 %i.dn, 48
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !11
  %i.ds = and i32 %i.dr, 1
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 5
  store i8 10, ptr %i.dk, align 1, !tbaa !12
  %i.dv = add i64 %.4.lcssa, 5
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %i.dw = zext nneg i32 %.3144.lcssa to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %i.dw ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !12  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.eb = zext i8 %i.dy to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 1
  store i8 %i.ed, ptr %.4151.lcssa, align 1, !tbaa !12
  %i.ef = shl i8 %i.dy, 4
  %i.eg = and i8 %i.ef, 48
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = zext i8 %i.ea to i32                    ; 2 uses
  %i.ej = lshr i32 %i.ei, 4
  %i.ek = or disjoint i32 %i.ej, %i.eh
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 2
  store i8 %i.en, ptr %i.ee, align 1, !tbaa !12
  %i.ep = shl nuw nsw i32 %i.ei, 2
  %i.eq = and i32 %i.ep, 60
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 3
  store i8 %i.et, ptr %i.eo, align 1, !tbaa !12
  %i.ev = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 4 ; 4 uses
  store i8 61, ptr %i.eu, align 1, !tbaa !12
  %i.ew = add i64 %.4.lcssa, 4                    ; 3 uses
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ex = add nsw i32 %.lcssa, %i.cr
  %i.ey = srem i32 %i.ex, 48
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !11
  %i.fc = and i32 %i.fb, 1
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %.4151.lcssa, i64 5
  store i8 10, ptr %i.ev, align 1, !tbaa !12
  %i.ff = add i64 %.4.lcssa, 5
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.j, %bb.e, %bb.h, %bb.g, %bb.f, %._crit_edge
  %.7154 = phi ptr [ %.4151.lcssa, %._crit_edge ], [ %i.fe, %bb.l ], [ %i.ev, %bb.k ], [ %i.ev, %bb.j ], [ %i.ev, %bb.i ], [ %i.du, %bb.h ], [ %i.dk, %bb.g ], [ %i.dk, %bb.f ], [ %i.dk, %bb.e ]
  %.7 = phi i64 [ %.4.lcssa, %._crit_edge ], [ %i.ff, %bb.l ], [ %i.ew, %bb.k ], [ %i.ew, %bb.j ], [ %i.ew, %bb.i ], [ %i.dv, %bb.h ], [ %i.dl, %bb.g ], [ %i.dl, %bb.f ], [ %i.dl, %bb.e ]
  store i8 0, ptr %.7154, align 1, !tbaa !12
  ret i64 %.7
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !13}
!9 = !{!5, !5, i64 0}
!10 = !{!"evp_Encode_Ctx_st", !5, i64 0, !4, i64 4, !5, i64 84, !5, i64 88}
!11 = !{!10, !5, i64 88}
!12 = !{!4, !4, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
