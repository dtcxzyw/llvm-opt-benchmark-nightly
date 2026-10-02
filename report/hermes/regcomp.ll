Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/regcomp?download=true
inline.NumInlined: 141
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@p_ere:bb.a
  %i.sp = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.sq = mul i64 %i.sm, 24
  %i.sr = call ptr @realloc(ptr noundef %i.sp, i64 noundef %i.sq) #20 ; 2 uses
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %bb.fs
  %i.st = load i32, ptr %i.d, align 8, !tbaa !21
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %bb.fu, label %seterr.exit12.i.i

bb.fu:                                            ; preds = %bb.ft
  store i32 12, ptr %i.d, align 8, !tbaa !21
  br label %seterr.exit12.i.i

seterr.exit12.i.i:                                ; preds = %bb.fu, %bb.ft
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %doemit.exit

bb.fv:                                            ; preds = %bb.fs
  store ptr %i.sr, ptr %i.g, align 8, !tbaa !17
  store i64 %i.sn, ptr %i.f, align 8, !tbaa !16
  %.pr199.pre = load i32, ptr %i.d, align 8, !tbaa !21
  %i.sv = icmp eq i32 %.pr199.pre, 0
  br label %doemit.exit

doemit.exit:                                      ; preds = %bb.fp, %bb.fq, %seterr.exit.i.i, %seterr.exit12.i.i, %bb.fv
  %.pr199 = phi i1 [ true, %bb.fp ], [ true, %bb.fq ], [ false, %seterr.exit.i.i ], [ false, %seterr.exit12.i.i ], [ %i.sv, %bb.fv ]
  %i.sw = or i64 %i.si, 2147483648
  %i.sx = load ptr, ptr %i.g, align 8, !tbaa !17  ; 6 uses
  %i.sy = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.sz = add nsw i64 %i.sy, 1
  store i64 %i.sz, ptr %i.b, align 8, !tbaa !29
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sx, i64 %i.sy
  store i64 %i.sw, ptr %i.ta, align 8, !tbaa !30
  %i.tb = load i64, ptr %i.b, align 8, !tbaa !29  ; 4 uses
  br i1 %.pr199, label %bb.fw, label %doemit.exit57

bb.fw:                                            ; preds = %doemit.exit
  %i.tc = sub nsw i64 %i.tb, %.139
  %i.td = getelementptr inbounds [8 x i8], ptr %i.sx, i64 %.139 ; 2 uses
  %i.te = load i64, ptr %i.td, align 8, !tbaa !30
  %i.tf = and i64 %i.te, 4160749568
  %i.tg = or i64 %i.tf, %i.tc
  store i64 %i.tg, ptr %i.td, align 8, !tbaa !30
  %i.th = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ti = load i64, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  %.not8.i52 = icmp slt i64 %i.th, %i.ti
  br i1 %.not8.i52, label %enlarge.exit.i54, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.tj = add nsw i64 %i.ti, 1
  %i.tk = sdiv i64 %i.tj, 2                       ; 2 uses
  %i.tl = mul nsw i64 %i.tk, 3                    ; 3 uses
  %.not.i.i53 = icmp slt i64 %i.ti, %i.tl
  br i1 %.not.i.i53, label %bb.fy, label %enlarge.exit.i54

bb.fy:                                            ; preds = %bb.fx
  %i.tm = icmp ugt i64 %i.tl, 2305843009213693951
  br i1 %i.tm, label %seterr.exit.i.i56, label %bb.fz

seterr.exit.i.i56:                                ; preds = %bb.fy
  store i32 12, ptr %i.d, align 8, !tbaa !21
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %enlarge.exit.i54

bb.fz:                                            ; preds = %bb.fy
  %i.tn = mul i64 %i.tk, 24
  %i.to = call ptr @realloc(ptr noundef nonnull %i.sx, i64 noundef %i.tn) #20 ; 3 uses
  %i.tp = icmp eq ptr %i.to, null
  br i1 %i.tp, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.tq = load i32, ptr %i.d, align 8, !tbaa !21
  %i.tr = icmp eq i32 %i.tq, 0
  br i1 %i.tr, label %bb.gb, label %seterr.exit12.i.i55

bb.gb:                                            ; preds = %bb.ga
  store i32 12, ptr %i.d, align 8, !tbaa !21
  br label %seterr.exit12.i.i55

seterr.exit12.i.i55:                              ; preds = %bb.gb, %bb.ga
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  %.pre233 = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %enlarge.exit.i54

bb.gc:                                            ; preds = %bb.fz
  store ptr %i.to, ptr %i.g, align 8, !tbaa !17
  store i64 %i.tl, ptr %i.f, align 8, !tbaa !16
  br label %enlarge.exit.i54

enlarge.exit.i54:                                 ; preds = %bb.gc, %seterr.exit12.i.i55, %seterr.exit.i.i56, %bb.fx, %bb.fw
  %i.ts = phi ptr [ %i.to, %bb.gc ], [ %.pre233, %seterr.exit12.i.i55 ], [ %i.sx, %seterr.exit.i.i56 ], [ %i.sx, %bb.fx ], [ %i.sx, %bb.fw ]
  %i.tt = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.tu = add nsw i64 %i.tt, 1
  store i64 %i.tu, ptr %i.b, align 8, !tbaa !29
  %i.tv = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %i.tt
  store i64 2281701376, ptr %i.tv, align 8, !tbaa !30
  br label %doemit.exit57

doemit.exit57:                                    ; preds = %bb.fo, %doemit.exit, %enlarge.exit.i54
  %i.tw = phi i64 [ %i.th, %enlarge.exit.i54 ], [ %i.tb, %doemit.exit ], [ %i.sh, %bb.fo ] ; 2 uses
  %.in = phi i64 [ %i.tb, %enlarge.exit.i54 ], [ %i.tb, %doemit.exit ], [ %i.sh, %bb.fo ]
  %i.tx = add nsw i64 %.in, -1                    ; 2 uses
  %i.ty = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.tz = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ua = load ptr, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ub = icmp ult ptr %i.tz, %i.ua
  br i1 %i.ub, label %.lr.ph209.preheader, label %.critedge.thread

.loopexit:                                        ; preds = %bb.fl, %bb.fk, %.thread342
  %.040373 = phi i64 [ %.040.lcssa, %.thread342 ], [ %.040375, %bb.fk ], [ %.040375, %bb.fl ]
  %.038371 = phi i64 [ %.038.lcssa, %.thread342 ], [ %.038376, %bb.fk ], [ %.038376, %bb.fl ] ; 2 uses
  %.not47369 = phi i1 [ %.not47.lcssa, %.thread342 ], [ %.not47377, %bb.fk ], [ %.not47377, %bb.fl ]
  %i.uc = phi i64 [ %i.rz, %.thread342 ], [ %i.ry, %bb.fk ], [ %i.ry, %bb.fl ]
  br i1 %.not47369, label %bb.gd, label %doemit.exit66

bb.gd:                                            ; preds = %.loopexit
  %i.ud = load i32, ptr %i.d, align 8, !tbaa !21
  %.not.i58 = icmp eq i32 %i.ud, 0
  br i1 %.not.i58, label %bb.ge, label %doemit.exit66

bb.ge:                                            ; preds = %bb.gd
  %i.ue = sub nsw i64 %i.uc, %.038371
  %i.uf = load ptr, ptr %i.g, align 8, !tbaa !17  ; 5 uses
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.uf, i64 %.038371 ; 2 uses
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !30
  %i.ui = and i64 %i.uh, 4160749568
  %i.uj = or i64 %i.ui, %i.ue
  store i64 %i.uj, ptr %i.ug, align 8, !tbaa !30
  %i.uk = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ul = sub nsw i64 %i.uk, %.040373
  %i.um = load i64, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  %.not8.i61 = icmp slt i64 %i.uk, %i.um
  br i1 %.not8.i61, label %enlarge.exit.i63, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.un = add nsw i64 %i.um, 1
  %i.uo = sdiv i64 %i.un, 2                       ; 2 uses
  %i.up = mul nsw i64 %i.uo, 3                    ; 3 uses
  %.not.i.i62 = icmp slt i64 %i.um, %i.up
  br i1 %.not.i.i62, label %bb.gg, label %enlarge.exit.i63

bb.gg:                                            ; preds = %bb.gf
  %i.uq = icmp ugt i64 %i.up, 2305843009213693951
  br i1 %i.uq, label %seterr.exit.i.i65, label %bb.gh

seterr.exit.i.i65:                                ; preds = %bb.gg
  store i32 12, ptr %i.d, align 8, !tbaa !21
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  br label %enlarge.exit.i63

bb.gh:                                            ; preds = %bb.gg
  %i.ur = mul i64 %i.uo, 24
  %i.us = call ptr @realloc(ptr noundef nonnull %i.uf, i64 noundef %i.ur) #20 ; 3 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %bb.gh
  %i.uu = load i32, ptr %i.d, align 8, !tbaa !21
  %i.uv = icmp eq i32 %i.uu, 0
  br i1 %i.uv, label %bb.gj, label %seterr.exit12.i.i64

bb.gj:                                            ; preds = %bb.gi
  store i32 12, ptr %i.d, align 8, !tbaa !21
  br label %seterr.exit12.i.i64

seterr.exit12.i.i64:                              ; preds = %bb.gj, %bb.gi
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.c, align 8, !tbaa !20
  %.pre229 = load ptr, ptr %i.g, align 8, !tbaa !17
  br label %enlarge.exit.i63

bb.gk:                                            ; preds = %bb.gh
  store ptr %i.us, ptr %i.g, align 8, !tbaa !17
  store i64 %i.up, ptr %i.f, align 8, !tbaa !16
  br label %enlarge.exit.i63

enlarge.exit.i63:                                 ; preds = %bb.gk, %seterr.exit12.i.i64, %seterr.exit.i.i65, %bb.gf, %bb.ge
  %i.uw = phi ptr [ %i.us, %bb.gk ], [ %.pre229, %seterr.exit12.i.i64 ], [ %i.uf, %seterr.exit.i.i65 ], [ %i.uf, %bb.gf ], [ %i.uf, %bb.ge ]
  %i.ux = or i64 %i.ul, 2415919104
  %i.uy = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.uz = add nsw i64 %i.uy, 1
  store i64 %i.uz, ptr %i.b, align 8, !tbaa !29
  %i.va = getelementptr inbounds [8 x i8], ptr %i.uw, i64 %i.uy
  store i64 %i.ux, ptr %i.va, align 8, !tbaa !30
  br label %doemit.exit66

doemit.exit66:                                    ; preds = %bb.gd, %enlarge.exit.i63, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @p_bre(ptr noundef nonnull %0, i32 noundef range(i32 92, 129) %1, i32 noundef range(i32 41, 129) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 36 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20   ; 6 uses
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = load i8, ptr %i.d, align 1, !tbaa !31
  %i.i = icmp eq i8 %i.h, 94
  br i1 %i.i, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !21
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.d, label %doemit.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %.not8.i = icmp slt i64 %i.c, %i.n
  br i1 %.not8.i, label %enlarge.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.n, 1
  %i.p = sdiv i64 %i.o, 2                         ; 2 uses
  %i.q = mul nsw i64 %i.p, 3                      ; 3 uses
  %.not.i.i = icmp slt i64 %i.n, %i.q
  br i1 %.not.i.i, label %bb.f, label %enlarge.exit.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp ugt i64 %i.q, 2305843009213693951
  br i1 %i.r, label %seterr.exit.i.i, label %bb.g

seterr.exit.i.i:                                  ; preds = %bb.f
  store i32 12, ptr %i.k, align 8, !tbaa !21
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %i.u = mul i64 %i.p, 24
  %i.v = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %i.u) #20 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.k, align 8, !tbaa !21
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %seterr.exit12.i.i

bb.i:                                             ; preds = %bb.h
  store i32 12, ptr %i.k, align 8, !tbaa !21
  br label %seterr.exit12.i.i

seterr.exit12.i.i:                                ; preds = %bb.i, %bb.h
  store ptr @nuls, ptr %0, align 8, !tbaa !19
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i

bb.j:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.s, align 8, !tbaa !17
  store i64 %i.q, ptr %i.m, align 8, !tbaa !16
  %.pre.pre.pre = load ptr, ptr %0, align 8, !tbaa !19
  %.pre131.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i

enlarge.exit.i:                                   ; preds = %bb.j, %seterr.exit12.i.i, %seterr.exit.i.i, %bb.e, %bb.d
  %.pre131.pre = phi ptr [ %.pre131.pre.pre, %bb.j ], [ @nuls, %seterr.exit12.i.i ], [ @nuls, %seterr.exit.i.i ], [ %i.f, %bb.e ], [ %i.f, %bb.d ]
  %.pre.pre = phi ptr [ %.pre.pre.pre, %bb.j ], [ @nuls, %seterr.exit12.i.i ], [ @nuls, %seterr.exit.i.i ], [ %i.j, %bb.e ], [ %i.j, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !29
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  store i64 402653184, ptr %i.ad, align 8, !tbaa !30
  br label %doemit.exit

doemit.exit:                                      ; preds = %bb.c, %enlarge.exit.i
  %.pre131 = phi ptr [ %i.f, %bb.c ], [ %.pre131.pre, %enlarge.exit.i ]
  %.pre = phi ptr [ %i.j, %bb.c ], [ %.pre.pre, %enlarge.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !36
  %i.ai = or i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 76 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !38
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.b, %doemit.exit
  %i.am = phi ptr [ %i.f, %bb.a ], [ %i.f, %bb.b ], [ %.pre131, %doemit.exit ] ; 2 uses
  %i.an = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.b ], [ %.pre, %doemit.exit ] ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.am
  br i1 %i.ao, label %.lr.ph126, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.k
  %.pre140222 = load i64, ptr %i.b, align 8, !tbaa !29
  br label %bb.ef

.lr.ph126:                                        ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 51 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 24 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph126, %p_simp_re.exit
  %i.aw = phi ptr [ %i.am, %.lr.ph126 ], [ %i.na, %p_simp_re.exit ] ; 4 uses
  %i.ax = phi ptr [ %i.an, %.lr.ph126 ], [ %i.nb, %p_simp_re.exit ] ; 4 uses
  %.0125 = phi i32 [ 0, %.lr.ph126 ], [ %.0127.i, %p_simp_re.exit ]
  %.not.i35124 = phi i1 [ false, %.lr.ph126 ], [ true, %p_simp_re.exit ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 7 uses
  %i.az = icmp ult ptr %i.ay, %i.aw
  br i1 %i.az, label %bb.m, label %.critedge34.thread

bb.m:                                             ; preds = %bb.l
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !31
  %i.bb = sext i8 %i.ba to i32
  %i.bc = icmp eq i32 %1, %i.bb
  br i1 %i.bc, label %bb.n, label %.critedge34

bb.n:                                             ; preds = %bb.m
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !31
  %i.be = sext i8 %i.bd to i32
  %.not122 = icmp eq i32 %2, %i.be
  br i1 %.not122, label %.critedge, label %.critedge34

.critedge34:                                      ; preds = %bb.m, %bb.n
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !19
  %i.bg = load i8, ptr %i.ax, align 1, !tbaa !31  ; 2 uses
  %i.bh = sext i8 %i.bg to i32
  %i.bi = icmp eq i8 %i.bg, 92
  br i1 %i.bi, label %bb.p, label %bb.q

.critedge34.thread:                               ; preds = %bb.l
  %i.bj = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !19
  %i.bk = load i8, ptr %i.ax, align 1, !tbaa !31  ; 2 uses
  %i.bl = sext i8 %i.bk to i32
  %i.bm = icmp eq i8 %i.bk, 92
  br i1 %i.bm, label %.thread, label %bb.q

.thread:                                          ; preds = %.critedge34.thread
  %i.bn = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.o, label %seterr.exit120

bb.o:                                             ; preds = %.thread
  store i32 5, ptr %i.ap, align 8, !tbaa !21
  br label %seterr.exit120

seterr.exit120:                                   ; preds = %.thread, %bb.o
  store ptr @nuls, ptr %i.e, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %.critedge34, %seterr.exit120
  %i.bp = phi ptr [ @nuls, %seterr.exit120 ], [ %i.aw, %.critedge34 ]
  %i.bq = phi ptr [ @nuls, %seterr.exit120 ], [ %i.ay, %.critedge34 ] ; 2 uses
  %i.br = phi i64 [ %i.bj, %seterr.exit120 ], [ %i.bf, %.critedge34 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !19
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bu = sext i8 %i.bt to i32
  %i.bv = or i32 %i.bu, 256
  br label %bb.q

bb.q:                                             ; preds = %.critedge34.thread, %bb.p, %.critedge34
  %i.bw = phi ptr [ %i.bp, %bb.p ], [ %i.aw, %.critedge34 ], [ %i.aw, %.critedge34.thread ] ; 4 uses
  %i.bx = phi ptr [ %i.bs, %bb.p ], [ %i.ay, %.critedge34 ], [ %i.ay, %.critedge34.thread ] ; 4 uses
  %i.by = phi i64 [ %i.br, %bb.p ], [ %i.bf, %.critedge34 ], [ %i.bj, %.critedge34.thread ] ; 10 uses
  %.0126.i = phi i32 [ %i.bv, %bb.p ], [ %i.bh, %.critedge34 ], [ %i.bl, %.critedge34.thread ] ; 4 uses
  switch i32 %.0126.i, label %bb.cn [
    i32 46, label %bb.r
    i32 91, label %bb.ab
    i32 379, label %bb.ac
    i32 296, label %bb.ae
    i32 297, label %bb.bi
    i32 381, label %bb.bi
    i32 305, label %bb.bk
    i32 306, label %bb.bk
    i32 307, label %bb.bk
    i32 308, label %bb.bk
    i32 309, label %bb.bk
    i32 310, label %bb.bk
    i32 311, label %bb.bk
    i32 312, label %bb.bk
    i32 313, label %bb.bk
    i32 42, label %bb.ck
  ]

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !25
  %i.cc = and i32 %i.cb, 8
  %.not151.i = icmp eq i32 %i.cc, 0
  br i1 %.not151.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  store ptr %i.av, ptr %i.e, align 8, !tbaa !20
  store <4 x i8> <i8 94, i8 10, i8 93, i8 0>, ptr %i.a, align 4, !tbaa !31
  call fastcc void @p_bracket(ptr noundef nonnull %0)
  store ptr %i.bx, ptr %0, align 8, !tbaa !19
  store ptr %i.bw, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %doemit.exit119

bb.t:                                             ; preds = %bb.r
  %i.cd = load i32, ptr %i.ap, align 8, !tbaa !21
  %.not.i113 = icmp eq i32 %i.cd, 0
  br i1 %.not.i113, label %bb.u, label %doemit.exit119

bb.u:                                             ; preds = %bb.t
  %i.ce = load i64, ptr %i.ar, align 8, !tbaa !16 ; 3 uses
  %.not8.i114 = icmp slt i64 %i.by, %i.ce
  br i1 %.not8.i114, label %enlarge.exit.i116, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i64 %i.ce, 1
  %i.cg = sdiv i64 %i.cf, 2                       ; 2 uses
  %i.ch = mul nsw i64 %i.cg, 3                    ; 3 uses
  %.not.i.i115 = icmp slt i64 %i.ce, %i.ch
  br i1 %.not.i.i115, label %bb.w, label %enlarge.exit.i116

bb.w:                                             ; preds = %bb.v
  %i.ci = icmp ugt i64 %i.ch, 2305843009213693951
  br i1 %i.ci, label %seterr.exit.i.i118, label %bb.x

seterr.exit.i.i118:                               ; preds = %bb.w
  store i32 12, ptr %i.ap, align 8, !tbaa !21
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %enlarge.exit.i116

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.ck = mul i64 %i.cg, 24
  %i.cl = call ptr @realloc(ptr noundef %i.cj, i64 noundef %i.ck) #20 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cn = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.z, label %seterr.exit12.i.i117

bb.z:                                             ; preds = %bb.y
  store i32 12, ptr %i.ap, align 8, !tbaa !21
  br label %seterr.exit12.i.i117

seterr.exit12.i.i117:                             ; preds = %bb.z, %bb.y
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %enlarge.exit.i116

bb.aa:                                            ; preds = %bb.x
  store ptr %i.cl, ptr %i.as, align 8, !tbaa !17
  store i64 %i.ch, ptr %i.ar, align 8, !tbaa !16
  br label %enlarge.exit.i116

enlarge.exit.i116:                                ; preds = %bb.aa, %seterr.exit12.i.i117, %seterr.exit.i.i118, %bb.v, %bb.u
  %i.cp = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.cq = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.cr = add nsw i64 %i.cq, 1
  store i64 %i.cr, ptr %i.b, align 8, !tbaa !29
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  store i64 671088640, ptr %i.cs, align 8, !tbaa !30
  br label %doemit.exit119

bb.ab:                                            ; preds = %bb.q
  call fastcc void @p_bracket(ptr noundef nonnull %0), !inline_history !73
  br label %doemit.exit119

bb.ac:                                            ; preds = %bb.q
  %i.ct = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.ad, label %seterr.exit112

bb.ad:                                            ; preds = %bb.ac
  store i32 13, ptr %i.ap, align 8, !tbaa !21
  br label %seterr.exit112

seterr.exit112:                                   ; preds = %bb.ac, %bb.ad
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %doemit.exit119

bb.ae:                                            ; preds = %bb.q
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 112 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !26
  %i.cy = add i64 %i.cx, 1                        ; 6 uses
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !26
  %i.cz = icmp slt i64 %i.cy, 10                  ; 2 uses
  br i1 %i.cz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.cy
  store i64 %i.by, ptr %i.da, align 8, !tbaa !30
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.db = load i32, ptr %i.ap, align 8, !tbaa !21
  %.not.i105 = icmp eq i32 %i.db, 0
  br i1 %.not.i105, label %bb.ah, label %doemit.exit111

bb.ah:                                            ; preds = %bb.ag
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !29
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !16 ; 3 uses
  %.not8.i106 = icmp slt i64 %i.dc, %i.dd
  br i1 %.not8.i106, label %enlarge.exit.i108, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = add nsw i64 %i.dd, 1
  %i.df = sdiv i64 %i.de, 2                       ; 2 uses
  %i.dg = mul nsw i64 %i.df, 3                    ; 3 uses
  %.not.i.i107 = icmp slt i64 %i.dd, %i.dg
  br i1 %.not.i.i107, label %bb.aj, label %enlarge.exit.i108

bb.aj:                                            ; preds = %bb.ai
  %i.dh = icmp ugt i64 %i.dg, 2305843009213693951
  br i1 %i.dh, label %seterr.exit.i.i110, label %bb.ak

seterr.exit.i.i110:                               ; preds = %bb.aj
  store i32 12, ptr %i.ap, align 8, !tbaa !21
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %enlarge.exit.i108

bb.ak:                                            ; preds = %bb.aj
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.dj = mul i64 %i.df, 24
  %i.dk = call ptr @realloc(ptr noundef %i.di, i64 noundef %i.dj) #20 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dm = load i32, ptr %i.ap, align 8, !tbaa !21
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.am, label %seterr.exit12.i.i109

bb.am:                                            ; preds = %bb.al
  store i32 12, ptr %i.ap, align 8, !tbaa !21
  br label %seterr.exit12.i.i109

seterr.exit12.i.i109:                             ; preds = %bb.am, %bb.al
  store <2 x ptr> <ptr @nuls, ptr @nuls>, ptr %0, align 8, !tbaa !37
  br label %enlarge.exit.i108

bb.an:                                            ; preds = %bb.ak
  store ptr %i.dk, ptr %i.as, align 8, !tbaa !17
  store i64 %i.dg, ptr %i.ar, align 8, !tbaa !16
  %.pre133.pre = load ptr, ptr %0, align 8, !tbaa !19
  %.pre134.pre = load ptr, ptr %i.e, align 8, !tbaa !20
  br label %enlarge.exit.i108

enlarge.exit.i108:                                ; preds = %bb.an, %seterr.exit12.i.i109, %seterr.exit.i.i110, %bb.ai, %bb.ah
  %.pre134 = phi ptr [ %.pre134.pre, %bb.an ], [ @nuls, %seterr.exit12.i.i109 ], [ @nuls, %seterr.exit.i.i110 ], [ %i.bw, %bb.ai ], [ %i.bw, %bb.ah ]
  %.pre133 = phi ptr [ %.pre133.pre, %bb.an ], [ @nuls, %seterr.exit12.i.i109 ], [ @nuls, %seterr.exit.i.i110 ], [ %i.bx, %bb.ai ], [ %i.bx, %bb.ah ]
  %i.do = or i64 %i.cy, 1744830464
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !17
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.dr = add nsw i64 %i.dq, 1
  store i64 %i.dr, ptr %i.b, align 8, !tbaa !29
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.dq
  store i64 %i.do, ptr %i.ds, align 8, !tbaa !30
  br label %doemit.exit111

doemit.exit111:                                   ; preds = %bb.ag, %enlarge.exit.i108
  %i.dt = phi ptr [ %i.bw, %bb.ag ], [ %.pre134, %enlarge.exit.i108 ] ; 2 uses
  %i.du = phi ptr [ %i.bx, %bb.ag ], [ %.pre133, %enlarge.exit.i108 ] ; 3 uses
  %i.dv = icmp ult ptr %i.du, %i.dt
  br i1 %i.dv, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %doemit.exit111
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 1 ; 2 uses
  %i.dx = icmp ult ptr %i.dw, %i.dt
  br i1 %i.dx, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !31
  %i.dz = icmp eq i8 %i.dy, 92
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !31
  %i.eb = icmp eq i8 %i.ea, 41
  br i1 %i.eb, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  call fastcc void @p_bre(ptr noundef nonnull %0, i32 noundef 92, i32 noundef 41), !inline_history !73
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %doemit.exit111
  br i1 %i.cz, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !29
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.cy
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !30
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ee = load i32, ptr %i.ap, align 8, !tbaa !21
end_hunk_0
