Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unsp?download=true
inline.NumInlined: 23
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@very_real_unpack:bb.a
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !14
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !14
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !16

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1024, ptr %i.s, align 2, !tbaa !14
  store i16 1024, ptr %0, align 2, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 47 uses
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 51 uses
  store ptr %5, ptr %9, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 61 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !24
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 15 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 28 ; 3 uses
  store i32 %1, ptr %i.ab, align 4, !tbaa !27
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !23
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !28
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !28
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !28
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread551

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !23
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !28
  br i1 %i.ay, label %.lr.ph, label %.thread551

.lr.ph:                                           ; preds = %get_byte.exit.4
  %i.bg = and i32 %2, 255
  %i.bh = sub i32 8, %2
  %i.bi = and i32 %i.bh, 255
  %.not348 = icmp eq i32 %8, 0                    ; 4 uses
  %i.bj = zext i32 %8 to i64
  %i.bk = ptrtoint ptr %7 to i64                  ; 6 uses
  %i.bl = add i64 %i.bj, %i.bk                    ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1606 ; 5 uses
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = add i64 %i.bq, 2                        ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bs = phi i32 [ 0, %.lr.ph ], [ %i.adj, %select.unfold ] ; 5 uses
  %.0274638 = phi i32 [ 0, %.lr.ph ], [ %.3, %select.unfold ]
  %.0276635 = phi i32 [ 0, %.lr.ph ], [ %.3279, %select.unfold ] ; 13 uses
  %.0280628 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0284621 = phi i32 [ 1, %.lr.ph ], [ %.3287, %select.unfold ] ; 11 uses
  %.0288614 = phi i32 [ 1, %.lr.ph ], [ %.2290, %select.unfold ] ; 11 uses
  %.0291607 = phi i32 [ 1, %.lr.ph ], [ %.2293, %select.unfold ] ; 7 uses
  %.0294606 = phi i32 [ 0, %.lr.ph ], [ %.3297, %select.unfold ] ; 24 uses
  %.0298605 = phi i32 [ 0, %.lr.ph ], [ %.3301, %select.unfold ]
  %.0308598 = phi i32 [ %6, %.lr.ph ], [ %.3311, %select.unfold ] ; 4 uses
  %i.bt = shl i32 %.0276635, 4                    ; 2 uses
  %i.bu = add i32 %i.bt, %i.bs
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bv ; 5 uses
  %i.bx = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 5 uses
  %switch.i = icmp ult i32 %i.bx, 2
  br i1 %switch.i, label %bb.cm, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = load ptr, ptr %i.aa, align 8, !tbaa !26 ; 12 uses
  %.not52.i = icmp ult ptr %i.bw, %i.bz
  br i1 %.not52.i, label %.thread527, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.cb = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cc = add i64 %i.cb, 2                        ; 2 uses
  %i.cd = add i64 %i.ca, %i.by                    ; 4 uses
  %.not53.i = icmp ule i64 %i.cc, %i.cd
  %i.ce = icmp ugt i64 %i.cc, %i.ca
  %or.cond.i = and i1 %i.ce, %.not53.i
  %i.cf = icmp ugt i64 %i.cd, %i.cb
  %or.cond54.i = and i1 %i.cf, %or.cond.i
  br i1 %or.cond54.i, label %bb.m, label %.thread527

bb.m:                                             ; preds = %bb.l
  %i.cg = load i16, ptr %i.bw, align 2, !tbaa !14 ; 4 uses
  %i.ch = zext i16 %i.cg to i32                   ; 2 uses
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.cj = lshr i32 %i.ci, 11
  %i.ck = mul i32 %i.cj, %i.ch                    ; 7 uses
  %i.cl = load i32, ptr %i.u, align 4, !tbaa !28  ; 4 uses
  %i.cm = icmp ult i32 %i.cl, %i.ck
  br i1 %i.cm, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  store i32 %i.ck, ptr %i.v, align 8, !tbaa !24
  %i.cn = sub nsw i32 2048, %i.ch
  %i.co = lshr i32 %i.cn, 5
  %i.cp = trunc i32 %i.co to i16
  %i.cq = add i16 %i.cg, %i.cp
  store i16 %i.cq, ptr %i.bw, align 2, !tbaa !14
  %i.cr = icmp ult i32 %i.ck, 16777216
  br i1 %i.cr, label %bb.o, label %getbit_from_table.exit

bb.o:                                             ; preds = %bb.n
  %i.cs = shl i32 %i.cl, 8
  %i.ct = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.cu = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.ct, %i.cu
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !8
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cx, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ 255, %bb.p ], [ %i.cw, %bb.q ]
  %i.cy = or disjoint i32 %.0.i.i, %i.cs          ; 2 uses
  store i32 %i.cy, ptr %i.u, align 4, !tbaa !28
  %i.cz = shl nuw i32 %i.ck, 8                    ; 2 uses
  store i32 %i.cz, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit

bb.r:                                             ; preds = %bb.m
  %i.da = sub i32 %i.ci, %i.ck                    ; 3 uses
  store i32 %i.da, ptr %i.v, align 8, !tbaa !24
  %i.db = sub nuw i32 %i.cl, %i.ck                ; 2 uses
  store i32 %i.db, ptr %i.u, align 4, !tbaa !28
  %i.dc = lshr i16 %i.cg, 5
  %i.dd = sub nuw i16 %i.cg, %i.dc
  store i16 %i.dd, ptr %i.bw, align 2, !tbaa !14
  %i.de = icmp ult i32 %i.da, 16777216
  br i1 %i.de, label %bb.s, label %.thread525

bb.s:                                             ; preds = %bb.r
  %i.df = shl i32 %i.db, 8
  %i.dg = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.dh = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i = icmp ult ptr %i.dg, %i.dh
  br i1 %.not.i55.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i

bb.u:                                             ; preds = %bb.s
  %i.di = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dk, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i

get_byte.exit57.i:                                ; preds = %bb.u, %bb.t
  %.0.i56.i = phi i32 [ 255, %bb.t ], [ %i.dj, %bb.u ]
  %i.dl = or disjoint i32 %.0.i56.i, %i.df
  store i32 %i.dl, ptr %i.u, align 4, !tbaa !28
  %i.dm = shl nuw i32 %i.da, 8
  store i32 %i.dm, ptr %i.v, align 8, !tbaa !24
  br label %.thread525

getbit_from_table.exit:                           ; preds = %get_byte.exit.i, %bb.n
  %.promoted582 = phi i32 [ %i.cy, %get_byte.exit.i ], [ %i.cl, %bb.n ]
  %.promoted581 = phi i32 [ %i.cz, %get_byte.exit.i ], [ %i.ck, %bb.n ]
  %i.dn = lshr i32 %.0274638, %i.bi
  %i.do = and i32 %.0294606, %i.f
  %i.dp = shl i32 %i.do, %i.bg
  %i.dq = add i32 %i.dn, %i.dp
  %i.dr = mul i32 %i.dq, 768                      ; 2 uses
  %i.ds = icmp sgt i32 %.0276635, 3
  br i1 %i.ds, label %bb.v, label %bb.y

bb.v:                                             ; preds = %getbit_from_table.exit
  %i.dt = icmp samesign ugt i32 %.0276635, 9
  br i1 %i.dt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.du = add nsw i32 %.0276635, -6
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dv = add nsw i32 %.0276635, -3
  br label %bb.y

bb.y:                                             ; preds = %getbit_from_table.exit, %bb.w, %bb.x
  %.1277 = phi i32 [ %i.du, %bb.w ], [ %i.dv, %bb.x ], [ 0, %getbit_from_table.exit ]
  %.not347 = icmp eq i32 %.0298605, 0
  br i1 %.not347, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not348, label %.thread551, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = sub i32 %.0294606, %.0291607
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 %i.dx ; 2 uses
  %i.dz = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.ea = add i64 %i.dz, 1                        ; 2 uses
  %.not350 = icmp ule i64 %i.ea, %i.bl
  %i.eb = icmp ugt i64 %i.ea, %i.bk
  %or.cond = and i1 %.not350, %i.eb
  %i.ec = icmp ugt i64 %i.bl, %i.dz
  %or.cond372 = and i1 %i.ec, %or.cond
  br i1 %or.cond372, label %.thread, label %.thread551

.thread:                                          ; preds = %bb.aa
  %i.ed = and i32 %.0308598, -256
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ef = zext i8 %i.ee to i32
  %i.eg = or disjoint i32 %i.ed, %i.ef            ; 2 uses
  %i.eh = add i32 %i.dr, 1846
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ei
  %i.ek = call i32 @get_100_bits_from_tablesize(ptr noundef nonnull %i.ej, ptr noundef nonnull %9, i32 noundef %i.eg)
  br label %bb.ap

bb.ab:                                            ; preds = %bb.y
  %i.el = add i32 %i.dr, 1846
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.em
  %.promoted583 = load ptr, ptr %9, align 8
  %i.eo = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %getbit_from_table.exit478, %bb.ab
  %i.ep = phi ptr [ %.promoted583, %bb.ab ], [ %i.gc, %getbit_from_table.exit478 ] ; 11 uses
  %i.eq = phi i32 [ %.promoted582, %bb.ab ], [ %i.gd, %getbit_from_table.exit478 ] ; 5 uses
  %i.er = phi i32 [ %.promoted581, %bb.ab ], [ %i.ge, %getbit_from_table.exit478 ] ; 3 uses
  %.05.i = phi i32 [ 1, %bb.ab ], [ %i.gf, %getbit_from_table.exit478 ] ; 3 uses
  %i.es = shl nuw nsw i32 %.05.i, 1
  %i.et = zext nneg i32 %.05.i to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %i.et ; 5 uses
  %.not52.i467 = icmp ult ptr %i.eu, %i.bz
  br i1 %.not52.i467, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ew = add i64 %i.ev, 2                        ; 2 uses
  %.not53.i468 = icmp ule i64 %i.ew, %i.cd
  %i.ex = icmp ugt i64 %i.ew, %i.ca
  %or.cond.i469 = and i1 %i.ex, %.not53.i468
  %i.ey = icmp ugt i64 %i.cd, %i.ev
  %or.cond54.i470 = and i1 %i.ey, %or.cond.i469
  br i1 %or.cond54.i470, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit478

bb.af:                                            ; preds = %bb.ad
  %i.ez = load i16, ptr %i.eu, align 2, !tbaa !14 ; 4 uses
  %i.fa = zext i16 %i.ez to i32                   ; 2 uses
  %i.fb = lshr i32 %i.er, 11
  %i.fc = mul i32 %i.fb, %i.fa                    ; 7 uses
  %i.fd = icmp ult i32 %i.eq, %i.fc
  br i1 %i.fd, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  store i32 %i.fc, ptr %i.v, align 8, !tbaa !24
  %i.fe = sub nsw i32 2048, %i.fa
  %i.ff = lshr i32 %i.fe, 5
  %i.fg = trunc i32 %i.ff to i16
  %i.fh = add i16 %i.ez, %i.fg
  store i16 %i.fh, ptr %i.eu, align 2, !tbaa !14
  %i.fi = icmp ult i32 %i.fc, 16777216
  br i1 %i.fi, label %bb.ah, label %getbit_from_table.exit478

bb.ah:                                            ; preds = %bb.ag
  %i.fj = shl i32 %i.eq, 8
  %.not.i.i475 = icmp ult ptr %i.ep, %i.eo
  br i1 %.not.i.i475, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i476

bb.aj:                                            ; preds = %bb.ah
  %i.fk = load i8, ptr %i.ep, align 1, !tbaa !8
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  store ptr %i.fm, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i476

get_byte.exit.i476:                               ; preds = %bb.aj, %bb.ai
  %i.fn = phi ptr [ %i.ep, %bb.ai ], [ %i.fm, %bb.aj ]
  %.0.i.i477 = phi i32 [ 255, %bb.ai ], [ %i.fl, %bb.aj ]
  %i.fo = or disjoint i32 %.0.i.i477, %i.fj       ; 2 uses
  store i32 %i.fo, ptr %i.u, align 4, !tbaa !28
  %i.fp = shl nuw i32 %i.fc, 8                    ; 2 uses
  store i32 %i.fp, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit478

bb.ak:                                            ; preds = %bb.af
  %i.fq = sub i32 %i.er, %i.fc                    ; 4 uses
  store i32 %i.fq, ptr %i.v, align 8, !tbaa !24
  %i.fr = sub nuw i32 %i.eq, %i.fc                ; 3 uses
  store i32 %i.fr, ptr %i.u, align 4, !tbaa !28
  %i.fs = lshr i16 %i.ez, 5
  %i.ft = sub nuw i16 %i.ez, %i.fs
  store i16 %i.ft, ptr %i.eu, align 2, !tbaa !14
  %i.fu = icmp ult i32 %i.fq, 16777216
  br i1 %i.fu, label %bb.al, label %getbit_from_table.exit478

bb.al:                                            ; preds = %bb.ak
  %i.fv = shl i32 %i.fr, 8
  %.not.i55.i472 = icmp ult ptr %i.ep, %i.eo
  br i1 %.not.i55.i472, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i473

bb.an:                                            ; preds = %bb.al
  %i.fw = load i8, ptr %i.ep, align 1, !tbaa !8
  %i.fx = zext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ep, i64 1 ; 2 uses
  store ptr %i.fy, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i473

get_byte.exit57.i473:                             ; preds = %bb.an, %bb.am
  %i.fz = phi ptr [ %i.ep, %bb.am ], [ %i.fy, %bb.an ]
  %.0.i56.i474 = phi i32 [ 255, %bb.am ], [ %i.fx, %bb.an ]
  %i.ga = or disjoint i32 %.0.i56.i474, %i.fv     ; 2 uses
  store i32 %i.ga, ptr %i.u, align 4, !tbaa !28
  %i.gb = shl nuw i32 %i.fq, 8                    ; 2 uses
  store i32 %i.gb, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit478

getbit_from_table.exit478:                        ; preds = %bb.ae, %bb.ag, %get_byte.exit.i476, %bb.ak, %get_byte.exit57.i473
  %i.gc = phi ptr [ %i.ep, %bb.ae ], [ %i.ep, %bb.ag ], [ %i.fn, %get_byte.exit.i476 ], [ %i.fz, %get_byte.exit57.i473 ], [ %i.ep, %bb.ak ]
  %i.gd = phi i32 [ %i.eq, %bb.ae ], [ %i.eq, %bb.ag ], [ %i.fo, %get_byte.exit.i476 ], [ %i.ga, %get_byte.exit57.i473 ], [ %i.fr, %bb.ak ]
  %i.ge = phi i32 [ %i.er, %bb.ae ], [ %i.fc, %bb.ag ], [ %i.fp, %get_byte.exit.i476 ], [ %i.gb, %get_byte.exit57.i473 ], [ %i.fq, %bb.ak ]
  %.0.i471 = phi i32 [ 255, %bb.ae ], [ 0, %bb.ag ], [ 0, %get_byte.exit.i476 ], [ 1, %get_byte.exit57.i473 ], [ 1, %bb.ak ]
  %i.gf = or i32 %.0.i471, %i.es                  ; 2 uses
  %i.gg = icmp ult i32 %.05.i, 128
  br i1 %i.gg, label %bb.ac, label %bb.ao

bb.ao:                                            ; preds = %getbit_from_table.exit478
  %i.gh = and i32 %i.gf, 255
  br i1 %.not348, label %.thread551, label %bb.ap

bb.ap:                                            ; preds = %.thread, %bb.ao
  %.1275524 = phi i32 [ %i.ek, %.thread ], [ %i.gh, %bb.ao ] ; 2 uses
  %.1309523 = phi i32 [ %i.eg, %.thread ], [ %.0308598, %bb.ao ]
  %i.gi = zext i32 %.0294606 to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 %i.gi ; 2 uses
  %i.gk = ptrtoint ptr %i.gj to i64               ; 2 uses
  %i.gl = add i64 %i.gk, 1                        ; 2 uses
  %.not353 = icmp ule i64 %i.gl, %i.bl
  %i.gm = icmp ugt i64 %i.gl, %i.bk
  %or.cond373 = and i1 %.not353, %i.gm
  %i.gn = icmp ugt i64 %i.bl, %i.gk
  %or.cond374 = and i1 %i.gn, %or.cond373
  br i1 %or.cond374, label %bb.aq, label %.thread551

bb.aq:                                            ; preds = %bb.ap
  %i.go = trunc nuw i32 %.1275524 to i8
  store i8 %i.go, ptr %i.gj, align 1, !tbaa !8
  %i.gp = add i32 %.0294606, 1                    ; 2 uses
  %.not354 = icmp ult i32 %i.gp, %8
  br i1 %.not354, label %select.unfold, label %.thread551

.thread527:                                       ; preds = %bb.k, %bb.l
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %.thread525

.thread525:                                       ; preds = %bb.r, %get_byte.exit57.i, %.thread527
  %.pn.in = add i32 %.0276635, 192
  %.pn = zext i32 %.pn.in to i64
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn ; 5 uses
  %.not52.i388 = icmp ult ptr %i.gq, %i.bz
  br i1 %.not52.i388, label %.thread533, label %bb.ar

bb.ar:                                            ; preds = %.thread525
  %i.gr = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.gs = ptrtoint ptr %i.gq to i64               ; 2 uses
  %i.gt = add i64 %i.gs, 2                        ; 2 uses
  %i.gu = add i64 %i.gr, %i.by                    ; 2 uses
  %.not53.i389 = icmp ule i64 %i.gt, %i.gu
  %i.gv = icmp ugt i64 %i.gt, %i.gr
  %or.cond.i390 = and i1 %i.gv, %.not53.i389
  %i.gw = icmp ugt i64 %i.gu, %i.gs
  %or.cond54.i391 = and i1 %i.gw, %or.cond.i390
  br i1 %or.cond54.i391, label %bb.as, label %.thread533

bb.as:                                            ; preds = %bb.ar
  %i.gx = load i16, ptr %i.gq, align 2, !tbaa !14 ; 4 uses
  %i.gy = zext i16 %i.gx to i32                   ; 2 uses
  %i.gz = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.ha = lshr i32 %i.gz, 11
  %i.hb = mul i32 %i.ha, %i.gy                    ; 6 uses
  %i.hc = load i32, ptr %i.u, align 4, !tbaa !28  ; 3 uses
  %i.hd = icmp ult i32 %i.hc, %i.hb
  br i1 %i.hd, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  store i32 %i.hb, ptr %i.v, align 8, !tbaa !24
  %i.he = sub nsw i32 2048, %i.gy
  %i.hf = lshr i32 %i.he, 5
  %i.hg = trunc i32 %i.hf to i16
  %i.hh = add i16 %i.gx, %i.hg
  store i16 %i.hh, ptr %i.gq, align 2, !tbaa !14
  %i.hi = icmp ult i32 %i.hb, 16777216
  br i1 %i.hi, label %bb.au, label %getbit_from_table.exit399

bb.au:                                            ; preds = %bb.at
  %i.hj = shl i32 %i.hc, 8
  %i.hk = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.hl = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i396 = icmp ult ptr %i.hk, %i.hl
  br i1 %.not.i.i396, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i397

bb.aw:                                            ; preds = %bb.au
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !8
  %i.hn = zext i8 %i.hm to i32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store ptr %i.ho, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i397

get_byte.exit.i397:                               ; preds = %bb.aw, %bb.av
  %.0.i.i398 = phi i32 [ 255, %bb.av ], [ %i.hn, %bb.aw ]
  %i.hp = or disjoint i32 %.0.i.i398, %i.hj
  store i32 %i.hp, ptr %i.u, align 4, !tbaa !28
  %i.hq = shl nuw i32 %i.hb, 8
  store i32 %i.hq, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit399

bb.ax:                                            ; preds = %bb.as
  %i.hr = sub i32 %i.gz, %i.hb                    ; 3 uses
  store i32 %i.hr, ptr %i.v, align 8, !tbaa !24
  %i.hs = sub nuw i32 %i.hc, %i.hb                ; 2 uses
  store i32 %i.hs, ptr %i.u, align 4, !tbaa !28
  %i.ht = lshr i16 %i.gx, 5
  %i.hu = sub nuw i16 %i.gx, %i.ht
  store i16 %i.hu, ptr %i.gq, align 2, !tbaa !14
  %i.hv = icmp ult i32 %i.hr, 16777216
  br i1 %i.hv, label %bb.ay, label %.thread531

bb.ay:                                            ; preds = %bb.ax
  %i.hw = shl i32 %i.hs, 8
  %i.hx = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.hy = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i393 = icmp ult ptr %i.hx, %i.hy
  br i1 %.not.i55.i393, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i394

bb.ba:                                            ; preds = %bb.ay
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !8
  %i.ia = zext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  store ptr %i.ib, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i394

get_byte.exit57.i394:                             ; preds = %bb.ba, %bb.az
  %.0.i56.i395 = phi i32 [ 255, %bb.az ], [ %i.ia, %bb.ba ]
  %i.ic = or disjoint i32 %.0.i56.i395, %i.hw
  store i32 %i.ic, ptr %i.u, align 4, !tbaa !28
  %i.id = shl nuw i32 %i.hr, 8
  store i32 %i.id, ptr %i.v, align 8, !tbaa !24
  br label %.thread531

.thread533:                                       ; preds = %.thread525, %bb.ar
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %.thread531

.thread531:                                       ; preds = %bb.ax, %get_byte.exit57.i394, %.thread533
  %.pn563.in = add i32 %.0276635, 204
  %.pn563 = zext i32 %.pn563.in to i64
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn563 ; 5 uses
  %.not52.i401 = icmp ult ptr %i.ie, %i.bz
  br i1 %.not52.i401, label %.thread541, label %bb.bb

bb.bb:                                            ; preds = %.thread531
  %i.if = ptrtoint ptr %i.bz to i64               ; 3 uses
  %i.ig = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.ih = add i64 %i.ig, 2                        ; 2 uses
  %i.ii = add i64 %i.if, %i.by                    ; 4 uses
  %.not53.i402 = icmp ule i64 %i.ih, %i.ii
  %i.ij = icmp ugt i64 %i.ih, %i.if
  %or.cond.i403 = and i1 %i.ij, %.not53.i402
  %i.ik = icmp ugt i64 %i.ii, %i.ig
  %or.cond54.i404 = and i1 %i.ik, %or.cond.i403
  br i1 %or.cond54.i404, label %bb.bc, label %.thread541

bb.bc:                                            ; preds = %bb.bb
  %i.il = load i16, ptr %i.ie, align 2, !tbaa !14 ; 4 uses
  %i.im = zext i16 %i.il to i32                   ; 2 uses
  %i.in = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.io = lshr i32 %i.in, 11
  %i.ip = mul i32 %i.io, %i.im                    ; 7 uses
  %i.iq = load i32, ptr %i.u, align 4, !tbaa !28  ; 4 uses
  %i.ir = icmp ult i32 %i.iq, %i.ip
  br i1 %i.ir, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  store i32 %i.ip, ptr %i.v, align 8, !tbaa !24
  %i.is = sub nsw i32 2048, %i.im
  %i.it = lshr i32 %i.is, 5
  %i.iu = trunc i32 %i.it to i16
  %i.iv = add i16 %i.il, %i.iu
  store i16 %i.iv, ptr %i.ie, align 2, !tbaa !14
  %i.iw = icmp ult i32 %i.ip, 16777216
  br i1 %i.iw, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.ix = shl i32 %i.iq, 8
  %i.iy = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.iz = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i409 = icmp ult ptr %i.iy, %i.iz
  br i1 %.not.i.i409, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i410

bb.bg:                                            ; preds = %bb.be
  %i.ja = load i8, ptr %i.iy, align 1, !tbaa !8
  %i.jb = zext i8 %i.ja to i32
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 1
  store ptr %i.jc, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i410

get_byte.exit.i410:                               ; preds = %bb.bg, %bb.bf
  %.0.i.i411 = phi i32 [ 255, %bb.bf ], [ %i.jb, %bb.bg ]
  %i.jd = or disjoint i32 %.0.i.i411, %i.ix       ; 2 uses
  store i32 %i.jd, ptr %i.u, align 4, !tbaa !28
  %i.je = shl nuw i32 %i.ip, 8                    ; 2 uses
  store i32 %i.je, ptr %i.v, align 8, !tbaa !24
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.jf = sub i32 %i.in, %i.ip                    ; 3 uses
  store i32 %i.jf, ptr %i.v, align 8, !tbaa !24
  %i.jg = sub nuw i32 %i.iq, %i.ip                ; 2 uses
  store i32 %i.jg, ptr %i.u, align 4, !tbaa !28
  %i.jh = lshr i16 %i.il, 5
  %i.ji = sub nuw i16 %i.il, %i.jh
  store i16 %i.ji, ptr %i.ie, align 2, !tbaa !14
  %i.jj = icmp ult i32 %i.jf, 16777216
  br i1 %i.jj, label %bb.bi, label %.thread539

bb.bi:                                            ; preds = %bb.bh
  %i.jk = shl i32 %i.jg, 8
  %i.jl = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.jm = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i406 = icmp ult ptr %i.jl, %i.jm
  br i1 %.not.i55.i406, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i407

bb.bk:                                            ; preds = %bb.bi
  %i.jn = load i8, ptr %i.jl, align 1, !tbaa !8
  %i.jo = zext i8 %i.jn to i32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  store ptr %i.jp, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i407

get_byte.exit57.i407:                             ; preds = %bb.bk, %bb.bj
  %.0.i56.i408 = phi i32 [ 255, %bb.bj ], [ %i.jo, %bb.bk ]
  %i.jq = or disjoint i32 %.0.i56.i408, %i.jk
  store i32 %i.jq, ptr %i.u, align 4, !tbaa !28
  %i.jr = shl nuw i32 %i.jf, 8
  store i32 %i.jr, ptr %i.v, align 8, !tbaa !24
  br label %.thread539

bb.bl:                                            ; preds = %bb.bd, %get_byte.exit.i410
  %i.js = phi i32 [ %i.iq, %bb.bd ], [ %i.jd, %get_byte.exit.i410 ] ; 3 uses
  %i.jt = phi i32 [ %i.ip, %bb.bd ], [ %i.je, %get_byte.exit.i410 ] ; 2 uses
  %i.ju = add nuw i32 %i.bs, 240
  %i.jv = add i32 %i.ju, %i.bt
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.jw ; 5 uses
  %.not52.i414 = icmp ult ptr %i.jx, %i.bz
  br i1 %.not52.i414, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jy = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.jz = add i64 %i.jy, 2                        ; 2 uses
  %.not53.i415 = icmp ule i64 %i.jz, %i.ii
  %i.ka = icmp ugt i64 %i.jz, %i.if
  %or.cond.i416 = and i1 %i.ka, %.not53.i415
  %i.kb = icmp ugt i64 %i.ii, %i.jy
  %or.cond54.i417 = and i1 %i.kb, %or.cond.i416
  br i1 %or.cond54.i417, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bm
  %i.kc = load i16, ptr %i.jx, align 2, !tbaa !14 ; 4 uses
  %i.kd = zext i16 %i.kc to i32                   ; 2 uses
  %i.ke = lshr i32 %i.jt, 11
  %i.kf = mul i32 %i.ke, %i.kd                    ; 6 uses
  %i.kg = icmp ult i32 %i.js, %i.kf
  br i1 %i.kg, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  store i32 %i.kf, ptr %i.v, align 8, !tbaa !24
  %i.kh = sub nsw i32 2048, %i.kd
  %i.ki = lshr i32 %i.kh, 5
  %i.kj = trunc i32 %i.ki to i16
  %i.kk = add i16 %i.kc, %i.kj
  store i16 %i.kk, ptr %i.jx, align 2, !tbaa !14
  %i.kl = icmp ult i32 %i.kf, 16777216
  br i1 %i.kl, label %bb.bq, label %getbit_from_table.exit425

bb.bq:                                            ; preds = %bb.bp
  %i.km = shl i32 %i.js, 8
  %i.kn = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.ko = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i422 = icmp ult ptr %i.kn, %i.ko
  br i1 %.not.i.i422, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i423

bb.bs:                                            ; preds = %bb.bq
  %i.kp = load i8, ptr %i.kn, align 1, !tbaa !8
  %i.kq = zext i8 %i.kp to i32
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  store ptr %i.kr, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i423

get_byte.exit.i423:                               ; preds = %bb.bs, %bb.br
  %.0.i.i424 = phi i32 [ 255, %bb.br ], [ %i.kq, %bb.bs ]
  %i.ks = or disjoint i32 %.0.i.i424, %i.km
  store i32 %i.ks, ptr %i.u, align 4, !tbaa !28
  %i.kt = shl nuw i32 %i.kf, 8
  store i32 %i.kt, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit425

bb.bt:                                            ; preds = %bb.bo
  %i.ku = sub i32 %i.jt, %i.kf                    ; 3 uses
  store i32 %i.ku, ptr %i.v, align 8, !tbaa !24
  %i.kv = sub nuw i32 %i.js, %i.kf                ; 2 uses
  store i32 %i.kv, ptr %i.u, align 4, !tbaa !28
  %i.kw = lshr i16 %i.kc, 5
  %i.kx = sub nuw i16 %i.kc, %i.kw
  store i16 %i.kx, ptr %i.jx, align 2, !tbaa !14
  %i.ky = icmp ult i32 %i.ku, 16777216
  br i1 %i.ky, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  %i.kz = shl i32 %i.kv, 8
  %i.la = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.lb = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i419 = icmp ult ptr %i.la, %i.lb
  br i1 %.not.i55.i419, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i420

bb.bw:                                            ; preds = %bb.bu
  %i.lc = load i8, ptr %i.la, align 1, !tbaa !8
  %i.ld = zext i8 %i.lc to i32
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  store ptr %i.le, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i420

get_byte.exit57.i420:                             ; preds = %bb.bw, %bb.bv
  %.0.i56.i421 = phi i32 [ 255, %bb.bv ], [ %i.ld, %bb.bw ]
  %i.lf = or disjoint i32 %.0.i56.i421, %i.kz
  store i32 %i.lf, ptr %i.u, align 4, !tbaa !28
  %i.lg = shl nuw i32 %i.ku, 8
  store i32 %i.lg, ptr %i.v, align 8, !tbaa !24
  br label %bb.ca

getbit_from_table.exit425:                        ; preds = %get_byte.exit.i423, %bb.bp
  %.not358 = icmp eq i32 %.0294606, 0
  br i1 %.not358, label %.thread551, label %bb.bx

bb.bx:                                            ; preds = %getbit_from_table.exit425
  %i.lh = icmp sgt i32 %.0276635, 6
  %i.li = select i1 %i.lh, i32 11, i32 9
  br i1 %.not348, label %.thread551, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lj = sub i32 %.0294606, %.0291607
  %i.lk = zext i32 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr %7, i64 %i.lk ; 2 uses
  %i.lm = ptrtoint ptr %i.ll to i64               ; 2 uses
  %i.ln = add i64 %i.lm, 1                        ; 2 uses
  %.not361 = icmp ule i64 %i.ln, %i.bl
  %i.lo = icmp ugt i64 %i.ln, %i.bk
  %or.cond375 = and i1 %.not361, %i.lo
  %i.lp = icmp ugt i64 %i.bl, %i.lm
  %or.cond376 = and i1 %i.lp, %or.cond375
  br i1 %or.cond376, label %bb.bz, label %.thread551

bb.bz:                                            ; preds = %bb.by
  %i.lq = load i8, ptr %i.ll, align 1, !tbaa !8   ; 2 uses
  %i.lr = zext i8 %i.lq to i32
  %i.ls = zext i32 %.0294606 to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 %i.ls
  store i8 %i.lq, ptr %i.lt, align 1, !tbaa !8
  %i.lu = add i32 %.0294606, 1                    ; 2 uses
  %.not362 = icmp ult i32 %i.lu, %8
  br i1 %.not362, label %select.unfold, label %.thread551

bb.ca:                                            ; preds = %bb.bn, %get_byte.exit57.i420, %bb.bt
  %i.lv = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bo, ptr noundef nonnull %9, i32 noundef %i.bs)
  %i.lw = icmp slt i32 %.0276635, 7
  %i.lx = select i1 %i.lw, i32 8, i32 11
  br label %bb.fu

.thread541:                                       ; preds = %.thread531, %bb.bb
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %.thread539

.thread539:                                       ; preds = %bb.bh, %get_byte.exit57.i407, %.thread541
  %.pn564.in = add i32 %.0276635, 216
  %.pn564 = zext i32 %.pn564.in to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn564 ; 5 uses
  %.not52.i427 = icmp ult ptr %i.ly, %i.bz
  br i1 %.not52.i427, label %.thread547, label %bb.cb

bb.cb:                                            ; preds = %.thread539
  %i.lz = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.ma = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.mb = add i64 %i.ma, 2                        ; 2 uses
  %i.mc = add i64 %i.lz, %i.by                    ; 2 uses
  %.not53.i428 = icmp ule i64 %i.mb, %i.mc
  %i.md = icmp ugt i64 %i.mb, %i.lz
  %or.cond.i429 = and i1 %i.md, %.not53.i428
  %i.me = icmp ugt i64 %i.mc, %i.ma
  %or.cond54.i430 = and i1 %i.me, %or.cond.i429
  br i1 %or.cond54.i430, label %bb.cc, label %.thread547

bb.cc:                                            ; preds = %bb.cb
  %i.mf = load i16, ptr %i.ly, align 2, !tbaa !14 ; 4 uses
  %i.mg = zext i16 %i.mf to i32                   ; 2 uses
  %i.mh = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.mi = lshr i32 %i.mh, 11
  %i.mj = mul i32 %i.mi, %i.mg                    ; 6 uses
  %i.mk = load i32, ptr %i.u, align 4, !tbaa !28  ; 3 uses
  %i.ml = icmp ult i32 %i.mk, %i.mj
  br i1 %i.ml, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  store i32 %i.mj, ptr %i.v, align 8, !tbaa !24
  %i.mm = sub nsw i32 2048, %i.mg
  %i.mn = lshr i32 %i.mm, 5
  %i.mo = trunc i32 %i.mn to i16
  %i.mp = add i16 %i.mf, %i.mo
  store i16 %i.mp, ptr %i.ly, align 2, !tbaa !14
  %i.mq = icmp ult i32 %i.mj, 16777216
  br i1 %i.mq, label %bb.ce, label %getbit_from_table.exit438

bb.ce:                                            ; preds = %bb.cd
  %i.mr = shl i32 %i.mk, 8
  %i.ms = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.mt = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i435 = icmp ult ptr %i.ms, %i.mt
  br i1 %.not.i.i435, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i436

bb.cg:                                            ; preds = %bb.ce
  %i.mu = load i8, ptr %i.ms, align 1, !tbaa !8
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 1
  store ptr %i.mw, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i436

get_byte.exit.i436:                               ; preds = %bb.cg, %bb.cf
  %.0.i.i437 = phi i32 [ 255, %bb.cf ], [ %i.mv, %bb.cg ]
  %i.mx = or disjoint i32 %.0.i.i437, %i.mr
  store i32 %i.mx, ptr %i.u, align 4, !tbaa !28
  %i.my = shl nuw i32 %i.mj, 8
  store i32 %i.my, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit438

bb.ch:                                            ; preds = %bb.cc
  %i.mz = sub i32 %i.mh, %i.mj                    ; 3 uses
  store i32 %i.mz, ptr %i.v, align 8, !tbaa !24
  %i.na = sub nuw i32 %i.mk, %i.mj                ; 2 uses
  store i32 %i.na, ptr %i.u, align 4, !tbaa !28
  %i.nb = lshr i16 %i.mf, 5
  %i.nc = sub nuw i16 %i.mf, %i.nb
  store i16 %i.nc, ptr %i.ly, align 2, !tbaa !14
  %i.nd = icmp ult i32 %i.mz, 16777216
  br i1 %i.nd, label %bb.ci, label %.thread545

bb.ci:                                            ; preds = %bb.ch
  %i.ne = shl i32 %i.na, 8
  %i.nf = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.ng = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i432 = icmp ult ptr %i.nf, %i.ng
  br i1 %.not.i55.i432, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i433

bb.ck:                                            ; preds = %bb.ci
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !8
  %i.ni = zext i8 %i.nh to i32
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  store ptr %i.nj, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i433

get_byte.exit57.i433:                             ; preds = %bb.ck, %bb.cj
  %.0.i56.i434 = phi i32 [ 255, %bb.cj ], [ %i.ni, %bb.ck ]
  %i.nk = or disjoint i32 %.0.i56.i434, %i.ne
  store i32 %i.nk, ptr %i.u, align 4, !tbaa !28
  %i.nl = shl nuw i32 %i.mz, 8
  store i32 %i.nl, ptr %i.v, align 8, !tbaa !24
  br label %.thread545

.thread547:                                       ; preds = %.thread539, %bb.cb
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %.thread545

.thread545:                                       ; preds = %bb.ch, %get_byte.exit57.i433, %.thread547
  %.pn565.in = add i32 %.0276635, 228
  %.pn565 = zext i32 %.pn565.in to i64
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn565 ; 5 uses
  %.not52.i440 = icmp ult ptr %i.nm, %i.bz
  br i1 %.not52.i440, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread545
  %i.nn = ptrtoint ptr %i.bz to i64               ; 2 uses
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %i.np = add i64 %i.no, 2                        ; 2 uses
  %i.nq = add i64 %i.nn, %i.by                    ; 2 uses
  %.not53.i441 = icmp ule i64 %i.np, %i.nq
  %i.nr = icmp ugt i64 %i.np, %i.nn
  %or.cond.i442 = and i1 %i.nr, %.not53.i441
  %i.ns = icmp ugt i64 %i.nq, %i.no
  %or.cond54.i443 = and i1 %i.ns, %or.cond.i442
  br i1 %or.cond54.i443, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.j, %bb.cl, %.thread545
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit438

bb.cn:                                            ; preds = %bb.cl
  %i.nt = load i16, ptr %i.nm, align 2, !tbaa !14 ; 4 uses
  %i.nu = zext i16 %i.nt to i32                   ; 2 uses
  %i.nv = load i32, ptr %i.v, align 8, !tbaa !24  ; 2 uses
  %i.nw = lshr i32 %i.nv, 11
  %i.nx = mul i32 %i.nw, %i.nu                    ; 6 uses
  %i.ny = load i32, ptr %i.u, align 4, !tbaa !28  ; 3 uses
  %i.nz = icmp ult i32 %i.ny, %i.nx
  br i1 %i.nz, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %bb.cn
  store i32 %i.nx, ptr %i.v, align 8, !tbaa !24
  %i.oa = sub nsw i32 2048, %i.nu
  %i.ob = lshr i32 %i.oa, 5
  %i.oc = trunc i32 %i.ob to i16
  %i.od = add i16 %i.nt, %i.oc
  store i16 %i.od, ptr %i.nm, align 2, !tbaa !14
  %i.oe = icmp ult i32 %i.nx, 16777216
  br i1 %i.oe, label %bb.cp, label %getbit_from_table.exit438

bb.cp:                                            ; preds = %bb.co
  %i.of = shl i32 %i.ny, 8
  %i.og = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.oh = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i.i448 = icmp ult ptr %i.og, %i.oh
  br i1 %.not.i.i448, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i449

bb.cr:                                            ; preds = %bb.cp
  %i.oi = load i8, ptr %i.og, align 1, !tbaa !8
  %i.oj = zext i8 %i.oi to i32
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 1
  store ptr %i.ok, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i449

get_byte.exit.i449:                               ; preds = %bb.cr, %bb.cq
  %.0.i.i450 = phi i32 [ 255, %bb.cq ], [ %i.oj, %bb.cr ]
  %i.ol = or disjoint i32 %.0.i.i450, %i.of
  store i32 %i.ol, ptr %i.u, align 4, !tbaa !28
  %i.om = shl nuw i32 %i.nx, 8
  store i32 %i.om, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit438

bb.cs:                                            ; preds = %bb.cn
  %i.on = sub i32 %i.nv, %i.nx                    ; 3 uses
  store i32 %i.on, ptr %i.v, align 8, !tbaa !24
  %i.oo = sub nuw i32 %i.ny, %i.nx                ; 2 uses
  store i32 %i.oo, ptr %i.u, align 4, !tbaa !28
  %i.op = lshr i16 %i.nt, 5
  %i.oq = sub nuw i16 %i.nt, %i.op
  store i16 %i.oq, ptr %i.nm, align 2, !tbaa !14
  %i.or = icmp ult i32 %i.on, 16777216
  br i1 %i.or, label %bb.ct, label %getbit_from_table.exit438

bb.ct:                                            ; preds = %bb.cs
  %i.os = shl i32 %i.oo, 8
  %i.ot = load ptr, ptr %9, align 8, !tbaa !23    ; 3 uses
  %i.ou = load ptr, ptr %i.z, align 8, !tbaa !25
  %.not.i55.i445 = icmp ult ptr %i.ot, %i.ou
  br i1 %.not.i55.i445, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i446

bb.cv:                                            ; preds = %bb.ct
  %i.ov = load i8, ptr %i.ot, align 1, !tbaa !8
  %i.ow = zext i8 %i.ov to i32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store ptr %i.ox, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i446

get_byte.exit57.i446:                             ; preds = %bb.cv, %bb.cu
  %.0.i56.i447 = phi i32 [ 255, %bb.cu ], [ %i.ow, %bb.cv ]
  %i.oy = or disjoint i32 %.0.i56.i447, %i.os
  store i32 %i.oy, ptr %i.u, align 4, !tbaa !28
  %i.oz = shl nuw i32 %i.on, 8
  store i32 %i.oz, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit438

getbit_from_table.exit438:                        ; preds = %bb.cm, %get_byte.exit57.i446, %bb.cs, %get_byte.exit.i449, %bb.co, %get_byte.exit.i436, %bb.cd
  %.1285 = phi i32 [ %.0284621, %get_byte.exit.i436 ], [ %.0284621, %bb.cd ], [ %.0288614, %bb.co ], [ %.0288614, %get_byte.exit.i449 ], [ %.0288614, %bb.cs ], [ %.0288614, %get_byte.exit57.i446 ], [ %.0288614, %bb.cm ]
  %.2282 = phi i32 [ %.0280628, %get_byte.exit.i436 ], [ %.0280628, %bb.cd ], [ %.0280628, %bb.co ], [ %.0280628, %get_byte.exit.i449 ], [ %.0284621, %bb.cs ], [ %.0284621, %get_byte.exit57.i446 ], [ %.0284621, %bb.cm ]
  %.1269 = phi i32 [ %.0288614, %get_byte.exit.i436 ], [ %.0288614, %bb.cd ], [ %.0284621, %bb.co ], [ %.0284621, %get_byte.exit.i449 ], [ %.0280628, %bb.cs ], [ %.0280628, %get_byte.exit57.i446 ], [ %.0280628, %bb.cm ]
  %i.pa = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bo, ptr noundef nonnull %9, i32 noundef %i.bs)
  %i.pb = icmp slt i32 %.0276635, 7
  %i.pc = select i1 %i.pb, i32 8, i32 11
  br label %bb.fu

getbit_from_table.exit399:                        ; preds = %get_byte.exit.i397, %bb.at
  %i.pd = icmp slt i32 %.0276635, 7
  %i.pe = select i1 %i.pd, i32 7, i32 10
  %i.pf = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bm, ptr noundef nonnull %9, i32 noundef %i.bs) ; 2 uses
  %i.pg = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 3)
  %i.ph = shl nuw nsw i32 %i.pg, 6
  %i.pi = zext nneg i32 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 864
  %i.pl = load i32, ptr %i.ab, align 4, !tbaa !27 ; 2 uses
  %i.pm = zext i32 %i.pl to i64
  %switch.i479 = icmp ult i32 %i.pl, 2            ; 5 uses
  %.promoted584 = load i32, ptr %i.v, align 8     ; 2 uses
  %.promoted585 = load i32, ptr %i.u, align 4     ; 2 uses
  %.promoted586 = load ptr, ptr %9, align 8       ; 2 uses
  %i.pn = load ptr, ptr %i.aa, align 8            ; 7 uses
  %i.po = ptrtoint ptr %i.pn to i64               ; 7 uses
  %i.pp = add i64 %i.po, %i.pm                    ; 12 uses
  %i.pq = load ptr, ptr %i.z, align 8             ; 13 uses
  br i1 %switch.i479, label %.thread848, label %.lr.ph.i

.thread848:                                       ; preds = %getbit_from_table.exit399
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %.preheader.i454

.lr.ph.i:                                         ; preds = %getbit_from_table.exit399, %getbit_from_table.exit491
  %i.pr = phi ptr [ %i.rf, %getbit_from_table.exit491 ], [ %.promoted586, %getbit_from_table.exit399 ] ; 11 uses
  %i.ps = phi i32 [ %i.rg, %getbit_from_table.exit491 ], [ %.promoted585, %getbit_from_table.exit399 ] ; 5 uses
  %i.pt = phi i32 [ %i.rh, %getbit_from_table.exit491 ], [ %.promoted584, %getbit_from_table.exit399 ] ; 3 uses
  %.010.i = phi i32 [ %i.pu, %getbit_from_table.exit491 ], [ 6, %getbit_from_table.exit399 ]
  %.079.i = phi i32 [ %i.ri, %getbit_from_table.exit491 ], [ 1, %getbit_from_table.exit399 ] ; 2 uses
  %i.pu = add nsw i32 %.010.i, -1                 ; 2 uses
  %i.pv = shl i32 %.079.i, 1
  %i.pw = zext i32 %.079.i to i64
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.pk, i64 %i.pw ; 5 uses
  %.not52.i480 = icmp ult ptr %i.px, %i.pn
  br i1 %.not52.i480, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph.i
  %i.py = ptrtoint ptr %i.px to i64               ; 2 uses
  %i.pz = add i64 %i.py, 2                        ; 2 uses
  %.not53.i481 = icmp ule i64 %i.pz, %i.pp
  %i.qa = icmp ugt i64 %i.pz, %i.po
  %or.cond.i482 = and i1 %i.qa, %.not53.i481
  %i.qb = icmp ugt i64 %i.pp, %i.py
  %or.cond54.i483 = and i1 %i.qb, %or.cond.i482
  br i1 %or.cond54.i483, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %.lr.ph.i
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit491

bb.cy:                                            ; preds = %bb.cw
  %i.qc = load i16, ptr %i.px, align 2, !tbaa !14 ; 4 uses
  %i.qd = zext i16 %i.qc to i32                   ; 2 uses
  %i.qe = lshr i32 %i.pt, 11
  %i.qf = mul i32 %i.qe, %i.qd                    ; 7 uses
  %i.qg = icmp ult i32 %i.ps, %i.qf
  br i1 %i.qg, label %bb.cz, label %bb.dd

bb.cz:                                            ; preds = %bb.cy
  store i32 %i.qf, ptr %i.v, align 8, !tbaa !24
  %i.qh = sub nsw i32 2048, %i.qd
  %i.qi = lshr i32 %i.qh, 5
  %i.qj = trunc i32 %i.qi to i16
  %i.qk = add i16 %i.qc, %i.qj
  store i16 %i.qk, ptr %i.px, align 2, !tbaa !14
  %i.ql = icmp ult i32 %i.qf, 16777216
  br i1 %i.ql, label %bb.da, label %getbit_from_table.exit491

bb.da:                                            ; preds = %bb.cz
  %i.qm = shl i32 %i.ps, 8
  %.not.i.i488 = icmp ult ptr %i.pr, %i.pq
  br i1 %.not.i.i488, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i489

bb.dc:                                            ; preds = %bb.da
  %i.qn = load i8, ptr %i.pr, align 1, !tbaa !8
  %i.qo = zext i8 %i.qn to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 2 uses
  store ptr %i.qp, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i489

get_byte.exit.i489:                               ; preds = %bb.dc, %bb.db
  %i.qq = phi ptr [ %i.pr, %bb.db ], [ %i.qp, %bb.dc ]
  %.0.i.i490 = phi i32 [ 255, %bb.db ], [ %i.qo, %bb.dc ]
  %i.qr = or disjoint i32 %.0.i.i490, %i.qm       ; 2 uses
  store i32 %i.qr, ptr %i.u, align 4, !tbaa !28
  %i.qs = shl nuw i32 %i.qf, 8                    ; 2 uses
  store i32 %i.qs, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit491

bb.dd:                                            ; preds = %bb.cy
  %i.qt = sub i32 %i.pt, %i.qf                    ; 4 uses
  store i32 %i.qt, ptr %i.v, align 8, !tbaa !24
  %i.qu = sub nuw i32 %i.ps, %i.qf                ; 3 uses
  store i32 %i.qu, ptr %i.u, align 4, !tbaa !28
  %i.qv = lshr i16 %i.qc, 5
  %i.qw = sub nuw i16 %i.qc, %i.qv
  store i16 %i.qw, ptr %i.px, align 2, !tbaa !14
  %i.qx = icmp ult i32 %i.qt, 16777216
  br i1 %i.qx, label %bb.de, label %getbit_from_table.exit491

bb.de:                                            ; preds = %bb.dd
  %i.qy = shl i32 %i.qu, 8
  %.not.i55.i485 = icmp ult ptr %i.pr, %i.pq
  br i1 %.not.i55.i485, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i486

bb.dg:                                            ; preds = %bb.de
  %i.qz = load i8, ptr %i.pr, align 1, !tbaa !8
  %i.ra = zext i8 %i.qz to i32
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pr, i64 1 ; 2 uses
  store ptr %i.rb, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i486

get_byte.exit57.i486:                             ; preds = %bb.dg, %bb.df
  %i.rc = phi ptr [ %i.pr, %bb.df ], [ %i.rb, %bb.dg ]
  %.0.i56.i487 = phi i32 [ 255, %bb.df ], [ %i.ra, %bb.dg ]
  %i.rd = or disjoint i32 %.0.i56.i487, %i.qy     ; 2 uses
  store i32 %i.rd, ptr %i.u, align 4, !tbaa !28
  %i.re = shl nuw i32 %i.qt, 8                    ; 2 uses
  store i32 %i.re, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit491

getbit_from_table.exit491:                        ; preds = %bb.cx, %bb.cz, %get_byte.exit.i489, %bb.dd, %get_byte.exit57.i486
  %i.rf = phi ptr [ %i.pr, %bb.cx ], [ %i.pr, %bb.cz ], [ %i.qq, %get_byte.exit.i489 ], [ %i.rc, %get_byte.exit57.i486 ], [ %i.pr, %bb.dd ] ; 3 uses
  %i.rg = phi i32 [ %i.ps, %bb.cx ], [ %i.ps, %bb.cz ], [ %i.qr, %get_byte.exit.i489 ], [ %i.rd, %get_byte.exit57.i486 ], [ %i.qu, %bb.dd ] ; 3 uses
  %i.rh = phi i32 [ %i.pt, %bb.cx ], [ %i.qf, %bb.cz ], [ %i.qs, %get_byte.exit.i489 ], [ %i.re, %get_byte.exit57.i486 ], [ %i.qt, %bb.dd ] ; 3 uses
  %.0.i484 = phi i32 [ 255, %bb.cx ], [ 0, %bb.cz ], [ 0, %get_byte.exit.i489 ], [ 1, %get_byte.exit57.i486 ], [ 1, %bb.dd ] ; 2 uses
  %i.ri = add i32 %.0.i484, %i.pv                 ; 3 uses
  %.not.i452 = icmp eq i32 %i.pu, 0
  br i1 %.not.i452, label %get_n_bits_from_table.exit, label %.lr.ph.i

get_n_bits_from_table.exit:                       ; preds = %getbit_from_table.exit491
  %i.rj = add i32 %i.ri, -64                      ; 4 uses
  %i.rk = icmp ugt i32 %i.rj, 3
  br i1 %i.rk, label %bb.dh, label %bb.ft

bb.dh:                                            ; preds = %get_n_bits_from_table.exit
  %i.rl = and i32 %.0.i484, 1
  %i.rm = or disjoint i32 %i.rl, 2
  %i.rn = lshr i32 %i.rj, 1                       ; 2 uses
  %i.ro = add nsw i32 %i.rn, -1                   ; 2 uses
  %i.rp = and i32 %i.ro, 255
  %i.rq = shl i32 %i.rm, %i.rp                    ; 3 uses
  %i.rr = icmp slt i32 %i.rj, 14
  br i1 %i.rr, label %bb.di, label %.preheader.i454

bb.di:                                            ; preds = %bb.dh
  %reass.sub = sub i32 %i.rq, %i.ri
  %i.rs = add i32 %reass.sub, 751
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.rt
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.di, %getbit_from_table.exit504
  %i.rv = phi ptr [ %i.th, %getbit_from_table.exit504 ], [ %i.rf, %bb.di ] ; 11 uses
  %i.rw = phi i32 [ %i.ti, %getbit_from_table.exit504 ], [ %i.rg, %bb.di ] ; 5 uses
  %i.rx = phi i32 [ %i.tj, %getbit_from_table.exit504 ], [ %i.rh, %bb.di ] ; 3 uses
  %.01319.i = phi i32 [ %i.to, %getbit_from_table.exit504 ], [ 0, %bb.di ] ; 2 uses
  %.01418.i = phi i32 [ %i.tn, %getbit_from_table.exit504 ], [ 0, %bb.di ]
  %.01517.i = phi i32 [ %i.tl, %getbit_from_table.exit504 ], [ 1, %bb.di ] ; 2 uses
  %i.ry = zext i32 %.01517.i to i64
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %i.ru, i64 %i.ry ; 5 uses
  %.not52.i493 = icmp ult ptr %i.rz, %i.pn
  br i1 %.not52.i493, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %.preheader.i
  %i.sa = ptrtoint ptr %i.rz to i64               ; 2 uses
  %i.sb = add i64 %i.sa, 2                        ; 2 uses
  %.not53.i494 = icmp ule i64 %i.sb, %i.pp
  %i.sc = icmp ugt i64 %i.sb, %i.po
  %or.cond.i495 = and i1 %i.sc, %.not53.i494
  %i.sd = icmp ugt i64 %i.pp, %i.sa
  %or.cond54.i496 = and i1 %i.sd, %or.cond.i495
  br i1 %or.cond54.i496, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %.preheader.i
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit504

bb.dl:                                            ; preds = %bb.dj
  %i.se = load i16, ptr %i.rz, align 2, !tbaa !14 ; 4 uses
  %i.sf = zext i16 %i.se to i32                   ; 2 uses
  %i.sg = lshr i32 %i.rx, 11
  %i.sh = mul i32 %i.sg, %i.sf                    ; 7 uses
  %i.si = icmp ult i32 %i.rw, %i.sh
  br i1 %i.si, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  store i32 %i.sh, ptr %i.v, align 8, !tbaa !24
  %i.sj = sub nsw i32 2048, %i.sf
  %i.sk = lshr i32 %i.sj, 5
  %i.sl = trunc i32 %i.sk to i16
  %i.sm = add i16 %i.se, %i.sl
  store i16 %i.sm, ptr %i.rz, align 2, !tbaa !14
  %i.sn = icmp ult i32 %i.sh, 16777216
  br i1 %i.sn, label %bb.dn, label %getbit_from_table.exit504

bb.dn:                                            ; preds = %bb.dm
  %i.so = shl i32 %i.rw, 8
  %.not.i.i501 = icmp ult ptr %i.rv, %i.pq
  br i1 %.not.i.i501, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i502

bb.dp:                                            ; preds = %bb.dn
  %i.sp = load i8, ptr %i.rv, align 1, !tbaa !8
  %i.sq = zext i8 %i.sp to i32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.rv, i64 1 ; 2 uses
  store ptr %i.sr, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i502

get_byte.exit.i502:                               ; preds = %bb.dp, %bb.do
  %i.ss = phi ptr [ %i.rv, %bb.do ], [ %i.sr, %bb.dp ]
  %.0.i.i503 = phi i32 [ 255, %bb.do ], [ %i.sq, %bb.dp ]
  %i.st = or disjoint i32 %.0.i.i503, %i.so       ; 2 uses
  store i32 %i.st, ptr %i.u, align 4, !tbaa !28
  %i.su = shl nuw i32 %i.sh, 8                    ; 2 uses
  store i32 %i.su, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit504

bb.dq:                                            ; preds = %bb.dl
  %i.sv = sub i32 %i.rx, %i.sh                    ; 4 uses
  store i32 %i.sv, ptr %i.v, align 8, !tbaa !24
  %i.sw = sub nuw i32 %i.rw, %i.sh                ; 3 uses
  store i32 %i.sw, ptr %i.u, align 4, !tbaa !28
  %i.sx = lshr i16 %i.se, 5
  %i.sy = sub nuw i16 %i.se, %i.sx
  store i16 %i.sy, ptr %i.rz, align 2, !tbaa !14
  %i.sz = icmp ult i32 %i.sv, 16777216
  br i1 %i.sz, label %bb.dr, label %getbit_from_table.exit504

bb.dr:                                            ; preds = %bb.dq
  %i.ta = shl i32 %i.sw, 8
  %.not.i55.i498 = icmp ult ptr %i.rv, %i.pq
  br i1 %.not.i55.i498, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i499

bb.dt:                                            ; preds = %bb.dr
  %i.tb = load i8, ptr %i.rv, align 1, !tbaa !8
  %i.tc = zext i8 %i.tb to i32
  %i.td = getelementptr inbounds nuw i8, ptr %i.rv, i64 1 ; 2 uses
  store ptr %i.td, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i499

get_byte.exit57.i499:                             ; preds = %bb.dt, %bb.ds
  %i.te = phi ptr [ %i.rv, %bb.ds ], [ %i.td, %bb.dt ]
  %.0.i56.i500 = phi i32 [ 255, %bb.ds ], [ %i.tc, %bb.dt ]
  %i.tf = or disjoint i32 %.0.i56.i500, %i.ta     ; 2 uses
  store i32 %i.tf, ptr %i.u, align 4, !tbaa !28
  %i.tg = shl nuw i32 %i.sv, 8                    ; 2 uses
  store i32 %i.tg, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit504

getbit_from_table.exit504:                        ; preds = %bb.dk, %bb.dm, %get_byte.exit.i502, %bb.dq, %get_byte.exit57.i499
  %i.th = phi ptr [ %i.rv, %bb.dk ], [ %i.rv, %bb.dm ], [ %i.ss, %get_byte.exit.i502 ], [ %i.te, %get_byte.exit57.i499 ], [ %i.rv, %bb.dq ]
  %i.ti = phi i32 [ %i.rw, %bb.dk ], [ %i.rw, %bb.dm ], [ %i.st, %get_byte.exit.i502 ], [ %i.tf, %get_byte.exit57.i499 ], [ %i.sw, %bb.dq ]
  %i.tj = phi i32 [ %i.rx, %bb.dk ], [ %i.sh, %bb.dm ], [ %i.su, %get_byte.exit.i502 ], [ %i.tg, %get_byte.exit57.i499 ], [ %i.sv, %bb.dq ]
  %.0.i497 = phi i32 [ 255, %bb.dk ], [ 0, %bb.dm ], [ 0, %get_byte.exit.i502 ], [ 1, %get_byte.exit57.i499 ], [ 1, %bb.dq ] ; 2 uses
  %i.tk = shl i32 %.01517.i, 1
  %i.tl = add i32 %.0.i497, %i.tk
  %i.tm = shl i32 %.0.i497, %.01319.i
  %i.tn = or i32 %i.tm, %.01418.i                 ; 2 uses
  %i.to = add nuw nsw i32 %.01319.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.to, %i.ro
  br i1 %exitcond.not.i, label %get_bb.exit, label %.preheader.i

get_bb.exit:                                      ; preds = %getbit_from_table.exit504
  %i.tp = add i32 %i.tn, %i.rq
  br label %bb.ft

.preheader.i454:                                  ; preds = %.thread848, %bb.dh
  %i.tq = phi i32 [ poison, %.thread848 ], [ %i.rq, %bb.dh ]
  %i.tr = phi i32 [ 8032, %.thread848 ], [ %i.rn, %bb.dh ]
  %.promoted596843856 = phi ptr [ %.promoted586, %.thread848 ], [ %i.rf, %bb.dh ]
  %.promoted595844855 = phi i32 [ %.promoted585, %.thread848 ], [ %i.rg, %bb.dh ]
  %.promoted594845854 = phi i32 [ %.promoted584, %.thread848 ], [ %i.rh, %bb.dh ]
  %i.ts = add nsw i32 %i.tr, -5
  br label %bb.du

bb.du:                                            ; preds = %bb.ea, %.preheader.i454
  %i.tt = phi ptr [ %.promoted596843856, %.preheader.i454 ], [ %.promoted593, %bb.ea ] ; 5 uses
  %.in.i = phi i32 [ %i.ts, %.preheader.i454 ], [ %i.tw, %bb.ea ]
  %.023.i = phi i32 [ 0, %.preheader.i454 ], [ %.1.i, %bb.ea ]
  %i.tu = phi i32 [ %.promoted594845854, %.preheader.i454 ], [ %.promoted591, %bb.ea ] ; 2 uses
  %i.tv = phi i32 [ %.promoted595844855, %.preheader.i454 ], [ %.promoted592, %bb.ea ] ; 3 uses
  %i.tw = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.tx = lshr i32 %i.tu, 1                       ; 5 uses
  store i32 %i.tx, ptr %i.v, align 8, !tbaa !24
  %i.ty = shl i32 %.023.i, 1                      ; 2 uses
  %.not21.i = icmp ult i32 %i.tv, %i.tx
  br i1 %.not21.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.tz = sub nuw i32 %i.tv, %i.tx                ; 2 uses
  store i32 %i.tz, ptr %i.u, align 4, !tbaa !28
  %i.ua = or disjoint i32 %i.ty, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.ub = phi i32 [ %i.tz, %bb.dv ], [ %i.tv, %bb.du ] ; 2 uses
  %.1.i = phi i32 [ %i.ua, %bb.dv ], [ %i.ty, %bb.du ] ; 2 uses
  %i.uc = icmp ult i32 %i.tu, 33554432
  br i1 %i.uc, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.ud = shl nuw i32 %i.tx, 8                    ; 2 uses
  store i32 %i.ud, ptr %i.v, align 8, !tbaa !24
  %i.ue = shl i32 %i.ub, 8
  %.not.i.i456 = icmp ult ptr %i.tt, %i.pq
  br i1 %.not.i.i456, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i457

bb.dz:                                            ; preds = %bb.dx
  %i.uf = load i8, ptr %i.tt, align 1, !tbaa !8
  %i.ug = zext i8 %i.uf to i32
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tt, i64 1 ; 2 uses
  store ptr %i.uh, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i457

get_byte.exit.i457:                               ; preds = %bb.dz, %bb.dy
  %i.ui = phi ptr [ %i.tt, %bb.dy ], [ %i.uh, %bb.dz ]
  %.0.i.i458 = phi i32 [ 255, %bb.dy ], [ %i.ug, %bb.dz ]
  %i.uj = or disjoint i32 %.0.i.i458, %i.ue       ; 2 uses
  store i32 %i.uj, ptr %i.u, align 4, !tbaa !28
  br label %bb.ea

bb.ea:                                            ; preds = %get_byte.exit.i457, %bb.dw
  %.promoted593 = phi ptr [ %i.ui, %get_byte.exit.i457 ], [ %i.tt, %bb.dw ] ; 12 uses
  %.promoted592 = phi i32 [ %i.uj, %get_byte.exit.i457 ], [ %i.ub, %bb.dw ] ; 6 uses
  %.promoted591 = phi i32 [ %i.ud, %get_byte.exit.i457 ], [ %i.tx, %bb.dw ] ; 4 uses
  %.not.i455 = icmp eq i32 %i.tw, 0
  br i1 %.not.i455, label %get_bitmap.exit, label %bb.du

get_bitmap.exit:                                  ; preds = %bb.ea
  %.not52.i506 = icmp ult ptr %i.bp, %i.pn
  %or.cond663 = select i1 %switch.i479, i1 true, i1 %.not52.i506
  br i1 %or.cond663, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %get_bitmap.exit
  %.not53.i507 = icmp ule i64 %i.br, %i.pp
  %i.uk = icmp ugt i64 %i.br, %i.po
  %or.cond.i508 = and i1 %i.uk, %.not53.i507
  %i.ul = icmp ugt i64 %i.pp, %i.bq
  %or.cond54.i509 = and i1 %i.ul, %or.cond.i508
  br i1 %or.cond54.i509, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %get_bitmap.exit
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517

bb.ed:                                            ; preds = %bb.eb
  %i.um = load i16, ptr %i.bp, align 2, !tbaa !14 ; 4 uses
  %i.un = zext i16 %i.um to i32                   ; 2 uses
  %i.uo = lshr i32 %.promoted591, 11
  %i.up = mul i32 %i.uo, %i.un                    ; 7 uses
  %i.uq = icmp ult i32 %.promoted592, %i.up
  br i1 %i.uq, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  store i32 %i.up, ptr %i.v, align 8, !tbaa !24
  %i.ur = sub nsw i32 2048, %i.un
  %i.us = lshr i32 %i.ur, 5
  %i.ut = trunc i32 %i.us to i16
  %i.uu = add i16 %i.um, %i.ut
  store i16 %i.uu, ptr %i.bp, align 2, !tbaa !14
  %i.uv = icmp ult i32 %i.up, 16777216
  br i1 %i.uv, label %bb.ef, label %getbit_from_table.exit517

bb.ef:                                            ; preds = %bb.ee
  %i.uw = shl i32 %.promoted592, 8
  %.not.i.i514 = icmp ult ptr %.promoted593, %i.pq
  br i1 %.not.i.i514, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515

bb.eh:                                            ; preds = %bb.ef
  %i.ux = load i8, ptr %.promoted593, align 1, !tbaa !8
  %i.uy = zext i8 %i.ux to i32
  %i.uz = getelementptr inbounds nuw i8, ptr %.promoted593, i64 1 ; 2 uses
  store ptr %i.uz, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515

get_byte.exit.i515:                               ; preds = %bb.eh, %bb.eg
  %i.va = phi ptr [ %.promoted593, %bb.eg ], [ %i.uz, %bb.eh ]
  %.0.i.i516 = phi i32 [ 255, %bb.eg ], [ %i.uy, %bb.eh ]
  %i.vb = or disjoint i32 %.0.i.i516, %i.uw       ; 2 uses
  store i32 %i.vb, ptr %i.u, align 4, !tbaa !28
  %i.vc = shl nuw i32 %i.up, 8                    ; 2 uses
  store i32 %i.vc, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517

bb.ei:                                            ; preds = %bb.ed
  %i.vd = sub i32 %.promoted591, %i.up            ; 4 uses
  store i32 %i.vd, ptr %i.v, align 8, !tbaa !24
  %i.ve = sub nuw i32 %.promoted592, %i.up        ; 3 uses
  store i32 %i.ve, ptr %i.u, align 4, !tbaa !28
  %i.vf = lshr i16 %i.um, 5
  %i.vg = sub nuw i16 %i.um, %i.vf
  store i16 %i.vg, ptr %i.bp, align 2, !tbaa !14
  %i.vh = icmp ult i32 %i.vd, 16777216
  br i1 %i.vh, label %bb.ej, label %getbit_from_table.exit517

bb.ej:                                            ; preds = %bb.ei
  %i.vi = shl i32 %i.ve, 8
  %.not.i55.i511 = icmp ult ptr %.promoted593, %i.pq
  br i1 %.not.i55.i511, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512

bb.el:                                            ; preds = %bb.ej
  %i.vj = load i8, ptr %.promoted593, align 1, !tbaa !8
  %i.vk = zext i8 %i.vj to i32
  %i.vl = getelementptr inbounds nuw i8, ptr %.promoted593, i64 1 ; 2 uses
  store ptr %i.vl, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512

get_byte.exit57.i512:                             ; preds = %bb.el, %bb.ek
  %i.vm = phi ptr [ %.promoted593, %bb.ek ], [ %i.vl, %bb.el ]
  %.0.i56.i513 = phi i32 [ 255, %bb.ek ], [ %i.vk, %bb.el ]
  %i.vn = or disjoint i32 %.0.i56.i513, %i.vi     ; 2 uses
  store i32 %i.vn, ptr %i.u, align 4, !tbaa !28
  %i.vo = shl nuw i32 %i.vd, 8                    ; 2 uses
  store i32 %i.vo, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517

getbit_from_table.exit517:                        ; preds = %bb.ec, %bb.ee, %get_byte.exit.i515, %bb.ei, %get_byte.exit57.i512
  %i.vp = phi ptr [ %.promoted593, %bb.ec ], [ %.promoted593, %bb.ee ], [ %i.va, %get_byte.exit.i515 ], [ %i.vm, %get_byte.exit57.i512 ], [ %.promoted593, %bb.ei ] ; 11 uses
  %i.vq = phi i32 [ %.promoted592, %bb.ec ], [ %.promoted592, %bb.ee ], [ %i.vb, %get_byte.exit.i515 ], [ %i.vn, %get_byte.exit57.i512 ], [ %i.ve, %bb.ei ] ; 5 uses
  %i.vr = phi i32 [ %.promoted591, %bb.ec ], [ %i.up, %bb.ee ], [ %i.vc, %get_byte.exit.i515 ], [ %i.vo, %get_byte.exit57.i512 ], [ %i.vd, %bb.ei ] ; 3 uses
  %.0.i510 = phi i32 [ 255, %bb.ec ], [ 0, %bb.ee ], [ 0, %get_byte.exit.i515 ], [ 1, %get_byte.exit57.i512 ], [ 1, %bb.ei ] ; 2 uses
  %i.vs = add nuw nsw i32 %.0.i510, 2             ; 2 uses
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.vt ; 5 uses
  %.not52.i506.1 = icmp ult ptr %i.vu, %i.pn
  %or.cond663.1 = select i1 %switch.i479, i1 true, i1 %.not52.i506.1
  br i1 %or.cond663.1, label %bb.ew, label %bb.em

bb.em:                                            ; preds = %getbit_from_table.exit517
  %i.vv = ptrtoint ptr %i.vu to i64               ; 2 uses
  %i.vw = add i64 %i.vv, 2                        ; 2 uses
  %.not53.i507.1 = icmp ule i64 %i.vw, %i.pp
  %i.vx = icmp ugt i64 %i.vw, %i.po
  %or.cond.i508.1 = and i1 %i.vx, %.not53.i507.1
  %i.vy = icmp ugt i64 %i.pp, %i.vv
  %or.cond54.i509.1 = and i1 %i.vy, %or.cond.i508.1
  br i1 %or.cond54.i509.1, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %bb.em
  %i.vz = load i16, ptr %i.vu, align 2, !tbaa !14 ; 4 uses
  %i.wa = zext i16 %i.vz to i32                   ; 2 uses
  %i.wb = lshr i32 %i.vr, 11
  %i.wc = mul i32 %i.wb, %i.wa                    ; 7 uses
  %i.wd = icmp ult i32 %i.vq, %i.wc
  br i1 %i.wd, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.we = sub i32 %i.vr, %i.wc                    ; 4 uses
  store i32 %i.we, ptr %i.v, align 8, !tbaa !24
  %i.wf = sub nuw i32 %i.vq, %i.wc                ; 3 uses
  store i32 %i.wf, ptr %i.u, align 4, !tbaa !28
  %i.wg = lshr i16 %i.vz, 5
  %i.wh = sub nuw i16 %i.vz, %i.wg
  store i16 %i.wh, ptr %i.vu, align 2, !tbaa !14
  %i.wi = icmp ult i32 %i.we, 16777216
  br i1 %i.wi, label %bb.ep, label %getbit_from_table.exit517.1

bb.ep:                                            ; preds = %bb.eo
  %i.wj = shl i32 %i.wf, 8
  %.not.i55.i511.1 = icmp ult ptr %i.vp, %i.pq
  br i1 %.not.i55.i511.1, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512.1

bb.er:                                            ; preds = %bb.ep
  %i.wk = load i8, ptr %i.vp, align 1, !tbaa !8
  %i.wl = zext i8 %i.wk to i32
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 2 uses
  store ptr %i.wm, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512.1

get_byte.exit57.i512.1:                           ; preds = %bb.er, %bb.eq
  %i.wn = phi ptr [ %i.vp, %bb.eq ], [ %i.wm, %bb.er ]
  %.0.i56.i513.1 = phi i32 [ 255, %bb.eq ], [ %i.wl, %bb.er ]
  %i.wo = or disjoint i32 %.0.i56.i513.1, %i.wj   ; 2 uses
  store i32 %i.wo, ptr %i.u, align 4, !tbaa !28
  %i.wp = shl nuw i32 %i.we, 8                    ; 2 uses
  store i32 %i.wp, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.1

bb.es:                                            ; preds = %bb.en
  store i32 %i.wc, ptr %i.v, align 8, !tbaa !24
  %i.wq = sub nsw i32 2048, %i.wa
  %i.wr = lshr i32 %i.wq, 5
  %i.ws = trunc i32 %i.wr to i16
  %i.wt = add i16 %i.vz, %i.ws
  store i16 %i.wt, ptr %i.vu, align 2, !tbaa !14
  %i.wu = icmp ult i32 %i.wc, 16777216
  br i1 %i.wu, label %bb.et, label %getbit_from_table.exit517.1

bb.et:                                            ; preds = %bb.es
  %i.wv = shl i32 %i.vq, 8
  %.not.i.i514.1 = icmp ult ptr %i.vp, %i.pq
  br i1 %.not.i.i514.1, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515.1

bb.ev:                                            ; preds = %bb.et
  %i.ww = load i8, ptr %i.vp, align 1, !tbaa !8
  %i.wx = zext i8 %i.ww to i32
  %i.wy = getelementptr inbounds nuw i8, ptr %i.vp, i64 1 ; 2 uses
  store ptr %i.wy, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515.1

get_byte.exit.i515.1:                             ; preds = %bb.ev, %bb.eu
  %i.wz = phi ptr [ %i.vp, %bb.eu ], [ %i.wy, %bb.ev ]
  %.0.i.i516.1 = phi i32 [ 255, %bb.eu ], [ %i.wx, %bb.ev ]
  %i.xa = or disjoint i32 %.0.i.i516.1, %i.wv     ; 2 uses
  store i32 %i.xa, ptr %i.u, align 4, !tbaa !28
  %i.xb = shl nuw i32 %i.wc, 8                    ; 2 uses
  store i32 %i.xb, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.1

bb.ew:                                            ; preds = %bb.em, %getbit_from_table.exit517
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517.1

getbit_from_table.exit517.1:                      ; preds = %bb.ew, %get_byte.exit.i515.1, %bb.es, %get_byte.exit57.i512.1, %bb.eo
  %i.xc = phi ptr [ %i.vp, %bb.ew ], [ %i.vp, %bb.es ], [ %i.wz, %get_byte.exit.i515.1 ], [ %i.wn, %get_byte.exit57.i512.1 ], [ %i.vp, %bb.eo ] ; 11 uses
  %i.xd = phi i32 [ %i.vq, %bb.ew ], [ %i.vq, %bb.es ], [ %i.xa, %get_byte.exit.i515.1 ], [ %i.wo, %get_byte.exit57.i512.1 ], [ %i.wf, %bb.eo ] ; 5 uses
  %i.xe = phi i32 [ %i.vr, %bb.ew ], [ %i.wc, %bb.es ], [ %i.xb, %get_byte.exit.i515.1 ], [ %i.wp, %get_byte.exit57.i512.1 ], [ %i.we, %bb.eo ] ; 3 uses
  %.0.i510.1 = phi i32 [ 255, %bb.ew ], [ 0, %bb.es ], [ 0, %get_byte.exit.i515.1 ], [ 1, %get_byte.exit57.i512.1 ], [ 1, %bb.eo ] ; 2 uses
  %i.xf = shl nuw nsw i32 %i.vs, 1
  %i.xg = add nuw nsw i32 %.0.i510.1, %i.xf       ; 2 uses
  %i.xh = shl nuw nsw i32 %.0.i510.1, 1
  %i.xi = zext nneg i32 %i.xg to i64
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.xi ; 5 uses
  %.not52.i506.2 = icmp ult ptr %i.xj, %i.pn
  %or.cond663.2 = select i1 %switch.i479, i1 true, i1 %.not52.i506.2
  br i1 %or.cond663.2, label %bb.fh, label %bb.ex

bb.ex:                                            ; preds = %getbit_from_table.exit517.1
  %i.xk = ptrtoint ptr %i.xj to i64               ; 2 uses
  %i.xl = add i64 %i.xk, 2                        ; 2 uses
  %.not53.i507.2 = icmp ule i64 %i.xl, %i.pp
  %i.xm = icmp ugt i64 %i.xl, %i.po
  %or.cond.i508.2 = and i1 %i.xm, %.not53.i507.2
  %i.xn = icmp ugt i64 %i.pp, %i.xk
  %or.cond54.i509.2 = and i1 %i.xn, %or.cond.i508.2
  br i1 %or.cond54.i509.2, label %bb.ey, label %bb.fh

bb.ey:                                            ; preds = %bb.ex
  %i.xo = load i16, ptr %i.xj, align 2, !tbaa !14 ; 4 uses
  %i.xp = zext i16 %i.xo to i32                   ; 2 uses
  %i.xq = lshr i32 %i.xe, 11
  %i.xr = mul i32 %i.xq, %i.xp                    ; 7 uses
  %i.xs = icmp ult i32 %i.xd, %i.xr
  br i1 %i.xs, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xt = sub i32 %i.xe, %i.xr                    ; 4 uses
  store i32 %i.xt, ptr %i.v, align 8, !tbaa !24
  %i.xu = sub nuw i32 %i.xd, %i.xr                ; 3 uses
  store i32 %i.xu, ptr %i.u, align 4, !tbaa !28
  %i.xv = lshr i16 %i.xo, 5
  %i.xw = sub nuw i16 %i.xo, %i.xv
  store i16 %i.xw, ptr %i.xj, align 2, !tbaa !14
  %i.xx = icmp ult i32 %i.xt, 16777216
  br i1 %i.xx, label %bb.fa, label %getbit_from_table.exit517.2

bb.fa:                                            ; preds = %bb.ez
  %i.xy = shl i32 %i.xu, 8
  %.not.i55.i511.2 = icmp ult ptr %i.xc, %i.pq
  br i1 %.not.i55.i511.2, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512.2

bb.fc:                                            ; preds = %bb.fa
  %i.xz = load i8, ptr %i.xc, align 1, !tbaa !8
  %i.ya = zext i8 %i.xz to i32
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xc, i64 1 ; 2 uses
  store ptr %i.yb, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512.2

get_byte.exit57.i512.2:                           ; preds = %bb.fc, %bb.fb
  %i.yc = phi ptr [ %i.xc, %bb.fb ], [ %i.yb, %bb.fc ]
  %.0.i56.i513.2 = phi i32 [ 255, %bb.fb ], [ %i.ya, %bb.fc ]
  %i.yd = or disjoint i32 %.0.i56.i513.2, %i.xy   ; 2 uses
  store i32 %i.yd, ptr %i.u, align 4, !tbaa !28
  %i.ye = shl nuw i32 %i.xt, 8                    ; 2 uses
  store i32 %i.ye, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.2

bb.fd:                                            ; preds = %bb.ey
  store i32 %i.xr, ptr %i.v, align 8, !tbaa !24
  %i.yf = sub nsw i32 2048, %i.xp
  %i.yg = lshr i32 %i.yf, 5
  %i.yh = trunc i32 %i.yg to i16
  %i.yi = add i16 %i.xo, %i.yh
  store i16 %i.yi, ptr %i.xj, align 2, !tbaa !14
  %i.yj = icmp ult i32 %i.xr, 16777216
  br i1 %i.yj, label %bb.fe, label %getbit_from_table.exit517.2

bb.fe:                                            ; preds = %bb.fd
  %i.yk = shl i32 %i.xd, 8
  %.not.i.i514.2 = icmp ult ptr %i.xc, %i.pq
  br i1 %.not.i.i514.2, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515.2

bb.fg:                                            ; preds = %bb.fe
  %i.yl = load i8, ptr %i.xc, align 1, !tbaa !8
  %i.ym = zext i8 %i.yl to i32
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xc, i64 1 ; 2 uses
  store ptr %i.yn, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515.2

get_byte.exit.i515.2:                             ; preds = %bb.fg, %bb.ff
  %i.yo = phi ptr [ %i.xc, %bb.ff ], [ %i.yn, %bb.fg ]
  %.0.i.i516.2 = phi i32 [ 255, %bb.ff ], [ %i.ym, %bb.fg ]
  %i.yp = or disjoint i32 %.0.i.i516.2, %i.yk     ; 2 uses
  store i32 %i.yp, ptr %i.u, align 4, !tbaa !28
  %i.yq = shl nuw i32 %i.xr, 8                    ; 2 uses
  store i32 %i.yq, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.2

bb.fh:                                            ; preds = %bb.ex, %getbit_from_table.exit517.1
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517.2

getbit_from_table.exit517.2:                      ; preds = %bb.fh, %get_byte.exit.i515.2, %bb.fd, %get_byte.exit57.i512.2, %bb.ez
  %i.yr = phi ptr [ %i.xc, %bb.fh ], [ %i.xc, %bb.fd ], [ %i.yo, %get_byte.exit.i515.2 ], [ %i.yc, %get_byte.exit57.i512.2 ], [ %i.xc, %bb.ez ] ; 6 uses
  %i.ys = phi i32 [ %i.xd, %bb.fh ], [ %i.xd, %bb.fd ], [ %i.yp, %get_byte.exit.i515.2 ], [ %i.yd, %get_byte.exit57.i512.2 ], [ %i.xu, %bb.ez ] ; 3 uses
  %i.yt = phi i32 [ %i.xe, %bb.fh ], [ %i.xr, %bb.fd ], [ %i.yq, %get_byte.exit.i515.2 ], [ %i.ye, %get_byte.exit57.i512.2 ], [ %i.xt, %bb.ez ] ; 2 uses
  %.0.i510.2 = phi i32 [ 255, %bb.fh ], [ 0, %bb.fd ], [ 0, %get_byte.exit.i515.2 ], [ 1, %get_byte.exit57.i512.2 ], [ 1, %bb.ez ] ; 2 uses
  %i.yu = shl nuw nsw i32 %i.xg, 1
  %i.yv = add nuw nsw i32 %.0.i510.2, %i.yu
  %i.yw = shl nuw nsw i32 %.0.i510.2, 2
  %i.yx = or i32 %i.xh, %i.yw
  %i.yy = zext nneg i32 %i.yv to i64
  %i.yz = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %i.yy ; 5 uses
  %.not52.i506.3 = icmp ult ptr %i.yz, %i.pn
  %or.cond663.3 = select i1 %switch.i479, i1 true, i1 %.not52.i506.3
  br i1 %or.cond663.3, label %bb.fs, label %bb.fi

bb.fi:                                            ; preds = %getbit_from_table.exit517.2
  %i.za = ptrtoint ptr %i.yz to i64               ; 2 uses
  %i.zb = add i64 %i.za, 2                        ; 2 uses
  %.not53.i507.3 = icmp ule i64 %i.zb, %i.pp
  %i.zc = icmp ugt i64 %i.zb, %i.po
  %or.cond.i508.3 = and i1 %i.zc, %.not53.i507.3
  %i.zd = icmp ugt i64 %i.pp, %i.za
  %or.cond54.i509.3 = and i1 %i.zd, %or.cond.i508.3
  br i1 %or.cond54.i509.3, label %bb.fj, label %bb.fs

bb.fj:                                            ; preds = %bb.fi
  %i.ze = load i16, ptr %i.yz, align 2, !tbaa !14 ; 4 uses
  %i.zf = zext i16 %i.ze to i32                   ; 2 uses
  %i.zg = lshr i32 %i.yt, 11
  %i.zh = mul i32 %i.zg, %i.zf                    ; 6 uses
  %i.zi = icmp ult i32 %i.ys, %i.zh
  br i1 %i.zi, label %bb.fo, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zj = sub i32 %i.yt, %i.zh                    ; 3 uses
  store i32 %i.zj, ptr %i.v, align 8, !tbaa !24
  %i.zk = sub nuw i32 %i.ys, %i.zh                ; 2 uses
  store i32 %i.zk, ptr %i.u, align 4, !tbaa !28
  %i.zl = lshr i16 %i.ze, 5
  %i.zm = sub nuw i16 %i.ze, %i.zl
  store i16 %i.zm, ptr %i.yz, align 2, !tbaa !14
  %i.zn = icmp ult i32 %i.zj, 16777216
  br i1 %i.zn, label %bb.fl, label %getbit_from_table.exit517.3

bb.fl:                                            ; preds = %bb.fk
  %i.zo = shl i32 %i.zk, 8
  %.not.i55.i511.3 = icmp ult ptr %i.yr, %i.pq
  br i1 %.not.i55.i511.3, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit57.i512.3

bb.fn:                                            ; preds = %bb.fl
  %i.zp = load i8, ptr %i.yr, align 1, !tbaa !8
  %i.zq = zext i8 %i.zp to i32
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store ptr %i.zr, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit57.i512.3

get_byte.exit57.i512.3:                           ; preds = %bb.fn, %bb.fm
  %.0.i56.i513.3 = phi i32 [ 255, %bb.fm ], [ %i.zq, %bb.fn ]
  %i.zs = or disjoint i32 %.0.i56.i513.3, %i.zo
  store i32 %i.zs, ptr %i.u, align 4, !tbaa !28
  %i.zt = shl nuw i32 %i.zj, 8
  store i32 %i.zt, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.3

bb.fo:                                            ; preds = %bb.fj
  store i32 %i.zh, ptr %i.v, align 8, !tbaa !24
  %i.zu = sub nsw i32 2048, %i.zf
  %i.zv = lshr i32 %i.zu, 5
  %i.zw = trunc i32 %i.zv to i16
  %i.zx = add i16 %i.ze, %i.zw
  store i16 %i.zx, ptr %i.yz, align 2, !tbaa !14
  %i.zy = icmp ult i32 %i.zh, 16777216
  br i1 %i.zy, label %bb.fp, label %getbit_from_table.exit517.3

bb.fp:                                            ; preds = %bb.fo
  %i.zz = shl i32 %i.ys, 8
  %.not.i.i514.3 = icmp ult ptr %i.yr, %i.pq
  br i1 %.not.i.i514.3, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %get_byte.exit.i515.3

bb.fr:                                            ; preds = %bb.fp
  %i.aaa = load i8, ptr %i.yr, align 1, !tbaa !8
  %i.aab = zext i8 %i.aaa to i32
  %i.aac = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store ptr %i.aac, ptr %9, align 8, !tbaa !23
  br label %get_byte.exit.i515.3

get_byte.exit.i515.3:                             ; preds = %bb.fr, %bb.fq
  %.0.i.i516.3 = phi i32 [ 255, %bb.fq ], [ %i.aab, %bb.fr ]
  %i.aad = or disjoint i32 %.0.i.i516.3, %i.zz
  store i32 %i.aad, ptr %i.u, align 4, !tbaa !28
  %i.aae = shl nuw i32 %i.zh, 8
  store i32 %i.aae, ptr %i.v, align 8, !tbaa !24
  br label %getbit_from_table.exit517.3

bb.fs:                                            ; preds = %bb.fi, %getbit_from_table.exit517.2
  store i32 1, ptr %i.t, align 8, !tbaa !19
  br label %getbit_from_table.exit517.3

getbit_from_table.exit517.3:                      ; preds = %bb.fs, %get_byte.exit.i515.3, %bb.fo, %get_byte.exit57.i512.3, %bb.fk
  %.0.i510.3 = phi i32 [ 2040, %bb.fs ], [ 0, %bb.fo ], [ 0, %get_byte.exit.i515.3 ], [ 8, %get_byte.exit57.i512.3 ], [ 8, %bb.fk ]
  %i.aaf = or i32 %i.yx, %.0.i510.3
  %i.aag = or i32 %i.aaf, %.0.i510
  %i.aah = shl i32 %.1.i, 4
  %i.aai = add i32 %i.aah, %i.tq
  %i.aaj = add i32 %i.aai, %i.aag
  br label %bb.ft

bb.ft:                                            ; preds = %get_n_bits_from_table.exit, %get_bb.exit, %getbit_from_table.exit517.3
  %.1 = phi i32 [ %i.aaj, %getbit_from_table.exit517.3 ], [ %i.tp, %get_bb.exit ], [ %i.rj, %get_n_bits_from_table.exit ]
  %i.aak = add i32 %.1, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ca, %getbit_from_table.exit438, %bb.ft
  %.1292 = phi i32 [ %.1269, %getbit_from_table.exit438 ], [ %.0291607, %bb.ca ], [ %i.aak, %bb.ft ] ; 7 uses
  %.1289 = phi i32 [ %.0291607, %getbit_from_table.exit438 ], [ %.0288614, %bb.ca ], [ %.0291607, %bb.ft ]
  %.2286 = phi i32 [ %.1285, %getbit_from_table.exit438 ], [ %.0284621, %bb.ca ], [ %.0288614, %bb.ft ]
  %.3283 = phi i32 [ %.2282, %getbit_from_table.exit438 ], [ %.0280628, %bb.ca ], [ %.0284621, %bb.ft ]
  %.2278 = phi i32 [ %i.pc, %getbit_from_table.exit438 ], [ %i.lx, %bb.ca ], [ %i.pe, %bb.ft ]
  %.0270 = phi i32 [ %i.pa, %getbit_from_table.exit438 ], [ %i.lv, %bb.ca ], [ %i.pf, %bb.ft ] ; 3 uses
  %.not365 = icmp eq i32 %.1292, 0
  br i1 %.not365, label %.thread551, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.aal = icmp ugt i32 %.1292, %.0294606
  br i1 %i.aal, label %.thread551, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aam = add nuw nsw i32 %.0270, 2              ; 7 uses
  %i.aan = zext nneg i32 %i.aam to i64            ; 2 uses
  %.not366 = icmp ugt i32 %i.aam, %8
  %or.cond379 = select i1 %.not348, i1 true, i1 %.not366
  %.pre = zext i32 %.0294606 to i64               ; 3 uses
  br i1 %or.cond379, label %split, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aao = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  %i.aap = ptrtoint ptr %i.aao to i64             ; 2 uses
  %i.aaq = add i64 %i.aan, %i.aap                 ; 2 uses
  %.not368 = icmp ule i64 %i.aaq, %i.bl
  %i.aar = icmp ugt i64 %i.aaq, %i.bk
  %or.cond380 = and i1 %.not368, %i.aar
  %i.aas = icmp ugt i64 %i.bl, %i.aap
  %or.cond381 = and i1 %i.aas, %or.cond380
  br i1 %or.cond381, label %bb.fy, label %split

bb.fy:                                            ; preds = %bb.fx
  %i.aat = sub nuw i32 %.0294606, %.1292          ; 2 uses
  %i.aau = zext i32 %i.aat to i64                 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %7, i64 %i.aau
  %i.aaw = ptrtoint ptr %i.aav to i64             ; 2 uses
  %i.aax = add i64 %i.aan, %i.aaw                 ; 2 uses
  %.not370 = icmp ule i64 %i.aax, %i.bl
  %i.aay = icmp ugt i64 %i.aax, %i.bk
  %or.cond382 = and i1 %.not370, %i.aay
  %i.aaz = icmp ugt i64 %i.bl, %i.aaw
  %or.cond383 = and i1 %i.aaz, %or.cond382
  br i1 %or.cond383, label %iter.check904, label %split

iter.check904:                                    ; preds = %bb.fy
  %i.aba = add i32 %.0294606, 1
  %umax888 = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.aba)
  %i.abb = xor i32 %.0294606, -1
  %i.abc = add i32 %umax888, %i.abb
  %i.abd = add nuw nsw i32 %.0270, 1
  %umin889 = tail call i32 @llvm.umin.i32(i32 %i.abc, i32 %i.abd) ; 3 uses
  %i.abe = add nuw nsw i32 %umin889, 1            ; 5 uses
  %min.iters.check = icmp samesign ult i32 %umin889, 3
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check904
  %i.abf = add i32 %.0294606, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.abf)
  %i.abg = xor i32 %.0294606, -1
  %i.abh = add i32 %umax, %i.abg
  %i.abi = add nuw nsw i32 %.0270, 1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.abh, i32 %i.abi) ; 2 uses
  %i.abj = xor i32 %.0294606, -1
  %i.abk = icmp ugt i32 %umin, %i.abj
  %i.abl = xor i32 %i.aat, -1
  %i.abm = icmp ugt i32 %umin, %i.abl
  %i.abn = or i1 %i.abk, %i.abm
  %i.abo = sub nsw i64 %i.aau, %.pre
  %diff.check = icmp ugt i64 %i.abo, -32
  %or.cond926 = select i1 %i.abn, i1 true, i1 %diff.check
  br i1 %or.cond926, label %.preheader.preheader, label %vector.main.loop.iter.check890

vector.main.loop.iter.check890:                   ; preds = %vector.scevcheck
  %min.iters.check891 = icmp samesign ult i32 %umin889, 31
  br i1 %min.iters.check891, label %vec.epilog.ph908, label %vector.ph892

vector.ph892:                                     ; preds = %vector.main.loop.iter.check890
  %i.abp = and i32 %i.abe, 28
  %n.vec893 = and i32 %i.abe, 262112              ; 5 uses
  %i.abq = add i32 %.0294606, %n.vec893           ; 3 uses
  %i.abr = sub nsw i32 %i.aam, %n.vec893
  %i.abs = add i32 %.0294606, 15
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph892
  %index897 = phi i32 [ 0, %vector.ph892 ], [ %index.next899, %vector.body896 ] ; 2 uses
  %i.abt = phi i32 [ %i.abs, %vector.ph892 ], [ %i.acc, %vector.body896 ] ; 2 uses
  %i.abu = add i32 %.0294606, %index897           ; 2 uses
  %i.abv = sub i32 %i.abu, %.1292
  %i.abw = zext i32 %i.abv to i64
  %i.abx = getelementptr inbounds nuw i8, ptr %7, i64 %i.abw ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %wide.load = load <16 x i8>, ptr %i.abx, align 1, !tbaa !8
  %wide.load898 = load <16 x i8>, ptr %i.aby, align 1, !tbaa !8 ; 2 uses
  %i.abz = zext i32 %i.abu to i64
  %i.aca = getelementptr inbounds nuw i8, ptr %7, i64 %i.abz ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  store <16 x i8> %wide.load, ptr %i.aca, align 1, !tbaa !8
  store <16 x i8> %wide.load898, ptr %i.acb, align 1, !tbaa !8
  %index.next899 = add nuw i32 %index897, 32      ; 2 uses
  %i.acc = add i32 %i.abt, 32
  %i.acd = icmp eq i32 %index.next899, %n.vec893
  br i1 %i.acd, label %middle.block900, label %vector.body896, !llvm.loop !29

middle.block900:                                  ; preds = %vector.body896
  %i.ace = extractelement <16 x i8> %wide.load898, i64 15
  %i.acf = add i32 %i.abt, 17
  %i.acg = icmp ult i32 %i.acf, %8
  %cmp.n901 = icmp eq i32 %i.abe, %n.vec893
  br i1 %cmp.n901, label %.loopexit, label %vec.epilog.iter.check906

vec.epilog.iter.check906:                         ; preds = %middle.block900
  %min.epilog.iters.check907 = icmp eq i32 %i.abp, 0
  br i1 %min.epilog.iters.check907, label %.preheader.preheader, label %vec.epilog.ph908, !prof !30

vec.epilog.ph908:                                 ; preds = %vector.main.loop.iter.check890, %vec.epilog.iter.check906
  %vec.epilog.resume.val902 = phi i32 [ %n.vec893, %vec.epilog.iter.check906 ], [ 0, %vector.main.loop.iter.check890 ]
  %bc.resume.val = phi i32 [ %i.abq, %vec.epilog.iter.check906 ], [ %.0294606, %vector.main.loop.iter.check890 ]
  %n.vec909 = and i32 %i.abe, 262140              ; 4 uses
  %i.ach = add i32 %.0294606, %n.vec909           ; 2 uses
  %i.aci = sub nsw i32 %i.aam, %n.vec909
  %i.acj = add i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body915

vec.epilog.vector.body915:                        ; preds = %vec.epilog.vector.body915, %vec.epilog.ph908
  %index916 = phi i32 [ %vec.epilog.resume.val902, %vec.epilog.ph908 ], [ %index.next919, %vec.epilog.vector.body915 ] ; 2 uses
  %i.ack = phi i32 [ %i.acj, %vec.epilog.ph908 ], [ %i.acr, %vec.epilog.vector.body915 ] ; 2 uses
  %i.acl = add i32 %.0294606, %index916           ; 2 uses
  %i.acm = sub i32 %i.acl, %.1292
  %i.acn = zext i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw i8, ptr %7, i64 %i.acn
  %wide.load918 = load <4 x i8>, ptr %i.aco, align 1, !tbaa !8 ; 2 uses
  %i.acp = zext i32 %i.acl to i64
  %i.acq = getelementptr inbounds nuw i8, ptr %7, i64 %i.acp
  store <4 x i8> %wide.load918, ptr %i.acq, align 1, !tbaa !8
  %index.next919 = add nuw i32 %index916, 4       ; 2 uses
  %i.acr = add i32 %i.ack, 4
  %i.acs = icmp eq i32 %index.next919, %n.vec909
  br i1 %i.acs, label %vec.epilog.middle.block921, label %vec.epilog.vector.body915, !llvm.loop !31

vec.epilog.middle.block921:                       ; preds = %vec.epilog.vector.body915
  %i.act = extractelement <4 x i8> %wide.load918, i64 3
  %i.acu = add i32 %i.ack, 1
  %i.acv = icmp ult i32 %i.acu, %8
  %cmp.n922 = icmp eq i32 %i.abe, %n.vec909
  br i1 %cmp.n922, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.scevcheck, %iter.check904, %vec.epilog.iter.check906, %vec.epilog.middle.block921
  %.2296.ph = phi i32 [ %.0294606, %vector.scevcheck ], [ %.0294606, %iter.check904 ], [ %i.abq, %vec.epilog.iter.check906 ], [ %i.ach, %vec.epilog.middle.block921 ]
  %.1271.ph = phi i32 [ %i.aam, %vector.scevcheck ], [ %i.aam, %iter.check904 ], [ %i.abr, %vec.epilog.iter.check906 ], [ %i.aci, %vec.epilog.middle.block921 ]
  br label %.preheader

split:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %i.acw = getelementptr inbounds nuw i8, ptr %7, i64 %.pre
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, ptr noundef %7, i32 noundef %8, ptr noundef %i.acw, i32 noundef %i.aam) #7
  br label %.thread551

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.2296 = phi i32 [ %i.add, %.preheader ], [ %.2296.ph, %.preheader.preheader ] ; 3 uses
  %.1271 = phi i32 [ %i.ade, %.preheader ], [ %.1271.ph, %.preheader.preheader ]
  %i.acx = sub i32 %.2296, %.1292
  %i.acy = zext i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw i8, ptr %7, i64 %i.acy
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !8 ; 2 uses
  %i.adb = zext i32 %.2296 to i64
  %i.adc = getelementptr inbounds nuw i8, ptr %7, i64 %i.adb
  store i8 %i.ada, ptr %i.adc, align 1, !tbaa !8
  %i.add = add i32 %.2296, 1                      ; 3 uses
  %i.ade = add nsw i32 %.1271, -1                 ; 2 uses
  %i.adf = icmp ne i32 %i.ade, 0
  %i.adg = icmp ult i32 %i.add, %8                ; 2 uses
  %i.adh = and i1 %i.adg, %i.adf
  br i1 %i.adh, label %.preheader, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block921, %middle.block900
  %.lcssa877 = phi i8 [ %i.act, %vec.epilog.middle.block921 ], [ %i.ace, %middle.block900 ], [ %i.ada, %.preheader ]
  %.lcssa876 = phi i32 [ %i.ach, %vec.epilog.middle.block921 ], [ %i.abq, %middle.block900 ], [ %i.add, %.preheader ]
  %.lcssa875 = phi i1 [ %i.acv, %vec.epilog.middle.block921 ], [ %i.acg, %middle.block900 ], [ %i.adg, %.preheader ]
  %i.adi = zext i8 %.lcssa877 to i32
  br i1 %.lcssa875, label %select.unfold, label %.thread551

select.unfold:                                    ; preds = %bb.aq, %bb.bz, %.loopexit
  %.3311 = phi i32 [ %.0308598, %.loopexit ], [ %.0308598, %bb.bz ], [ %.1309523, %bb.aq ]
  %.3301 = phi i32 [ 1, %.loopexit ], [ 1, %bb.bz ], [ 0, %bb.aq ]
  %.3297 = phi i32 [ %.lcssa876, %.loopexit ], [ %i.lu, %bb.bz ], [ %i.gp, %bb.aq ] ; 2 uses
  %.2293 = phi i32 [ %.1292, %.loopexit ], [ %.0291607, %bb.bz ], [ %.0291607, %bb.aq ]
  %.2290 = phi i32 [ %.1289, %.loopexit ], [ %.0288614, %bb.bz ], [ %.0288614, %bb.aq ]
  %.3287 = phi i32 [ %.2286, %.loopexit ], [ %.0284621, %bb.bz ], [ %.0284621, %bb.aq ]
  %.4 = phi i32 [ %.3283, %.loopexit ], [ %.0280628, %bb.bz ], [ %.0280628, %bb.aq ]
  %.3279 = phi i32 [ %.2278, %.loopexit ], [ %i.li, %bb.bz ], [ %.1277, %bb.aq ]
  %.3 = phi i32 [ %i.adi, %.loopexit ], [ %i.lr, %bb.bz ], [ %.1275524, %bb.aq ]
  %i.adj = and i32 %.3297, %i.h
  %i.adk = load i32, ptr %i.t, align 8, !tbaa !19
  %.not345 = icmp eq i32 %i.adk, 0
  br i1 %.not345, label %bb.j, label %.thread551

.thread551:                                       ; preds = %select.unfold, %bb.fu, %.loopexit, %bb.fv, %bb.by, %bb.bz, %bb.bx, %getbit_from_table.exit425, %bb.ap, %bb.aq, %bb.ao, %bb.z, %bb.aa, %get_byte.exit.3, %split, %get_byte.exit.4, %bb.a
  %.3307 = phi i32 [ 1, %get_byte.exit.4 ], [ 2, %bb.a ], [ 1, %split ], [ 1, %get_byte.exit.3 ], [ 1, %bb.aa ], [ 1, %select.unfold ], [ 0, %bb.fu ], [ 0, %.loopexit ], [ 1, %bb.fv ], [ 1, %bb.by ], [ 0, %bb.bz ], [ 1, %bb.bx ], [ 1, %getbit_from_table.exit425 ], [ 1, %bb.ap ], [ 0, %bb.aq ], [ 1, %bb.ao ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i32 %.3307
}

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @get_byte(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 255, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @getbit_from_table(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %.not52 = icmp ult ptr %0, %i.e
  br i1 %.not52, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 2 uses
  %i.i = add i64 %i.f, %i.c                       ; 2 uses
  %.not53 = icmp ule i64 %i.h, %i.i
  %i.j = icmp ugt i64 %i.h, %i.f
  %or.cond = and i1 %i.j, %.not53
  %i.k = icmp ugt i64 %i.i, %i.g
  %or.cond54 = and i1 %i.k, %or.cond
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.m = load i16, ptr %0, align 2, !tbaa !14     ; 4 uses
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !24   ; 2 uses
  %i.q = lshr i32 %i.p, 11
  %i.r = mul i32 %i.q, %i.n                       ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.o, align 8, !tbaa !24
  %i.v = sub nsw i32 2048, %i.n
  %i.w = lshr i32 %i.v, 5
  %i.x = trunc i32 %i.w to i16
  %i.y = add i16 %i.m, %i.x
  store i16 %i.y, ptr %0, align 2, !tbaa !14
  %i.z = icmp ult i32 %i.r, 16777216
  br i1 %i.z, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.aa = shl i32 %i.t, 8
  %i.ab = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !25
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  br label %get_byte.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ah, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 255, %bb.h ], [ %i.ag, %bb.i ]
  %i.ai = or disjoint i32 %.0.i, %i.aa
  store i32 %i.ai, ptr %i.s, align 4, !tbaa !28
  %i.aj = shl nuw i32 %i.r, 8
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !24
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ak = sub i32 %i.p, %i.r                      ; 3 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !24
  %i.al = sub nuw i32 %i.t, %i.r                  ; 2 uses
  store i32 %i.al, ptr %i.s, align 4, !tbaa !28
  %i.am = lshr i16 %i.m, 5
  %i.an = sub nuw i16 %i.m, %i.am
  store i16 %i.an, ptr %0, align 2, !tbaa !14
  %i.ao = icmp ult i32 %i.ak, 16777216
  br i1 %i.ao, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ap = shl i32 %i.al, 8
  %i.aq = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %.not.i55 = icmp ult ptr %i.aq, %i.as
  br i1 %.not.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.at, align 8, !tbaa !19
  br label %get_byte.exit57

bb.m:                                             ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.aw, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit57

get_byte.exit57:                                  ; preds = %bb.l, %bb.m
  %.0.i56 = phi i32 [ 255, %bb.l ], [ %i.av, %bb.m ]
  %i.ax = or disjoint i32 %.0.i56, %i.ap
  store i32 %i.ax, ptr %i.s, align 4, !tbaa !28
  %i.ay = shl nuw i32 %i.ak, 8
  store i32 %i.ay, ptr %i.o, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %get_byte.exit57, %bb.f, %get_byte.exit, %bb.d
  %.0 = phi i32 [ 255, %bb.d ], [ 0, %bb.f ], [ 0, %get_byte.exit ], [ 1, %get_byte.exit57 ], [ 1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @get_100_bits_from_tablesize(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.g = and i32 %2, 255
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.027 = phi i32 [ 1, %bb.a ], [ %.2, %.loopexit ] ; 3 uses
  %.02326 = phi i32 [ %i.g, %bb.a ], [ %i.i, %.loopexit ] ; 2 uses
  %i.h = shl nuw nsw i32 %.02326, 1
  %i.i = and i32 %i.h, 254
  %i.j = lshr i32 %.02326, 7                      ; 2 uses
  %i.k = shl nuw nsw i32 %i.j, 8
  %i.l = add nuw nsw i32 %i.k, 256
  %i.m = or disjoint i32 %i.l, %.027
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n
  %i.p = tail call i32 @getbit_from_table(ptr noundef nonnull %i.o, ptr noundef %1) ; 2 uses
  %i.q = shl nuw nsw i32 %.027, 1
  %i.r = or i32 %i.p, %i.q                        ; 3 uses
  %i.s = icmp ne i32 %i.j, %i.p
  %i.t = icmp samesign ult i32 %.027, 128
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.u = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %switch.i = icmp ult i32 %i.u, 2
  br i1 %switch.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %getbit_from_table.exit.us

getbit_from_table.exit.us:                        ; preds = %getbit_from_table.exit.us, %.preheader.split.us
  %.1.us = phi i32 [ %i.w, %getbit_from_table.exit.us ], [ %i.r, %.preheader.split.us ]
  %i.v = shl i32 %.1.us, 1                        ; 2 uses
  %i.w = or i32 %i.v, 255                         ; 2 uses
  %.old1.us = icmp ult i32 %i.v, 256
  br i1 %.old1.us, label %getbit_from_table.exit.us, label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  %i.x = zext i32 %i.u to i64
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !26   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 2 uses
  %i.aa = add i64 %i.z, %i.x                      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.split, %getbit_from_table.exit
  %.1 = phi i32 [ %i.bp, %getbit_from_table.exit ], [ %i.r, %.preheader.split ] ; 2 uses
  %i.ab = shl i32 %.1, 1                          ; 2 uses
  %i.ac = zext i32 %.1 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ac ; 5 uses
  %.not52.i = icmp ult ptr %i.ad, %i.y
  br i1 %.not52.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %.not53.i = icmp ule i64 %i.af, %i.aa
  %i.ag = icmp ugt i64 %i.af, %i.z
  %or.cond.i = and i1 %i.ag, %.not53.i
  %i.ah = icmp ugt i64 %i.aa, %i.ae
  %or.cond54.i = and i1 %i.ah, %or.cond.i
  br i1 %or.cond54.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %getbit_from_table.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load i16, ptr %i.ad, align 2, !tbaa !14 ; 4 uses
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.al = lshr i32 %i.ak, 11
  %i.am = mul i32 %i.al, %i.aj                    ; 6 uses
  %i.an = load i32, ptr %i.d, align 4, !tbaa !28  ; 3 uses
  %i.ao = icmp ult i32 %i.an, %i.am
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  store i32 %i.am, ptr %i.c, align 8, !tbaa !24
  %i.ap = sub nsw i32 2048, %i.aj
  %i.aq = lshr i32 %i.ap, 5
  %i.ar = trunc i32 %i.aq to i16
  %i.as = add i16 %i.ai, %i.ar
  store i16 %i.as, ptr %i.ad, align 2, !tbaa !14
  %i.at = icmp ult i32 %i.am, 16777216
  br i1 %i.at, label %bb.h, label %getbit_from_table.exit

bb.h:                                             ; preds = %bb.g
  %i.au = shl i32 %i.an, 8
  %i.av = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i.i = icmp ult ptr %i.av, %i.aw
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %get_byte.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.az, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.j, %bb.i
  %.0.i.i = phi i32 [ 255, %bb.i ], [ %i.ay, %bb.j ]
  %i.ba = or disjoint i32 %.0.i.i, %i.au
  store i32 %i.ba, ptr %i.d, align 4, !tbaa !28
  %i.bb = shl nuw i32 %i.am, 8
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !24
  br label %getbit_from_table.exit

bb.k:                                             ; preds = %bb.f
  %i.bc = sub i32 %i.ak, %i.am                    ; 3 uses
  store i32 %i.bc, ptr %i.c, align 8, !tbaa !24
  %i.bd = sub nuw i32 %i.an, %i.am                ; 2 uses
  store i32 %i.bd, ptr %i.d, align 4, !tbaa !28
  %i.be = lshr i16 %i.ai, 5
  %i.bf = sub nuw i16 %i.ai, %i.be
  store i16 %i.bf, ptr %i.ad, align 2, !tbaa !14
  %i.bg = icmp ult i32 %i.bc, 16777216
  br i1 %i.bg, label %bb.l, label %getbit_from_table.exit

bb.l:                                             ; preds = %bb.k
  %i.bh = shl i32 %i.bd, 8
  %i.bi = load ptr, ptr %1, align 8, !tbaa !23    ; 3 uses
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !25
  %.not.i55.i = icmp ult ptr %i.bi, %i.bj
  br i1 %.not.i55.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.f, align 8, !tbaa !19
  br label %get_byte.exit57.i

bb.n:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  store ptr %i.bm, ptr %1, align 8, !tbaa !23
  br label %get_byte.exit57.i

get_byte.exit57.i:                                ; preds = %bb.n, %bb.m
  %.0.i56.i = phi i32 [ 255, %bb.m ], [ %i.bl, %bb.n ]
  %i.bn = or disjoint i32 %.0.i56.i, %i.bh
  store i32 %i.bn, ptr %i.d, align 4, !tbaa !28
  %i.bo = shl nuw i32 %i.bc, 8
  store i32 %i.bo, ptr %i.c, align 8, !tbaa !24
  br label %getbit_from_table.exit

getbit_from_table.exit:                           ; preds = %bb.e, %bb.g, %get_byte.exit.i, %bb.k, %get_byte.exit57.i
  %.0.i = phi i32 [ 255, %bb.e ], [ 0, %bb.g ], [ 0, %get_byte.exit.i ], [ 1, %get_byte.exit57.i ], [ 1, %bb.k ]
  %i.bp = or i32 %.0.i, %i.ab                     ; 2 uses
  %.old1 = icmp ult i32 %i.ab, 256
  br i1 %.old1, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %getbit_from_table.exit, %getbit_from_table.exit.us, %bb.b
  %.2 = phi i32 [ %i.r, %bb.b ], [ %i.w, %getbit_from_table.exit.us ], [ %i.bp, %getbit_from_table.exit ] ; 3 uses
  %i.bq = icmp ult i32 %.2, 256
  br i1 %i.bq, label %bb.b, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.br = and i32 %.2, 255
  ret i32 %i.br
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 256) i32 @get_100_bits_from_table(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.05 = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ]    ; 3 uses
  %i.a = shl nuw nsw i32 %.05, 1
  %i.b = zext nneg i32 %.05 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.b
  %i.d = tail call i32 @getbit_from_table(ptr noundef %i.c, ptr noundef %1)
  %i.e = or i32 %i.d, %i.a                        ; 2 uses
  %i.f = icmp ult i32 %.05, 128
  br i1 %i.f, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.e, 255
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65042) i32 @get_n_bits_from_tablesize(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @getbit_from_table(ptr noundef %0, ptr noundef %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.lr.ph.i, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = shl i32 %2, 3
  %i.c = or disjoint i32 %i.b, 2
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = tail call i32 @getbit_from_table(ptr noundef nonnull %i.f, ptr noundef %1)
  %i.h = add nuw nsw i32 %i.g, 2                  ; 2 uses
  %i.i = shl nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.j
  %i.l = tail call i32 @getbit_from_table(ptr noundef nonnull %i.k, ptr noundef %1)
  %i.m = add nuw nsw i32 %i.l, %i.i               ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 1
  %i.o = zext nneg i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = tail call i32 @getbit_from_table(ptr noundef nonnull %i.p, ptr noundef %1)
  %i.r = add nuw nsw i32 %i.q, %i.n
  %i.s = add nsw i32 %i.r, -8
  br label %get_n_bits_from_table.exit17

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.u = tail call i32 @getbit_from_table(ptr noundef nonnull %i.t, ptr noundef %1)
  %.not12 = icmp eq i32 %i.u, 0
  br i1 %.not12, label %.lr.ph.i13, label %.lr.ph.i18

.lr.ph.i13:                                       ; preds = %bb.b
  %i.v = shl i32 %2, 3
  %i.w = add i32 %i.v, 130
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = tail call i32 @getbit_from_table(ptr noundef nonnull %i.z, ptr noundef %1)
  %i.ab = add nuw nsw i32 %i.aa, 2                ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 1
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ad
  %i.af = tail call i32 @getbit_from_table(ptr noundef nonnull %i.ae, ptr noundef %1)
  %i.ag = add nuw nsw i32 %i.af, %i.ac            ; 2 uses
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ai
  %i.ak = tail call i32 @getbit_from_table(ptr noundef nonnull %i.aj, ptr noundef %1)
  %i.al = add nuw nsw i32 %i.ak, %i.ah
  br label %get_n_bits_from_table.exit17

.lr.ph.i18:                                       ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 518
  %i.ao = tail call i32 @getbit_from_table(ptr noundef nonnull %i.an, ptr noundef %1)
  %i.ap = add nuw nsw i32 %i.ao, 2                ; 2 uses
  %i.aq = shl nuw nsw i32 %i.ap, 1
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ar
  %i.at = tail call i32 @getbit_from_table(ptr noundef nonnull %i.as, ptr noundef %1)
  %i.au = add nuw nsw i32 %i.at, %i.aq            ; 2 uses
  %i.av = shl nuw nsw i32 %i.au, 1
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aw
  %i.ay = tail call i32 @getbit_from_table(ptr noundef nonnull %i.ax, ptr noundef %1)
  %i.az = add nuw nsw i32 %i.ay, %i.av            ; 2 uses
  %i.ba = shl nuw nsw i32 %i.az, 1
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bb
  %i.bd = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bc, ptr noundef %1)
  %i.be = add nuw nsw i32 %i.bd, %i.ba            ; 2 uses
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bg
  %i.bi = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bh, ptr noundef %1)
  %i.bj = add nuw nsw i32 %i.bi, %i.bf            ; 2 uses
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bl
  %i.bn = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bm, ptr noundef %1)
  %i.bo = add nuw nsw i32 %i.bn, %i.bk            ; 2 uses
  %i.bp = shl nuw nsw i32 %i.bo, 1
  %i.bq = zext nneg i32 %i.bo to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bq
  %i.bs = tail call i32 @getbit_from_table(ptr noundef nonnull %i.br, ptr noundef %1)
  %i.bt = add nuw nsw i32 %i.bs, %i.bp            ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bt, 1
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.bv
  %i.bx = tail call i32 @getbit_from_table(ptr noundef nonnull %i.bw, ptr noundef %1)
  %i.by = add nuw nsw i32 %i.bx, %i.bu
  %i.bz = add nsw i32 %i.by, -240
  br label %get_n_bits_from_table.exit17

get_n_bits_from_table.exit17:                     ; preds = %.lr.ph.i13, %.lr.ph.i18, %.lr.ph.i
  %.0 = phi i32 [ %i.bz, %.lr.ph.i18 ], [ %i.s, %.lr.ph.i ], [ %i.al, %.lr.ph.i13 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
