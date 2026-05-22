begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @lzf_decompress(ptr noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %.not219 = icmp eq i64 %1, 0
  br i1 %.not219, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.0148218 = phi ptr [ %.32.pn, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %.0158217 = phi ptr [ %.45, %.loopexit ], [ %2, %bb.a ] ; 69 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0148218, i64 1 ; 36 uses
  %i.d = load i8, ptr %.0148218, align 1, !tbaa !13 ; 3 uses
  %i.e = zext i8 %i.d to i32                      ; 3 uses
  %i.f = icmp ult i8 %i.d, 32
  br i1 %i.f, label %bb.b, label %bb.am

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.h = zext nneg i32 %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.h
  %i.j = icmp ugt ptr %i.i, %i.b
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__errno_location() #3
  store i32 7, ptr %i.k, align 4, !tbaa !9
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %i.m = icmp ugt ptr %i.l, %i.a
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.n, align 4, !tbaa !9
  br label %.thread

bb.f:                                             ; preds = %bb.d
  switch i32 %i.g, label %default.unreachable [
    i32 32, label %bb.g
    i32 31, label %bb.h
    i32 30, label %bb.i
    i32 29, label %bb.j
    i32 28, label %bb.k
    i32 27, label %bb.l
    i32 26, label %bb.m
    i32 25, label %bb.n
    i32 24, label %bb.o
    i32 23, label %bb.p
    i32 22, label %bb.q
    i32 21, label %bb.r
    i32 20, label %bb.s
    i32 19, label %bb.t
    i32 18, label %bb.u
    i32 17, label %bb.v
    i32 16, label %bb.w
    i32 15, label %bb.x
    i32 14, label %bb.y
    i32 13, label %bb.z
    i32 12, label %bb.aa
    i32 11, label %bb.ab
    i32 10, label %bb.ac
    i32 9, label %bb.ad
    i32 8, label %bb.ae
    i32 7, label %bb.af
    i32 6, label %bb.ag
    i32 5, label %bb.ah
    i32 4, label %bb.ai
    i32 3, label %bb.aj
    i32 2, label %bb.ak
    i32 1, label %bb.al
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.0148218, i64 2
  %i.p = load i8, ptr %i.c, align 1, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.0158217, i64 1
  store i8 %i.p, ptr %.0158217, align 1, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1159 = phi ptr [ %i.q, %bb.g ], [ %.0158217, %bb.f ] ; 2 uses
  %.1149 = phi ptr [ %i.o, %bb.g ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1149, i64 1
  %i.s = load i8, ptr %.1149, align 1, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %.1159, i64 1
  store i8 %i.s, ptr %.1159, align 1, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.2160 = phi ptr [ %i.t, %bb.h ], [ %.0158217, %bb.f ] ; 2 uses
  %.2150 = phi ptr [ %i.r, %bb.h ], [ %i.c, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.2150, i64 1
  %i.v = load i8, ptr %.2150, align 1, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.2160, i64 1
  store i8 %i.v, ptr %.2160, align 1, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.3161 = phi ptr [ %i.w, %bb.i ], [ %.0158217, %bb.f ] ; 2 uses
  %.3151 = phi ptr [ %i.u, %bb.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.3151, i64 1
  %i.y = load i8, ptr %.3151, align 1, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %.3161, i64 1
  store i8 %i.y, ptr %.3161, align 1, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.4162 = phi ptr [ %i.z, %bb.j ], [ %.0158217, %bb.f ] ; 2 uses
  %.4152 = phi ptr [ %i.x, %bb.j ], [ %i.c, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.4152, i64 1
  %i.ab = load i8, ptr %.4152, align 1, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.4162, i64 1
  store i8 %i.ab, ptr %.4162, align 1, !tbaa !13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.5163 = phi ptr [ %i.ac, %bb.k ], [ %.0158217, %bb.f ] ; 2 uses
  %.5153 = phi ptr [ %i.aa, %bb.k ], [ %i.c, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.5153, i64 1
  %i.ae = load i8, ptr %.5153, align 1, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.5163, i64 1
  store i8 %i.ae, ptr %.5163, align 1, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.6164 = phi ptr [ %i.af, %bb.l ], [ %.0158217, %bb.f ] ; 2 uses
  %.6154 = phi ptr [ %i.ad, %bb.l ], [ %i.c, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.6154, i64 1
  %i.ah = load i8, ptr %.6154, align 1, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.6164, i64 1
  store i8 %i.ah, ptr %.6164, align 1, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %.7165 = phi ptr [ %i.ai, %bb.m ], [ %.0158217, %bb.f ] ; 2 uses
  %.7155 = phi ptr [ %i.ag, %bb.m ], [ %i.c, %bb.f ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.7155, i64 1
  %i.ak = load i8, ptr %.7155, align 1, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %.7165, i64 1
  store i8 %i.ak, ptr %.7165, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.f
  %.8166 = phi ptr [ %i.al, %bb.n ], [ %.0158217, %bb.f ] ; 2 uses
  %.8156 = phi ptr [ %i.aj, %bb.n ], [ %i.c, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.8156, i64 1
  %i.an = load i8, ptr %.8156, align 1, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %.8166, i64 1
  store i8 %i.an, ptr %.8166, align 1, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.f
  %.9167 = phi ptr [ %i.ao, %bb.o ], [ %.0158217, %bb.f ] ; 2 uses
  %.9157 = phi ptr [ %i.am, %bb.o ], [ %i.c, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.9157, i64 1
  %i.aq = load i8, ptr %.9157, align 1, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %.9167, i64 1
  store i8 %i.aq, ptr %.9167, align 1, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f
  %.10168 = phi ptr [ %i.ar, %bb.p ], [ %.0158217, %bb.f ] ; 2 uses
  %.10 = phi ptr [ %i.ap, %bb.p ], [ %i.c, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.10, i64 1
  %i.at = load i8, ptr %.10, align 1, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %.10168, i64 1
  store i8 %i.at, ptr %.10168, align 1, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.11169 = phi ptr [ %i.au, %bb.q ], [ %.0158217, %bb.f ] ; 2 uses
  %.11 = phi ptr [ %i.as, %bb.q ], [ %i.c, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.aw = load i8, ptr %.11, align 1, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %.11169, i64 1
  store i8 %i.aw, ptr %.11169, align 1, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.f
  %.12170 = phi ptr [ %i.ax, %bb.r ], [ %.0158217, %bb.f ] ; 2 uses
  %.12 = phi ptr [ %i.av, %bb.r ], [ %i.c, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.12, i64 1
  %i.az = load i8, ptr %.12, align 1, !tbaa !13
  %i.ba = getelementptr inbounds nuw i8, ptr %.12170, i64 1
  store i8 %i.az, ptr %.12170, align 1, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.f
  %.13171 = phi ptr [ %i.ba, %bb.s ], [ %.0158217, %bb.f ] ; 2 uses
  %.13 = phi ptr [ %i.ay, %bb.s ], [ %i.c, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.13, i64 1
  %i.bc = load i8, ptr %.13, align 1, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %.13171, i64 1
  store i8 %i.bc, ptr %.13171, align 1, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.f
  %.14172 = phi ptr [ %i.bd, %bb.t ], [ %.0158217, %bb.f ] ; 2 uses
  %.14 = phi ptr [ %i.bb, %bb.t ], [ %i.c, %bb.f ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.bf = load i8, ptr %.14, align 1, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %.14172, i64 1
  store i8 %i.bf, ptr %.14172, align 1, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.f
  %.15173 = phi ptr [ %i.bg, %bb.u ], [ %.0158217, %bb.f ] ; 2 uses
  %.15 = phi ptr [ %i.be, %bb.u ], [ %i.c, %bb.f ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.15, i64 1
  %i.bi = load i8, ptr %.15, align 1, !tbaa !13
  %i.bj = getelementptr inbounds nuw i8, ptr %.15173, i64 1
  store i8 %i.bi, ptr %.15173, align 1, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.f
  %.16174 = phi ptr [ %i.bj, %bb.v ], [ %.0158217, %bb.f ] ; 2 uses
  %.16 = phi ptr [ %i.bh, %bb.v ], [ %i.c, %bb.f ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.16, i64 1
  %i.bl = load i8, ptr %.16, align 1, !tbaa !13
  %i.bm = getelementptr inbounds nuw i8, ptr %.16174, i64 1
  store i8 %i.bl, ptr %.16174, align 1, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.f
  %.17175 = phi ptr [ %i.bm, %bb.w ], [ %.0158217, %bb.f ] ; 2 uses
  %.17 = phi ptr [ %i.bk, %bb.w ], [ %i.c, %bb.f ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.17, i64 1
  %i.bo = load i8, ptr %.17, align 1, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %.17175, i64 1
  store i8 %i.bo, ptr %.17175, align 1, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.f
  %.18176 = phi ptr [ %i.bp, %bb.x ], [ %.0158217, %bb.f ] ; 2 uses
  %.18 = phi ptr [ %i.bn, %bb.x ], [ %i.c, %bb.f ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.18, i64 1
  %i.br = load i8, ptr %.18, align 1, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %.18176, i64 1
  store i8 %i.br, ptr %.18176, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  %.19177 = phi ptr [ %i.bs, %bb.y ], [ %.0158217, %bb.f ] ; 2 uses
  %.19 = phi ptr [ %i.bq, %bb.y ], [ %i.c, %bb.f ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.19, i64 1
  %i.bu = load i8, ptr %.19, align 1, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %.19177, i64 1
  store i8 %i.bu, ptr %.19177, align 1, !tbaa !13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.f
  %.20178 = phi ptr [ %i.bv, %bb.z ], [ %.0158217, %bb.f ] ; 2 uses
  %.20 = phi ptr [ %i.bt, %bb.z ], [ %i.c, %bb.f ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.20, i64 1
  %i.bx = load i8, ptr %.20, align 1, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %.20178, i64 1
  store i8 %i.bx, ptr %.20178, align 1, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f
  %.21179 = phi ptr [ %i.by, %bb.aa ], [ %.0158217, %bb.f ] ; 2 uses
  %.21 = phi ptr [ %i.bw, %bb.aa ], [ %i.c, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.21, i64 1
  %i.ca = load i8, ptr %.21, align 1, !tbaa !13
  %i.cb = getelementptr inbounds nuw i8, ptr %.21179, i64 1
  store i8 %i.ca, ptr %.21179, align 1, !tbaa !13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.f
  %.22180 = phi ptr [ %i.cb, %bb.ab ], [ %.0158217, %bb.f ] ; 2 uses
  %.22 = phi ptr [ %i.bz, %bb.ab ], [ %i.c, %bb.f ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.22, i64 1
  %i.cd = load i8, ptr %.22, align 1, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %.22180, i64 1
  store i8 %i.cd, ptr %.22180, align 1, !tbaa !13
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.f
  %.23181 = phi ptr [ %i.ce, %bb.ac ], [ %.0158217, %bb.f ] ; 2 uses
  %.23 = phi ptr [ %i.cc, %bb.ac ], [ %i.c, %bb.f ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.23, i64 1
  %i.cg = load i8, ptr %.23, align 1, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %.23181, i64 1
  store i8 %i.cg, ptr %.23181, align 1, !tbaa !13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.f
  %.24182 = phi ptr [ %i.ch, %bb.ad ], [ %.0158217, %bb.f ] ; 2 uses
  %.24 = phi ptr [ %i.cf, %bb.ad ], [ %i.c, %bb.f ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.24, i64 1
  %i.cj = load i8, ptr %.24, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.24182, i64 1
  store i8 %i.cj, ptr %.24182, align 1, !tbaa !13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.f
  %.25183 = phi ptr [ %i.ck, %bb.ae ], [ %.0158217, %bb.f ] ; 2 uses
  %.25 = phi ptr [ %i.ci, %bb.ae ], [ %i.c, %bb.f ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.25, i64 1
  %i.cm = load i8, ptr %.25, align 1, !tbaa !13
  %i.cn = getelementptr inbounds nuw i8, ptr %.25183, i64 1
  store i8 %i.cm, ptr %.25183, align 1, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.f
  %.26184 = phi ptr [ %i.cn, %bb.af ], [ %.0158217, %bb.f ] ; 2 uses
  %.26 = phi ptr [ %i.cl, %bb.af ], [ %i.c, %bb.f ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.26, i64 1
  %i.cp = load i8, ptr %.26, align 1, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.26184, i64 1
  store i8 %i.cp, ptr %.26184, align 1, !tbaa !13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.f
  %.27185 = phi ptr [ %i.cq, %bb.ag ], [ %.0158217, %bb.f ] ; 2 uses
  %.27 = phi ptr [ %i.co, %bb.ag ], [ %i.c, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.27, i64 1
  %i.cs = load i8, ptr %.27, align 1, !tbaa !13
  %i.ct = getelementptr inbounds nuw i8, ptr %.27185, i64 1
  store i8 %i.cs, ptr %.27185, align 1, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.f
  %.28186 = phi ptr [ %i.ct, %bb.ah ], [ %.0158217, %bb.f ] ; 2 uses
  %.28 = phi ptr [ %i.cr, %bb.ah ], [ %i.c, %bb.f ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.28, i64 1
  %i.cv = load i8, ptr %.28, align 1, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.28186, i64 1
  store i8 %i.cv, ptr %.28186, align 1, !tbaa !13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.f
  %.29187 = phi ptr [ %i.cw, %bb.ai ], [ %.0158217, %bb.f ] ; 2 uses
  %.29 = phi ptr [ %i.cu, %bb.ai ], [ %i.c, %bb.f ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.29, i64 1
  %i.cy = load i8, ptr %.29, align 1, !tbaa !13
  %i.cz = getelementptr inbounds nuw i8, ptr %.29187, i64 1
  store i8 %i.cy, ptr %.29187, align 1, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.f
  %.30188 = phi ptr [ %i.cz, %bb.aj ], [ %.0158217, %bb.f ] ; 2 uses
  %.30 = phi ptr [ %i.cx, %bb.aj ], [ %i.c, %bb.f ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.30, i64 1
  %i.db = load i8, ptr %.30, align 1, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.30188, i64 1
  store i8 %i.db, ptr %.30188, align 1, !tbaa !13
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.f
  %.31189 = phi ptr [ %i.dc, %bb.ak ], [ %.0158217, %bb.f ] ; 2 uses
  %.31 = phi ptr [ %i.da, %bb.ak ], [ %i.c, %bb.f ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.31, i64 1
  %i.dd = load i8, ptr %.31, align 1, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.31189, i64 1
  store i8 %i.dd, ptr %.31189, align 1, !tbaa !13
  br label %.loopexit

bb.am:                                            ; preds = %.lr.ph
  %i.df = shl nuw nsw i32 %i.e, 8
  %i.dg = and i32 %i.df, 7936
  %i.dh = xor i32 %i.dg, -1
  %i.di = sext i32 %i.dh to i64
  %.not = icmp ult ptr %i.c, %i.a
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.dj, align 4, !tbaa !9
  br label %.thread

bb.ao:                                            ; preds = %bb.am
  %i.dk = lshr i32 %i.e, 5                        ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 7
  br i1 %i.dl, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dm = getelementptr inbounds nuw i8, ptr %.0148218, i64 2 ; 2 uses
  %i.dn = load i8, ptr %i.c, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i32
  %i.dp = add nuw nsw i32 %i.do, 7
  %.not204 = icmp ult ptr %i.dm, %i.a
  br i1 %.not204, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dq = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.dq, align 4, !tbaa !9
  br label %.thread

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %.32 = phi ptr [ %i.dm, %bb.ap ], [ %i.c, %bb.ao ] ; 2 uses
  %.0139 = phi i32 [ %i.dp, %bb.ap ], [ %i.dk, %bb.ao ] ; 5 uses
  %5 = getelementptr inbounds nuw i8, ptr %.32, i64 1 ; 6 uses
  %i.dr = load i8, ptr %.32, align 1, !tbaa !13
  %i.ds = zext i8 %i.dr to i64                    ; 2 uses
  %i.dt = sub nuw nsw i64 %i.di, %i.ds            ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.0158217, i64 %i.dt ; 33 uses
  %i.dv = zext nneg i32 %.0139 to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.dy = icmp ugt ptr %i.dx, %i.b
  br i1 %i.dy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dz = tail call ptr @__errno_location() #3
  store i32 7, ptr %i.dz, align 4, !tbaa !9
  br label %.thread

bb.at:                                            ; preds = %bb.ar
  %i.ea = icmp ult ptr %i.du, %2
  br i1 %i.ea, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.eb = tail call ptr @__errno_location() #3
  store i32 22, ptr %i.eb, align 4, !tbaa !9
  br label %.thread

bb.av:                                            ; preds = %bb.at
  switch i32 %.0139, label %bb.aw [
    i32 9, label %bb.ay
    i32 8, label %bb.az
    i32 7, label %bb.ba
    i32 6, label %bb.bb
    i32 5, label %bb.bc
    i32 4, label %bb.bd
    i32 3, label %bb.be
    i32 2, label %bb.bf
    i32 1, label %bb.bg
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ec = add nuw nsw i32 %.0139, 2               ; 5 uses
  %i.ed = zext nneg i32 %i.ec to i64              ; 8 uses
  %i.ee = add nsw i64 %i.dt, %i.ed
  %.not205 = icmp sgt i64 %i.ee, 0
  br i1 %.not205, label %iter.check, label %bb.ax

iter.check:                                       ; preds = %bb.aw
  %min.iters.check = icmp ult i32 %.0139, 2
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ef = add nuw nsw i64 %i.ds, 1
  %i.eg = and i8 %i.d, 31
  %i.eh = zext nneg i8 %i.eg to i64
  %.neg = shl nuw nsw i64 %i.eh, 8
  %i.ei = add nuw nsw i64 %.neg, %i.ef
  %diff.check = icmp samesign ult i64 %i.ei, 32
  br i1 %diff.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check225 = icmp ult i32 %.0139, 30
  br i1 %min.iters.check225, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ed, 28
  %n.vec = and i64 %i.ed, 2147483616              ; 12 uses
  %i.ej = getelementptr i8, ptr %.0158217, i64 %n.vec ; 2 uses
  %i.ek = trunc nuw nsw i64 %n.vec to i32
  %i.el = sub i32 %i.ec, %i.ek
  %i.em = getelementptr i8, ptr %i.du, i64 %n.vec
  %i.en = getelementptr i8, ptr %i.du, i64 16
  %wide.load = load <16 x i8>, ptr %i.du, align 1, !tbaa !13
  %wide.load227 = load <16 x i8>, ptr %i.en, align 1, !tbaa !13
  %i.eo = getelementptr i8, ptr %.0158217, i64 16
  store <16 x i8> %wide.load, ptr %.0158217, align 1, !tbaa !13
  store <16 x i8> %wide.load227, ptr %i.eo, align 1, !tbaa !13
  %i.ep = icmp eq i64 %n.vec, 32
  br i1 %i.ep, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.0158217, i64 32
  %next.gep226.1 = getelementptr i8, ptr %i.du, i64 32
  %i.eq = getelementptr i8, ptr %i.du, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep226.1, align 1, !tbaa !13
  %wide.load227.1 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !13
  %i.er = getelementptr i8, ptr %.0158217, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep.1, align 1, !tbaa !13
  store <16 x i8> %wide.load227.1, ptr %i.er, align 1, !tbaa !13
  %i.es = icmp eq i64 %n.vec, 64
  br i1 %i.es, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.0158217, i64 64
  %next.gep226.2 = getelementptr i8, ptr %i.du, i64 64
  %i.et = getelementptr i8, ptr %i.du, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep226.2, align 1, !tbaa !13
  %wide.load227.2 = load <16 x i8>, ptr %i.et, align 1, !tbaa !13
  %i.eu = getelementptr i8, ptr %.0158217, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep.2, align 1, !tbaa !13
  store <16 x i8> %wide.load227.2, ptr %i.eu, align 1, !tbaa !13
  %i.ev = icmp eq i64 %n.vec, 96
  br i1 %i.ev, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %.0158217, i64 96
  %next.gep226.3 = getelementptr i8, ptr %i.du, i64 96
  %i.ew = getelementptr i8, ptr %i.du, i64 112
  %wide.load.3 = load <16 x i8>, ptr %next.gep226.3, align 1, !tbaa !13
  %wide.load227.3 = load <16 x i8>, ptr %i.ew, align 1, !tbaa !13
  %i.ex = getelementptr i8, ptr %.0158217, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep.3, align 1, !tbaa !13
  store <16 x i8> %wide.load227.3, ptr %i.ex, align 1, !tbaa !13
  %i.ey = icmp eq i64 %n.vec, 128
  br i1 %i.ey, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %.0158217, i64 128
  %next.gep226.4 = getelementptr i8, ptr %i.du, i64 128
  %i.ez = getelementptr i8, ptr %i.du, i64 144
  %wide.load.4 = load <16 x i8>, ptr %next.gep226.4, align 1, !tbaa !13
  %wide.load227.4 = load <16 x i8>, ptr %i.ez, align 1, !tbaa !13
  %i.fa = getelementptr i8, ptr %.0158217, i64 144
  store <16 x i8> %wide.load.4, ptr %next.gep.4, align 1, !tbaa !13
  store <16 x i8> %wide.load227.4, ptr %i.fa, align 1, !tbaa !13
  %i.fb = icmp eq i64 %n.vec, 160
  br i1 %i.fb, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %.0158217, i64 160
  %next.gep226.5 = getelementptr i8, ptr %i.du, i64 160
  %i.fc = getelementptr i8, ptr %i.du, i64 176
  %wide.load.5 = load <16 x i8>, ptr %next.gep226.5, align 1, !tbaa !13
  %wide.load227.5 = load <16 x i8>, ptr %i.fc, align 1, !tbaa !13
  %i.fd = getelementptr i8, ptr %.0158217, i64 176
  store <16 x i8> %wide.load.5, ptr %next.gep.5, align 1, !tbaa !13
  store <16 x i8> %wide.load227.5, ptr %i.fd, align 1, !tbaa !13
  %i.fe = icmp eq i64 %n.vec, 192
  br i1 %i.fe, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %.0158217, i64 192
  %next.gep226.6 = getelementptr i8, ptr %i.du, i64 192
  %i.ff = getelementptr i8, ptr %i.du, i64 208
  %wide.load.6 = load <16 x i8>, ptr %next.gep226.6, align 1, !tbaa !13
  %wide.load227.6 = load <16 x i8>, ptr %i.ff, align 1, !tbaa !13
  %i.fg = getelementptr i8, ptr %.0158217, i64 208
  store <16 x i8> %wide.load.6, ptr %next.gep.6, align 1, !tbaa !13
  store <16 x i8> %wide.load227.6, ptr %i.fg, align 1, !tbaa !13
  %i.fh = icmp eq i64 %n.vec, 224
  br i1 %i.fh, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6
  %next.gep.7 = getelementptr i8, ptr %.0158217, i64 224
  %next.gep226.7 = getelementptr i8, ptr %i.du, i64 224
  %i.fi = getelementptr i8, ptr %i.du, i64 240
  %wide.load.7 = load <16 x i8>, ptr %next.gep226.7, align 1, !tbaa !13
  %wide.load227.7 = load <16 x i8>, ptr %i.fi, align 1, !tbaa !13
  %i.fj = getelementptr i8, ptr %.0158217, i64 240
  store <16 x i8> %wide.load.7, ptr %next.gep.7, align 1, !tbaa !13
  store <16 x i8> %wide.load227.7, ptr %i.fj, align 1, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ed
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %i.ed, 2147483644           ; 5 uses
  %i.fk = getelementptr i8, ptr %.0158217, i64 %n.vec231 ; 2 uses
  %i.fl = trunc nuw nsw i64 %n.vec231 to i32
  %i.fm = sub i32 %i.ec, %i.fl
  %i.fn = getelementptr i8, ptr %i.du, i64 %n.vec231
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 3 uses
  %next.gep233 = getelementptr i8, ptr %.0158217, i64 %index232
  %next.gep234 = getelementptr i8, ptr %i.du, i64 %index232
  %wide.load235 = load <4 x i8>, ptr %next.gep234, align 1, !tbaa !13
  store <4 x i8> %wide.load235, ptr %next.gep233, align 1, !tbaa !13
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.fo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !15

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %n.vec231, %i.ed
  br i1 %cmp.n237, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.32190.ph = phi ptr [ %.0158217, %iter.check ], [ %.0158217, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check ], [ %i.fk, %vec.epilog.middle.block ] ; 2 uses
  %.1140.ph = phi i32 [ %i.ec, %iter.check ], [ %i.ec, %vector.memcheck ], [ %i.el, %vec.epilog.iter.check ], [ %i.fm, %vec.epilog.middle.block ] ; 4 uses
  %.0.ph = phi ptr [ %i.du, %iter.check ], [ %i.du, %vector.memcheck ], [ %i.em, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ] ; 2 uses
  %i.fp = add nsw i32 %.1140.ph, -1
  %xtraiter = and i32 %.1140.ph, 7                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.32190.prol = phi ptr [ %i.fs, %.preheader.prol ], [ %.32190.ph, %.preheader.preheader ] ; 2 uses
  %.1140.prol = phi i32 [ %i.ft, %.preheader.prol ], [ %.1140.ph, %.preheader.preheader ]
  %.0.prol = phi ptr [ %i.fq, %.preheader.prol ], [ %.0.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.prol, i64 1 ; 2 uses
  %i.fr = load i8, ptr %.0.prol, align 1, !tbaa !13
  %i.fs = getelementptr inbounds nuw i8, ptr %.32190.prol, i64 1 ; 3 uses
  store i8 %i.fr, ptr %.32190.prol, align 1, !tbaa !13
  %i.ft = add nsw i32 %.1140.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !19

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.fs, %.preheader.prol ]
  %.32190.unr = phi ptr [ %.32190.ph, %.preheader.preheader ], [ %i.fs, %.preheader.prol ]
  %.1140.unr = phi i32 [ %.1140.ph, %.preheader.preheader ], [ %i.ft, %.preheader.prol ]
  %.0.unr = phi ptr [ %.0.ph, %.preheader.preheader ], [ %i.fq, %.preheader.prol ]
  %i.fu = icmp ult i32 %i.fp, 7
  br i1 %i.fu, label %.loopexit, label %.preheader

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0158217, ptr noundef nonnull align 1 dereferenceable(1) %i.du, i64 %i.ed, i1 false)
  %i.fv = getelementptr inbounds nuw i8, ptr %.0158217, i64 %i.ed
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.32190 = phi ptr [ %i.gt, %.preheader ], [ %.32190.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.1140 = phi i32 [ %i.gu, %.preheader ], [ %.1140.unr, %.preheader.prol.loopexit ]
  %.0 = phi ptr [ %i.gr, %.preheader ], [ %.0.unr, %.preheader.prol.loopexit ] ; 9 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.fx = load i8, ptr %.0, align 1, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.32190, i64 1
  store i8 %i.fx, ptr %.32190, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ga = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.32190, i64 2
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.gd = load i8, ptr %i.fz, align 1, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.32190, i64 3
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !13
  %i.gf = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.gg = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.32190, i64 4
  store i8 %i.gg, ptr %i.ge, align 1, !tbaa !13
  %i.gi = getelementptr inbounds nuw i8, ptr %.0, i64 5
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.32190, i64 5
  store i8 %i.gj, ptr %i.gh, align 1, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.0, i64 6
  %i.gm = load i8, ptr %i.gi, align 1, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.32190, i64 6
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %.0, i64 7
  %i.gp = load i8, ptr %i.gl, align 1, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.32190, i64 7
  store i8 %i.gp, ptr %i.gn, align 1, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.gs = load i8, ptr %i.go, align 1, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.32190, i64 8 ; 2 uses
  store i8 %i.gs, ptr %i.gq, align 1, !tbaa !13
  %i.gu = add nsw i32 %.1140, -8                  ; 2 uses
  %.not206.7 = icmp eq i32 %i.gu, 0
  br i1 %.not206.7, label %.loopexit, label %.preheader, !llvm.loop !21

bb.ay:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.gw = load i8, ptr %i.du, align 1, !tbaa !13
  %i.gx = getelementptr inbounds nuw i8, ptr %.0158217, i64 1
  store i8 %i.gw, ptr %.0158217, align 1, !tbaa !13
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.33191 = phi ptr [ %i.gx, %bb.ay ], [ %.0158217, %bb.av ] ; 2 uses
  %.1 = phi ptr [ %i.gv, %bb.ay ], [ %i.du, %bb.av ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.gz = load i8, ptr %.1, align 1, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.33191, i64 1
  store i8 %i.gz, ptr %.33191, align 1, !tbaa !13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.34192 = phi ptr [ %i.ha, %bb.az ], [ %.0158217, %bb.av ] ; 2 uses
  %.2 = phi ptr [ %i.gy, %bb.az ], [ %i.du, %bb.av ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.2, i64 1
  %i.hc = load i8, ptr %.2, align 1, !tbaa !13
  %i.hd = getelementptr inbounds nuw i8, ptr %.34192, i64 1
  store i8 %i.hc, ptr %.34192, align 1, !tbaa !13
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.av
  %.35193 = phi ptr [ %i.hd, %bb.ba ], [ %.0158217, %bb.av ] ; 2 uses
  %.3 = phi ptr [ %i.hb, %bb.ba ], [ %i.du, %bb.av ] ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.hf = load i8, ptr %.3, align 1, !tbaa !13
  %i.hg = getelementptr inbounds nuw i8, ptr %.35193, i64 1
  store i8 %i.hf, ptr %.35193, align 1, !tbaa !13
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.av
  %.36 = phi ptr [ %i.hg, %bb.bb ], [ %.0158217, %bb.av ] ; 2 uses
  %.4 = phi ptr [ %i.he, %bb.bb ], [ %i.du, %bb.av ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.hi = load i8, ptr %.4, align 1, !tbaa !13
  %i.hj = getelementptr inbounds nuw i8, ptr %.36, i64 1
  store i8 %i.hi, ptr %.36, align 1, !tbaa !13
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.av
  %.37 = phi ptr [ %i.hj, %bb.bc ], [ %.0158217, %bb.av ] ; 2 uses
  %.5 = phi ptr [ %i.hh, %bb.bc ], [ %i.du, %bb.av ] ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.hl = load i8, ptr %.5, align 1, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %.37, i64 1
  store i8 %i.hl, ptr %.37, align 1, !tbaa !13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.av
  %.38 = phi ptr [ %i.hm, %bb.bd ], [ %.0158217, %bb.av ] ; 2 uses
  %.6 = phi ptr [ %i.hk, %bb.bd ], [ %i.du, %bb.av ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.6, i64 1
  %i.ho = load i8, ptr %.6, align 1, !tbaa !13
  %i.hp = getelementptr inbounds nuw i8, ptr %.38, i64 1
  store i8 %i.ho, ptr %.38, align 1, !tbaa !13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av
  %.39 = phi ptr [ %i.hp, %bb.be ], [ %.0158217, %bb.av ] ; 2 uses
  %.7 = phi ptr [ %i.hn, %bb.be ], [ %i.du, %bb.av ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.7, i64 1
  %i.hr = load i8, ptr %.7, align 1, !tbaa !13
  %i.hs = getelementptr inbounds nuw i8, ptr %.39, i64 1
  store i8 %i.hr, ptr %.39, align 1, !tbaa !13
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.av
  %.40 = phi ptr [ %i.hs, %bb.bf ], [ %.0158217, %bb.av ] ; 4 uses
  %.8 = phi ptr [ %i.hq, %bb.bf ], [ %i.du, %bb.av ] ; 3 uses
  %i.ht = load i8, ptr %.8, align 1, !tbaa !13
  store i8 %i.ht, ptr %.40, align 1, !tbaa !13
  %i.hu = getelementptr inbounds nuw i8, ptr %.40, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.hw = getelementptr inbounds nuw i8, ptr %.8, i64 2
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %.40, i64 2
  store i8 %i.hx, ptr %i.hu, align 1, !tbaa !13
  %i.hz = load i8, ptr %i.hw, align 1, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %.40, i64 3
  store i8 %i.hz, ptr %i.hy, align 1, !tbaa !13
  br label %.loopexit

default.unreachable:                              ; preds = %bb.f
  unreachable

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %bb.ax, %bb.bg, %bb.al
  %.45 = phi ptr [ %i.de, %bb.al ], [ %i.ia, %bb.bg ], [ %i.fv, %bb.ax ], [ %i.fk, %vec.epilog.middle.block ], [ %i.ej, %middle.block ], [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.gt, %.preheader ] ; 2 uses
  %.32.pn = phi ptr [ %4, %bb.al ], [ %5, %bb.bg ], [ %5, %bb.ax ], [ %5, %vec.epilog.middle.block ], [ %5, %middle.block ], [ %5, %.preheader ], [ %5, %.preheader.prol.loopexit ] ; 2 uses
  %i.ib = icmp ult ptr %.32.pn, %i.a
  br i1 %i.ib, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0158.lcssa = phi ptr [ %2, %bb.a ], [ %.45, %.loopexit ]
  %i.ic = ptrtoint ptr %.0158.lcssa to i64
  %i.id = ptrtoint ptr %2 to i64
  %i.ie = sub i64 %i.ic, %i.id
  br label %.thread

.thread:                                          ; preds = %bb.au, %bb.as, %bb.aq, %bb.an, %bb.c, %bb.e, %._crit_edge
  %.4147 = phi i64 [ %i.ie, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.au ]
  ret i64 %.4147
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!"branch_weights", i32 4, i32 28}
!15 = distinct !{!15, !16, !17, !18}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16}
end_hunk_0
