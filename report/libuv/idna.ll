Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/idna?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
begin_hunk_0_@uv__idna_toascii:bb.a
  %i.ah = and i32 %i.ag, 192
  %.not.i.i = icmp eq i32 %i.ah, 128
  br i1 %.not.i.i, label %bb.m, label %uv__utf8_decode1.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ai = and i32 %.032.i.i, 63
  %i.aj = shl nuw nsw i32 %.034.i.i, 12
  %i.ak = and i32 %i.aj, 258048
  %i.al = or disjoint i32 %i.ak, %.035.i.i        ; 3 uses
  %i.am = shl nuw nsw i32 %.033.i.i, 6
  %i.an = and i32 %i.am, 4032
  %i.ao = or disjoint i32 %i.an, %i.ai
  %i.ap = or disjoint i32 %i.ao, %i.al            ; 3 uses
  %i.aq = icmp samesign ult i32 %i.ap, %.0.i.i
  %i.ar = icmp samesign ugt i32 %i.al, 1114111
  %or.cond39.i.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond39.i.i, label %uv__utf8_decode1.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = icmp samesign ugt i32 %i.ap, 55295
  %i.at = icmp samesign ult i32 %i.al, 57344
  %or.cond.i.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.i.i, label %uv__utf8_decode1.exit.thread, label %uv__utf8_decode1.exit

uv__utf8_decode1.exit:                            ; preds = %bb.n, %bb.c
  %.2 = phi ptr [ %i.f, %bb.c ], [ %.1, %bb.n ]   ; 2 uses
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.ap, %bb.n ]
  switch i32 %.0.i, label %bb.b [
    i32 46, label %bb.o
    i32 65377, label %bb.o
    i32 65294, label %bb.o
    i32 12290, label %bb.o
  ]

bb.o:                                             ; preds = %uv__utf8_decode1.exit, %uv__utf8_decode1.exit, %uv__utf8_decode1.exit, %uv__utf8_decode1.exit
  %i.au = call fastcc i32 @uv__idna_toascii_label(ptr noundef %.041.ph, ptr noundef nonnull %.041, ptr noundef %i.a, ptr noundef %3) ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = sext i32 %i.au to i64
  br label %uv__utf8_decode1.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.ay = icmp ult ptr %i.ax, %3
  br i1 %i.ay, label %bb.r, label %.outer.backedge

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 2 uses
  store ptr %i.az, ptr %i.a, align 8
  store i8 46, ptr %i.ax, align 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.r, %bb.q
  %.be = phi ptr [ %i.az, %bb.r ], [ %i.ax, %bb.q ]
  br label %.outer, !llvm.loop !6

bb.s:                                             ; preds = %bb.b
  %i.ba = icmp ult ptr %.041.ph, %1
  br i1 %i.ba, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bb = call fastcc i32 @uv__idna_toascii_label(ptr noundef %.041.ph, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %3) ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bd = sext i32 %i.bb to i64
  br label %uv__utf8_decode1.exit.thread

bb.v:                                             ; preds = %._crit_edge, %bb.s
  %i.be = phi ptr [ %.pre, %._crit_edge ], [ %i.d, %bb.s ] ; 3 uses
  %.not = icmp ult ptr %i.be, %3
  br i1 %.not, label %bb.w, label %uv__utf8_decode1.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 0, ptr %i.be, align 1
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %2 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  br label %uv__utf8_decode1.exit.thread

uv__utf8_decode1.exit.thread:                     ; preds = %bb.n, %bb.j, %bb.m, %bb.l, %bb.e, %bb.d, %bb.v, %bb.a, %bb.w, %bb.u, %bb.p
  %.0 = phi i64 [ %i.bi, %bb.w ], [ -22, %bb.a ], [ %i.aw, %bb.p ], [ %i.bd, %bb.u ], [ -22, %bb.v ], [ -22, %bb.d ], [ -22, %bb.e ], [ -22, %bb.l ], [ -22, %bb.m ], [ -22, %bb.j ], [ -22, %bb.n ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @uv__idna_toascii_label(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult ptr %0, %1                      ; 2 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %uv__utf8_decode1.exit
  %.0103221 = phi i32 [ 0, %.lr.ph ], [ %.1104, %uv__utf8_decode1.exit ]
  %.0120220 = phi i32 [ 0, %.lr.ph ], [ %.1121, %uv__utf8_decode1.exit ]
  %.0192219 = phi ptr [ %0, %.lr.ph ], [ %.5, %uv__utf8_decode1.exit ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0192219, i64 1 ; 5 uses
  %i.d = load i8, ptr %.0192219, align 1          ; 6 uses
  %i.e = zext i8 %i.d to i32                      ; 4 uses
  %i.f = icmp sgt i8 %i.d, -1
  br i1 %i.f, label %uv__utf8_decode1.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i8 %i.d, -9
  br i1 %i.g, label %uv__utf8_decode1.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.b, %i.h
  switch i64 %i.i, label %bb.e [
    i64 2, label %bb.g
    i64 1, label %bb.i
    i64 0, label %uv__utf8_decode1.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = icmp samesign ugt i8 %i.d, -17
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.0192219, i64 2
  %i.l = load i8, ptr %i.c, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.0192219, i64 3
  %i.o = load i8, ptr %i.k, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %.0192219, i64 4
  %i.r = shl nuw nsw i32 %i.e, 18
  %i.s = and i32 %i.r, 1835008
  br label %bb.k

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = icmp samesign ugt i8 %i.d, -33
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = and i32 %i.e, 143
  %i.v = getelementptr inbounds nuw i8, ptr %.0192219, i64 2
  %i.w = load i8, ptr %i.c, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.0192219, i64 3
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %bb.d
  %i.z = icmp samesign ugt i8 %i.d, -65
  br i1 %i.z, label %bb.j, label %uv__utf8_decode1.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = and i32 %i.e, 159
  %i.ab = getelementptr inbounds nuw i8, ptr %.0192219, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  %.4195 = phi ptr [ %i.q, %bb.f ], [ %i.y, %bb.h ], [ %i.ab, %bb.j ]
  %.035.i.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ]
  %.034.i.i = phi i32 [ %i.m, %bb.f ], [ %i.u, %bb.h ], [ 128, %bb.j ] ; 2 uses
  %.033.i.i = phi i32 [ %i.p, %bb.f ], [ %i.x, %bb.h ], [ %i.aa, %bb.j ] ; 2 uses
  %.032.in.in.i.i = phi ptr [ %i.n, %bb.f ], [ %i.v, %bb.h ], [ %i.c, %bb.j ]
  %.0.i.i = phi i32 [ 65536, %bb.f ], [ 2048, %bb.h ], [ 128, %bb.j ]
  %.032.in.i.i = load i8, ptr %.032.in.in.i.i, align 1
  %.032.i.i = zext i8 %.032.in.i.i to i32         ; 2 uses
  %i.ac = xor i32 %.033.i.i, %.034.i.i
  %i.ad = xor i32 %i.ac, %.032.i.i
  %i.ae = and i32 %i.ad, 192
  %.not.i.i = icmp eq i32 %i.ae, 128
  br i1 %.not.i.i, label %bb.l, label %uv__utf8_decode1.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.af = and i32 %.032.i.i, 63
  %i.ag = shl nuw nsw i32 %.034.i.i, 12
  %i.ah = and i32 %i.ag, 258048
  %i.ai = or disjoint i32 %i.ah, %.035.i.i        ; 3 uses
  %i.aj = shl nuw nsw i32 %.033.i.i, 6
  %i.ak = and i32 %i.aj, 4032
  %i.al = or disjoint i32 %i.ak, %i.af
  %i.am = or disjoint i32 %i.al, %i.ai            ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, %.0.i.i
  %i.ao = icmp samesign ugt i32 %i.ai, 1114111
  %or.cond39.i.i = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond39.i.i, label %uv__utf8_decode1.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = icmp samesign ugt i32 %i.am, 55295
  %i.aq = icmp samesign ult i32 %i.ai, 57344
  %or.cond.i.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i.i, label %uv__utf8_decode1.exit.thread, label %uv__utf8_decode1.exit

uv__utf8_decode1.exit:                            ; preds = %bb.b, %bb.m
  %.5 = phi ptr [ %i.c, %bb.b ], [ %.4195, %bb.m ] ; 2 uses
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.am, %bb.m ] ; 2 uses
  %i.ar = icmp samesign ult i32 %.0.i, 128
  %i.as = zext i1 %i.ar to i32
  %.1121 = add i32 %.0120220, %i.as               ; 4 uses
  %not. = icmp samesign ugt i32 %.0.i, 127
  %i.at = zext i1 %not. to i32
  %.1104 = add i32 %.0103221, %i.at               ; 4 uses
  %i.au = icmp ult ptr %.5, %1
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %uv__utf8_decode1.exit
  %.not = icmp eq i32 %.1104, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.av = load ptr, ptr %2, align 8               ; 4 uses
  %i.aw = icmp ult ptr %i.av, %3
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store ptr %i.ax, ptr %2, align 8
  store i8 120, ptr %i.av, align 1
  %.pre = load ptr, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = phi ptr [ %.pre, %bb.o ], [ %i.av, %bb.n ] ; 4 uses
  %i.az = icmp ult ptr %i.ay, %3
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.ba, ptr %2, align 8
  store i8 110, ptr %i.ay, align 1
  %.pre259 = load ptr, ptr %2, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = phi ptr [ %.pre259, %bb.q ], [ %i.ay, %bb.p ] ; 4 uses
  %i.bc = icmp ult ptr %i.bb, %3
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bd, ptr %2, align 8
  store i8 45, ptr %i.bb, align 1
  %.pre260 = load ptr, ptr %2, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.be = phi ptr [ %.pre260, %bb.s ], [ %i.bb, %bb.r ] ; 3 uses
  %i.bf = icmp ult ptr %i.be, %3
  br i1 %i.bf, label %bb.u, label %._crit_edge.thread

bb.u:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bg, ptr %2, align 8
  store i8 45, ptr %i.be, align 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.t, %bb.u, %._crit_edge
  %.not298 = phi i1 [ true, %._crit_edge ], [ false, %bb.t ], [ false, %bb.u ], [ true, %bb.a ]
  %.0103.lcssa297 = phi i32 [ 0, %._crit_edge ], [ %.1104, %bb.t ], [ %.1104, %bb.u ], [ 0, %bb.a ]
  %.0120.lcssa296 = phi i32 [ %.1121, %._crit_edge ], [ %.1121, %bb.t ], [ %.1121, %bb.u ], [ 0, %bb.a ] ; 4 uses
  %i.bh = ptrtoint ptr %1 to i64                  ; 3 uses
  br label %.outer208

.outer208:                                        ; preds = %bb.aj, %._crit_edge.thread
  %.1193.ph = phi ptr [ %.7200, %bb.aj ], [ %0, %._crit_edge.thread ]
  %.0113.ph = phi i32 [ %i.dd, %bb.aj ], [ 0, %._crit_edge.thread ]
  br label %bb.v

bb.v:                                             ; preds = %.outer208, %uv__utf8_decode1.exit158
  %.1193 = phi ptr [ %.7, %uv__utf8_decode1.exit158 ], [ %.1193.ph, %.outer208 ] ; 9 uses
  %i.bi = icmp ult ptr %.1193, %1
  br i1 %i.bi, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %.1193, i64 1 ; 8 uses
  %i.bk = load i8, ptr %.1193, align 1            ; 6 uses
  %i.bl = zext i8 %i.bk to i32                    ; 4 uses
  %i.bm = icmp sgt i8 %i.bk, -1
  br i1 %i.bm, label %uv__utf8_decode1.exit158.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = icmp samesign ugt i8 %i.bk, -9
  br i1 %i.bn, label %uv__utf8_decode1.exit158, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = ptrtoint ptr %i.bj to i64
  %i.bp = sub i64 %i.bh, %i.bo
  switch i64 %i.bp, label %bb.z [
    i64 2, label %bb.ab
    i64 1, label %bb.ad
    i64 0, label %uv__utf8_decode1.exit158
  ]

bb.z:                                             ; preds = %bb.y
  %i.bq = icmp samesign ugt i8 %i.bk, -17
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.bs = load i8, ptr %i.bj, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %.1193, i64 3
  %i.bv = load i8, ptr %i.br, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %.1193, i64 4
  %i.by = shl nuw nsw i32 %i.bl, 18
  %i.bz = and i32 %i.by, 1835008
  br label %bb.af

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.ca = icmp samesign ugt i8 %i.bk, -33
  br i1 %i.ca, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cb = and i32 %i.bl, 143
  %i.cc = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.cd = load i8, ptr %i.bj, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.1193, i64 3
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab, %bb.y
  %i.cg = icmp samesign ugt i8 %i.bk, -65
  br i1 %i.cg, label %bb.ae, label %uv__utf8_decode1.exit158

bb.ae:                                            ; preds = %bb.ad
  %i.ch = and i32 %i.bl, 159
  %i.ci = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.aa
  %.6 = phi ptr [ %i.bx, %bb.aa ], [ %i.cf, %bb.ac ], [ %i.ci, %bb.ae ] ; 3 uses
  %.035.i.i147 = phi i32 [ %i.bz, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.ae ]
  %.034.i.i148 = phi i32 [ %i.bt, %bb.aa ], [ %i.cb, %bb.ac ], [ 128, %bb.ae ] ; 2 uses
  %.033.i.i149 = phi i32 [ %i.bw, %bb.aa ], [ %i.ce, %bb.ac ], [ %i.ch, %bb.ae ] ; 2 uses
  %.032.in.in.i.i150 = phi ptr [ %i.bu, %bb.aa ], [ %i.cc, %bb.ac ], [ %i.bj, %bb.ae ]
  %.0.i.i151 = phi i32 [ 65536, %bb.aa ], [ 2048, %bb.ac ], [ 128, %bb.ae ]
  %.032.in.i.i152 = load i8, ptr %.032.in.in.i.i150, align 1
  %.032.i.i153 = zext i8 %.032.in.i.i152 to i32   ; 2 uses
  %i.cj = xor i32 %.033.i.i149, %.034.i.i148
  %i.ck = xor i32 %i.cj, %.032.i.i153
  %i.cl = and i32 %i.ck, 192
  %.not.i.i154 = icmp eq i32 %i.cl, 128
  br i1 %.not.i.i154, label %bb.ag, label %uv__utf8_decode1.exit158

bb.ag:                                            ; preds = %bb.af
  %i.cm = and i32 %.032.i.i153, 63
  %i.cn = shl nuw nsw i32 %.034.i.i148, 12
  %i.co = and i32 %i.cn, 258048
  %i.cp = or disjoint i32 %i.co, %.035.i.i147     ; 3 uses
  %i.cq = shl nuw nsw i32 %.033.i.i149, 6
  %i.cr = and i32 %i.cq, 4032
  %i.cs = or disjoint i32 %i.cr, %i.cm
  %i.ct = or disjoint i32 %i.cs, %i.cp            ; 3 uses
  %i.cu = icmp samesign ult i32 %i.ct, %.0.i.i151
  %i.cv = icmp samesign ugt i32 %i.cp, 1114111
  %or.cond39.i.i155 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond39.i.i155, label %uv__utf8_decode1.exit158, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = icmp samesign ugt i32 %i.ct, 55295
  %i.cx = icmp samesign ult i32 %i.cp, 57344
  %or.cond.i.i156 = select i1 %i.cw, i1 %i.cx, i1 false
  %..i.i157 = select i1 %or.cond.i.i156, i32 -1, i32 %i.ct
  br label %uv__utf8_decode1.exit158

uv__utf8_decode1.exit158:                         ; preds = %bb.x, %bb.y, %bb.ad, %bb.af, %bb.ag, %bb.ah
  %.7 = phi ptr [ %i.bj, %bb.y ], [ %i.bj, %bb.x ], [ %.6, %bb.ag ], [ %.6, %bb.ah ], [ %.6, %bb.af ], [ %i.bj, %bb.ad ] ; 2 uses
  %.0.i146 = phi i32 [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.ag ], [ %..i.i157, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.ad ] ; 2 uses
  %i.cy = icmp ugt i32 %.0.i146, 127
  br i1 %i.cy, label %bb.v, label %uv__utf8_decode1.exit158.thread, !llvm.loop !8

uv__utf8_decode1.exit158.thread:                  ; preds = %bb.w, %uv__utf8_decode1.exit158
  %.0.i146201 = phi i32 [ %.0.i146, %uv__utf8_decode1.exit158 ], [ %i.bl, %bb.w ]
  %.7200 = phi ptr [ %.7, %uv__utf8_decode1.exit158 ], [ %i.bj, %bb.w ]
  %i.cz = load ptr, ptr %2, align 8               ; 3 uses
  %i.da = icmp ult ptr %i.cz, %3
  br i1 %i.da, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %uv__utf8_decode1.exit158.thread
  %i.db = trunc nuw nsw i32 %.0.i146201 to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.dc, ptr %2, align 8
  store i8 %i.db, ptr %i.cz, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %uv__utf8_decode1.exit158.thread
  %i.dd = add i32 %.0113.ph, 1                    ; 2 uses
  %i.de = icmp eq i32 %i.dd, %.0120.lcssa296
  br i1 %i.de, label %.loopexit, label %.outer208, !llvm.loop !8

.loopexit:                                        ; preds = %bb.aj, %bb.v
  br i1 %.not298, label %uv__utf8_decode1.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %.loopexit
  %.not141 = icmp eq i32 %.0120.lcssa296, 0
  br i1 %.not141, label %.preheader206.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = load ptr, ptr %2, align 8               ; 3 uses
end_hunk_0
begin_hunk_1_@uv_wtf8_to_utf16:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %.08, i64 2
  store i16 %i.ao, ptr %.08, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %uv__wtf8_decode1.exit.thread
  %.11417 = phi ptr [ %i.v, %bb.k ], [ %.11418, %uv__wtf8_decode1.exit.thread ] ; 2 uses
  %.19 = phi ptr [ %i.an, %bb.k ], [ %i.ap, %uv__wtf8_decode1.exit.thread ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.11417, i64 1
  %i.ar = load i8, ptr %.11417, align 1
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.m, label %bb.b, !llvm.loop !14

bb.m:                                             ; preds = %bb.l
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @uv_utf16_length_as_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not37 = icmp eq i64 %1, 0
  br i1 %.not37, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.040 = phi i64 [ %.1, %bb.h ], [ 0, %bb.a ]    ; 5 uses
  %.01939 = phi i64 [ %spec.select24, %bb.h ], [ %1, %bb.a ] ; 7 uses
  %.02138 = phi ptr [ %i.q, %bb.h ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i16, ptr %.02138, align 2           ; 4 uses
  %i.b = and i16 %i.a, -1024
  %or.cond.i = icmp eq i16 %i.b, -10240
  %i.c = icmp ne i64 %.01939, 1
  %or.cond4.i = and i1 %i.c, %or.cond.i
  br i1 %or.cond4.i, label %bb.b, label %uv__get_surrogate_value.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.02138, i64 2 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2
  %i.f = and i16 %i.e, -1024
  %or.cond7.i = icmp eq i16 %i.f, -9216
  br i1 %or.cond7.i, label %bb.g, label %.thread35

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.g = icmp slt i64 %.01939, 0
  %i.h = icmp eq i16 %i.a, 0
  %or.cond = and i1 %i.g, %i.h
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.c

bb.c:                                             ; preds = %uv__get_surrogate_value.exit
  %i.i = icmp ult i16 %i.a, 128
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i64 %.040, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i16 %i.a, 2048
  br i1 %i.k, label %bb.f, label %.thread35

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.040, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.m = add i64 %.040, 4
  %i.n = icmp sgt i64 %.01939, 0
  %i.o = sext i1 %i.n to i64
  %spec.select = add nsw i64 %.01939, %i.o
  br label %bb.h

.thread35:                                        ; preds = %bb.e, %bb.b
  %i.p = add i64 %.040, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.thread35, %bb.d
  %.122 = phi ptr [ %.02138, %bb.d ], [ %.02138, %bb.f ], [ %.02138, %.thread35 ], [ %i.d, %bb.g ]
  %.120 = phi i64 [ %.01939, %bb.d ], [ %.01939, %bb.f ], [ %.01939, %.thread35 ], [ %spec.select, %bb.g ] ; 2 uses
  %.1 = phi i64 [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %i.p, %.thread35 ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.122, i64 2
  %i.r = icmp sgt i64 %.120, 0
  %i.s = sext i1 %i.r to i64
  %spec.select24 = add nsw i64 %.120, %i.s        ; 2 uses
  %.not = icmp eq i64 %spec.select24, 0
  br i1 %.not, label %uv__get_surrogate_value.exit._crit_edge, label %.lr.ph, !llvm.loop !0

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.h, %uv__get_surrogate_value.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.040, %uv__get_surrogate_value.exit ], [ %.1, %bb.h ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -105, 1) i32 @uv_utf16_to_wtf8(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8                ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %.thread145

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not37.i = icmp eq i64 %1, 0
  br i1 %.not37.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.j
  %.040.i = phi i64 [ %.1.i, %bb.j ], [ 0, %bb.c ] ; 5 uses
  %.01939.i = phi i64 [ %spec.select24.i, %bb.j ], [ %1, %bb.c ] ; 7 uses
  %.02138.i = phi ptr [ %i.t, %bb.j ], [ %0, %bb.c ] ; 5 uses
  %i.d = load i16, ptr %.02138.i, align 2         ; 4 uses
  %i.e = and i16 %i.d, -1024
  %or.cond.i.i = icmp eq i16 %i.e, -10240
  %i.f = icmp ne i64 %.01939.i, 1
  %or.cond4.i.i = and i1 %i.f, %or.cond.i.i
  br i1 %or.cond4.i.i, label %bb.d, label %uv__get_surrogate_value.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02138.i, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024
  %or.cond7.i.i = icmp eq i16 %i.i, -9216
  br i1 %or.cond7.i.i, label %bb.i, label %.thread35.i

uv__get_surrogate_value.exit.i:                   ; preds = %.lr.ph.i
  %i.j = icmp slt i64 %.01939.i, 0
  %i.k = icmp eq i16 %i.d, 0
  %or.cond.i = and i1 %i.j, %i.k
  br i1 %or.cond.i, label %uv_utf16_length_as_wtf8.exit, label %bb.e

bb.e:                                             ; preds = %uv__get_surrogate_value.exit.i
  %i.l = icmp ult i16 %i.d, 128
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add i64 %.040.i, 1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp ult i16 %i.d, 2048
  br i1 %i.n, label %bb.h, label %.thread35.i

bb.h:                                             ; preds = %bb.g
  %i.o = add i64 %.040.i, 2
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.p = add i64 %.040.i, 4
  %i.q = icmp sgt i64 %.01939.i, 0
  %i.r = sext i1 %i.q to i64
  %spec.select.i = add nsw i64 %.01939.i, %i.r
  br label %bb.j

.thread35.i:                                      ; preds = %bb.g, %bb.d
  %i.s = add i64 %.040.i, 3
  br label %bb.j

bb.j:                                             ; preds = %.thread35.i, %bb.i, %bb.h, %bb.f
  %.122.i = phi ptr [ %.02138.i, %bb.f ], [ %.02138.i, %bb.h ], [ %.02138.i, %.thread35.i ], [ %i.g, %bb.i ]
  %.120.i = phi i64 [ %.01939.i, %bb.f ], [ %.01939.i, %bb.h ], [ %.01939.i, %.thread35.i ], [ %spec.select.i, %bb.i ] ; 2 uses
  %.1.i = phi i64 [ %i.m, %bb.f ], [ %i.o, %bb.h ], [ %i.s, %.thread35.i ], [ %i.p, %bb.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.122.i, i64 2
  %i.u = icmp sgt i64 %.120.i, 0
  %i.v = sext i1 %i.u to i64
  %spec.select24.i = add nsw i64 %.120.i, %i.v    ; 2 uses
  %.not.i = icmp eq i64 %spec.select24.i, 0
  br i1 %.not.i, label %uv_utf16_length_as_wtf8.exit, label %.lr.ph.i, !llvm.loop !0

uv_utf16_length_as_wtf8.exit:                     ; preds = %uv__get_surrogate_value.exit.i, %bb.j, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.1.i, %bb.j ], [ %.040.i, %uv__get_surrogate_value.exit.i ] ; 4 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %uv_utf16_length_as_wtf8.exit
  store i64 %.0.lcssa.i, ptr %3, align 8
  br label %bb.l

.thread145:                                       ; preds = %bb.b
  %i.w = load i64, ptr %3, align 8
  br label %bb.p

bb.l:                                             ; preds = %uv_utf16_length_as_wtf8.exit, %bb.k
  br i1 %i.a, label %bb.ao, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.pr = load ptr, ptr %2, align 8                ; 2 uses
  %i.x = icmp eq ptr %.pr, null
  br i1 %i.x, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.y = add i64 %.0.lcssa.i, 1
  %i.z = tail call ptr @uv__malloc(i64 noundef %i.y) #7 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.z, ptr %2, align 8
  br label %bb.p

bb.p:                                             ; preds = %.thread145, %bb.m, %bb.o
  %.087144147 = phi i64 [ %.0.lcssa.i, %bb.o ], [ %.0.lcssa.i, %bb.m ], [ %i.w, %.thread145 ] ; 4 uses
  %.0 = phi ptr [ %i.z, %bb.o ], [ %.pr, %bb.m ], [ %i.b, %.thread145 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 %.087144147 ; 9 uses
  %i.ac = icmp samesign ne i64 %.087144147, 0
  %i.ad = icmp ne i64 %1, 0
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge

.lr.ph:                                           ; preds = %bb.p, %bb.ac
  %.1165 = phi ptr [ %.2, %bb.ac ], [ %.0, %bb.p ] ; 15 uses
  %.188164 = phi i64 [ %i.cu, %bb.ac ], [ %.087144147, %bb.p ] ; 7 uses
  %.090163 = phi ptr [ %i.cv, %bb.ac ], [ %0, %bb.p ] ; 12 uses
  %.092162 = phi i64 [ %spec.select119, %bb.ac ], [ %1, %bb.p ] ; 13 uses
  %i.af = load i16, ptr %.090163, align 2         ; 11 uses
  %i.ag = zext i16 %i.af to i32
  %i.ah = and i16 %i.af, -1024
  %or.cond.i123 = icmp eq i16 %i.ah, -10240
  %i.ai = icmp ne i64 %.092162, 1
  %or.cond4.i = and i1 %i.ai, %or.cond.i123
  br i1 %or.cond4.i, label %bb.q, label %uv__get_surrogate_value.exit

bb.q:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.090163, i64 2 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2            ; 3 uses
  %i.al = and i16 %i.ak, -1024
  %or.cond7.i = icmp eq i16 %i.al, -9216
  br i1 %or.cond7.i, label %bb.w, label %.thread160

uv__get_surrogate_value.exit:                     ; preds = %.lr.ph
  %i.am = icmp slt i64 %.092162, 0
  %i.an = icmp eq i16 %i.af, 0
  %or.cond = and i1 %i.am, %i.an
  br i1 %or.cond, label %uv__get_surrogate_value.exit._crit_edge, label %bb.r

bb.r:                                             ; preds = %uv__get_surrogate_value.exit
  %i.ao = icmp ult i16 %i.af, 128
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = trunc nuw nsw i16 %i.af to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.1165, i64 1
  store i8 %i.ap, ptr %.1165, align 1
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.ar = icmp ult i16 %i.af, 2048
  br i1 %i.ar, label %bb.u, label %.thread160

bb.u:                                             ; preds = %bb.t
  %i.as = lshr i16 %i.af, 6
  %i.at = trunc nuw nsw i16 %i.as to i8
  %i.au = or disjoint i8 %i.at, -64
  %i.av = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.au, ptr %.1165, align 1
  %i.aw = icmp eq ptr %i.av, %i.ab
  br i1 %i.aw, label %uv__get_surrogate_value.exit._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = trunc i16 %i.af to i8
  %i.ay = and i8 %i.ax, 63
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds nuw i8, ptr %.1165, i64 2
  store i8 %i.az, ptr %i.av, align 1
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bb = zext i16 %i.ak to i32
  %i.bc = shl nuw nsw i32 %i.ag, 10
  %i.bd = add nsw i32 %i.bc, -56613888
  %i.be = add nuw nsw i32 %i.bd, %i.bb            ; 3 uses
  %i.bf = lshr i32 %i.be, 18
  %i.bg = trunc nuw nsw i32 %i.bf to i8
  %i.bh = or disjoint i8 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bh, ptr %.1165, align 1
  %i.bj = icmp eq ptr %i.bi, %i.ab
  br i1 %i.bj, label %uv__get_surrogate_value.exit._crit_edge, label %bb.z

.thread160:                                       ; preds = %bb.t, %bb.q
  %i.bk = lshr i16 %i.af, 12
  %i.bl = trunc nuw nsw i16 %i.bk to i8
  %i.bm = or disjoint i8 %i.bl, -32
  %i.bn = getelementptr inbounds nuw i8, ptr %.1165, i64 1 ; 3 uses
  store i8 %i.bm, ptr %.1165, align 1
  %i.bo = icmp eq ptr %i.bn, %i.ab
  br i1 %i.bo, label %uv__get_surrogate_value.exit._crit_edge, label %bb.x

bb.x:                                             ; preds = %.thread160
  %i.bp = lshr i16 %i.af, 6
  %i.bq = trunc i16 %i.bp to i8
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128
  %i.bt = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.bs, ptr %i.bn, align 1
  %i.bu = icmp eq ptr %i.bt, %i.ab
  br i1 %i.bu, label %uv__get_surrogate_value.exit._crit_edge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = trunc i16 %i.af to i8
  %i.bw = and i8 %i.bv, 63
  %i.bx = or disjoint i8 %i.bw, -128
  %i.by = getelementptr inbounds nuw i8, ptr %.1165, i64 3
  store i8 %i.bx, ptr %i.bt, align 1
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.bz = lshr i32 %i.be, 12
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = and i8 %i.ca, 63
  %i.cc = or disjoint i8 %i.cb, -128
  %i.cd = getelementptr inbounds nuw i8, ptr %.1165, i64 2 ; 3 uses
  store i8 %i.cc, ptr %i.bi, align 1
  %i.ce = icmp eq ptr %i.cd, %i.ab
  br i1 %i.ce, label %uv__get_surrogate_value.exit._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = lshr i32 %i.be, 6
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = and i8 %i.cg, 63
  %i.ci = or disjoint i8 %i.ch, -128
  %i.cj = getelementptr inbounds nuw i8, ptr %.1165, i64 3 ; 3 uses
  store i8 %i.ci, ptr %i.cd, align 1
  %i.ck = icmp eq ptr %i.cj, %i.ab
  br i1 %i.ck, label %uv__get_surrogate_value.exit._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = trunc i16 %i.ak to i8
  %i.cm = and i8 %i.cl, 63
  %i.cn = or disjoint i8 %i.cm, -128
  %i.co = getelementptr inbounds nuw i8, ptr %.1165, i64 4
  store i8 %i.cn, ptr %i.cj, align 1
  %i.cp = icmp sgt i64 %.092162, 0
  %i.cq = sext i1 %i.cp to i64
  %spec.select = add nsw i64 %.092162, %i.cq
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v, %bb.y, %bb.s
  %.193 = phi i64 [ %.092162, %bb.s ], [ %.092162, %bb.v ], [ %.092162, %bb.y ], [ %spec.select, %bb.ab ] ; 2 uses
  %.191 = phi ptr [ %.090163, %bb.s ], [ %.090163, %bb.v ], [ %.090163, %bb.y ], [ %i.aj, %bb.ab ]
  %.2 = phi ptr [ %i.aq, %bb.s ], [ %i.ba, %bb.v ], [ %i.by, %bb.y ], [ %i.co, %bb.ab ] ; 4 uses
  %i.cr = load ptr, ptr %2, align 8
  %i.cs = ptrtoint ptr %.2 to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.191, i64 2 ; 2 uses
  %i.cw = icmp sgt i64 %.193, 0
  %i.cx = sext i1 %i.cw to i64
  %spec.select119 = add nsw i64 %.193, %i.cx      ; 3 uses
  %i.cy = icmp ne ptr %.2, %i.ab
  %i.cz = icmp ne i64 %spec.select119, 0
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph, label %uv__get_surrogate_value.exit._crit_edge, !llvm.loop !15

uv__get_surrogate_value.exit._crit_edge:          ; preds = %bb.ac, %bb.u, %.thread160, %bb.x, %bb.w, %bb.z, %bb.aa, %uv__get_surrogate_value.exit, %bb.p
  %.090.lcssa = phi ptr [ %0, %bb.p ], [ %.090163, %uv__get_surrogate_value.exit ], [ %.090163, %bb.aa ], [ %.090163, %bb.z ], [ %.090163, %bb.w ], [ %.090163, %bb.x ], [ %.090163, %.thread160 ], [ %.090163, %bb.u ], [ %i.cv, %bb.ac ] ; 2 uses
  %.188.lcssa = phi i64 [ %.087144147, %bb.p ], [ %.188164, %uv__get_surrogate_value.exit ], [ %.188164, %bb.aa ], [ %.188164, %bb.z ], [ %.188164, %bb.w ], [ %.188164, %bb.x ], [ %.188164, %.thread160 ], [ %.188164, %bb.u ], [ %i.cu, %bb.ac ]
  %.395 = phi i64 [ %1, %bb.p ], [ 0, %uv__get_surrogate_value.exit ], [ %.092162, %bb.aa ], [ %.092162, %bb.z ], [ %.092162, %bb.w ], [ %.092162, %bb.x ], [ %.092162, %.thread160 ], [ %.092162, %bb.u ], [ %spec.select119, %bb.ac ] ; 3 uses
  %.3 = phi ptr [ %.0, %bb.p ], [ %.1165, %uv__get_surrogate_value.exit ], [ %i.cj, %bb.aa ], [ %i.cd, %bb.z ], [ %i.bi, %bb.w ], [ %i.bt, %bb.x ], [ %i.bn, %.thread160 ], [ %i.av, %bb.u ], [ %.2, %bb.ac ] ; 4 uses
  %i.db = icmp ne ptr %.3, %i.ab
  %i.dc = icmp ne ptr %3, null
  %or.cond3 = and i1 %i.dc, %i.db
  br i1 %or.cond3, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %uv__get_surrogate_value.exit._crit_edge
  %i.dd = load ptr, ptr %2, align 8
  %i.de = ptrtoint ptr %.3 to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  store i64 %i.dg, ptr %3, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %uv__get_surrogate_value.exit._crit_edge
  %4 = icmp slt i64 %.395, 0
  %.not202 = icmp eq ptr %.3, %i.ab
  %or.cond120 = and i1 %4, %.not202
  br i1 %or.cond120, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i16, ptr %.090.lcssa, align 2
  %i.di = icmp eq i16 %i.dh, 0
  %spec.select121 = select i1 %i.di, i64 0, i64 %.395
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.4 = phi i64 [ %.395, %bb.ae ], [ %spec.select121, %bb.af ] ; 2 uses
  store i8 0, ptr %.3, align 1
  %.not118 = icmp eq i64 %.4, 0                   ; 2 uses
  %.not203 = icmp eq ptr %3, null
  %brmerge = or i1 %.not203, %.not118
  %.mux = select i1 %.not118, i32 0, i32 -105
  br i1 %brmerge, label %bb.ao, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.ag, %bb.an
  %.040.i126 = phi i64 [ %.1.i136, %bb.an ], [ 0, %bb.ag ] ; 5 uses
  %.01939.i127 = phi i64 [ %spec.select24.i137, %bb.an ], [ %.4, %bb.ag ] ; 7 uses
  %.02138.i128 = phi ptr [ %i.dz, %bb.an ], [ %.090.lcssa, %bb.ag ] ; 5 uses
  %i.dj = load i16, ptr %.02138.i128, align 2     ; 4 uses
  %i.dk = and i16 %i.dj, -1024
  %or.cond.i.i129 = icmp eq i16 %i.dk, -10240
  %i.dl = icmp ne i64 %.01939.i127, 1
  %or.cond4.i.i130 = and i1 %i.dl, %or.cond.i.i129
  br i1 %or.cond4.i.i130, label %bb.ah, label %uv__get_surrogate_value.exit.i131

bb.ah:                                            ; preds = %.lr.ph.i125
  %i.dm = getelementptr inbounds nuw i8, ptr %.02138.i128, i64 2 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 2
  %i.do = and i16 %i.dn, -1024
  %or.cond7.i.i140 = icmp eq i16 %i.do, -9216
  br i1 %or.cond7.i.i140, label %bb.am, label %.thread35.i133

uv__get_surrogate_value.exit.i131:                ; preds = %.lr.ph.i125
  %i.dp = icmp slt i64 %.01939.i127, 0
  %i.dq = icmp eq i16 %i.dj, 0
  %or.cond.i132 = and i1 %i.dp, %i.dq
  br i1 %or.cond.i132, label %uv_utf16_length_as_wtf8.exit142, label %bb.ai

bb.ai:                                            ; preds = %uv__get_surrogate_value.exit.i131
  %i.dr = icmp ult i16 %i.dj, 128
  br i1 %i.dr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ds = add i64 %.040.i126, 1
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.dt = icmp ult i16 %i.dj, 2048
  br i1 %i.dt, label %bb.al, label %.thread35.i133

bb.al:                                            ; preds = %bb.ak
  %i.du = add i64 %.040.i126, 2
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.dv = add i64 %.040.i126, 4
  %i.dw = icmp sgt i64 %.01939.i127, 0
  %i.dx = sext i1 %i.dw to i64
  %spec.select.i141 = add nsw i64 %.01939.i127, %i.dx
  br label %bb.an

.thread35.i133:                                   ; preds = %bb.ak, %bb.ah
  %i.dy = add i64 %.040.i126, 3
  br label %bb.an

bb.an:                                            ; preds = %.thread35.i133, %bb.am, %bb.al, %bb.aj
  %.122.i134 = phi ptr [ %.02138.i128, %bb.aj ], [ %.02138.i128, %bb.al ], [ %.02138.i128, %.thread35.i133 ], [ %i.dm, %bb.am ]
  %.120.i135 = phi i64 [ %.01939.i127, %bb.aj ], [ %.01939.i127, %bb.al ], [ %.01939.i127, %.thread35.i133 ], [ %spec.select.i141, %bb.am ] ; 2 uses
  %.1.i136 = phi i64 [ %i.ds, %bb.aj ], [ %i.du, %bb.al ], [ %i.dy, %.thread35.i133 ], [ %i.dv, %bb.am ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.122.i134, i64 2
  %i.ea = icmp sgt i64 %.120.i135, 0
  %i.eb = sext i1 %i.ea to i64
  %spec.select24.i137 = add nsw i64 %.120.i135, %i.eb ; 2 uses
  %.not.i138 = icmp eq i64 %spec.select24.i137, 0
  br i1 %.not.i138, label %uv_utf16_length_as_wtf8.exit142, label %.lr.ph.i125, !llvm.loop !0

uv_utf16_length_as_wtf8.exit142:                  ; preds = %uv__get_surrogate_value.exit.i131, %bb.an
  %.0.lcssa.i139 = phi i64 [ %.1.i136, %bb.an ], [ %.040.i126, %uv__get_surrogate_value.exit.i131 ]
  %i.ec = add i64 %.0.lcssa.i139, %.188.lcssa
  store i64 %i.ec, ptr %3, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ag, %uv_utf16_length_as_wtf8.exit142, %bb.n, %bb.l
  %.089 = phi i32 [ %.mux, %bb.ag ], [ 0, %bb.l ], [ -12, %bb.n ], [ -105, %uv_utf16_length_as_wtf8.exit142 ]
  ret i32 %.089
}

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
end_hunk_1
