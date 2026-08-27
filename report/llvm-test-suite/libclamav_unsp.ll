Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_unsp?download=true
inline.NumInlined: 24
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@very_real_unpack:bb.a
  %i.i = zext i32 %1 to i64
  %i.j = zext i32 %i.d to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = icmp samesign ugt i64 %i.k, %i.i
  br i1 %i.l, label %.thread490, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.j
  %i.m = add nsw i64 %i.j, -22
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = xor i64 %index, -1
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.n ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %gep, i64 -14
  %i.p = getelementptr inbounds i8, ptr %gep, i64 -30
  store <8 x i16> splat (i16 1024), ptr %i.o, align 2, !tbaa !28
  store <8 x i16> splat (i16 1024), ptr %i.p, align 2, !tbaa !28
  %index.next = add nuw i64 %index, 16
  %i.q = icmp eq i64 %index, %i.m
  br i1 %i.q, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !29

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.r = getelementptr i8, ptr %0, i64 4
  store <4 x i16> splat (i16 1024), ptr %i.r, align 2, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 1024, ptr %i.s, align 2, !tbaa !28
  store i16 1024, ptr %0, align 2, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 49 uses
  store i32 0, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 53 uses
  store ptr %5, ptr %9, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 63 uses
  store i32 -1, ptr %i.v, align 8, !tbaa !37
  %i.w = zext i32 %6 to i64
  %i.x = getelementptr i8, ptr %5, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -13      ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 17 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 5 uses
  store ptr %0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i32 %1, ptr %i.ab, align 8, !tbaa !40
  %.not.i = icmp ugt i32 %6, 13                   ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %vec.epilog.vector.body
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit

bb.c:                                             ; preds = %vec.epilog.vector.body
  %i.ac = load i8, ptr %5, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 2 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !36
  %i.af = shl nuw nsw i32 %i.ad, 8
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.b, %bb.c
  %i.ag = phi ptr [ %5, %bb.b ], [ %i.ae, %bb.c ] ; 4 uses
  %.0.i = phi i32 [ 65280, %bb.b ], [ %i.af, %bb.c ]
  %.not.i.1 = icmp ult ptr %i.ag, %i.y
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %get_byte.exit
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.1

bb.e:                                             ; preds = %get_byte.exit
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  store ptr %i.aj, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.1

get_byte.exit.1:                                  ; preds = %bb.e, %bb.d
  %i.ak = phi i1 [ false, %bb.d ], [ %.not.i, %bb.e ]
  %i.al = phi ptr [ %i.ag, %bb.d ], [ %i.aj, %bb.e ] ; 4 uses
  %.0.i.1 = phi i32 [ 255, %bb.d ], [ %i.ai, %bb.e ]
  %i.am = or disjoint i32 %.0.i.1, %.0.i          ; 2 uses
  store i32 %i.am, ptr %i.u, align 4, !tbaa !41
  %i.an = shl nuw nsw i32 %i.am, 8
  %.not.i.2 = icmp ult ptr %i.al, %i.y
  br i1 %.not.i.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %get_byte.exit.1
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.2

bb.g:                                             ; preds = %get_byte.exit.1
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 1 ; 2 uses
  store ptr %i.aq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.2

get_byte.exit.2:                                  ; preds = %bb.g, %bb.f
  %i.ar = phi i1 [ false, %bb.f ], [ %i.ak, %bb.g ]
  %i.as = phi ptr [ %i.al, %bb.f ], [ %i.aq, %bb.g ] ; 4 uses
  %.0.i.2 = phi i32 [ 255, %bb.f ], [ %i.ap, %bb.g ]
  %i.at = or disjoint i32 %.0.i.2, %i.an          ; 2 uses
  store i32 %i.at, ptr %i.u, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.at, 8
  %.not.i.3 = icmp ult ptr %i.as, %i.y
  br i1 %.not.i.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %get_byte.exit.2
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.3

bb.i:                                             ; preds = %get_byte.exit.2
  %i.av = load i8, ptr %i.as, align 1, !tbaa !8
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.3

get_byte.exit.3:                                  ; preds = %bb.i, %bb.h
  %i.ay = phi i1 [ false, %bb.h ], [ %i.ar, %bb.i ]
  %i.az = phi ptr [ %i.as, %bb.h ], [ %i.ax, %bb.i ] ; 3 uses
  %.0.i.3 = phi i32 [ 255, %bb.h ], [ %i.aw, %bb.i ]
  %i.ba = or disjoint i32 %.0.i.3, %i.au          ; 2 uses
  store i32 %i.ba, ptr %i.u, align 4, !tbaa !41
  %.not.i.4 = icmp ult ptr %i.az, %i.y
  br i1 %.not.i.4, label %get_byte.exit.4, label %.thread490

get_byte.exit.4:                                  ; preds = %get_byte.exit.3
  %i.bb = shl i32 %i.ba, 8
  %i.bc = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bd = zext i8 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.be, ptr %9, align 8, !tbaa !36
  %i.bf = or disjoint i32 %i.bb, %i.bd
  store i32 %i.bf, ptr %i.u, align 4, !tbaa !41
  br i1 %i.ay, label %.lr.ph, label %.thread490

.lr.ph:                                           ; preds = %get_byte.exit.4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 2664 ; 2 uses
  %.not325 = icmp eq i32 %8, 0                    ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1604 ; 3 uses
  %i.bj = and i32 %2, 255
  %i.bk = sub i32 8, %2
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext i32 %8 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1606 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1608
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %select.unfold
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.abg, %select.unfold ] ; 5 uses
  %.0245564 = phi i32 [ 0, %.lr.ph ], [ %.3, %select.unfold ]
  %.0247561 = phi i32 [ 0, %.lr.ph ], [ %.3250, %select.unfold ] ; 13 uses
  %.0251558 = phi i32 [ 1, %.lr.ph ], [ %.4, %select.unfold ] ; 10 uses
  %.0255555 = phi i32 [ 1, %.lr.ph ], [ %.3258, %select.unfold ] ; 11 uses
  %.0259552 = phi i32 [ 1, %.lr.ph ], [ %.2261, %select.unfold ] ; 11 uses
  %.0262548 = phi i32 [ 1, %.lr.ph ], [ %.2264, %select.unfold ] ; 7 uses
  %.0265547 = phi i32 [ 0, %.lr.ph ], [ %.3268, %select.unfold ] ; 27 uses
  %.0269546 = phi i32 [ 0, %.lr.ph ], [ %.3272, %select.unfold ]
  %.0279541 = phi i32 [ %6, %.lr.ph ], [ %.3282, %select.unfold ] ; 4 uses
  %i.bq = shl i32 %.0247561, 4                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bs ; 5 uses
  %i.bu = load i32, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %switch.i = icmp ult i32 %i.bu, 2
  br i1 %switch.i, label %.thread486, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = zext i32 %i.bu to i64
  %i.bw = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 8 uses
  %.not49.i = icmp uge ptr %i.bt, %i.bw
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv ; 7 uses
  %.not50.i = icmp ule ptr %i.bx, %i.by
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.l, label %bb.ao

bb.l:                                             ; preds = %bb.k
  %i.bz = load i16, ptr %i.bt, align 2, !tbaa !28 ; 4 uses
  %i.ca = zext i16 %i.bz to i32                   ; 2 uses
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.cc = lshr i32 %i.cb, 11
  %i.cd = mul i32 %i.cc, %i.ca                    ; 7 uses
  %i.ce = load i32, ptr %i.u, align 4, !tbaa !41  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, %i.cd
  br i1 %i.cf, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i32 %i.cd, ptr %i.v, align 8, !tbaa !37
  %i.cg = sub nsw i32 2048, %i.ca
  %i.ch = lshr i32 %i.cg, 5
  %i.ci = trunc i32 %i.ch to i16
  %i.cj = add i16 %i.bz, %i.ci
  store i16 %i.cj, ptr %i.bt, align 2, !tbaa !28
  %i.ck = icmp ult i32 %i.cd, 16777216
  br i1 %i.ck, label %bb.n, label %getbit_from_table.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = shl nuw i32 %i.ce, 8
  %i.cm = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.cn = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.cm, %i.cn
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.p:                                             ; preds = %bb.n
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  store ptr %i.cq, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.p, %bb.o
  %.0.i.i = phi i32 [ 255, %bb.o ], [ %i.cp, %bb.p ]
  %i.cr = or disjoint i32 %.0.i.i, %i.cl          ; 2 uses
  store i32 %i.cr, ptr %i.u, align 4, !tbaa !41
  %i.cs = shl nuw i32 %i.cd, 8                    ; 2 uses
  store i32 %i.cs, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.q:                                             ; preds = %bb.l
  %i.ct = sub i32 %i.cb, %i.cd                    ; 3 uses
  store i32 %i.ct, ptr %i.v, align 8, !tbaa !37
  %i.cu = sub nuw i32 %i.ce, %i.cd                ; 2 uses
  store i32 %i.cu, ptr %i.u, align 4, !tbaa !41
  %i.cv = lshr i16 %i.bz, 5
  %i.cw = sub nuw i16 %i.bz, %i.cv
  store i16 %i.cw, ptr %i.bt, align 2, !tbaa !28
  %i.cx = icmp ult i32 %i.ct, 16777216
  br i1 %i.cx, label %bb.r, label %.thread468

bb.r:                                             ; preds = %bb.q
  %i.cy = shl i32 %i.cu, 8
  %i.cz = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.da = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.cz, %i.da
  br i1 %.not.i51.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.t:                                             ; preds = %bb.r
  %i.db = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.dd, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.t, %bb.s
  %.0.i52.i = phi i32 [ 255, %bb.s ], [ %i.dc, %bb.t ]
  %i.de = or disjoint i32 %.0.i52.i, %i.cy
  store i32 %i.de, ptr %i.u, align 4, !tbaa !41
  %i.df = shl nuw i32 %i.ct, 8
  store i32 %i.df, ptr %i.v, align 8, !tbaa !37
  br label %.thread468

getbit_from_table.exit:                           ; preds = %get_byte.exit.i, %bb.m
  %.promoted538 = phi i32 [ %i.cr, %get_byte.exit.i ], [ %i.ce, %bb.m ]
  %.promoted537 = phi i32 [ %i.cs, %get_byte.exit.i ], [ %i.cd, %bb.m ]
  %i.dg = lshr i32 %.0245564, %i.bl
  %i.dh = and i32 %.0265547, %i.f
  %i.di = shl i32 %i.dh, %i.bj
  %i.dj = add i32 %i.dg, %i.di
  %i.dk = mul i32 %i.dj, 768                      ; 2 uses
  %i.dl = icmp sgt i32 %.0247561, 3
  br i1 %i.dl, label %bb.u, label %bb.x

bb.u:                                             ; preds = %getbit_from_table.exit
  %i.dm = icmp samesign ugt i32 %.0247561, 9
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = add nsw i32 %.0247561, -6
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.do = add nsw i32 %.0247561, -3
  br label %bb.x

bb.x:                                             ; preds = %getbit_from_table.exit, %bb.v, %bb.w
  %.1248 = phi i32 [ %i.dn, %bb.v ], [ %i.do, %bb.w ], [ 0, %getbit_from_table.exit ]
  %.not313 = icmp eq i32 %.0269546, 0
  br i1 %.not313, label %.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not325, label %.thread490, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dp = sub i32 %.0265547, %.0262548            ; 2 uses
  %.not316.not = icmp ult i32 %i.dp, %8
  br i1 %.not316.not, label %.thread, label %.thread490

.thread:                                          ; preds = %bb.z
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 %i.dq
  %i.ds = and i32 %.0279541, -256
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !8
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 2 uses
  %i.dw = add i32 %i.dk, 1846
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dx
  %i.dz = call i32 @get_100_bits_from_tablesize(ptr noundef nonnull %i.dy, ptr noundef nonnull %9, i32 noundef %i.dv)
  br label %bb.am

.split.i:                                         ; preds = %bb.x
  %i.ea = add i32 %i.dk, 1846
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.eb
  %.promoted539 = load ptr, ptr %9, align 8
  %i.ed = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %getbit_from_table.exit.i, %.split.i
  %i.ee = phi ptr [ %.promoted539, %.split.i ], [ %i.fo, %getbit_from_table.exit.i ] ; 11 uses
  %i.ef = phi i32 [ %.promoted538, %.split.i ], [ %i.fp, %getbit_from_table.exit.i ] ; 5 uses
  %i.eg = phi i32 [ %.promoted537, %.split.i ], [ %i.fq, %getbit_from_table.exit.i ] ; 3 uses
  %.05.i = phi i32 [ 1, %.split.i ], [ %i.fr, %getbit_from_table.exit.i ] ; 3 uses
  %i.eh = shl nuw nsw i32 %.05.i, 1
  %i.ei = zext nneg i32 %.05.i to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %i.ei ; 5 uses
  %.not49.i.i = icmp uge ptr %i.ej, %i.bw
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %.not50.i.i = icmp ule ptr %i.ek, %i.by
  %or.cond55.i.i = select i1 %.not49.i.i, i1 %.not50.i.i, i1 false
  br i1 %or.cond55.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.el = load i16, ptr %i.ej, align 2, !tbaa !28 ; 4 uses
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = lshr i32 %i.eg, 11
  %i.eo = mul i32 %i.en, %i.em                    ; 7 uses
  %i.ep = icmp ult i32 %i.ef, %i.eo
  br i1 %i.ep, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.eo, ptr %i.v, align 8, !tbaa !37
  %i.eq = sub nsw i32 2048, %i.em
  %i.er = lshr i32 %i.eq, 5
  %i.es = trunc i32 %i.er to i16
  %i.et = add i16 %i.el, %i.es
  store i16 %i.et, ptr %i.ej, align 2, !tbaa !28
  %i.eu = icmp ult i32 %i.eo, 16777216
  br i1 %i.eu, label %bb.ae, label %getbit_from_table.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ev = shl nuw i32 %i.ef, 8
  %.not.i.i.i = icmp ult ptr %i.ee, %i.ed
  br i1 %.not.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.ew = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.ex = zext i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  store ptr %i.ey, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i

get_byte.exit.i.i:                                ; preds = %bb.ag, %bb.af
  %i.ez = phi ptr [ %i.ee, %bb.af ], [ %i.ey, %bb.ag ]
  %.0.i.i.i = phi i32 [ 255, %bb.af ], [ %i.ex, %bb.ag ]
  %i.fa = or disjoint i32 %.0.i.i.i, %i.ev        ; 2 uses
  store i32 %i.fa, ptr %i.u, align 4, !tbaa !41
  %i.fb = shl nuw i32 %i.eo, 8                    ; 2 uses
  store i32 %i.fb, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i

bb.ah:                                            ; preds = %bb.ac
  %i.fc = sub i32 %i.eg, %i.eo                    ; 4 uses
  store i32 %i.fc, ptr %i.v, align 8, !tbaa !37
  %i.fd = sub nuw i32 %i.ef, %i.eo                ; 3 uses
  store i32 %i.fd, ptr %i.u, align 4, !tbaa !41
  %i.fe = lshr i16 %i.el, 5
  %i.ff = sub nuw i16 %i.el, %i.fe
  store i16 %i.ff, ptr %i.ej, align 2, !tbaa !28
  %i.fg = icmp ult i32 %i.fc, 16777216
  br i1 %i.fg, label %bb.ai, label %getbit_from_table.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fh = shl i32 %i.fd, 8
  %.not.i51.i.i = icmp ult ptr %i.ee, %i.ed
  br i1 %.not.i51.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.fi = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.fj = zext i8 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ee, i64 1 ; 2 uses
  store ptr %i.fk, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i

get_byte.exit53.i.i:                              ; preds = %bb.ak, %bb.aj
  %i.fl = phi ptr [ %i.ee, %bb.aj ], [ %i.fk, %bb.ak ]
  %.0.i52.i.i = phi i32 [ 255, %bb.aj ], [ %i.fj, %bb.ak ]
  %i.fm = or disjoint i32 %.0.i52.i.i, %i.fh      ; 2 uses
  store i32 %i.fm, ptr %i.u, align 4, !tbaa !41
  %i.fn = shl nuw i32 %i.fc, 8                    ; 2 uses
  store i32 %i.fn, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i

getbit_from_table.exit.i:                         ; preds = %get_byte.exit53.i.i, %bb.ah, %get_byte.exit.i.i, %bb.ad, %bb.ab
  %i.fo = phi ptr [ %i.ee, %bb.ab ], [ %i.ee, %bb.ad ], [ %i.ez, %get_byte.exit.i.i ], [ %i.fl, %get_byte.exit53.i.i ], [ %i.ee, %bb.ah ]
  %i.fp = phi i32 [ %i.ef, %bb.ab ], [ %i.ef, %bb.ad ], [ %i.fa, %get_byte.exit.i.i ], [ %i.fm, %get_byte.exit53.i.i ], [ %i.fd, %bb.ah ]
  %i.fq = phi i32 [ %i.eg, %bb.ab ], [ %i.eo, %bb.ad ], [ %i.fb, %get_byte.exit.i.i ], [ %i.fn, %get_byte.exit53.i.i ], [ %i.fc, %bb.ah ]
  %.0.i.i343 = phi i32 [ 255, %bb.ab ], [ 0, %bb.ad ], [ 0, %get_byte.exit.i.i ], [ 1, %get_byte.exit53.i.i ], [ 1, %bb.ah ]
  %i.fr = or i32 %.0.i.i343, %i.eh                ; 2 uses
  %i.fs = icmp ult i32 %.05.i, 128
  br i1 %i.fs, label %bb.aa, label %bb.al, !llvm.loop !42

bb.al:                                            ; preds = %getbit_from_table.exit.i
  %i.ft = and i32 %i.fr, 255
  br i1 %.not325, label %.thread490, label %bb.am

bb.am:                                            ; preds = %.thread, %bb.al
  %.1246467 = phi i32 [ %i.dz, %.thread ], [ %i.ft, %bb.al ] ; 2 uses
  %.1280466 = phi i32 [ %i.dv, %.thread ], [ %.0279541, %bb.al ]
  %.not319.not = icmp ult i32 %.0265547, %8
  br i1 %.not319.not, label %bb.an, label %.thread490

bb.an:                                            ; preds = %bb.am
  %i.fu = zext i32 %.0265547 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 %i.fu
  %i.fw = trunc nuw i32 %.1246467 to i8
  store i8 %i.fw, ptr %i.fv, align 1, !tbaa !8
  %i.fx = add nuw i32 %.0265547, 1                ; 2 uses
  %.not320 = icmp ult i32 %i.fx, %8
  br i1 %.not320, label %select.unfold, label %.thread490

bb.ao:                                            ; preds = %bb.k
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %.thread468

.thread468:                                       ; preds = %bb.q, %get_byte.exit53.i, %bb.ao
  %.pn.in = add i32 %.0247561, 192
  %.pn = zext i32 %.pn.in to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn ; 5 uses
  %.not49.i345 = icmp uge ptr %i.fy, %i.bw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %.not50.i346 = icmp ule ptr %i.fz, %i.by
  %or.cond55.i347 = select i1 %.not49.i345, i1 %.not50.i346, i1 false
  br i1 %or.cond55.i347, label %bb.ap, label %bb.ay

bb.ap:                                            ; preds = %.thread468
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !28 ; 4 uses
  %i.gb = zext i16 %i.ga to i32                   ; 2 uses
  %i.gc = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.gd = lshr i32 %i.gc, 11
  %i.ge = mul i32 %i.gd, %i.gb                    ; 6 uses
  %i.gf = load i32, ptr %i.u, align 4, !tbaa !41  ; 3 uses
  %i.gg = icmp ult i32 %i.gf, %i.ge
  br i1 %i.gg, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.ge, ptr %i.v, align 8, !tbaa !37
  %i.gh = sub nsw i32 2048, %i.gb
  %i.gi = lshr i32 %i.gh, 5
  %i.gj = trunc i32 %i.gi to i16
  %i.gk = add i16 %i.ga, %i.gj
  store i16 %i.gk, ptr %i.fy, align 2, !tbaa !28
  %i.gl = icmp ult i32 %i.ge, 16777216
  br i1 %i.gl, label %bb.ar, label %getbit_from_table.exit355

bb.ar:                                            ; preds = %bb.aq
  %i.gm = shl nuw i32 %i.gf, 8
  %i.gn = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.go = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i352 = icmp ult ptr %i.gn, %i.go
  br i1 %.not.i.i352, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i353

bb.at:                                            ; preds = %bb.ar
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !8
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store ptr %i.gr, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i353

get_byte.exit.i353:                               ; preds = %bb.at, %bb.as
  %.0.i.i354 = phi i32 [ 255, %bb.as ], [ %i.gq, %bb.at ]
  %i.gs = or disjoint i32 %.0.i.i354, %i.gm
  store i32 %i.gs, ptr %i.u, align 4, !tbaa !41
  %i.gt = shl nuw i32 %i.ge, 8
  store i32 %i.gt, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit355

bb.au:                                            ; preds = %bb.ap
  %i.gu = sub i32 %i.gc, %i.ge                    ; 3 uses
  store i32 %i.gu, ptr %i.v, align 8, !tbaa !37
  %i.gv = sub nuw i32 %i.gf, %i.ge                ; 2 uses
  store i32 %i.gv, ptr %i.u, align 4, !tbaa !41
  %i.gw = lshr i16 %i.ga, 5
  %i.gx = sub nuw i16 %i.ga, %i.gw
  store i16 %i.gx, ptr %i.fy, align 2, !tbaa !28
  %i.gy = icmp ult i32 %i.gu, 16777216
  br i1 %i.gy, label %bb.av, label %.thread473

bb.av:                                            ; preds = %bb.au
  %i.gz = shl i32 %i.gv, 8
  %i.ha = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.hb = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i349 = icmp ult ptr %i.ha, %i.hb
  br i1 %.not.i51.i349, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i350

bb.ax:                                            ; preds = %bb.av
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !8
  %i.hd = zext i8 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store ptr %i.he, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i350

get_byte.exit53.i350:                             ; preds = %bb.ax, %bb.aw
  %.0.i52.i351 = phi i32 [ 255, %bb.aw ], [ %i.hd, %bb.ax ]
  %i.hf = or disjoint i32 %.0.i52.i351, %i.gz
  store i32 %i.hf, ptr %i.u, align 4, !tbaa !41
  %i.hg = shl nuw i32 %i.gu, 8
  store i32 %i.hg, ptr %i.v, align 8, !tbaa !37
  br label %.thread473

bb.ay:                                            ; preds = %.thread468
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %.thread473

.thread473:                                       ; preds = %bb.au, %get_byte.exit53.i350, %bb.ay
  %.pn502.in = add i32 %.0247561, 204
  %.pn502 = zext i32 %.pn502.in to i64
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn502 ; 5 uses
  %.not49.i357 = icmp uge ptr %i.hh, %i.bw
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %.not50.i358 = icmp ule ptr %i.hi, %i.by
  %or.cond55.i359 = select i1 %.not49.i357, i1 %.not50.i358, i1 false
  br i1 %or.cond55.i359, label %bb.az, label %bb.bx

bb.az:                                            ; preds = %.thread473
  %i.hj = load i16, ptr %i.hh, align 2, !tbaa !28 ; 4 uses
  %i.hk = zext i16 %i.hj to i32                   ; 2 uses
  %i.hl = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.hm = lshr i32 %i.hl, 11
  %i.hn = mul i32 %i.hm, %i.hk                    ; 7 uses
  %i.ho = load i32, ptr %i.u, align 4, !tbaa !41  ; 4 uses
  %i.hp = icmp ult i32 %i.ho, %i.hn
  br i1 %i.hp, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  store i32 %i.hn, ptr %i.v, align 8, !tbaa !37
  %i.hq = sub nsw i32 2048, %i.hk
  %i.hr = lshr i32 %i.hq, 5
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = add i16 %i.hj, %i.hs
  store i16 %i.ht, ptr %i.hh, align 2, !tbaa !28
  %i.hu = icmp ult i32 %i.hn, 16777216
  br i1 %i.hu, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  %i.hv = shl nuw i32 %i.ho, 8
  %i.hw = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i364 = icmp ult ptr %i.hw, %i.hx
  br i1 %.not.i.i364, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i365

bb.bd:                                            ; preds = %bb.bb
  %i.hy = load i8, ptr %i.hw, align 1, !tbaa !8
  %i.hz = zext i8 %i.hy to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 1
  store ptr %i.ia, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i365

get_byte.exit.i365:                               ; preds = %bb.bd, %bb.bc
  %.0.i.i366 = phi i32 [ 255, %bb.bc ], [ %i.hz, %bb.bd ]
  %i.ib = or disjoint i32 %.0.i.i366, %i.hv       ; 2 uses
  store i32 %i.ib, ptr %i.u, align 4, !tbaa !41
  %i.ic = shl nuw i32 %i.hn, 8                    ; 2 uses
  store i32 %i.ic, ptr %i.v, align 8, !tbaa !37
  br label %bb.bi

bb.be:                                            ; preds = %bb.az
  %i.id = sub i32 %i.hl, %i.hn                    ; 3 uses
  store i32 %i.id, ptr %i.v, align 8, !tbaa !37
  %i.ie = sub nuw i32 %i.ho, %i.hn                ; 2 uses
  store i32 %i.ie, ptr %i.u, align 4, !tbaa !41
  %i.if = lshr i16 %i.hj, 5
  %i.ig = sub nuw i16 %i.hj, %i.if
  store i16 %i.ig, ptr %i.hh, align 2, !tbaa !28
  %i.ih = icmp ult i32 %i.id, 16777216
  br i1 %i.ih, label %bb.bf, label %.thread480

bb.bf:                                            ; preds = %bb.be
  %i.ii = shl i32 %i.ie, 8
  %i.ij = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.ik = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i361 = icmp ult ptr %i.ij, %i.ik
  br i1 %.not.i51.i361, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i362

bb.bh:                                            ; preds = %bb.bf
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !8
  %i.im = zext i8 %i.il to i32
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  store ptr %i.in, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i362

get_byte.exit53.i362:                             ; preds = %bb.bh, %bb.bg
  %.0.i52.i363 = phi i32 [ 255, %bb.bg ], [ %i.im, %bb.bh ]
  %i.io = or disjoint i32 %.0.i52.i363, %i.ii
  store i32 %i.io, ptr %i.u, align 4, !tbaa !41
  %i.ip = shl nuw i32 %i.id, 8
  store i32 %i.ip, ptr %i.v, align 8, !tbaa !37
  br label %.thread480

bb.bi:                                            ; preds = %bb.ba, %get_byte.exit.i365
  %i.iq = phi i32 [ %i.ho, %bb.ba ], [ %i.ib, %get_byte.exit.i365 ] ; 3 uses
  %i.ir = phi i32 [ %i.hn, %bb.ba ], [ %i.ic, %get_byte.exit.i365 ] ; 2 uses
  %i.is = add nuw i32 %i.bp, 240
  %i.it = add i32 %i.is, %i.bq
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.iu ; 5 uses
  %.not49.i369 = icmp uge ptr %i.iv, %i.bw
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %.not50.i370 = icmp ule ptr %i.iw, %i.by
  %or.cond55.i371 = select i1 %.not49.i369, i1 %.not50.i370, i1 false
  br i1 %or.cond55.i371, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %bb.bw

bb.bk:                                            ; preds = %bb.bi
  %i.ix = load i16, ptr %i.iv, align 2, !tbaa !28 ; 4 uses
  %i.iy = zext i16 %i.ix to i32                   ; 2 uses
  %i.iz = lshr i32 %i.ir, 11
  %i.ja = mul i32 %i.iz, %i.iy                    ; 6 uses
  %i.jb = icmp ult i32 %i.iq, %i.ja
  br i1 %i.jb, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  store i32 %i.ja, ptr %i.v, align 8, !tbaa !37
  %i.jc = sub nsw i32 2048, %i.iy
  %i.jd = lshr i32 %i.jc, 5
  %i.je = trunc i32 %i.jd to i16
  %i.jf = add i16 %i.ix, %i.je
  store i16 %i.jf, ptr %i.iv, align 2, !tbaa !28
  %i.jg = icmp ult i32 %i.ja, 16777216
  br i1 %i.jg, label %bb.bm, label %getbit_from_table.exit379

bb.bm:                                            ; preds = %bb.bl
  %i.jh = shl nuw i32 %i.iq, 8
  %i.ji = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.jj = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i376 = icmp ult ptr %i.ji, %i.jj
  br i1 %.not.i.i376, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i377

bb.bo:                                            ; preds = %bb.bm
  %i.jk = load i8, ptr %i.ji, align 1, !tbaa !8
  %i.jl = zext i8 %i.jk to i32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  store ptr %i.jm, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i377

get_byte.exit.i377:                               ; preds = %bb.bo, %bb.bn
  %.0.i.i378 = phi i32 [ 255, %bb.bn ], [ %i.jl, %bb.bo ]
  %i.jn = or disjoint i32 %.0.i.i378, %i.jh
  store i32 %i.jn, ptr %i.u, align 4, !tbaa !41
  %i.jo = shl nuw i32 %i.ja, 8
  store i32 %i.jo, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit379

bb.bp:                                            ; preds = %bb.bk
  %i.jp = sub i32 %i.ir, %i.ja                    ; 3 uses
  store i32 %i.jp, ptr %i.v, align 8, !tbaa !37
  %i.jq = sub nuw i32 %i.iq, %i.ja                ; 2 uses
  store i32 %i.jq, ptr %i.u, align 4, !tbaa !41
  %i.jr = lshr i16 %i.ix, 5
  %i.js = sub nuw i16 %i.ix, %i.jr
  store i16 %i.js, ptr %i.iv, align 2, !tbaa !28
  %i.jt = icmp ult i32 %i.jp, 16777216
  br i1 %i.jt, label %bb.bq, label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  %i.ju = shl i32 %i.jq, 8
  %i.jv = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.jw = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i373 = icmp ult ptr %i.jv, %i.jw
  br i1 %.not.i51.i373, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i374

bb.bs:                                            ; preds = %bb.bq
  %i.jx = load i8, ptr %i.jv, align 1, !tbaa !8
  %i.jy = zext i8 %i.jx to i32
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  store ptr %i.jz, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i374

get_byte.exit53.i374:                             ; preds = %bb.bs, %bb.br
  %.0.i52.i375 = phi i32 [ 255, %bb.br ], [ %i.jy, %bb.bs ]
  %i.ka = or disjoint i32 %.0.i52.i375, %i.ju
  store i32 %i.ka, ptr %i.u, align 4, !tbaa !41
  %i.kb = shl nuw i32 %i.jp, 8
  store i32 %i.kb, ptr %i.v, align 8, !tbaa !37
  br label %bb.bw

getbit_from_table.exit379:                        ; preds = %get_byte.exit.i377, %bb.bl
  %.not324 = icmp eq i32 %.0265547, 0
  br i1 %.not324, label %.thread490, label %bb.bt

bb.bt:                                            ; preds = %getbit_from_table.exit379
  %i.kc = icmp sgt i32 %.0247561, 6
  %i.kd = select i1 %i.kc, i32 11, i32 9
  br i1 %.not325, label %.thread490, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ke = sub i32 %.0265547, %.0262548            ; 2 uses
  %.not327.not = icmp ult i32 %i.ke, %8
  br i1 %.not327.not, label %bb.bv, label %.thread490

bb.bv:                                            ; preds = %bb.bu
  %i.kf = zext i32 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr %7, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !8   ; 2 uses
  %i.ki = zext i8 %i.kh to i32
  %i.kj = zext i32 %.0265547 to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 %i.kj
  store i8 %i.kh, ptr %i.kk, align 1, !tbaa !8
  %i.kl = add i32 %.0265547, 1                    ; 2 uses
  %.not328 = icmp ult i32 %i.kl, %8
  br i1 %.not328, label %select.unfold, label %.thread490

bb.bw:                                            ; preds = %bb.bj, %get_byte.exit53.i374, %bb.bp
  %i.km = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bg, ptr noundef nonnull %9, i32 noundef %i.bp)
  %i.kn = icmp slt i32 %.0247561, 7
  %i.ko = select i1 %i.kn, i32 8, i32 11
  br label %bb.fk

bb.bx:                                            ; preds = %.thread473
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %.thread480

.thread480:                                       ; preds = %bb.be, %get_byte.exit53.i362, %bb.bx
  %.pn503.in = add i32 %.0247561, 216
  %.pn503 = zext i32 %.pn503.in to i64
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn503 ; 5 uses
  %.not49.i381 = icmp uge ptr %i.kp, %i.bw
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %.not50.i382 = icmp ule ptr %i.kq, %i.by
  %or.cond55.i383 = select i1 %.not49.i381, i1 %.not50.i382, i1 false
  br i1 %or.cond55.i383, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %.thread480
  %i.kr = load i16, ptr %i.kp, align 2, !tbaa !28 ; 4 uses
  %i.ks = zext i16 %i.kr to i32                   ; 2 uses
  %i.kt = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.ku = lshr i32 %i.kt, 11
  %i.kv = mul i32 %i.ku, %i.ks                    ; 6 uses
  %i.kw = load i32, ptr %i.u, align 4, !tbaa !41  ; 3 uses
  %i.kx = icmp ult i32 %i.kw, %i.kv
  br i1 %i.kx, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  store i32 %i.kv, ptr %i.v, align 8, !tbaa !37
  %i.ky = sub nsw i32 2048, %i.ks
  %i.kz = lshr i32 %i.ky, 5
  %i.la = trunc i32 %i.kz to i16
  %i.lb = add i16 %i.kr, %i.la
  store i16 %i.lb, ptr %i.kp, align 2, !tbaa !28
  %i.lc = icmp ult i32 %i.kv, 16777216
  br i1 %i.lc, label %bb.ca, label %getbit_from_table.exit391

bb.ca:                                            ; preds = %bb.bz
  %i.ld = shl nuw i32 %i.kw, 8
  %i.le = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.lf = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i388 = icmp ult ptr %i.le, %i.lf
  br i1 %.not.i.i388, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i389

bb.cc:                                            ; preds = %bb.ca
  %i.lg = load i8, ptr %i.le, align 1, !tbaa !8
  %i.lh = zext i8 %i.lg to i32
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  store ptr %i.li, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i389

get_byte.exit.i389:                               ; preds = %bb.cc, %bb.cb
  %.0.i.i390 = phi i32 [ 255, %bb.cb ], [ %i.lh, %bb.cc ]
  %i.lj = or disjoint i32 %.0.i.i390, %i.ld
  store i32 %i.lj, ptr %i.u, align 4, !tbaa !41
  %i.lk = shl nuw i32 %i.kv, 8
  store i32 %i.lk, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit391

bb.cd:                                            ; preds = %bb.by
  %i.ll = sub i32 %i.kt, %i.kv                    ; 3 uses
  store i32 %i.ll, ptr %i.v, align 8, !tbaa !37
  %i.lm = sub nuw i32 %i.kw, %i.kv                ; 2 uses
  store i32 %i.lm, ptr %i.u, align 4, !tbaa !41
  %i.ln = lshr i16 %i.kr, 5
  %i.lo = sub nuw i16 %i.kr, %i.ln
  store i16 %i.lo, ptr %i.kp, align 2, !tbaa !28
  %i.lp = icmp ult i32 %i.ll, 16777216
  br i1 %i.lp, label %bb.ce, label %.thread485

bb.ce:                                            ; preds = %bb.cd
  %i.lq = shl i32 %i.lm, 8
  %i.lr = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.ls = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i385 = icmp ult ptr %i.lr, %i.ls
  br i1 %.not.i51.i385, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i386

bb.cg:                                            ; preds = %bb.ce
  %i.lt = load i8, ptr %i.lr, align 1, !tbaa !8
  %i.lu = zext i8 %i.lt to i32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  store ptr %i.lv, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i386

get_byte.exit53.i386:                             ; preds = %bb.cg, %bb.cf
  %.0.i52.i387 = phi i32 [ 255, %bb.cf ], [ %i.lu, %bb.cg ]
  %i.lw = or disjoint i32 %.0.i52.i387, %i.lq
  store i32 %i.lw, ptr %i.u, align 4, !tbaa !41
  %i.lx = shl nuw i32 %i.ll, 8
  store i32 %i.lx, ptr %i.v, align 8, !tbaa !37
  br label %.thread485

bb.ch:                                            ; preds = %.thread480
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %.thread485

.thread485:                                       ; preds = %bb.cd, %get_byte.exit53.i386, %bb.ch
  %.pn504.in = add i32 %.0247561, 228
  %.pn504 = zext i32 %.pn504.in to i64
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.pn504 ; 5 uses
  %.not49.i393 = icmp uge ptr %i.ly, %i.bw
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 2
  %.not50.i394 = icmp ule ptr %i.lz, %i.by
  %or.cond55.i395 = select i1 %.not49.i393, i1 %.not50.i394, i1 false
  br i1 %or.cond55.i395, label %bb.ci, label %.thread486

.thread486:                                       ; preds = %bb.j, %.thread485
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit391

bb.ci:                                            ; preds = %.thread485
  %i.ma = load i16, ptr %i.ly, align 2, !tbaa !28 ; 4 uses
  %i.mb = zext i16 %i.ma to i32                   ; 2 uses
  %i.mc = load i32, ptr %i.v, align 8, !tbaa !37  ; 2 uses
  %i.md = lshr i32 %i.mc, 11
  %i.me = mul i32 %i.md, %i.mb                    ; 6 uses
  %i.mf = load i32, ptr %i.u, align 4, !tbaa !41  ; 3 uses
  %i.mg = icmp ult i32 %i.mf, %i.me
  br i1 %i.mg, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  store i32 %i.me, ptr %i.v, align 8, !tbaa !37
  %i.mh = sub nsw i32 2048, %i.mb
  %i.mi = lshr i32 %i.mh, 5
  %i.mj = trunc i32 %i.mi to i16
  %i.mk = add i16 %i.ma, %i.mj
  store i16 %i.mk, ptr %i.ly, align 2, !tbaa !28
  %i.ml = icmp ult i32 %i.me, 16777216
  br i1 %i.ml, label %bb.ck, label %getbit_from_table.exit391

bb.ck:                                            ; preds = %bb.cj
  %i.mm = shl nuw i32 %i.mf, 8
  %i.mn = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.mo = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i.i400 = icmp ult ptr %i.mn, %i.mo
  br i1 %.not.i.i400, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i401

bb.cm:                                            ; preds = %bb.ck
  %i.mp = load i8, ptr %i.mn, align 1, !tbaa !8
  %i.mq = zext i8 %i.mp to i32
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 1
  store ptr %i.mr, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i401

get_byte.exit.i401:                               ; preds = %bb.cm, %bb.cl
  %.0.i.i402 = phi i32 [ 255, %bb.cl ], [ %i.mq, %bb.cm ]
  %i.ms = or disjoint i32 %.0.i.i402, %i.mm
  store i32 %i.ms, ptr %i.u, align 4, !tbaa !41
  %i.mt = shl nuw i32 %i.me, 8
  store i32 %i.mt, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit391

bb.cn:                                            ; preds = %bb.ci
  %i.mu = sub i32 %i.mc, %i.me                    ; 3 uses
  store i32 %i.mu, ptr %i.v, align 8, !tbaa !37
  %i.mv = sub nuw i32 %i.mf, %i.me                ; 2 uses
  store i32 %i.mv, ptr %i.u, align 4, !tbaa !41
  %i.mw = lshr i16 %i.ma, 5
  %i.mx = sub nuw i16 %i.ma, %i.mw
  store i16 %i.mx, ptr %i.ly, align 2, !tbaa !28
  %i.my = icmp ult i32 %i.mu, 16777216
  br i1 %i.my, label %bb.co, label %getbit_from_table.exit391

bb.co:                                            ; preds = %bb.cn
  %i.mz = shl i32 %i.mv, 8
  %i.na = load ptr, ptr %9, align 8, !tbaa !36    ; 3 uses
  %i.nb = load ptr, ptr %i.z, align 8, !tbaa !38
  %.not.i51.i397 = icmp ult ptr %i.na, %i.nb
  br i1 %.not.i51.i397, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i398

bb.cq:                                            ; preds = %bb.co
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !8
  %i.nd = zext i8 %i.nc to i32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  store ptr %i.ne, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i398

get_byte.exit53.i398:                             ; preds = %bb.cq, %bb.cp
  %.0.i52.i399 = phi i32 [ 255, %bb.cp ], [ %i.nd, %bb.cq ]
  %i.nf = or disjoint i32 %.0.i52.i399, %i.mz
  store i32 %i.nf, ptr %i.u, align 4, !tbaa !41
  %i.ng = shl nuw i32 %i.mu, 8
  store i32 %i.ng, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit391

getbit_from_table.exit391:                        ; preds = %.thread486, %get_byte.exit53.i398, %bb.cn, %get_byte.exit.i401, %bb.cj, %get_byte.exit.i389, %bb.bz
  %.1256 = phi i32 [ %.0255555, %get_byte.exit.i389 ], [ %.0255555, %bb.bz ], [ %.0259552, %bb.cj ], [ %.0259552, %get_byte.exit.i401 ], [ %.0259552, %bb.cn ], [ %.0259552, %get_byte.exit53.i398 ], [ %.0259552, %.thread486 ]
  %.2253 = phi i32 [ %.0251558, %get_byte.exit.i389 ], [ %.0251558, %bb.bz ], [ %.0251558, %bb.cj ], [ %.0251558, %get_byte.exit.i401 ], [ %.0255555, %bb.cn ], [ %.0255555, %get_byte.exit53.i398 ], [ %.0255555, %.thread486 ]
  %.1240 = phi i32 [ %.0259552, %get_byte.exit.i389 ], [ %.0259552, %bb.bz ], [ %.0255555, %bb.cj ], [ %.0255555, %get_byte.exit.i401 ], [ %.0251558, %bb.cn ], [ %.0251558, %get_byte.exit53.i398 ], [ %.0251558, %.thread486 ]
  %i.nh = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bg, ptr noundef nonnull %9, i32 noundef %i.bp)
  %i.ni = icmp slt i32 %.0247561, 7
  %i.nj = select i1 %i.ni, i32 8, i32 11
  br label %bb.fk

getbit_from_table.exit355:                        ; preds = %get_byte.exit.i353, %bb.aq
  %i.nk = icmp slt i32 %.0247561, 7
  %i.nl = select i1 %i.nk, i32 7, i32 10
  %i.nm = call i32 @get_n_bits_from_tablesize(ptr noundef nonnull %i.bh, ptr noundef nonnull %9, i32 noundef %i.bp) ; 2 uses
  %i.nn = tail call i32 @llvm.smin.i32(i32 %i.nm, i32 3)
  %i.no = shl i32 %i.nn, 6
  %i.np = add i32 %i.no, 432
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.nq
  %i.ns = load i32, ptr %i.ab, align 8, !tbaa !40 ; 4 uses
  %switch.i.i404 = icmp ult i32 %i.ns, 2          ; 3 uses
  br i1 %switch.i.i404, label %get_n_bits_from_table.exit.thread, label %.lr.ph.split.i

get_n_bits_from_table.exit.thread:                ; preds = %getbit_from_table.exit355
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %bb.dc

.lr.ph.split.i:                                   ; preds = %getbit_from_table.exit355
  %i.nt = zext i32 %i.ns to i64
  %i.nu = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nt
  %.promoted527 = load i32, ptr %i.v, align 8
  %.promoted528 = load i32, ptr %i.u, align 4
  %.promoted529 = load ptr, ptr %9, align 8
  %i.nw = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.cr

bb.cr:                                            ; preds = %getbit_from_table.exit.i408, %.lr.ph.split.i
  %i.nx = phi ptr [ %.promoted529, %.lr.ph.split.i ], [ %i.pi, %getbit_from_table.exit.i408 ] ; 11 uses
  %i.ny = phi i32 [ %.promoted528, %.lr.ph.split.i ], [ %i.pj, %getbit_from_table.exit.i408 ] ; 5 uses
  %i.nz = phi i32 [ %.promoted527, %.lr.ph.split.i ], [ %i.pk, %getbit_from_table.exit.i408 ] ; 3 uses
  %.010.i = phi i32 [ 6, %.lr.ph.split.i ], [ %i.oa, %getbit_from_table.exit.i408 ]
  %.079.i = phi i32 [ 1, %.lr.ph.split.i ], [ %i.pl, %getbit_from_table.exit.i408 ] ; 2 uses
  %i.oa = add nsw i32 %.010.i, -1                 ; 2 uses
  %i.ob = shl i32 %.079.i, 1
  %i.oc = zext i32 %.079.i to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.nr, i64 %i.oc ; 5 uses
  %.not49.i.i405 = icmp uge ptr %i.od, %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 2
  %.not50.i.i406 = icmp ule ptr %i.oe, %i.nv
  %or.cond55.i.i407 = select i1 %.not49.i.i405, i1 %.not50.i.i406, i1 false
  br i1 %or.cond55.i.i407, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i408

bb.ct:                                            ; preds = %bb.cr
  %i.of = load i16, ptr %i.od, align 2, !tbaa !28 ; 4 uses
  %i.og = zext i16 %i.of to i32                   ; 2 uses
  %i.oh = lshr i32 %i.nz, 11
  %i.oi = mul i32 %i.oh, %i.og                    ; 7 uses
  %i.oj = icmp ult i32 %i.ny, %i.oi
  br i1 %i.oj, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  store i32 %i.oi, ptr %i.v, align 8, !tbaa !37
  %i.ok = sub nsw i32 2048, %i.og
  %i.ol = lshr i32 %i.ok, 5
  %i.om = trunc i32 %i.ol to i16
  %i.on = add i16 %i.of, %i.om
  store i16 %i.on, ptr %i.od, align 2, !tbaa !28
  %i.oo = icmp ult i32 %i.oi, 16777216
  br i1 %i.oo, label %bb.cv, label %getbit_from_table.exit.i408

bb.cv:                                            ; preds = %bb.cu
  %i.op = shl nuw i32 %i.ny, 8
  %.not.i.i.i414 = icmp ult ptr %i.nx, %i.nw
  br i1 %.not.i.i.i414, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i415

bb.cx:                                            ; preds = %bb.cv
  %i.oq = load i8, ptr %i.nx, align 1, !tbaa !8
  %i.or = zext i8 %i.oq to i32
  %i.os = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 2 uses
  store ptr %i.os, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i415

get_byte.exit.i.i415:                             ; preds = %bb.cx, %bb.cw
  %i.ot = phi ptr [ %i.nx, %bb.cw ], [ %i.os, %bb.cx ]
  %.0.i.i.i416 = phi i32 [ 255, %bb.cw ], [ %i.or, %bb.cx ]
  %i.ou = or disjoint i32 %.0.i.i.i416, %i.op     ; 2 uses
  store i32 %i.ou, ptr %i.u, align 4, !tbaa !41
  %i.ov = shl nuw i32 %i.oi, 8                    ; 2 uses
  store i32 %i.ov, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i408

bb.cy:                                            ; preds = %bb.ct
  %i.ow = sub i32 %i.nz, %i.oi                    ; 4 uses
  store i32 %i.ow, ptr %i.v, align 8, !tbaa !37
  %i.ox = sub nuw i32 %i.ny, %i.oi                ; 3 uses
  store i32 %i.ox, ptr %i.u, align 4, !tbaa !41
  %i.oy = lshr i16 %i.of, 5
  %i.oz = sub nuw i16 %i.of, %i.oy
  store i16 %i.oz, ptr %i.od, align 2, !tbaa !28
  %i.pa = icmp ult i32 %i.ow, 16777216
  br i1 %i.pa, label %bb.cz, label %getbit_from_table.exit.i408

bb.cz:                                            ; preds = %bb.cy
  %i.pb = shl i32 %i.ox, 8
  %.not.i51.i.i411 = icmp ult ptr %i.nx, %i.nw
  br i1 %.not.i51.i.i411, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i412

bb.db:                                            ; preds = %bb.cz
  %i.pc = load i8, ptr %i.nx, align 1, !tbaa !8
  %i.pd = zext i8 %i.pc to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 2 uses
  store ptr %i.pe, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i412

get_byte.exit53.i.i412:                           ; preds = %bb.db, %bb.da
  %i.pf = phi ptr [ %i.nx, %bb.da ], [ %i.pe, %bb.db ]
  %.0.i52.i.i413 = phi i32 [ 255, %bb.da ], [ %i.pd, %bb.db ]
  %i.pg = or disjoint i32 %.0.i52.i.i413, %i.pb   ; 2 uses
  store i32 %i.pg, ptr %i.u, align 4, !tbaa !41
  %i.ph = shl nuw i32 %i.ow, 8                    ; 2 uses
  store i32 %i.ph, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i408

getbit_from_table.exit.i408:                      ; preds = %get_byte.exit53.i.i412, %bb.cy, %get_byte.exit.i.i415, %bb.cu, %bb.cs
  %i.pi = phi ptr [ %i.nx, %bb.cs ], [ %i.nx, %bb.cu ], [ %i.ot, %get_byte.exit.i.i415 ], [ %i.pf, %get_byte.exit53.i.i412 ], [ %i.nx, %bb.cy ]
  %i.pj = phi i32 [ %i.ny, %bb.cs ], [ %i.ny, %bb.cu ], [ %i.ou, %get_byte.exit.i.i415 ], [ %i.pg, %get_byte.exit53.i.i412 ], [ %i.ox, %bb.cy ]
  %i.pk = phi i32 [ %i.nz, %bb.cs ], [ %i.oi, %bb.cu ], [ %i.ov, %get_byte.exit.i.i415 ], [ %i.ph, %get_byte.exit53.i.i412 ], [ %i.ow, %bb.cy ]
  %.0.i.i409 = phi i32 [ 255, %bb.cs ], [ 0, %bb.cu ], [ 0, %get_byte.exit.i.i415 ], [ 1, %get_byte.exit53.i.i412 ], [ 1, %bb.cy ]
  %i.pl = add i32 %.0.i.i409, %i.ob               ; 3 uses
  %.not.i410 = icmp eq i32 %i.oa, 0
  br i1 %.not.i410, label %get_n_bits_from_table.exit, label %bb.cr, !llvm.loop !43

get_n_bits_from_table.exit:                       ; preds = %getbit_from_table.exit.i408
  %i.pm = add i32 %i.pl, -64                      ; 3 uses
  %i.pn = icmp ugt i32 %i.pm, 3
  br i1 %i.pn, label %bb.dc, label %bb.fj

bb.dc:                                            ; preds = %get_n_bits_from_table.exit.thread, %get_n_bits_from_table.exit
  %i.po = phi i32 [ 16065, %get_n_bits_from_table.exit.thread ], [ %i.pm, %get_n_bits_from_table.exit ] ; 2 uses
  %.07.lcssa.i767 = phi i32 [ 16129, %get_n_bits_from_table.exit.thread ], [ %i.pl, %get_n_bits_from_table.exit ] ; 2 uses
  %i.pp = lshr i32 %i.po, 1                       ; 3 uses
  %i.pq = add nsw i32 %i.pp, -1                   ; 4 uses
  %i.pr = and i32 %.07.lcssa.i767, 1
  %i.ps = or disjoint i32 %i.pr, 2
  %i.pt = and i32 %i.pq, 255
  %i.pu = shl i32 %i.ps, %i.pt                    ; 3 uses
  %i.pv = icmp slt i32 %i.po, 14
  br i1 %i.pv, label %.preheader.i, label %.preheader.i431

.preheader.i:                                     ; preds = %bb.dc
  %reass.sub = sub i32 %i.pu, %.07.lcssa.i767
  %i.pw = add i32 %reass.sub, 751
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.px
  br i1 %switch.i.i404, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i
  store i32 1, ptr %i.t, align 8, !tbaa !33
  %i.pz = add nsw i32 %i.pp, -2
  %xtraiter = and i32 %i.pq, 7                    ; 3 uses
  %i.qa = icmp ult i32 %i.pz, 7
  br i1 %i.qa, label %getbit_from_table.exit.us.i430.epil.preheader, label %.preheader.split.us.i.new

.preheader.split.us.i.new:                        ; preds = %.preheader.split.us.i
  %unroll_iter = and i32 %i.pq, -8
  br label %getbit_from_table.exit.us.i430

getbit_from_table.exit.us.i430:                   ; preds = %getbit_from_table.exit.us.i430, %.preheader.split.us.i.new
  %.01319.us.i = phi i32 [ 0, %.preheader.split.us.i.new ], [ %i.qd, %getbit_from_table.exit.us.i430 ] ; 2 uses
  %.01418.us.i = phi i32 [ 0, %.preheader.split.us.i.new ], [ %i.qc, %getbit_from_table.exit.us.i430 ]
  %niter = phi i32 [ 0, %.preheader.split.us.i.new ], [ %niter.next.7, %getbit_from_table.exit.us.i430 ]
  %i.qb = shl i32 32767, %.01319.us.i
  %i.qc = or i32 %i.qb, %.01418.us.i              ; 3 uses
  %i.qd = add nuw nsw i32 %.01319.us.i, 8         ; 2 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %get_bb.exit.loopexit.unr-lcssa, label %getbit_from_table.exit.us.i430, !llvm.loop !44

.preheader.split.i:                               ; preds = %.preheader.i
  %i.qe = zext i32 %i.ns to i64
  %i.qf = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qe
  %.promoted534 = load i32, ptr %i.v, align 8
  %.promoted535 = load i32, ptr %i.u, align 4
  %.promoted536 = load ptr, ptr %9, align 8
  %i.qh = load ptr, ptr %i.z, align 8             ; 2 uses
  br label %bb.dd

bb.dd:                                            ; preds = %getbit_from_table.exit.i421, %.preheader.split.i
  %i.qi = phi ptr [ %.promoted536, %.preheader.split.i ], [ %i.rr, %getbit_from_table.exit.i421 ] ; 11 uses
  %i.qj = phi i32 [ %.promoted535, %.preheader.split.i ], [ %i.rs, %getbit_from_table.exit.i421 ] ; 5 uses
  %i.qk = phi i32 [ %.promoted534, %.preheader.split.i ], [ %i.rt, %getbit_from_table.exit.i421 ] ; 3 uses
  %.01319.i = phi i32 [ 0, %.preheader.split.i ], [ %i.ry, %getbit_from_table.exit.i421 ] ; 2 uses
  %.01418.i = phi i32 [ 0, %.preheader.split.i ], [ %i.rx, %getbit_from_table.exit.i421 ]
  %.01517.i = phi i32 [ 1, %.preheader.split.i ], [ %i.rv, %getbit_from_table.exit.i421 ] ; 2 uses
  %i.ql = zext i32 %.01517.i to i64
  %i.qm = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %i.ql ; 5 uses
  %.not49.i.i418 = icmp uge ptr %i.qm, %i.qf
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 2
  %.not50.i.i419 = icmp ule ptr %i.qn, %i.qg
  %or.cond55.i.i420 = select i1 %.not49.i.i418, i1 %.not50.i.i419, i1 false
  br i1 %or.cond55.i.i420, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i421

bb.df:                                            ; preds = %bb.dd
  %i.qo = load i16, ptr %i.qm, align 2, !tbaa !28 ; 4 uses
  %i.qp = zext i16 %i.qo to i32                   ; 2 uses
  %i.qq = lshr i32 %i.qk, 11
  %i.qr = mul i32 %i.qq, %i.qp                    ; 7 uses
  %i.qs = icmp ult i32 %i.qj, %i.qr
  br i1 %i.qs, label %bb.dg, label %bb.dk

bb.dg:                                            ; preds = %bb.df
  store i32 %i.qr, ptr %i.v, align 8, !tbaa !37
  %i.qt = sub nsw i32 2048, %i.qp
  %i.qu = lshr i32 %i.qt, 5
  %i.qv = trunc i32 %i.qu to i16
  %i.qw = add i16 %i.qo, %i.qv
  store i16 %i.qw, ptr %i.qm, align 2, !tbaa !28
  %i.qx = icmp ult i32 %i.qr, 16777216
  br i1 %i.qx, label %bb.dh, label %getbit_from_table.exit.i421

bb.dh:                                            ; preds = %bb.dg
  %i.qy = shl nuw i32 %i.qj, 8
  %.not.i.i.i427 = icmp ult ptr %i.qi, %i.qh
  br i1 %.not.i.i.i427, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i428

bb.dj:                                            ; preds = %bb.dh
  %i.qz = load i8, ptr %i.qi, align 1, !tbaa !8
  %i.ra = zext i8 %i.qz to i32
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 2 uses
  store ptr %i.rb, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i428

get_byte.exit.i.i428:                             ; preds = %bb.dj, %bb.di
  %i.rc = phi ptr [ %i.qi, %bb.di ], [ %i.rb, %bb.dj ]
  %.0.i.i.i429 = phi i32 [ 255, %bb.di ], [ %i.ra, %bb.dj ]
  %i.rd = or disjoint i32 %.0.i.i.i429, %i.qy     ; 2 uses
  store i32 %i.rd, ptr %i.u, align 4, !tbaa !41
  %i.re = shl nuw i32 %i.qr, 8                    ; 2 uses
  store i32 %i.re, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i421

bb.dk:                                            ; preds = %bb.df
  %i.rf = sub i32 %i.qk, %i.qr                    ; 4 uses
  store i32 %i.rf, ptr %i.v, align 8, !tbaa !37
  %i.rg = sub nuw i32 %i.qj, %i.qr                ; 3 uses
  store i32 %i.rg, ptr %i.u, align 4, !tbaa !41
  %i.rh = lshr i16 %i.qo, 5
  %i.ri = sub nuw i16 %i.qo, %i.rh
  store i16 %i.ri, ptr %i.qm, align 2, !tbaa !28
  %i.rj = icmp ult i32 %i.rf, 16777216
  br i1 %i.rj, label %bb.dl, label %getbit_from_table.exit.i421

bb.dl:                                            ; preds = %bb.dk
  %i.rk = shl i32 %i.rg, 8
  %.not.i51.i.i424 = icmp ult ptr %i.qi, %i.qh
  br i1 %.not.i51.i.i424, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i425

bb.dn:                                            ; preds = %bb.dl
  %i.rl = load i8, ptr %i.qi, align 1, !tbaa !8
  %i.rm = zext i8 %i.rl to i32
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qi, i64 1 ; 2 uses
  store ptr %i.rn, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i425

get_byte.exit53.i.i425:                           ; preds = %bb.dn, %bb.dm
  %i.ro = phi ptr [ %i.qi, %bb.dm ], [ %i.rn, %bb.dn ]
  %.0.i52.i.i426 = phi i32 [ 255, %bb.dm ], [ %i.rm, %bb.dn ]
  %i.rp = or disjoint i32 %.0.i52.i.i426, %i.rk   ; 2 uses
  store i32 %i.rp, ptr %i.u, align 4, !tbaa !41
  %i.rq = shl nuw i32 %i.rf, 8                    ; 2 uses
  store i32 %i.rq, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i421

getbit_from_table.exit.i421:                      ; preds = %get_byte.exit53.i.i425, %bb.dk, %get_byte.exit.i.i428, %bb.dg, %bb.de
  %i.rr = phi ptr [ %i.qi, %bb.de ], [ %i.qi, %bb.dg ], [ %i.rc, %get_byte.exit.i.i428 ], [ %i.ro, %get_byte.exit53.i.i425 ], [ %i.qi, %bb.dk ]
  %i.rs = phi i32 [ %i.qj, %bb.de ], [ %i.qj, %bb.dg ], [ %i.rd, %get_byte.exit.i.i428 ], [ %i.rp, %get_byte.exit53.i.i425 ], [ %i.rg, %bb.dk ]
  %i.rt = phi i32 [ %i.qk, %bb.de ], [ %i.qr, %bb.dg ], [ %i.re, %get_byte.exit.i.i428 ], [ %i.rq, %get_byte.exit53.i.i425 ], [ %i.rf, %bb.dk ]
  %.0.i.i422 = phi i32 [ 255, %bb.de ], [ 0, %bb.dg ], [ 0, %get_byte.exit.i.i428 ], [ 1, %get_byte.exit53.i.i425 ], [ 1, %bb.dk ] ; 2 uses
  %i.ru = shl i32 %.01517.i, 1
  %i.rv = add i32 %.0.i.i422, %i.ru
  %i.rw = shl i32 %.0.i.i422, %.01319.i
  %i.rx = or i32 %i.rw, %.01418.i                 ; 2 uses
  %i.ry = add nuw nsw i32 %.01319.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ry, %i.pq
  br i1 %exitcond.not.i, label %get_bb.exit, label %bb.dd, !llvm.loop !44

get_bb.exit.loopexit.unr-lcssa:                   ; preds = %getbit_from_table.exit.us.i430
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_bb.exit, label %getbit_from_table.exit.us.i430.epil.preheader

getbit_from_table.exit.us.i430.epil.preheader:    ; preds = %get_bb.exit.loopexit.unr-lcssa, %.preheader.split.us.i
  %.01319.us.i.epil.init = phi i32 [ 0, %.preheader.split.us.i ], [ %i.qd, %get_bb.exit.loopexit.unr-lcssa ]
  %.01418.us.i.epil.init = phi i32 [ 0, %.preheader.split.us.i ], [ %i.qc, %get_bb.exit.loopexit.unr-lcssa ]
  %lcmp.mod841 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod841)
  br label %getbit_from_table.exit.us.i430.epil

getbit_from_table.exit.us.i430.epil:              ; preds = %getbit_from_table.exit.us.i430.epil, %getbit_from_table.exit.us.i430.epil.preheader
  %.01319.us.i.epil = phi i32 [ %.01319.us.i.epil.init, %getbit_from_table.exit.us.i430.epil.preheader ], [ %i.sb, %getbit_from_table.exit.us.i430.epil ] ; 2 uses
  %.01418.us.i.epil = phi i32 [ %.01418.us.i.epil.init, %getbit_from_table.exit.us.i430.epil.preheader ], [ %i.sa, %getbit_from_table.exit.us.i430.epil ]
  %epil.iter = phi i32 [ 0, %getbit_from_table.exit.us.i430.epil.preheader ], [ %epil.iter.next, %getbit_from_table.exit.us.i430.epil ]
  %i.rz = shl i32 255, %.01319.us.i.epil
  %i.sa = or i32 %i.rz, %.01418.us.i.epil         ; 2 uses
  %i.sb = add nuw nsw i32 %.01319.us.i.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %get_bb.exit, label %getbit_from_table.exit.us.i430.epil, !llvm.loop !45

get_bb.exit:                                      ; preds = %getbit_from_table.exit.i421, %get_bb.exit.loopexit.unr-lcssa, %getbit_from_table.exit.us.i430.epil
  %.0.i423 = phi i32 [ %i.sa, %getbit_from_table.exit.us.i430.epil ], [ %i.qc, %get_bb.exit.loopexit.unr-lcssa ], [ %i.rx, %getbit_from_table.exit.i421 ]
  %i.sc = add i32 %.0.i423, %i.pu
  br label %bb.fj

.preheader.i431:                                  ; preds = %bb.dc
  %i.sd = add nsw i32 %i.pp, -5
  %.promoted.i = load i32, ptr %i.v, align 8, !tbaa !37
  %.promoted22.i = load i32, ptr %i.u, align 4, !tbaa !41
  %.promoted530 = load ptr, ptr %9, align 8
  %i.se = load ptr, ptr %i.z, align 8             ; 9 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.du, %.preheader.i431
  %i.sf = phi ptr [ %.promoted530, %.preheader.i431 ], [ %.promoted533, %bb.du ] ; 5 uses
  %.in.i = phi i32 [ %i.sd, %.preheader.i431 ], [ %i.si, %bb.du ]
  %.023.i = phi i32 [ 0, %.preheader.i431 ], [ %.1.i, %bb.du ]
  %i.sg = phi i32 [ %.promoted.i, %.preheader.i431 ], [ %.promoted531, %bb.du ] ; 2 uses
  %i.sh = phi i32 [ %.promoted22.i, %.preheader.i431 ], [ %.promoted532, %bb.du ] ; 3 uses
  %i.si = add nsw i32 %.in.i, -1                  ; 2 uses
  %i.sj = lshr i32 %i.sg, 1                       ; 5 uses
  store i32 %i.sj, ptr %i.v, align 8, !tbaa !37
  %i.sk = shl i32 %.023.i, 1                      ; 2 uses
  %.not21.i = icmp ult i32 %i.sh, %i.sj
  br i1 %.not21.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sl = sub nuw i32 %i.sh, %i.sj                ; 2 uses
  store i32 %i.sl, ptr %i.u, align 4, !tbaa !41
  %i.sm = or disjoint i32 %i.sk, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.sn = phi i32 [ %i.sl, %bb.dp ], [ %i.sh, %bb.do ] ; 2 uses
  %.1.i = phi i32 [ %i.sm, %bb.dp ], [ %i.sk, %bb.do ] ; 2 uses
  %i.so = icmp ult i32 %i.sg, 33554432
  br i1 %i.so, label %bb.dr, label %bb.du

bb.dr:                                            ; preds = %bb.dq
  %i.sp = shl nuw i32 %i.sj, 8                    ; 2 uses
  store i32 %i.sp, ptr %i.v, align 8, !tbaa !37
  %i.sq = shl i32 %i.sn, 8
  %.not.i.i433 = icmp ult ptr %i.sf, %i.se
  br i1 %.not.i.i433, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i434

bb.dt:                                            ; preds = %bb.dr
  %i.sr = load i8, ptr %i.sf, align 1, !tbaa !8
  %i.ss = zext i8 %i.sr to i32
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 1 ; 2 uses
  store ptr %i.st, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i434

get_byte.exit.i434:                               ; preds = %bb.dt, %bb.ds
  %i.su = phi ptr [ %i.sf, %bb.ds ], [ %i.st, %bb.dt ]
  %.0.i.i435 = phi i32 [ 255, %bb.ds ], [ %i.ss, %bb.dt ]
  %i.sv = or disjoint i32 %.0.i.i435, %i.sq       ; 2 uses
  store i32 %i.sv, ptr %i.u, align 4, !tbaa !41
  br label %bb.du

bb.du:                                            ; preds = %get_byte.exit.i434, %bb.dq
  %.promoted533 = phi ptr [ %i.su, %get_byte.exit.i434 ], [ %i.sf, %bb.dq ] ; 12 uses
  %.promoted532 = phi i32 [ %i.sv, %get_byte.exit.i434 ], [ %i.sn, %bb.dq ] ; 6 uses
  %.promoted531 = phi i32 [ %i.sp, %get_byte.exit.i434 ], [ %i.sj, %bb.dq ] ; 4 uses
  %.not.i432 = icmp eq i32 %i.si, 0
  br i1 %.not.i432, label %get_bitmap.exit, label %bb.do, !llvm.loop !47

get_bitmap.exit:                                  ; preds = %bb.du
  %i.sw = shl i32 %.1.i, 4
  %i.sx = add i32 %i.sw, %i.pu
  br i1 %switch.i.i404, label %.preheader.split.us.i455, label %.preheader.split.i438

.preheader.split.us.i455:                         ; preds = %get_bitmap.exit
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_bb.exit460

.preheader.split.i438:                            ; preds = %get_bitmap.exit
  %i.sy = zext i32 %i.ns to i64
  %i.sz = load ptr, ptr %i.aa, align 8, !tbaa !39 ; 5 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.sy ; 4 uses
  %.not49.i.i442 = icmp uge ptr %i.bn, %i.sz
  %.not50.i.i443 = icmp ule ptr %i.bo, %i.ta
  %or.cond55.i.i444 = select i1 %.not49.i.i442, i1 %.not50.i.i443, i1 false
  br i1 %or.cond55.i.i444, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.preheader.split.i438
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445

bb.dw:                                            ; preds = %.preheader.split.i438
  %i.tb = load i16, ptr %i.bn, align 2, !tbaa !28 ; 4 uses
  %i.tc = zext i16 %i.tb to i32                   ; 2 uses
  %i.td = lshr i32 %.promoted531, 11
  %i.te = mul i32 %i.td, %i.tc                    ; 7 uses
  %i.tf = icmp ult i32 %.promoted532, %i.te
  br i1 %i.tf, label %bb.dx, label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  store i32 %i.te, ptr %i.v, align 8, !tbaa !37
  %i.tg = sub nsw i32 2048, %i.tc
  %i.th = lshr i32 %i.tg, 5
  %i.ti = trunc i32 %i.th to i16
  %i.tj = add i16 %i.tb, %i.ti
  store i16 %i.tj, ptr %i.bn, align 2, !tbaa !28
  %i.tk = icmp ult i32 %i.te, 16777216
  br i1 %i.tk, label %bb.dy, label %getbit_from_table.exit.i445

bb.dy:                                            ; preds = %bb.dx
  %i.tl = shl nuw i32 %.promoted532, 8
  %.not.i.i.i452 = icmp ult ptr %.promoted533, %i.se
  br i1 %.not.i.i.i452, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453

bb.ea:                                            ; preds = %bb.dy
  %i.tm = load i8, ptr %.promoted533, align 1, !tbaa !8
  %i.tn = zext i8 %i.tm to i32
  %i.to = getelementptr inbounds nuw i8, ptr %.promoted533, i64 1 ; 2 uses
  store ptr %i.to, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453

get_byte.exit.i.i453:                             ; preds = %bb.ea, %bb.dz
  %i.tp = phi ptr [ %.promoted533, %bb.dz ], [ %i.to, %bb.ea ]
  %.0.i.i.i454 = phi i32 [ 255, %bb.dz ], [ %i.tn, %bb.ea ]
  %i.tq = or disjoint i32 %.0.i.i.i454, %i.tl     ; 2 uses
  store i32 %i.tq, ptr %i.u, align 4, !tbaa !41
  %i.tr = shl nuw i32 %i.te, 8                    ; 2 uses
  store i32 %i.tr, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445

bb.eb:                                            ; preds = %bb.dw
  %i.ts = sub i32 %.promoted531, %i.te            ; 4 uses
  store i32 %i.ts, ptr %i.v, align 8, !tbaa !37
  %i.tt = sub nuw i32 %.promoted532, %i.te        ; 3 uses
  store i32 %i.tt, ptr %i.u, align 4, !tbaa !41
  %i.tu = lshr i16 %i.tb, 5
  %i.tv = sub nuw i16 %i.tb, %i.tu
  store i16 %i.tv, ptr %i.bn, align 2, !tbaa !28
  %i.tw = icmp ult i32 %i.ts, 16777216
  br i1 %i.tw, label %bb.ec, label %getbit_from_table.exit.i445

bb.ec:                                            ; preds = %bb.eb
  %i.tx = shl i32 %i.tt, 8
  %.not.i51.i.i449 = icmp ult ptr %.promoted533, %i.se
  br i1 %.not.i51.i.i449, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450

bb.ee:                                            ; preds = %bb.ec
  %i.ty = load i8, ptr %.promoted533, align 1, !tbaa !8
  %i.tz = zext i8 %i.ty to i32
  %i.ua = getelementptr inbounds nuw i8, ptr %.promoted533, i64 1 ; 2 uses
  store ptr %i.ua, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450

get_byte.exit53.i.i450:                           ; preds = %bb.ee, %bb.ed
  %i.ub = phi ptr [ %.promoted533, %bb.ed ], [ %i.ua, %bb.ee ]
  %.0.i52.i.i451 = phi i32 [ 255, %bb.ed ], [ %i.tz, %bb.ee ]
  %i.uc = or disjoint i32 %.0.i52.i.i451, %i.tx   ; 2 uses
  store i32 %i.uc, ptr %i.u, align 4, !tbaa !41
  %i.ud = shl nuw i32 %i.ts, 8                    ; 2 uses
  store i32 %i.ud, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445

getbit_from_table.exit.i445:                      ; preds = %get_byte.exit53.i.i450, %bb.eb, %get_byte.exit.i.i453, %bb.dx, %bb.dv
  %i.ue = phi ptr [ %.promoted533, %bb.dv ], [ %.promoted533, %bb.dx ], [ %i.tp, %get_byte.exit.i.i453 ], [ %i.ub, %get_byte.exit53.i.i450 ], [ %.promoted533, %bb.eb ] ; 11 uses
  %i.uf = phi i32 [ %.promoted532, %bb.dv ], [ %.promoted532, %bb.dx ], [ %i.tq, %get_byte.exit.i.i453 ], [ %i.uc, %get_byte.exit53.i.i450 ], [ %i.tt, %bb.eb ] ; 5 uses
  %i.ug = phi i32 [ %.promoted531, %bb.dv ], [ %i.te, %bb.dx ], [ %i.tr, %get_byte.exit.i.i453 ], [ %i.ud, %get_byte.exit53.i.i450 ], [ %i.ts, %bb.eb ] ; 3 uses
  %.0.i.i446 = phi i32 [ 255, %bb.dv ], [ 0, %bb.dx ], [ 0, %get_byte.exit.i.i453 ], [ 1, %get_byte.exit53.i.i450 ], [ 1, %bb.eb ] ; 2 uses
  %i.uh = add nuw nsw i32 %.0.i.i446, 2           ; 2 uses
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ui ; 5 uses
  %.not49.i.i442.1 = icmp uge ptr %i.uj, %i.sz
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 2
  %.not50.i.i443.1 = icmp ule ptr %i.uk, %i.ta
  %or.cond55.i.i444.1 = select i1 %.not49.i.i442.1, i1 %.not50.i.i443.1, i1 false
  br i1 %or.cond55.i.i444.1, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %getbit_from_table.exit.i445
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445.1

bb.eg:                                            ; preds = %getbit_from_table.exit.i445
  %i.ul = load i16, ptr %i.uj, align 2, !tbaa !28 ; 4 uses
  %i.um = zext i16 %i.ul to i32                   ; 2 uses
  %i.un = lshr i32 %i.ug, 11
  %i.uo = mul i32 %i.un, %i.um                    ; 7 uses
  %i.up = icmp ult i32 %i.uf, %i.uo
  br i1 %i.up, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.uq = sub i32 %i.ug, %i.uo                    ; 4 uses
  store i32 %i.uq, ptr %i.v, align 8, !tbaa !37
  %i.ur = sub nuw i32 %i.uf, %i.uo                ; 3 uses
  store i32 %i.ur, ptr %i.u, align 4, !tbaa !41
  %i.us = lshr i16 %i.ul, 5
  %i.ut = sub nuw i16 %i.ul, %i.us
  store i16 %i.ut, ptr %i.uj, align 2, !tbaa !28
  %i.uu = icmp ult i32 %i.uq, 16777216
  br i1 %i.uu, label %bb.ei, label %getbit_from_table.exit.i445.1

bb.ei:                                            ; preds = %bb.eh
  %i.uv = shl i32 %i.ur, 8
  %.not.i51.i.i449.1 = icmp ult ptr %i.ue, %i.se
  br i1 %.not.i51.i.i449.1, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450.1

bb.ek:                                            ; preds = %bb.ei
  %i.uw = load i8, ptr %i.ue, align 1, !tbaa !8
  %i.ux = zext i8 %i.uw to i32
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ue, i64 1 ; 2 uses
  store ptr %i.uy, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450.1

get_byte.exit53.i.i450.1:                         ; preds = %bb.ek, %bb.ej
  %i.uz = phi ptr [ %i.ue, %bb.ej ], [ %i.uy, %bb.ek ]
  %.0.i52.i.i451.1 = phi i32 [ 255, %bb.ej ], [ %i.ux, %bb.ek ]
  %i.va = or disjoint i32 %.0.i52.i.i451.1, %i.uv ; 2 uses
  store i32 %i.va, ptr %i.u, align 4, !tbaa !41
  %i.vb = shl nuw i32 %i.uq, 8                    ; 2 uses
  store i32 %i.vb, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.1

bb.el:                                            ; preds = %bb.eg
  store i32 %i.uo, ptr %i.v, align 8, !tbaa !37
  %i.vc = sub nsw i32 2048, %i.um
  %i.vd = lshr i32 %i.vc, 5
  %i.ve = trunc i32 %i.vd to i16
  %i.vf = add i16 %i.ul, %i.ve
  store i16 %i.vf, ptr %i.uj, align 2, !tbaa !28
  %i.vg = icmp ult i32 %i.uo, 16777216
  br i1 %i.vg, label %bb.em, label %getbit_from_table.exit.i445.1

bb.em:                                            ; preds = %bb.el
  %i.vh = shl nuw i32 %i.uf, 8
  %.not.i.i.i452.1 = icmp ult ptr %i.ue, %i.se
  br i1 %.not.i.i.i452.1, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453.1

bb.eo:                                            ; preds = %bb.em
  %i.vi = load i8, ptr %i.ue, align 1, !tbaa !8
  %i.vj = zext i8 %i.vi to i32
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ue, i64 1 ; 2 uses
  store ptr %i.vk, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453.1

get_byte.exit.i.i453.1:                           ; preds = %bb.eo, %bb.en
  %i.vl = phi ptr [ %i.ue, %bb.en ], [ %i.vk, %bb.eo ]
  %.0.i.i.i454.1 = phi i32 [ 255, %bb.en ], [ %i.vj, %bb.eo ]
  %i.vm = or disjoint i32 %.0.i.i.i454.1, %i.vh   ; 2 uses
  store i32 %i.vm, ptr %i.u, align 4, !tbaa !41
  %i.vn = shl nuw i32 %i.uo, 8                    ; 2 uses
  store i32 %i.vn, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.1

getbit_from_table.exit.i445.1:                    ; preds = %get_byte.exit.i.i453.1, %bb.el, %get_byte.exit53.i.i450.1, %bb.eh, %bb.ef
  %i.vo = phi ptr [ %i.ue, %bb.ef ], [ %i.ue, %bb.el ], [ %i.vl, %get_byte.exit.i.i453.1 ], [ %i.uz, %get_byte.exit53.i.i450.1 ], [ %i.ue, %bb.eh ] ; 11 uses
  %i.vp = phi i32 [ %i.uf, %bb.ef ], [ %i.uf, %bb.el ], [ %i.vm, %get_byte.exit.i.i453.1 ], [ %i.va, %get_byte.exit53.i.i450.1 ], [ %i.ur, %bb.eh ] ; 5 uses
  %i.vq = phi i32 [ %i.ug, %bb.ef ], [ %i.uo, %bb.el ], [ %i.vn, %get_byte.exit.i.i453.1 ], [ %i.vb, %get_byte.exit53.i.i450.1 ], [ %i.uq, %bb.eh ] ; 3 uses
  %.0.i.i446.1 = phi i32 [ 255, %bb.ef ], [ 0, %bb.el ], [ 0, %get_byte.exit.i.i453.1 ], [ 1, %get_byte.exit53.i.i450.1 ], [ 1, %bb.eh ] ; 2 uses
  %i.vr = shl nuw nsw i32 %i.uh, 1
  %i.vs = add nuw nsw i32 %.0.i.i446.1, %i.vr     ; 2 uses
  %i.vt = shl nuw nsw i32 %.0.i.i446.1, 1
  %i.vu = zext nneg i32 %i.vs to i64
  %i.vv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.vu ; 5 uses
  %.not49.i.i442.2 = icmp uge ptr %i.vv, %i.sz
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 2
  %.not50.i.i443.2 = icmp ule ptr %i.vw, %i.ta
  %or.cond55.i.i444.2 = select i1 %.not49.i.i442.2, i1 %.not50.i.i443.2, i1 false
  br i1 %or.cond55.i.i444.2, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %getbit_from_table.exit.i445.1
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445.2

bb.eq:                                            ; preds = %getbit_from_table.exit.i445.1
  %i.vx = load i16, ptr %i.vv, align 2, !tbaa !28 ; 4 uses
  %i.vy = zext i16 %i.vx to i32                   ; 2 uses
  %i.vz = lshr i32 %i.vq, 11
  %i.wa = mul i32 %i.vz, %i.vy                    ; 7 uses
  %i.wb = icmp ult i32 %i.vp, %i.wa
  br i1 %i.wb, label %bb.ev, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.wc = sub i32 %i.vq, %i.wa                    ; 4 uses
  store i32 %i.wc, ptr %i.v, align 8, !tbaa !37
  %i.wd = sub nuw i32 %i.vp, %i.wa                ; 3 uses
  store i32 %i.wd, ptr %i.u, align 4, !tbaa !41
  %i.we = lshr i16 %i.vx, 5
  %i.wf = sub nuw i16 %i.vx, %i.we
  store i16 %i.wf, ptr %i.vv, align 2, !tbaa !28
  %i.wg = icmp ult i32 %i.wc, 16777216
  br i1 %i.wg, label %bb.es, label %getbit_from_table.exit.i445.2

bb.es:                                            ; preds = %bb.er
  %i.wh = shl i32 %i.wd, 8
  %.not.i51.i.i449.2 = icmp ult ptr %i.vo, %i.se
  br i1 %.not.i51.i.i449.2, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450.2

bb.eu:                                            ; preds = %bb.es
  %i.wi = load i8, ptr %i.vo, align 1, !tbaa !8
  %i.wj = zext i8 %i.wi to i32
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vo, i64 1 ; 2 uses
  store ptr %i.wk, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450.2

get_byte.exit53.i.i450.2:                         ; preds = %bb.eu, %bb.et
  %i.wl = phi ptr [ %i.vo, %bb.et ], [ %i.wk, %bb.eu ]
  %.0.i52.i.i451.2 = phi i32 [ 255, %bb.et ], [ %i.wj, %bb.eu ]
  %i.wm = or disjoint i32 %.0.i52.i.i451.2, %i.wh ; 2 uses
  store i32 %i.wm, ptr %i.u, align 4, !tbaa !41
  %i.wn = shl nuw i32 %i.wc, 8                    ; 2 uses
  store i32 %i.wn, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.2

bb.ev:                                            ; preds = %bb.eq
  store i32 %i.wa, ptr %i.v, align 8, !tbaa !37
  %i.wo = sub nsw i32 2048, %i.vy
  %i.wp = lshr i32 %i.wo, 5
  %i.wq = trunc i32 %i.wp to i16
  %i.wr = add i16 %i.vx, %i.wq
  store i16 %i.wr, ptr %i.vv, align 2, !tbaa !28
  %i.ws = icmp ult i32 %i.wa, 16777216
  br i1 %i.ws, label %bb.ew, label %getbit_from_table.exit.i445.2

bb.ew:                                            ; preds = %bb.ev
  %i.wt = shl nuw i32 %i.vp, 8
  %.not.i.i.i452.2 = icmp ult ptr %i.vo, %i.se
  br i1 %.not.i.i.i452.2, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453.2

bb.ey:                                            ; preds = %bb.ew
  %i.wu = load i8, ptr %i.vo, align 1, !tbaa !8
  %i.wv = zext i8 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vo, i64 1 ; 2 uses
  store ptr %i.ww, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453.2

get_byte.exit.i.i453.2:                           ; preds = %bb.ey, %bb.ex
  %i.wx = phi ptr [ %i.vo, %bb.ex ], [ %i.ww, %bb.ey ]
  %.0.i.i.i454.2 = phi i32 [ 255, %bb.ex ], [ %i.wv, %bb.ey ]
  %i.wy = or disjoint i32 %.0.i.i.i454.2, %i.wt   ; 2 uses
  store i32 %i.wy, ptr %i.u, align 4, !tbaa !41
  %i.wz = shl nuw i32 %i.wa, 8                    ; 2 uses
  store i32 %i.wz, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.2

getbit_from_table.exit.i445.2:                    ; preds = %get_byte.exit.i.i453.2, %bb.ev, %get_byte.exit53.i.i450.2, %bb.er, %bb.ep
  %i.xa = phi ptr [ %i.vo, %bb.ep ], [ %i.vo, %bb.ev ], [ %i.wx, %get_byte.exit.i.i453.2 ], [ %i.wl, %get_byte.exit53.i.i450.2 ], [ %i.vo, %bb.er ] ; 6 uses
  %i.xb = phi i32 [ %i.vp, %bb.ep ], [ %i.vp, %bb.ev ], [ %i.wy, %get_byte.exit.i.i453.2 ], [ %i.wm, %get_byte.exit53.i.i450.2 ], [ %i.wd, %bb.er ] ; 3 uses
  %i.xc = phi i32 [ %i.vq, %bb.ep ], [ %i.wa, %bb.ev ], [ %i.wz, %get_byte.exit.i.i453.2 ], [ %i.wn, %get_byte.exit53.i.i450.2 ], [ %i.wc, %bb.er ] ; 2 uses
  %.0.i.i446.2 = phi i32 [ 255, %bb.ep ], [ 0, %bb.ev ], [ 0, %get_byte.exit.i.i453.2 ], [ 1, %get_byte.exit53.i.i450.2 ], [ 1, %bb.er ] ; 2 uses
  %i.xd = shl nuw nsw i32 %i.vs, 1
  %i.xe = add nuw nsw i32 %.0.i.i446.2, %i.xd
  %i.xf = shl nuw nsw i32 %.0.i.i446.2, 2
  %i.xg = or i32 %i.vt, %i.xf
  %i.xh = zext nneg i32 %i.xe to i64
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.xh ; 5 uses
  %.not49.i.i442.3 = icmp uge ptr %i.xi, %i.sz
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 2
  %.not50.i.i443.3 = icmp ule ptr %i.xj, %i.ta
  %or.cond55.i.i444.3 = select i1 %.not49.i.i442.3, i1 %.not50.i.i443.3, i1 false
  br i1 %or.cond55.i.i444.3, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %getbit_from_table.exit.i445.2
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %getbit_from_table.exit.i445.3

bb.fa:                                            ; preds = %getbit_from_table.exit.i445.2
  %i.xk = load i16, ptr %i.xi, align 2, !tbaa !28 ; 4 uses
  %i.xl = zext i16 %i.xk to i32                   ; 2 uses
  %i.xm = lshr i32 %i.xc, 11
  %i.xn = mul i32 %i.xm, %i.xl                    ; 6 uses
  %i.xo = icmp ult i32 %i.xb, %i.xn
  br i1 %i.xo, label %bb.ff, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.xp = sub i32 %i.xc, %i.xn                    ; 3 uses
  store i32 %i.xp, ptr %i.v, align 8, !tbaa !37
  %i.xq = sub nuw i32 %i.xb, %i.xn                ; 2 uses
  store i32 %i.xq, ptr %i.u, align 4, !tbaa !41
  %i.xr = lshr i16 %i.xk, 5
  %i.xs = sub nuw i16 %i.xk, %i.xr
  store i16 %i.xs, ptr %i.xi, align 2, !tbaa !28
  %i.xt = icmp ult i32 %i.xp, 16777216
  br i1 %i.xt, label %bb.fc, label %getbit_from_table.exit.i445.3

bb.fc:                                            ; preds = %bb.fb
  %i.xu = shl i32 %i.xq, 8
  %.not.i51.i.i449.3 = icmp ult ptr %i.xa, %i.se
  br i1 %.not.i51.i.i449.3, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit53.i.i450.3

bb.fe:                                            ; preds = %bb.fc
  %i.xv = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.xw = zext i8 %i.xv to i32
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store ptr %i.xx, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit53.i.i450.3

get_byte.exit53.i.i450.3:                         ; preds = %bb.fe, %bb.fd
  %.0.i52.i.i451.3 = phi i32 [ 255, %bb.fd ], [ %i.xw, %bb.fe ]
  %i.xy = or disjoint i32 %.0.i52.i.i451.3, %i.xu
  store i32 %i.xy, ptr %i.u, align 4, !tbaa !41
  %i.xz = shl nuw i32 %i.xp, 8
  store i32 %i.xz, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.3

bb.ff:                                            ; preds = %bb.fa
  store i32 %i.xn, ptr %i.v, align 8, !tbaa !37
  %i.ya = sub nsw i32 2048, %i.xl
  %i.yb = lshr i32 %i.ya, 5
  %i.yc = trunc i32 %i.yb to i16
  %i.yd = add i16 %i.xk, %i.yc
  store i16 %i.yd, ptr %i.xi, align 2, !tbaa !28
  %i.ye = icmp ult i32 %i.xn, 16777216
  br i1 %i.ye, label %bb.fg, label %getbit_from_table.exit.i445.3

bb.fg:                                            ; preds = %bb.ff
  %i.yf = shl nuw i32 %i.xb, 8
  %.not.i.i.i452.3 = icmp ult ptr %i.xa, %i.se
  br i1 %.not.i.i.i452.3, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  store i32 1, ptr %i.t, align 8, !tbaa !33
  br label %get_byte.exit.i.i453.3

bb.fi:                                            ; preds = %bb.fg
  %i.yg = load i8, ptr %i.xa, align 1, !tbaa !8
  %i.yh = zext i8 %i.yg to i32
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xa, i64 1
  store ptr %i.yi, ptr %9, align 8, !tbaa !36
  br label %get_byte.exit.i.i453.3

get_byte.exit.i.i453.3:                           ; preds = %bb.fi, %bb.fh
  %.0.i.i.i454.3 = phi i32 [ 255, %bb.fh ], [ %i.yh, %bb.fi ]
  %i.yj = or disjoint i32 %.0.i.i.i454.3, %i.yf
  store i32 %i.yj, ptr %i.u, align 4, !tbaa !41
  %i.yk = shl nuw i32 %i.xn, 8
  store i32 %i.yk, ptr %i.v, align 8, !tbaa !37
  br label %getbit_from_table.exit.i445.3

getbit_from_table.exit.i445.3:                    ; preds = %get_byte.exit.i.i453.3, %bb.ff, %get_byte.exit53.i.i450.3, %bb.fb, %bb.ez
  %.0.i.i446.3 = phi i32 [ 2040, %bb.ez ], [ 0, %bb.ff ], [ 0, %get_byte.exit.i.i453.3 ], [ 8, %get_byte.exit53.i.i450.3 ], [ 8, %bb.fb ]
  %i.yl = or i32 %i.xg, %.0.i.i446.3
  %i.ym = or i32 %i.yl, %.0.i.i446
  br label %get_bb.exit460

get_bb.exit460:                                   ; preds = %getbit_from_table.exit.i445.3, %.preheader.split.us.i455
  %.0.i448 = phi i32 [ 2047, %.preheader.split.us.i455 ], [ %i.ym, %getbit_from_table.exit.i445.3 ]
  %i.yn = add i32 %i.sx, %.0.i448
  br label %bb.fj

bb.fj:                                            ; preds = %get_n_bits_from_table.exit, %get_bb.exit, %get_bb.exit460
  %.1 = phi i32 [ %i.yn, %get_bb.exit460 ], [ %i.sc, %get_bb.exit ], [ %i.pm, %get_n_bits_from_table.exit ]
  %i.yo = add i32 %.1, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.bw, %getbit_from_table.exit391, %bb.fj
  %.1263 = phi i32 [ %.1240, %getbit_from_table.exit391 ], [ %.0262548, %bb.bw ], [ %i.yo, %bb.fj ] ; 8 uses
  %.1260 = phi i32 [ %.0262548, %getbit_from_table.exit391 ], [ %.0259552, %bb.bw ], [ %.0262548, %bb.fj ]
  %.2257 = phi i32 [ %.1256, %getbit_from_table.exit391 ], [ %.0255555, %bb.bw ], [ %.0259552, %bb.fj ]
  %.3254 = phi i32 [ %.2253, %getbit_from_table.exit391 ], [ %.0251558, %bb.bw ], [ %.0255555, %bb.fj ]
  %.2249 = phi i32 [ %i.nj, %getbit_from_table.exit391 ], [ %i.ko, %bb.bw ], [ %i.nl, %bb.fj ]
  %.0241 = phi i32 [ %i.nh, %getbit_from_table.exit391 ], [ %i.km, %bb.bw ], [ %i.nm, %bb.fj ] ; 2 uses
  %.not331 = icmp eq i32 %.1263, 0
  br i1 %.not331, label %.thread490, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.yp = icmp ugt i32 %.1263, %.0265547
  br i1 %i.yp, label %.thread490, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.yq = add i32 %.0241, 2                       ; 7 uses
  %i.yr = add i32 %.0241, 1                       ; 3 uses
  %i.ys = icmp uge i32 %i.yr, %8
  %or.cond = select i1 %.not325, i1 true, i1 %i.ys
  %i.yt = zext i32 %.0265547 to i64               ; 3 uses
  %i.yu = zext i32 %i.yq to i64
  %i.yv = add nuw nsw i64 %i.yu, %i.yt
  %.not334 = icmp samesign ugt i64 %i.yv, %i.bm
  %or.cond590 = select i1 %or.cond, i1 true, i1 %.not334
  br i1 %or.cond590, label %bb.fn, label %iter.check807

iter.check807:                                    ; preds = %bb.fm
  %i.yw = add i32 %.0265547, 1
  %umax791 = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.yw)
  %i.yx = xor i32 %.0265547, -1
  %i.yy = add i32 %umax791, %i.yx
  %umin792 = tail call i32 @llvm.umin.i32(i32 %i.yy, i32 %i.yr)
  %i.yz = add i32 %umin792, 1                     ; 7 uses
  %min.iters.check = icmp ult i32 %i.yz, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check807
  %i.za = add i32 %.0265547, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %8, i32 %i.za)
  %i.zb = xor i32 %.0265547, -1
  %i.zc = add i32 %umax, %i.zb
  %umin = tail call i32 @llvm.umin.i32(i32 %i.zc, i32 %i.yr) ; 2 uses
  %i.zd = xor i32 %.0265547, -1
  %i.ze = icmp ugt i32 %umin, %i.zd
  %i.zf = xor i32 %.0265547, -1
  %i.zg = add i32 %.1263, %i.zf
  %i.zh = icmp ult i32 %i.zg, %umin
  %i.zi = or i1 %i.ze, %i.zh
  br i1 %i.zi, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.zj = sub i32 %.0265547, %.1263
  %i.zk = zext i32 %i.zj to i64
  %i.zl = sub nsw i64 %i.zk, %i.yt
  %diff.check = icmp ugt i64 %i.zl, -32
  br i1 %diff.check, label %.preheader.preheader, label %vector.main.loop.iter.check793

vector.main.loop.iter.check793:                   ; preds = %vector.memcheck
  %min.iters.check794 = icmp ult i32 %i.yz, 32
  br i1 %min.iters.check794, label %vec.epilog.ph811, label %vector.ph795

vector.ph795:                                     ; preds = %vector.main.loop.iter.check793
  %i.zm = and i32 %i.yz, 28
  %n.vec796 = and i32 %i.yz, -32                  ; 5 uses
  %i.zn = add i32 %.0265547, %n.vec796            ; 3 uses
  %i.zo = sub i32 %i.yq, %n.vec796
  %i.zp = add i32 %.0265547, 15
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph795
  %index800 = phi i32 [ 0, %vector.ph795 ], [ %index.next802, %vector.body799 ] ; 2 uses
  %i.zq = phi i32 [ %i.zp, %vector.ph795 ], [ %i.zz, %vector.body799 ] ; 2 uses
  %i.zr = add i32 %.0265547, %index800            ; 2 uses
  %i.zs = sub i32 %i.zr, %.1263
  %i.zt = zext i32 %i.zs to i64
  %i.zu = getelementptr inbounds nuw i8, ptr %7, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %wide.load = load <16 x i8>, ptr %i.zu, align 1, !tbaa !8
  %wide.load801 = load <16 x i8>, ptr %i.zv, align 1, !tbaa !8 ; 2 uses
  %i.zw = zext i32 %i.zr to i64
  %i.zx = getelementptr inbounds nuw i8, ptr %7, i64 %i.zw ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  store <16 x i8> %wide.load, ptr %i.zx, align 1, !tbaa !8
  store <16 x i8> %wide.load801, ptr %i.zy, align 1, !tbaa !8
  %index.next802 = add nuw i32 %index800, 32      ; 2 uses
  %i.zz = add i32 %i.zq, 32
  %i.aaa = icmp eq i32 %index.next802, %n.vec796
  br i1 %i.aaa, label %middle.block803, label %vector.body799, !llvm.loop !48

middle.block803:                                  ; preds = %vector.body799
  %i.aab = extractelement <16 x i8> %wide.load801, i64 15
  %i.aac = add i32 %i.zq, 17
  %i.aad = icmp ult i32 %i.aac, %8
  %cmp.n804 = icmp eq i32 %i.yz, %n.vec796
  br i1 %cmp.n804, label %.loopexit, label %vec.epilog.iter.check809

vec.epilog.iter.check809:                         ; preds = %middle.block803
  %min.epilog.iters.check810 = icmp eq i32 %i.zm, 0
  br i1 %min.epilog.iters.check810, label %.preheader.preheader, label %vec.epilog.ph811, !prof !49

vec.epilog.ph811:                                 ; preds = %vector.main.loop.iter.check793, %vec.epilog.iter.check809
  %vec.epilog.resume.val805 = phi i32 [ %n.vec796, %vec.epilog.iter.check809 ], [ 0, %vector.main.loop.iter.check793 ]
  %bc.resume.val = phi i32 [ %i.zn, %vec.epilog.iter.check809 ], [ %.0265547, %vector.main.loop.iter.check793 ]
  %n.vec812 = and i32 %i.yz, -4                   ; 4 uses
  %i.aae = add i32 %.0265547, %n.vec812           ; 2 uses
  %i.aaf = sub i32 %i.yq, %n.vec812
  %i.aag = add i32 %bc.resume.val, 3
  br label %vec.epilog.vector.body818

vec.epilog.vector.body818:                        ; preds = %vec.epilog.vector.body818, %vec.epilog.ph811
  %index819 = phi i32 [ %vec.epilog.resume.val805, %vec.epilog.ph811 ], [ %index.next822, %vec.epilog.vector.body818 ] ; 2 uses
  %i.aah = phi i32 [ %i.aag, %vec.epilog.ph811 ], [ %i.aao, %vec.epilog.vector.body818 ] ; 2 uses
  %i.aai = add i32 %.0265547, %index819           ; 2 uses
  %i.aaj = sub i32 %i.aai, %.1263
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %7, i64 %i.aak
  %wide.load821 = load <4 x i8>, ptr %i.aal, align 1, !tbaa !8 ; 2 uses
  %i.aam = zext i32 %i.aai to i64
  %i.aan = getelementptr inbounds nuw i8, ptr %7, i64 %i.aam
  store <4 x i8> %wide.load821, ptr %i.aan, align 1, !tbaa !8
  %index.next822 = add nuw i32 %index819, 4       ; 2 uses
  %i.aao = add i32 %i.aah, 4
  %i.aap = icmp eq i32 %index.next822, %n.vec812
  br i1 %i.aap, label %vec.epilog.middle.block824, label %vec.epilog.vector.body818, !llvm.loop !50

vec.epilog.middle.block824:                       ; preds = %vec.epilog.vector.body818
  %i.aaq = extractelement <4 x i8> %wide.load821, i64 3
  %i.aar = add i32 %i.aah, 1
  %i.aas = icmp ult i32 %i.aar, %8
  %cmp.n825 = icmp eq i32 %i.yz, %n.vec812
  br i1 %cmp.n825, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %vector.scevcheck, %iter.check807, %vec.epilog.iter.check809, %vec.epilog.middle.block824
  %.2267.ph = phi i32 [ %.0265547, %iter.check807 ], [ %.0265547, %vector.scevcheck ], [ %.0265547, %vector.memcheck ], [ %i.zn, %vec.epilog.iter.check809 ], [ %i.aae, %vec.epilog.middle.block824 ]
  %.1242.ph = phi i32 [ %i.yq, %iter.check807 ], [ %i.yq, %vector.scevcheck ], [ %i.yq, %vector.memcheck ], [ %i.zo, %vec.epilog.iter.check809 ], [ %i.aaf, %vec.epilog.middle.block824 ]
  br label %.preheader

bb.fn:                                            ; preds = %bb.fm
  %i.aat = getelementptr inbounds nuw i8, ptr %7, i64 %i.yt
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %8, ptr noundef %i.aat, i32 noundef %i.yq) #8
  br label %.thread490

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.2267 = phi i32 [ %i.aba, %.preheader ], [ %.2267.ph, %.preheader.preheader ] ; 3 uses
  %.1242 = phi i32 [ %i.abb, %.preheader ], [ %.1242.ph, %.preheader.preheader ]
  %i.aau = sub i32 %.2267, %.1263
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = getelementptr inbounds nuw i8, ptr %7, i64 %i.aav
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !8 ; 2 uses
  %i.aay = zext i32 %.2267 to i64
  %i.aaz = getelementptr inbounds nuw i8, ptr %7, i64 %i.aay
  store i8 %i.aax, ptr %i.aaz, align 1, !tbaa !8
  %i.aba = add i32 %.2267, 1                      ; 3 uses
  %i.abb = add i32 %.1242, -1                     ; 2 uses
  %i.abc = icmp ne i32 %i.abb, 0
  %i.abd = icmp ult i32 %i.aba, %8                ; 2 uses
  %i.abe = and i1 %i.abd, %i.abc
  br i1 %i.abe, label %.preheader, label %.loopexit, !llvm.loop !51

.loopexit:                                        ; preds = %.preheader, %vec.epilog.middle.block824, %middle.block803
  %.lcssa783 = phi i8 [ %i.aaq, %vec.epilog.middle.block824 ], [ %i.aab, %middle.block803 ], [ %i.aax, %.preheader ]
  %.lcssa782 = phi i32 [ %i.aae, %vec.epilog.middle.block824 ], [ %i.zn, %middle.block803 ], [ %i.aba, %.preheader ]
  %.lcssa781 = phi i1 [ %i.aas, %vec.epilog.middle.block824 ], [ %i.aad, %middle.block803 ], [ %i.abd, %.preheader ]
  %i.abf = zext i8 %.lcssa783 to i32
  br i1 %.lcssa781, label %select.unfold, label %.thread490

select.unfold:                                    ; preds = %bb.an, %bb.bv, %.loopexit
  %.3282 = phi i32 [ %.0279541, %.loopexit ], [ %.0279541, %bb.bv ], [ %.1280466, %bb.an ]
  %.3272 = phi i32 [ 1, %.loopexit ], [ 1, %bb.bv ], [ 0, %bb.an ]
  %.3268 = phi i32 [ %.lcssa782, %.loopexit ], [ %i.kl, %bb.bv ], [ %i.fx, %bb.an ] ; 2 uses
  %.2264 = phi i32 [ %.1263, %.loopexit ], [ %.0262548, %bb.bv ], [ %.0262548, %bb.an ]
  %.2261 = phi i32 [ %.1260, %.loopexit ], [ %.0259552, %bb.bv ], [ %.0259552, %bb.an ]
  %.3258 = phi i32 [ %.2257, %.loopexit ], [ %.0255555, %bb.bv ], [ %.0255555, %bb.an ]
  %.4 = phi i32 [ %.3254, %.loopexit ], [ %.0251558, %bb.bv ], [ %.0251558, %bb.an ]
  %.3250 = phi i32 [ %.2249, %.loopexit ], [ %i.kd, %bb.bv ], [ %.1248, %bb.an ]
  %.3 = phi i32 [ %i.abf, %.loopexit ], [ %i.ki, %bb.bv ], [ %.1246467, %bb.an ]
  %i.abg = and i32 %.3268, %i.h
  %i.abh = load i32, ptr %i.t, align 8, !tbaa !33
  %.not311 = icmp eq i32 %i.abh, 0
  br i1 %.not311, label %bb.j, label %.thread490

.thread490:                                       ; preds = %select.unfold, %bb.fk, %.loopexit, %bb.fl, %bb.bu, %bb.bv, %bb.bt, %getbit_from_table.exit379, %bb.am, %bb.an, %bb.al, %bb.y, %bb.z, %get_byte.exit.3, %bb.fn, %get_byte.exit.4, %bb.a
  %.3278 = phi i32 [ 1, %get_byte.exit.4 ], [ 2, %bb.a ], [ 1, %bb.fn ], [ 1, %get_byte.exit.3 ], [ 1, %bb.z ], [ 1, %select.unfold ], [ 0, %bb.fk ], [ 0, %.loopexit ], [ 1, %bb.fl ], [ 1, %bb.bu ], [ 0, %bb.bv ], [ 1, %bb.bt ], [ 1, %getbit_from_table.exit379 ], [ 1, %bb.am ], [ 0, %bb.an ], [ 1, %bb.al ], [ 1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  ret i32 %.3278
}

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @get_byte(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %.not = icmp ult ptr %i.a, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !8
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 255, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @getbit_from_table(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch = icmp ult i32 %i.b, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not49 = icmp uge ptr %0, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %.not50 = icmp ule ptr %i.f, %i.g
  %or.cond55 = select i1 %.not49, i1 %.not50, i1 false
  br i1 %or.cond55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = load i16, ptr %0, align 2, !tbaa !28     ; 4 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %i.m = lshr i32 %i.l, 11
  %i.n = mul i32 %i.m, %i.j                       ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 3 uses
  %i.q = icmp ult i32 %i.p, %i.n
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.n, ptr %i.k, align 8, !tbaa !37
  %i.r = sub nsw i32 2048, %i.j
  %i.s = lshr i32 %i.r, 5
  %i.t = trunc i32 %i.s to i16
  %i.u = add i16 %i.i, %i.t
  store i16 %i.u, ptr %0, align 2, !tbaa !28
  %i.v = icmp ult i32 %i.n, 16777216
  br i1 %i.v, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw i32 %i.p, 8
  %i.x = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.x, %i.z
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.aa, align 8, !tbaa !33
  br label %get_byte.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.x, align 1, !tbaa !8
  %i.ac = zext i8 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  store ptr %i.ad, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ 255, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = or disjoint i32 %.0.i, %i.w
  store i32 %i.ae, ptr %i.o, align 4, !tbaa !41
  %i.af = shl nuw i32 %i.n, 8
  store i32 %i.af, ptr %i.k, align 8, !tbaa !37
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ag = sub i32 %i.l, %i.n                      ; 3 uses
  store i32 %i.ag, ptr %i.k, align 8, !tbaa !37
  %i.ah = sub nuw i32 %i.p, %i.n                  ; 2 uses
  store i32 %i.ah, ptr %i.o, align 4, !tbaa !41
  %i.ai = lshr i16 %i.i, 5
  %i.aj = sub nuw i16 %i.i, %i.ai
  store i16 %i.aj, ptr %0, align 2, !tbaa !28
  %i.ak = icmp ult i32 %i.ag, 16777216
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = shl i32 %i.ah, 8
  %i.am = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !38
  %.not.i51 = icmp ult ptr %i.am, %i.ao
  br i1 %.not.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !33
  br label %get_byte.exit53

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.as, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53

get_byte.exit53:                                  ; preds = %bb.k, %bb.l
  %.0.i52 = phi i32 [ 255, %bb.k ], [ %i.ar, %bb.l ]
  %i.at = or disjoint i32 %.0.i52, %i.al
  store i32 %i.at, ptr %i.o, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.ag, 8
  store i32 %i.au, ptr %i.k, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %get_byte.exit53, %bb.e, %get_byte.exit, %bb.c
  %.0 = phi i32 [ 255, %bb.c ], [ 0, %bb.e ], [ 0, %get_byte.exit ], [ 1, %get_byte.exit53 ], [ 1, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @get_100_bits_from_tablesize(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch.i = icmp ult i32 %i.b, 2                ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.i = and i32 %2, 255
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.039 = phi i32 [ 1, %bb.a ], [ %.2, %.loopexit ] ; 3 uses
  %.02338 = phi i32 [ %i.i, %bb.a ], [ %i.k, %.loopexit ] ; 2 uses
  %i.j = shl nuw nsw i32 %.02338, 1
  %i.k = and i32 %i.j, 254
  %i.l = lshr i32 %.02338, 7                      ; 2 uses
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = add nuw nsw i32 %i.m, 256
  %i.o = or disjoint i32 %i.n, %.039
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p ; 5 uses
  br i1 %switch.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not49.i = icmp uge ptr %i.q, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.c
  %.not50.i = icmp ule ptr %i.s, %i.t
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %getbit_from_table.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i16, ptr %i.q, align 2, !tbaa !28   ; 4 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = load i32, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.x = lshr i32 %i.w, 11
  %i.y = mul i32 %i.x, %i.v                       ; 6 uses
  %i.z = load i32, ptr %i.f, align 4, !tbaa !41   ; 3 uses
  %i.aa = icmp ult i32 %i.z, %i.y
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  store i32 %i.y, ptr %i.e, align 8, !tbaa !37
  %i.ab = sub nsw i32 2048, %i.v
  %i.ac = lshr i32 %i.ab, 5
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = add i16 %i.u, %i.ad
  store i16 %i.ae, ptr %i.q, align 2, !tbaa !28
  %i.af = icmp ult i32 %i.y, 16777216
  br i1 %i.af, label %bb.g, label %getbit_from_table.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = shl nuw i32 %i.z, 8
  %i.ah = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.ah, %i.ai
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.al, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ 255, %bb.h ], [ %i.ak, %bb.i ]
  %i.am = or disjoint i32 %.0.i.i, %i.ag
  store i32 %i.am, ptr %i.f, align 4, !tbaa !41
  %i.an = shl nuw i32 %i.y, 8
  store i32 %i.an, ptr %i.e, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.j:                                             ; preds = %bb.e
  %i.ao = sub i32 %i.w, %i.y                      ; 3 uses
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !37
  %i.ap = sub nuw i32 %i.z, %i.y                  ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !41
  %i.aq = lshr i16 %i.u, 5
  %i.ar = sub nuw i16 %i.u, %i.aq
  store i16 %i.ar, ptr %i.q, align 2, !tbaa !28
  %i.as = icmp ult i32 %i.ao, 16777216
  br i1 %i.as, label %bb.k, label %getbit_from_table.exit

bb.k:                                             ; preds = %bb.j
  %i.at = shl i32 %i.ap, 8
  %i.au = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.au, %i.av
  br i1 %.not.i51.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.m:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !8
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.ay, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.m, %bb.l
  %.0.i52.i = phi i32 [ 255, %bb.l ], [ %i.ax, %bb.m ]
  %i.az = or disjoint i32 %.0.i52.i, %i.at
  store i32 %i.az, ptr %i.f, align 4, !tbaa !41
  %i.ba = shl nuw i32 %i.ao, 8
  store i32 %i.ba, ptr %i.e, align 8, !tbaa !37
  br label %getbit_from_table.exit

getbit_from_table.exit:                           ; preds = %bb.d, %bb.f, %get_byte.exit.i, %bb.j, %get_byte.exit53.i
  %.0.i = phi i32 [ 255, %bb.d ], [ 0, %bb.f ], [ 0, %get_byte.exit.i ], [ 1, %get_byte.exit53.i ], [ 1, %bb.j ] ; 2 uses
  %i.bb = shl nuw nsw i32 %.039, 1
  %i.bc = or i32 %.0.i, %i.bb                     ; 3 uses
  %i.bd = icmp ne i32 %i.l, %.0.i
  %i.be = icmp samesign ult i32 %.039, 128
  %or.cond = and i1 %i.be, %i.bd
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %getbit_from_table.exit
  br i1 %switch.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %getbit_from_table.exit37.us

getbit_from_table.exit37.us:                      ; preds = %getbit_from_table.exit37.us, %.preheader.split.us
  %.1.us = phi i32 [ %i.bg, %getbit_from_table.exit37.us ], [ %i.bc, %.preheader.split.us ]
  %i.bf = shl i32 %.1.us, 1                       ; 2 uses
  %i.bg = or i32 %i.bf, 255                       ; 2 uses
  %.old1.us = icmp ult i32 %i.bf, 256
  br i1 %.old1.us, label %getbit_from_table.exit37.us, label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.c
  br label %bb.n

bb.n:                                             ; preds = %.preheader.split, %getbit_from_table.exit37
  %.1 = phi i32 [ %i.cu, %getbit_from_table.exit37 ], [ %i.bc, %.preheader.split ] ; 2 uses
  %i.bj = shl i32 %.1, 1                          ; 2 uses
  %i.bk = zext i32 %.1 to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bk ; 5 uses
  %.not49.i27 = icmp uge ptr %i.bl, %i.bh
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %.not50.i28 = icmp ule ptr %i.bm, %i.bi
  %or.cond55.i29 = select i1 %.not49.i27, i1 %.not50.i28, i1 false
  br i1 %or.cond55.i29, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %getbit_from_table.exit37

bb.p:                                             ; preds = %bb.n
  %i.bn = load i16, ptr %i.bl, align 2, !tbaa !28 ; 4 uses
  %i.bo = zext i16 %i.bn to i32                   ; 2 uses
  %i.bp = load i32, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.bq = lshr i32 %i.bp, 11
  %i.br = mul i32 %i.bq, %i.bo                    ; 6 uses
  %i.bs = load i32, ptr %i.f, align 4, !tbaa !41  ; 3 uses
  %i.bt = icmp ult i32 %i.bs, %i.br
  br i1 %i.bt, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  store i32 %i.br, ptr %i.e, align 8, !tbaa !37
  %i.bu = sub nsw i32 2048, %i.bo
  %i.bv = lshr i32 %i.bu, 5
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = add i16 %i.bn, %i.bw
  store i16 %i.bx, ptr %i.bl, align 2, !tbaa !28
  %i.by = icmp ult i32 %i.br, 16777216
  br i1 %i.by, label %bb.r, label %getbit_from_table.exit37

bb.r:                                             ; preds = %bb.q
  %i.bz = shl nuw i32 %i.bs, 8
  %i.ca = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.cb = load ptr, ptr %i.g, align 8, !tbaa !38
  %.not.i.i34 = icmp ult ptr %i.ca, %i.cb
  br i1 %.not.i.i34, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %get_byte.exit.i35

bb.t:                                             ; preds = %bb.r
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.ce, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit.i35

get_byte.exit.i35:                                ; preds = %bb.t, %bb.s
  %.0.i.i36 = phi i32 [ 255, %bb.s ], [ %i.cd, %bb.t ]
  %i.cf = or disjoint i32 %.0.i.i36, %i.bz
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !41
  %i.cg = shl nuw i32 %i.br, 8
  store i32 %i.cg, ptr %i.e, align 8, !tbaa !37
  br label %getbit_from_table.exit37

bb.u:                                             ; preds = %bb.p
  %i.ch = sub i32 %i.bp, %i.br                    ; 3 uses
  store i32 %i.ch, ptr %i.e, align 8, !tbaa !37
  %i.ci = sub nuw i32 %i.bs, %i.br                ; 2 uses
  store i32 %i.ci, ptr %i.f, align 4, !tbaa !41
  %i.cj = lshr i16 %i.bn, 5
  %i.ck = sub nuw i16 %i.bn, %i.cj
  store i16 %i.ck, ptr %i.bl, align 2, !tbaa !28
  %i.cl = icmp ult i32 %i.ch, 16777216
  br i1 %i.cl, label %bb.v, label %getbit_from_table.exit37

bb.v:                                             ; preds = %bb.u
  %i.cm = shl i32 %i.ci, 8
  %i.cn = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !38
  %.not.i51.i31 = icmp ult ptr %i.cn, %i.co
  br i1 %.not.i51.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 1, ptr %i.h, align 8, !tbaa !33
  br label %get_byte.exit53.i32

bb.x:                                             ; preds = %bb.v
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !8
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.cr, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53.i32

get_byte.exit53.i32:                              ; preds = %bb.x, %bb.w
  %.0.i52.i33 = phi i32 [ 255, %bb.w ], [ %i.cq, %bb.x ]
  %i.cs = or disjoint i32 %.0.i52.i33, %i.cm
  store i32 %i.cs, ptr %i.f, align 4, !tbaa !41
  %i.ct = shl nuw i32 %i.ch, 8
  store i32 %i.ct, ptr %i.e, align 8, !tbaa !37
  br label %getbit_from_table.exit37

getbit_from_table.exit37:                         ; preds = %bb.o, %bb.q, %get_byte.exit.i35, %bb.u, %get_byte.exit53.i32
  %.0.i30 = phi i32 [ 255, %bb.o ], [ 0, %bb.q ], [ 0, %get_byte.exit.i35 ], [ 1, %get_byte.exit53.i32 ], [ 1, %bb.u ]
  %i.cu = or i32 %.0.i30, %i.bj                   ; 2 uses
  %.old1 = icmp ult i32 %i.bj, 256
  br i1 %.old1, label %bb.n, label %.loopexit

.loopexit:                                        ; preds = %getbit_from_table.exit37, %getbit_from_table.exit37.us, %getbit_from_table.exit
  %.2 = phi i32 [ %i.bc, %getbit_from_table.exit ], [ %i.bg, %getbit_from_table.exit37.us ], [ %i.cu, %getbit_from_table.exit37 ] ; 3 uses
  %i.cv = icmp ult i32 %.2, 256
  br i1 %i.cv, label %bb.b, label %bb.y, !llvm.loop !52

bb.y:                                             ; preds = %.loopexit
  %i.cw = and i32 %.2, 255
  ret i32 %i.cw
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 256) i32 @get_100_bits_from_table(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch.i = icmp ult i32 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br i1 %switch.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %.split7.us

.split:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = zext i32 %i.b to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %.split, %getbit_from_table.exit
  %.05 = phi i32 [ 1, %.split ], [ %i.av, %getbit_from_table.exit ] ; 3 uses
  %i.k = shl nuw nsw i32 %.05, 1
  %i.l = zext nneg i32 %.05 to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.l ; 5 uses
  %.not49.i = icmp uge ptr %i.m, %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %.not50.i = icmp ule ptr %i.n, %i.j
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %getbit_from_table.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i16, ptr %i.m, align 2, !tbaa !28   ; 4 uses
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.r = lshr i32 %i.q, 11
  %i.s = mul i32 %i.r, %i.p                       ; 6 uses
  %i.t = load i32, ptr %i.d, align 4, !tbaa !41   ; 3 uses
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.c, align 8, !tbaa !37
  %i.v = sub nsw i32 2048, %i.p
  %i.w = lshr i32 %i.v, 5
  %i.x = trunc i32 %i.w to i16
  %i.y = add i16 %i.o, %i.x
  store i16 %i.y, ptr %i.m, align 2, !tbaa !28
  %i.z = icmp ult i32 %i.s, 16777216
  br i1 %i.z, label %bb.f, label %getbit_from_table.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = shl nuw i32 %i.t, 8
  %i.ab = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.af, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ 255, %bb.g ], [ %i.ae, %bb.h ]
  %i.ag = or disjoint i32 %.0.i.i, %i.aa
  store i32 %i.ag, ptr %i.d, align 4, !tbaa !41
  %i.ah = shl nuw i32 %i.s, 8
  store i32 %i.ah, ptr %i.c, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.i:                                             ; preds = %bb.d
  %i.ai = sub i32 %i.q, %i.s                      ; 3 uses
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !37
  %i.aj = sub nuw i32 %i.t, %i.s                  ; 2 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !41
  %i.ak = lshr i16 %i.o, 5
  %i.al = sub nuw i16 %i.o, %i.ak
  store i16 %i.al, ptr %i.m, align 2, !tbaa !28
  %i.am = icmp ult i32 %i.ai, 16777216
  br i1 %i.am, label %bb.j, label %getbit_from_table.exit

bb.j:                                             ; preds = %bb.i
  %i.an = shl i32 %i.aj, 8
  %i.ao = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.ao, %i.ap
  br i1 %.not.i51.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.l:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store ptr %i.as, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.l, %bb.k
  %.0.i52.i = phi i32 [ 255, %bb.k ], [ %i.ar, %bb.l ]
  %i.at = or disjoint i32 %.0.i52.i, %i.an
  store i32 %i.at, ptr %i.d, align 4, !tbaa !41
  %i.au = shl nuw i32 %i.ai, 8
  store i32 %i.au, ptr %i.c, align 8, !tbaa !37
  br label %getbit_from_table.exit

getbit_from_table.exit:                           ; preds = %bb.c, %bb.e, %get_byte.exit.i, %bb.i, %get_byte.exit53.i
  %.0.i = phi i32 [ 255, %bb.c ], [ 0, %bb.e ], [ 0, %get_byte.exit.i ], [ 1, %get_byte.exit53.i ], [ 1, %bb.i ]
  %i.av = or i32 %.0.i, %i.k                      ; 2 uses
  %i.aw = icmp ult i32 %.05, 128
  br i1 %i.aw, label %bb.b, label %.split7.us.loopexit8, !llvm.loop !42

.split7.us.loopexit8:                             ; preds = %getbit_from_table.exit
  %i.ax = and i32 %i.av, 255
  br label %.split7.us

.split7.us:                                       ; preds = %.split7.us.loopexit8, %.split.us
  %.us-phi = phi i32 [ 255, %.split.us ], [ %i.ax, %.split7.us.loopexit8 ]
  ret i32 %.us-phi
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_n_bits_from_tablesize(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch.i = icmp ult i32 %i.b, 2
  br i1 %switch.i, label %.thread27, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 3 uses
  %.not49.i = icmp uge ptr %0, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c ; 2 uses
  %.not50.i = icmp ule ptr %i.f, %i.g
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = load i16, ptr %0, align 2, !tbaa !28     ; 4 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = lshr i32 %i.k, 11
  %i.m = mul i32 %i.l, %i.i                       ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !41   ; 3 uses
  %i.p = icmp ult i32 %i.o, %i.m
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  store i32 %i.m, ptr %i.j, align 8, !tbaa !37
  %i.q = sub nsw i32 2048, %i.i
  %i.r = lshr i32 %i.q, 5
  %i.s = trunc i32 %i.r to i16
  %i.t = add i16 %i.h, %i.s
  store i16 %i.t, ptr %0, align 2, !tbaa !28
  %i.u = icmp ult i32 %i.m, 16777216
  br i1 %i.u, label %bb.e, label %getbit_from_table.exit

bb.e:                                             ; preds = %bb.d
  %i.v = shl nuw i32 %i.o, 8
  %i.w = load ptr, ptr %1, align 8, !tbaa !36     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !8
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ 255, %bb.f ], [ %i.ab, %bb.g ]
  %i.ad = or disjoint i32 %.0.i.i, %i.v
  store i32 %i.ad, ptr %i.n, align 4, !tbaa !41
  %i.ae = shl nuw i32 %i.m, 8
  store i32 %i.ae, ptr %i.j, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.h:                                             ; preds = %bb.c
  %i.af = sub i32 %i.k, %i.m                      ; 3 uses
  store i32 %i.af, ptr %i.j, align 8, !tbaa !37
  %i.ag = sub nuw i32 %i.o, %i.m                  ; 2 uses
  store i32 %i.ag, ptr %i.n, align 4, !tbaa !41
  %i.ah = lshr i16 %i.h, 5
  %i.ai = sub nuw i16 %i.h, %i.ah
  store i16 %i.ai, ptr %0, align 2, !tbaa !28
  %i.aj = icmp ult i32 %i.af, 16777216
  br i1 %i.aj, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = shl i32 %i.ag, 8
  %i.al = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.al, %i.an
  br i1 %.not.i51.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.ao, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.ar, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.k, %bb.j
  %.0.i52.i = phi i32 [ 255, %bb.j ], [ %i.aq, %bb.k ]
  %i.as = or disjoint i32 %.0.i52.i, %i.ak
  store i32 %i.as, ptr %i.n, align 4, !tbaa !41
  %i.at = shl nuw i32 %i.af, 8
  store i32 %i.at, ptr %i.j, align 8, !tbaa !37
  br label %.thread

getbit_from_table.exit:                           ; preds = %get_byte.exit.i, %bb.d
  %i.au = shl i32 %2, 3
  %i.av = or disjoint i32 %i.au, 2
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aw
  %i.ay = tail call i32 @get_n_bits_from_table(ptr noundef nonnull %i.ax, i32 noundef 3, ptr noundef nonnull %1)
  br label %bb.w

bb.l:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !33
  br label %.thread

.thread:                                          ; preds = %bb.h, %get_byte.exit53.i, %bb.l
  %.not49.i14 = icmp uge ptr %i.f, %i.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not50.i15 = icmp ule ptr %i.ba, %i.g
  %or.cond55.i16 = select i1 %.not49.i14, i1 %.not50.i15, i1 false
  br i1 %or.cond55.i16, label %bb.m, label %.thread27

.thread27:                                        ; preds = %bb.a, %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bb, align 8, !tbaa !33
  br label %bb.v

bb.m:                                             ; preds = %.thread
  %i.bc = load i16, ptr %i.f, align 2, !tbaa !28  ; 4 uses
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !37 ; 2 uses
  %i.bg = lshr i32 %i.bf, 11
  %i.bh = mul i32 %i.bg, %i.bd                    ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !41 ; 3 uses
  %i.bk = icmp ult i32 %i.bj, %i.bh
  br i1 %i.bk, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !37
  %i.bl = sub nsw i32 2048, %i.bd
  %i.bm = lshr i32 %i.bl, 5
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = add i16 %i.bc, %i.bn
  store i16 %i.bo, ptr %i.f, align 2, !tbaa !28
  %i.bp = icmp ult i32 %i.bh, 16777216
  br i1 %i.bp, label %bb.o, label %getbit_from_table.exit24

bb.o:                                             ; preds = %bb.n
  %i.bq = shl nuw i32 %i.bj, 8
  %i.br = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  %.not.i.i21 = icmp ult ptr %i.br, %i.bt
  br i1 %.not.i.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.bu, align 8, !tbaa !33
  br label %get_byte.exit.i22

bb.q:                                             ; preds = %bb.o
  %i.bv = load i8, ptr %i.br, align 1, !tbaa !8
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store ptr %i.bx, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit.i22

get_byte.exit.i22:                                ; preds = %bb.q, %bb.p
  %.0.i.i23 = phi i32 [ 255, %bb.p ], [ %i.bw, %bb.q ]
  %i.by = or disjoint i32 %.0.i.i23, %i.bq
  store i32 %i.by, ptr %i.bi, align 4, !tbaa !41
  %i.bz = shl nuw i32 %i.bh, 8
  store i32 %i.bz, ptr %i.be, align 8, !tbaa !37
  br label %getbit_from_table.exit24

bb.r:                                             ; preds = %bb.m
  %i.ca = sub i32 %i.bf, %i.bh                    ; 3 uses
  store i32 %i.ca, ptr %i.be, align 8, !tbaa !37
  %i.cb = sub nuw i32 %i.bj, %i.bh                ; 2 uses
  store i32 %i.cb, ptr %i.bi, align 4, !tbaa !41
  %i.cc = lshr i16 %i.bc, 5
  %i.cd = sub nuw i16 %i.bc, %i.cc
  store i16 %i.cd, ptr %i.f, align 2, !tbaa !28
  %i.ce = icmp ult i32 %i.ca, 16777216
  br i1 %i.ce, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.cf = shl i32 %i.cb, 8
  %i.cg = load ptr, ptr %1, align 8, !tbaa !36    ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38
  %.not.i51.i18 = icmp ult ptr %i.cg, %i.ci
  br i1 %.not.i51.i18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 1, ptr %i.cj, align 8, !tbaa !33
  br label %get_byte.exit53.i19

bb.u:                                             ; preds = %bb.s
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !8
  %i.cl = zext i8 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store ptr %i.cm, ptr %1, align 8, !tbaa !36
  br label %get_byte.exit53.i19

get_byte.exit53.i19:                              ; preds = %bb.u, %bb.t
  %.0.i52.i20 = phi i32 [ 255, %bb.t ], [ %i.cl, %bb.u ]
  %i.cn = or disjoint i32 %.0.i52.i20, %i.cf
  store i32 %i.cn, ptr %i.bi, align 4, !tbaa !41
  %i.co = shl nuw i32 %i.ca, 8
  store i32 %i.co, ptr %i.be, align 8, !tbaa !37
  br label %bb.v

getbit_from_table.exit24:                         ; preds = %get_byte.exit.i22, %bb.n
  %i.cp = shl i32 %2, 3
  %i.cq = add i32 %i.cp, 130
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cr
  %i.ct = tail call i32 @get_n_bits_from_table(ptr noundef nonnull %i.cs, i32 noundef 3, ptr noundef nonnull %1)
  %i.cu = add i32 %i.ct, 8
  br label %bb.w

bb.v:                                             ; preds = %.thread27, %get_byte.exit53.i19, %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.cw = tail call i32 @get_n_bits_from_table(ptr noundef nonnull %i.cv, i32 noundef 8, ptr noundef nonnull %1)
  %i.cx = add i32 %i.cw, 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %getbit_from_table.exit24, %getbit_from_table.exit
  %.0 = phi i32 [ %i.cx, %bb.v ], [ %i.cu, %getbit_from_table.exit24 ], [ %i.ay, %getbit_from_table.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_n_bits_from_table(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %switch.i = icmp ult i32 %i.b, 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br i1 %switch.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i32 1, ptr %i.f, align 8, !tbaa !33
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.g = icmp ult i32 %1, 8
  br i1 %i.g, label %getbit_from_table.exit.us.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i32 %1, -8
  br label %getbit_from_table.exit.us

getbit_from_table.exit.us:                        ; preds = %getbit_from_table.exit.us, %.lr.ph.split.us.new
  %.079.us = phi i32 [ 1, %.lr.ph.split.us.new ], [ %i.i, %getbit_from_table.exit.us ]
  %niter = phi i32 [ 0, %.lr.ph.split.us.new ], [ %niter.next.7, %getbit_from_table.exit.us ]
  %i.h = shl i32 %.079.us, 8
  %i.i = add i32 %i.h, 65025                      ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %getbit_from_table.exit.us, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = zext i32 %i.b to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !39   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %getbit_from_table.exit
  %.010 = phi i32 [ %1, %.lr.ph.split ], [ %i.n, %getbit_from_table.exit ]
  %.079 = phi i32 [ 1, %.lr.ph.split ], [ %i.az, %getbit_from_table.exit ] ; 2 uses
  %i.n = add i32 %.010, -1                        ; 2 uses
  %i.o = shl i32 %.079, 1
  %i.p = zext i32 %.079 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p ; 5 uses
  %.not49.i = icmp uge ptr %i.q, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.not50.i = icmp ule ptr %i.r, %i.m
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %getbit_from_table.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i16, ptr %i.q, align 2, !tbaa !28   ; 4 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.v = lshr i32 %i.u, 11
  %i.w = mul i32 %i.v, %i.t                       ; 6 uses
  %i.x = load i32, ptr %i.d, align 4, !tbaa !41   ; 3 uses
  %i.y = icmp ult i32 %i.x, %i.w
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.w, ptr %i.c, align 8, !tbaa !37
  %i.z = sub nsw i32 2048, %i.t
  %i.aa = lshr i32 %i.z, 5
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = add i16 %i.s, %i.ab
  store i16 %i.ac, ptr %i.q, align 2, !tbaa !28
  %i.ad = icmp ult i32 %i.w, 16777216
  br i1 %i.ad, label %bb.f, label %getbit_from_table.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i32 %i.x, 8
  %i.af = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.af, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.aj, ptr %2, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ 255, %bb.g ], [ %i.ai, %bb.h ]
  %i.ak = or disjoint i32 %.0.i.i, %i.ae
  store i32 %i.ak, ptr %i.d, align 4, !tbaa !41
  %i.al = shl nuw i32 %i.w, 8
  store i32 %i.al, ptr %i.c, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.i:                                             ; preds = %bb.d
  %i.am = sub i32 %i.u, %i.w                      ; 3 uses
  store i32 %i.am, ptr %i.c, align 8, !tbaa !37
  %i.an = sub nuw i32 %i.x, %i.w                  ; 2 uses
  store i32 %i.an, ptr %i.d, align 4, !tbaa !41
  %i.ao = lshr i16 %i.s, 5
  %i.ap = sub nuw i16 %i.s, %i.ao
  store i16 %i.ap, ptr %i.q, align 2, !tbaa !28
  %i.aq = icmp ult i32 %i.am, 16777216
  br i1 %i.aq, label %bb.j, label %getbit_from_table.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = shl i32 %i.an, 8
  %i.as = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.as, %i.at
  br i1 %.not.i51.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.f, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.l:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.aw, ptr %2, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.l, %bb.k
  %.0.i52.i = phi i32 [ 255, %bb.k ], [ %i.av, %bb.l ]
  %i.ax = or disjoint i32 %.0.i52.i, %i.ar
  store i32 %i.ax, ptr %i.d, align 4, !tbaa !41
  %i.ay = shl nuw i32 %i.am, 8
  store i32 %i.ay, ptr %i.c, align 8, !tbaa !37
  br label %getbit_from_table.exit

getbit_from_table.exit:                           ; preds = %bb.c, %bb.e, %get_byte.exit.i, %bb.i, %get_byte.exit53.i
  %.0.i = phi i32 [ 255, %bb.c ], [ 0, %bb.e ], [ 0, %get_byte.exit.i ], [ 1, %get_byte.exit53.i ], [ 1, %bb.i ]
  %i.az = add i32 %.0.i, %i.o                     ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !43

._crit_edge.loopexit.unr-lcssa:                   ; preds = %getbit_from_table.exit.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %getbit_from_table.exit.us.epil.preheader

getbit_from_table.exit.us.epil.preheader:         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.079.us.epil.init = phi i32 [ 1, %.lr.ph.split.us ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %getbit_from_table.exit.us.epil

getbit_from_table.exit.us.epil:                   ; preds = %getbit_from_table.exit.us.epil, %getbit_from_table.exit.us.epil.preheader
  %.079.us.epil = phi i32 [ %.079.us.epil.init, %getbit_from_table.exit.us.epil.preheader ], [ %i.bb, %getbit_from_table.exit.us.epil ]
  %epil.iter = phi i32 [ 0, %getbit_from_table.exit.us.epil.preheader ], [ %epil.iter.next, %getbit_from_table.exit.us.epil ]
  %i.ba = shl i32 %.079.us.epil, 1
  %i.bb = add i32 %i.ba, 255                      ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %getbit_from_table.exit.us.epil, !llvm.loop !53

._crit_edge:                                      ; preds = %getbit_from_table.exit, %._crit_edge.loopexit.unr-lcssa, %getbit_from_table.exit.us.epil, %bb.a
  %.07.lcssa = phi i32 [ 1, %bb.a ], [ %i.bb, %getbit_from_table.exit.us.epil ], [ %i.i, %._crit_edge.loopexit.unr-lcssa ], [ %i.az, %getbit_from_table.exit ]
  %i.bc = and i32 %1, 255
  %.neg = shl nsw i32 -1, %i.bc
  %i.bd = add i32 %.07.lcssa, %.neg
  ret i32 %i.bd
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_bb(ptr nofree noundef captures(address) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %switch.i = icmp ult i32 %i.c, 2
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  br i1 %switch.i, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader
  store i32 1, ptr %i.g, align 8, !tbaa !33
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.h = icmp ult i32 %1, 8
  br i1 %i.h, label %getbit_from_table.exit.us.epil.preheader, label %.preheader.split.us.new

.preheader.split.us.new:                          ; preds = %.preheader.split.us
  %unroll_iter = and i32 %1, 2147483640
  br label %getbit_from_table.exit.us

getbit_from_table.exit.us:                        ; preds = %getbit_from_table.exit.us, %.preheader.split.us.new
  %.01319.us = phi i32 [ 0, %.preheader.split.us.new ], [ %i.k, %getbit_from_table.exit.us ] ; 2 uses
  %.01418.us = phi i32 [ 0, %.preheader.split.us.new ], [ %i.j, %getbit_from_table.exit.us ]
  %niter = phi i32 [ 0, %.preheader.split.us.new ], [ %niter.next.7, %getbit_from_table.exit.us ]
  %i.i = shl i32 32767, %.01319.us
  %i.j = or i32 %i.i, %.01418.us                  ; 3 uses
  %i.k = add nuw nsw i32 %.01319.us, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.loopexit.unr-lcssa, label %getbit_from_table.exit.us, !llvm.loop !44

.preheader.split:                                 ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = zext i32 %i.c to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split, %getbit_from_table.exit
  %.01319 = phi i32 [ 0, %.preheader.split ], [ %i.bd, %getbit_from_table.exit ] ; 2 uses
  %.01418 = phi i32 [ 0, %.preheader.split ], [ %i.bc, %getbit_from_table.exit ]
  %.01517 = phi i32 [ 1, %.preheader.split ], [ %i.ba, %getbit_from_table.exit ] ; 2 uses
  %i.p = zext i32 %.01517 to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p ; 5 uses
  %.not49.i = icmp uge ptr %i.q, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %.not50.i = icmp ule ptr %i.r, %i.o
  %or.cond55.i = select i1 %.not49.i, i1 %.not50.i, i1 false
  br i1 %or.cond55.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8, !tbaa !33
  br label %getbit_from_table.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i16, ptr %i.q, align 2, !tbaa !28   ; 4 uses
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = load i32, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.v = lshr i32 %i.u, 11
  %i.w = mul i32 %i.v, %i.t                       ; 6 uses
  %i.x = load i32, ptr %i.e, align 4, !tbaa !41   ; 3 uses
  %i.y = icmp ult i32 %i.x, %i.w
  br i1 %i.y, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.w, ptr %i.d, align 8, !tbaa !37
  %i.z = sub nsw i32 2048, %i.t
  %i.aa = lshr i32 %i.z, 5
  %i.ab = trunc i32 %i.aa to i16
  %i.ac = add i16 %i.s, %i.ab
  store i16 %i.ac, ptr %i.q, align 2, !tbaa !28
  %i.ad = icmp ult i32 %i.w, 16777216
  br i1 %i.ad, label %bb.f, label %getbit_from_table.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = shl nuw i32 %i.x, 8
  %i.af = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !38
  %.not.i.i = icmp ult ptr %i.af, %i.ag
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !33
  br label %get_byte.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.aj, ptr %2, align 8, !tbaa !36
  br label %get_byte.exit.i

get_byte.exit.i:                                  ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ 255, %bb.g ], [ %i.ai, %bb.h ]
  %i.ak = or disjoint i32 %.0.i.i, %i.ae
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !41
  %i.al = shl nuw i32 %i.w, 8
  store i32 %i.al, ptr %i.d, align 8, !tbaa !37
  br label %getbit_from_table.exit

bb.i:                                             ; preds = %bb.d
  %i.am = sub i32 %i.u, %i.w                      ; 3 uses
  store i32 %i.am, ptr %i.d, align 8, !tbaa !37
  %i.an = sub nuw i32 %i.x, %i.w                  ; 2 uses
  store i32 %i.an, ptr %i.e, align 4, !tbaa !41
  %i.ao = lshr i16 %i.s, 5
  %i.ap = sub nuw i16 %i.s, %i.ao
  store i16 %i.ap, ptr %i.q, align 2, !tbaa !28
  %i.aq = icmp ult i32 %i.am, 16777216
  br i1 %i.aq, label %bb.j, label %getbit_from_table.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = shl i32 %i.an, 8
  %i.as = load ptr, ptr %2, align 8, !tbaa !36    ; 3 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !38
  %.not.i51.i = icmp ult ptr %i.as, %i.at
  br i1 %.not.i51.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.g, align 8, !tbaa !33
  br label %get_byte.exit53.i

bb.l:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !8
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.aw, ptr %2, align 8, !tbaa !36
  br label %get_byte.exit53.i

get_byte.exit53.i:                                ; preds = %bb.l, %bb.k
  %.0.i52.i = phi i32 [ 255, %bb.k ], [ %i.av, %bb.l ]
  %i.ax = or disjoint i32 %.0.i52.i, %i.ar
  store i32 %i.ax, ptr %i.e, align 4, !tbaa !41
  %i.ay = shl nuw i32 %i.am, 8
  store i32 %i.ay, ptr %i.d, align 8, !tbaa !37
  br label %getbit_from_table.exit

getbit_from_table.exit:                           ; preds = %bb.c, %bb.e, %get_byte.exit.i, %bb.i, %get_byte.exit53.i
  %.0.i = phi i32 [ 255, %bb.c ], [ 0, %bb.e ], [ 0, %get_byte.exit.i ], [ 1, %get_byte.exit53.i ], [ 1, %bb.i ] ; 2 uses
  %i.az = shl i32 %.01517, 1
  %i.ba = add i32 %.0.i, %i.az
  %i.bb = shl i32 %.0.i, %.01319
  %i.bc = or i32 %i.bb, %.01418                   ; 2 uses
  %i.bd = add nuw nsw i32 %.01319, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %1
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !44

.loopexit.loopexit.unr-lcssa:                     ; preds = %getbit_from_table.exit.us
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %getbit_from_table.exit.us.epil.preheader

getbit_from_table.exit.us.epil.preheader:         ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.split.us
  %.01319.us.epil.init = phi i32 [ 0, %.preheader.split.us ], [ %i.k, %.loopexit.loopexit.unr-lcssa ]
  %.01418.us.epil.init = phi i32 [ 0, %.preheader.split.us ], [ %i.j, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %getbit_from_table.exit.us.epil

getbit_from_table.exit.us.epil:                   ; preds = %getbit_from_table.exit.us.epil, %getbit_from_table.exit.us.epil.preheader
  %.01319.us.epil = phi i32 [ %.01319.us.epil.init, %getbit_from_table.exit.us.epil.preheader ], [ %i.bg, %getbit_from_table.exit.us.epil ] ; 2 uses
  %.01418.us.epil = phi i32 [ %.01418.us.epil.init, %getbit_from_table.exit.us.epil.preheader ], [ %i.bf, %getbit_from_table.exit.us.epil ]
  %epil.iter = phi i32 [ 0, %getbit_from_table.exit.us.epil.preheader ], [ %epil.iter.next, %getbit_from_table.exit.us.epil ]
  %i.be = shl i32 255, %.01319.us.epil
  %i.bf = or i32 %i.be, %.01418.us.epil           ; 2 uses
  %i.bg = add nuw nsw i32 %.01319.us.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %getbit_from_table.exit.us.epil, !llvm.loop !54

.loopexit:                                        ; preds = %getbit_from_table.exit, %.loopexit.loopexit.unr-lcssa, %getbit_from_table.exit.us.epil, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.bf, %getbit_from_table.exit.us.epil ], [ %i.j, %.loopexit.loopexit.unr-lcssa ], [ %i.bc, %getbit_from_table.exit ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @get_bitmap(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !37
  %.promoted22 = load i32, ptr %i.c, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %.in = phi i32 [ %1, %.preheader ], [ %i.h, %bb.h ]
  %.023 = phi i32 [ 0, %.preheader ], [ %.1, %bb.h ]
  %i.f = phi i32 [ %.promoted, %.preheader ], [ %i.x, %bb.h ] ; 2 uses
  %i.g = phi i32 [ %.promoted22, %.preheader ], [ %i.w, %bb.h ] ; 3 uses
  %i.h = add nsw i32 %.in, -1                     ; 2 uses
  %i.i = lshr i32 %i.f, 1                         ; 5 uses
  store i32 %i.i, ptr %i.b, align 8, !tbaa !37
  %i.j = shl i32 %.023, 1                         ; 2 uses
  %.not21 = icmp ult i32 %i.g, %i.i
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub nuw i32 %i.g, %i.i                   ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !41
  %i.l = or disjoint i32 %i.j, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.l, %bb.c ], [ %i.j, %bb.b ]  ; 2 uses
  %i.n = icmp ult i32 %i.f, 33554432
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i32 %i.i, 8                      ; 2 uses
  store i32 %i.o, ptr %i.b, align 8, !tbaa !37
  %i.p = shl i32 %i.m, 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !38
  %.not.i = icmp ult ptr %i.q, %i.r
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.e, align 8, !tbaa !33
  br label %get_byte.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.q, align 1, !tbaa !8
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.u, ptr %0, align 8, !tbaa !36
  br label %get_byte.exit

get_byte.exit:                                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ 255, %bb.f ], [ %i.t, %bb.g ]
  %i.v = or disjoint i32 %.0.i, %i.p              ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !41
  br label %bb.h

bb.h:                                             ; preds = %get_byte.exit, %bb.d
  %i.w = phi i32 [ %i.v, %get_byte.exit ], [ %i.m, %bb.d ]
  %i.x = phi i32 [ %i.o, %get_byte.exit ], [ %i.i, %bb.d ]
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !47

.loopexit:                                        ; preds = %bb.h, %bb.a
  %.016 = phi i32 [ 0, %bb.a ], [ %.1, %bb.h ]
  ret i32 %.016
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

end_hunk_0
