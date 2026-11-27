Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/dtoa?download=true
inline.NumInlined: 19
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@lexbor_grisu2_gen.pow10 = internal unnamed_addr constant [10 x i64] [i64 1, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000], align 16

; Function Attrs: nounwind uwtable
define dso_local i64 @lexbor_dtoa(double noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 3 uses
  %i.b = alloca [4 x i8], align 1                 ; 3 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %bb.bl, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %0, 0.000000e+00
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 48, ptr %1, align 1, !tbaa !17
  br label %bb.bl

bb.d:                                             ; preds = %bb.b
  %i.g = bitcast double %0 to i64                 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 45, ptr %1, align 1, !tbaa !17
  %i.i = icmp samesign eq i64 %2, 1
  br i1 %i.i, label %bb.bl, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = fneg double %0
  %.pre = bitcast double %i.k to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.g, %bb.d ] ; 2 uses
  %.020 = phi ptr [ %i.j, %bb.f ], [ %1, %bb.d ]  ; 27 uses
  %.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.d ]
  %i.l = lshr i64 %.pre-phi, 52
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = and i32 %i.m, 2047                       ; 2 uses
  %i.o = and i64 %.pre-phi, 4503599627370495      ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0                 ; 3 uses
  %i.p = or disjoint i64 %i.o, 4503599627370496
  %i.q = add nsw i32 %i.n, -1075
  %.sroa.05.0.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.p ; 5 uses
  %.sroa.3.0.i.i = select i1 %.not.i.i, i32 -1074, i32 %i.q ; 2 uses
  %i.r = shl nuw nsw i64 %.sroa.05.0.i.i, 1       ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.t = add nsw i32 %.sroa.3.0.i.i, -1           ; 3 uses
  br i1 %.not.i.i, label %.lr.ph.i.i.i, label %lexbor_diyfp_normalize_boundaries.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.0.06.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %bb.g ] ; 2 uses
  %.sroa.5.05.i.i.i = phi i32 [ %i.v, %.lr.ph.i.i.i ], [ %i.t, %bb.g ]
  %i.u = shl i64 %.sroa.0.06.i.i.i, 1             ; 2 uses
  %i.v = add nsw i32 %.sroa.5.05.i.i.i, -1        ; 2 uses
  %i.w = and i64 %.sroa.0.06.i.i.i, 4503599627370496
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.i.i, label %lexbor_diyfp_normalize_boundaries.exit.i, !llvm.loop !12

lexbor_diyfp_normalize_boundaries.exit.i:         ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.5.0.lcssa.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %i.s, %bb.g ], [ %i.u, %.lr.ph.i.i.i ]
  %i.y = shl i64 %.sroa.0.0.lcssa.i.i.i, 10       ; 2 uses
  %i.z = add i32 %.sroa.5.0.lcssa.i.i.i, -10      ; 2 uses
  %i.aa = icmp eq i64 %.sroa.05.0.i.i, 4503599627370496 ; 2 uses
  %i.ab = add nsw i32 %.sroa.3.0.i.i, -2
  %i.ac = add nsw i64 %i.r, -1
  %.sroa.08.0.i.i = select i1 %i.aa, i64 18014398509481983, i64 %i.ac
  %.sroa.7.0.i.i = select i1 %i.aa, i32 %i.ab, i32 %i.t
  %i.ad = sub nsw i32 %.sroa.7.0.i.i, %i.z
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = shl i64 %.sroa.08.0.i.i, %i.ae          ; 2 uses
  %i.ag = call { i64, i32 } @lexbor_cached_power_bin(i32 noundef %i.z, ptr noundef nonnull %i.c) #5 ; 2 uses
  %i.ah = extractvalue { i64, i32 } %i.ag, 0      ; 2 uses
  %i.ai = extractvalue { i64, i32 } %i.ag, 1
  %i.aj = icmp eq i64 %.sroa.05.0.i.i, 0
  br i1 %i.aj, label %lexbor_diyfp_normalize.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %lexbor_diyfp_normalize_boundaries.exit.i, %.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.ak, %.preheader.i.i.i ], [ 0, %lexbor_diyfp_normalize_boundaries.exit.i ]
  %.069.i.i.i = phi i64 [ %i.al, %.preheader.i.i.i ], [ %.sroa.05.0.i.i, %lexbor_diyfp_normalize_boundaries.exit.i ]
  %i.ak = add i64 %.010.i.i.i, 1                  ; 2 uses
  %i.al = shl nuw i64 %.069.i.i.i, 1              ; 2 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %.preheader.i.i.i, label %lexbor_diyfp_normalize.exit.loopexit.i, !llvm.loop !13

lexbor_diyfp_normalize.exit.loopexit.i:           ; preds = %.preheader.i.i.i
  %i.an = and i64 %i.ak, 4294967295
  br label %lexbor_diyfp_normalize.exit.i

lexbor_diyfp_normalize.exit.i:                    ; preds = %lexbor_diyfp_normalize.exit.loopexit.i, %lexbor_diyfp_normalize_boundaries.exit.i
  %.07.i.i.i = phi i64 [ 64, %lexbor_diyfp_normalize_boundaries.exit.i ], [ %i.an, %lexbor_diyfp_normalize.exit.loopexit.i ]
  %i.ao = shl i64 %.sroa.05.0.i.i, %.07.i.i.i     ; 2 uses
  %i.ap = lshr i64 %i.ao, 32                      ; 2 uses
  %i.aq = and i64 %i.ao, 4294967295               ; 2 uses
  %i.ar = lshr i64 %i.ah, 32                      ; 6 uses
  %i.as = and i64 %i.ah, 4294967295               ; 6 uses
  %i.at = mul nuw i64 %i.ap, %i.ar
  %i.au = mul nuw i64 %i.aq, %i.ar                ; 2 uses
  %i.av = mul nuw i64 %i.ap, %i.as                ; 2 uses
  %i.aw = mul nuw i64 %i.aq, %i.as
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = and i64 %i.av, 4294967295
  %i.az = and i64 %i.au, 4294967295
  %i.ba = add nuw nsw i64 %i.ay, 2147483648
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  %i.bc = add nuw nsw i64 %i.bb, %i.az
  %i.bd = lshr i64 %i.av, 32
  %i.be = lshr i64 %i.au, 32
  %i.bf = lshr i64 %i.bc, 32
  %i.bg = lshr i64 %i.y, 32                       ; 2 uses
  %i.bh = and i64 %i.y, 4294966272                ; 2 uses
  %i.bi = mul nuw i64 %i.ar, %i.bg
  %i.bj = mul nuw i64 %i.ar, %i.bh                ; 2 uses
  %i.bk = mul nuw i64 %i.as, %i.bg                ; 2 uses
  %i.bl = mul nuw i64 %i.as, %i.bh
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = and i64 %i.bk, 4294967295
  %i.bo = and i64 %i.bj, 4294966272
  %i.bp = add nuw nsw i64 %i.bn, 2147483648
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  %i.br = add nuw nsw i64 %i.bq, %i.bo
  %i.bs = lshr i64 %i.bk, 32
  %i.bt = lshr i64 %i.bj, 32
  %i.bu = lshr i64 %i.br, 32
  %i.bv = add i32 %.sroa.5.0.lcssa.i.i.i, %i.ai
  %.neg49.i = sub i32 -54, %i.bv
  %i.bw = lshr i64 %i.af, 32                      ; 2 uses
  %i.bx = and i64 %i.af, 4294967295               ; 2 uses
  %i.by = mul nuw i64 %i.bw, %i.ar
  %i.bz = mul nuw i64 %i.bx, %i.ar                ; 2 uses
  %i.ca = mul nuw i64 %i.bw, %i.as                ; 2 uses
  %i.cb = mul nuw i64 %i.bx, %i.as
  %i.cc = lshr i64 %i.cb, 32
  %i.cd = and i64 %i.ca, 4294967295
  %i.ce = and i64 %i.bz, 4294967295
  %i.cf = add nuw nsw i64 %i.cd, 2147483648
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  %i.ch = add nuw nsw i64 %i.cg, %i.ce
  %i.ci = lshr i64 %i.ca, 32
  %i.cj = add nuw i64 %i.ci, %i.by
  %i.ck = lshr i64 %i.bz, 32
  %i.cl = add nuw i64 %i.cj, %i.ck
  %i.cm = lshr i64 %i.ch, 32
  %i.cn = add i64 %i.cl, %i.cm
  %.neg.i = xor i64 %i.cn, -1
  %i.co = add i64 %i.bi, -1
  %i.cp = add i64 %i.co, %i.bs
  %i.cq = add i64 %i.cp, %i.bt
  %i.cr = add i64 %i.cq, %i.bu                    ; 4 uses
  %i.cs = add i64 %i.cr, %.neg.i                  ; 4 uses
  %i.ct = add nuw i64 %i.at, %i.bd
  %i.cu = add nuw i64 %i.ct, %i.be
  %i.cv = add i64 %i.cu, %i.bf
  %i.cw = sub i64 %i.cr, %i.cv                    ; 5 uses
  %i.cx = zext i32 %.neg49.i to i64               ; 5 uses
  %i.cy = shl nuw i64 1, %i.cx                    ; 4 uses
  %i.cz = lshr i64 %i.cr, %i.cx
  %i.da = trunc i64 %i.cz to i32                  ; 10 uses
  %i.db = add i64 %i.cy, -1                       ; 2 uses
  %i.dc = and i64 %i.cr, %i.db                    ; 2 uses
  %i.dd = icmp ult i32 %i.da, 10
  br i1 %i.dd, label %lexbor_dec_count.exit.i.i.preheader, label %bb.h

bb.h:                                             ; preds = %lexbor_diyfp_normalize.exit.i
  %i.de = icmp ult i32 %i.da, 100
  br i1 %i.de, label %lexbor_dec_count.exit.i.i.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.df = icmp ult i32 %i.da, 1000
  br i1 %i.df, label %lexbor_dec_count.exit.i.i.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = icmp ult i32 %i.da, 10000
  br i1 %i.dg, label %lexbor_dec_count.exit.i.i.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = icmp ult i32 %i.da, 100000
  br i1 %i.dh, label %lexbor_dec_count.exit.i.i.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = icmp ult i32 %i.da, 1000000
  br i1 %i.di, label %lexbor_dec_count.exit.i.i.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dj = icmp ult i32 %i.da, 10000000
  br i1 %i.dj, label %lexbor_dec_count.exit.i.i.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = icmp ult i32 %i.da, 100000000
  br i1 %i.dk, label %lexbor_dec_count.exit.i.i.preheader, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dl = icmp ult i32 %i.da, 1000000000
  %..i.i.i = select i1 %i.dl, i32 9, i32 10
  br label %lexbor_dec_count.exit.i.i.preheader

lexbor_dec_count.exit.i.i.preheader:              ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %lexbor_diyfp_normalize.exit.i
  %.097.i.i.ph = phi i32 [ 1, %lexbor_diyfp_normalize.exit.i ], [ 2, %bb.h ], [ 3, %bb.i ], [ 4, %bb.j ], [ 5, %bb.k ], [ 6, %bb.l ], [ 7, %bb.m ], [ 8, %bb.n ], [ %..i.i.i, %bb.o ]
  br label %lexbor_dec_count.exit.i.i

lexbor_dec_count.exit.i.i:                        ; preds = %lexbor_dec_count.exit.i.i.preheader, %bb.ab
  %.0100.i.i = phi i32 [ %.1101.i.i, %bb.ab ], [ %i.da, %lexbor_dec_count.exit.i.i.preheader ] ; 19 uses
  %.098.i.i = phi ptr [ %.199.i.i, %bb.ab ], [ %.020, %lexbor_dec_count.exit.i.i.preheader ] ; 4 uses
  %.097.i.i = phi i32 [ %i.el, %bb.ab ], [ %.097.i.i.ph, %lexbor_dec_count.exit.i.i.preheader ] ; 3 uses
  switch i32 %.097.i.i, label %default.unreachable.i.i [
    i32 0, label %.preheader.i.i
    i32 10, label %bb.p
    i32 9, label %bb.q
    i32 8, label %bb.r
    i32 7, label %bb.s
    i32 6, label %bb.t
    i32 5, label %bb.u
    i32 4, label %bb.v
    i32 3, label %bb.w
    i32 2, label %bb.x
    i32 1, label %bb.y
  ]

bb.p:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.dm = udiv i32 %.0100.i.i, 1000000000
  %i.dn = urem i32 %.0100.i.i, 1000000000
  br label %bb.y

bb.q:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.do = udiv i32 %.0100.i.i, 100000000
  %i.dp = urem i32 %.0100.i.i, 100000000
  br label %bb.y

bb.r:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.dq = udiv i32 %.0100.i.i, 10000000
  %i.dr = urem i32 %.0100.i.i, 10000000
  br label %bb.y

bb.s:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.ds = udiv i32 %.0100.i.i, 1000000
  %i.dt = urem i32 %.0100.i.i, 1000000
  br label %bb.y

bb.t:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.du = udiv i32 %.0100.i.i, 100000
  %i.dv = urem i32 %.0100.i.i, 100000
  br label %bb.y

bb.u:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.dw = udiv i32 %.0100.i.i, 10000
  %i.dx = urem i32 %.0100.i.i, 10000
  br label %bb.y

bb.v:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.dy = udiv i32 %.0100.i.i, 1000
  %i.dz = urem i32 %.0100.i.i, 1000
  br label %bb.y

bb.w:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.ea = udiv i32 %.0100.i.i, 100
  %i.eb = urem i32 %.0100.i.i, 100
  br label %bb.y

bb.x:                                             ; preds = %lexbor_dec_count.exit.i.i
  %i.ec = udiv i32 %.0100.i.i, 10
  %i.ed = urem i32 %.0100.i.i, 10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %lexbor_dec_count.exit.i.i
  %.0103.i.i = phi i32 [ %i.dm, %bb.p ], [ %i.do, %bb.q ], [ %i.dq, %bb.r ], [ %i.ds, %bb.s ], [ %i.du, %bb.t ], [ %i.dw, %bb.u ], [ %i.dy, %bb.v ], [ %i.ea, %bb.w ], [ %i.ec, %bb.x ], [ %.0100.i.i, %lexbor_dec_count.exit.i.i ] ; 2 uses
  %.1101.i.i = phi i32 [ %i.dn, %bb.p ], [ %i.dp, %bb.q ], [ %i.dr, %bb.r ], [ %i.dt, %bb.s ], [ %i.dv, %bb.t ], [ %i.dx, %bb.u ], [ %i.dz, %bb.v ], [ %i.eb, %bb.w ], [ %i.ed, %bb.x ], [ 0, %lexbor_dec_count.exit.i.i ] ; 2 uses
  %.not116.i.i = icmp eq i32 %.0103.i.i, 0
  %.not117.i.i = icmp eq ptr %.098.i.i, %.020
  %or.cond.i.i = and i1 %.not117.i.i, %.not116.i.i
  br i1 %or.cond.i.i, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = trunc i32 %.0103.i.i to i8
  %i.ef = add i8 %i.ee, 48
  store i8 %i.ef, ptr %.098.i.i, align 1, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.098.i.i, i64 1 ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.d
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = ptrtoint ptr %i.d to i64
  %i.ej = ptrtoint ptr %.020 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  br label %lexbor_grisu2.exit

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.199.i.i = phi ptr [ %i.eg, %bb.z ], [ %.020, %bb.y ] ; 2 uses
  %i.el = add nsw i32 %.097.i.i, -1               ; 3 uses
  %i.em = zext nneg i32 %.1101.i.i to i64
  %i.en = shl i64 %i.em, %i.cx
  %i.eo = add i64 %i.en, %i.dc                    ; 4 uses
  %.not118.i.i = icmp ugt i64 %i.eo, %i.cs
  br i1 %.not118.i.i, label %lexbor_dec_count.exit.i.i, label %bb.ac, !llvm.loop !14

bb.ac:                                            ; preds = %bb.ab
  %i.ep = load i32, ptr %i.c, align 4, !tbaa !19
  %i.eq = add nsw i32 %i.ep, %i.el
  store i32 %i.eq, ptr %i.c, align 4, !tbaa !19
  %i.er = ptrtoint ptr %.199.i.i to i64
  %i.es = ptrtoint ptr %.020 to i64
  %i.et = sub i64 %i.er, %i.es                    ; 5 uses
  %i.eu = zext nneg i32 %i.el to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @lexbor_grisu2_gen.pow10, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !21
  %i.ex = shl i64 %i.ew, %i.cx                    ; 3 uses
  %i.ey = icmp uge i64 %i.eo, %i.cw
  %i.ez = sub nuw i64 %i.cs, %i.eo
  %.not21.i.i.i = icmp ult i64 %i.ez, %i.ex
  %or.cond22.i.i.i = or i1 %i.ey, %.not21.i.i.i
  br i1 %or.cond22.i.i.i, label %lexbor_grisu2.exit, label %.lr.ph.i.i43.i

.lr.ph.i.i43.i:                                   ; preds = %bb.ac
  %i.fa = getelementptr i8, ptr %.020, i64 %i.et
  %i.fb = getelementptr i8, ptr %i.fa, i64 -1     ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge2.i.i.i, %.lr.ph.i.i43.i
  %.023.i.i.i = phi i64 [ %i.eo, %.lr.ph.i.i43.i ], [ %i.fc, %.critedge2.i.i.i ] ; 2 uses
  %i.fc = add i64 %.023.i.i.i, %i.ex              ; 4 uses
  %.not33.i.i.i = icmp ult i64 %i.fc, %i.cw
  br i1 %.not33.i.i.i, label %.critedge2.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fd = sub nuw i64 %i.cw, %.023.i.i.i
  %i.fe = sub nuw i64 %i.fc, %i.cw
end_hunk_0
