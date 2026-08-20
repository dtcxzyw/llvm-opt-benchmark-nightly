inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@zlib_tr_flush_block:bb.a
bb.bs:                                            ; preds = %bb.br
  %i.qo = getelementptr i8, ptr %0, i64 5924      ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4            ; 2 uses
  %i.qq = icmp sgt i32 %i.qp, 8
  br i1 %i.qq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.qr = getelementptr i8, ptr %0, i64 5920      ; 2 uses
  %i.qs = load i16, ptr %i.qr, align 8
  %i.qt = trunc i16 %i.qs to i8
  %i.qu = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = getelementptr i8, ptr %0, i64 40        ; 4 uses
  %i.qx = load i32, ptr %i.qw, align 8            ; 2 uses
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qw, align 8
  %i.qz = sext i32 %i.qx to i64
  %i.ra = getelementptr i8, ptr %i.qv, i64 %i.qz
  store i8 %i.qt, ptr %i.ra, align 1
  %i.rb = load i16, ptr %i.qr, align 8
  %i.rc = lshr i16 %i.rb, 8
  %i.rd = load ptr, ptr %i.qu, align 8
  %i.re = load i32, ptr %i.qw, align 8            ; 2 uses
  %i.rf = add i32 %i.re, 1
  store i32 %i.rf, ptr %i.qw, align 8
  br label %.sink.split.i

bb.bu:                                            ; preds = %bb.bs
  %i.rg = icmp sgt i32 %i.qp, 0
  br i1 %i.rg, label %bb.bv, label %bi_windup.exit

bb.bv:                                            ; preds = %bb.bu
  %i.rh = getelementptr i8, ptr %0, i64 5920
  %i.ri = load i16, ptr %i.rh, align 8
  %i.rj = getelementptr i8, ptr %0, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 8            ; 2 uses
  %i.rn = add i32 %i.rm, 1
  store i32 %i.rn, ptr %i.rl, align 8
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bv, %bb.bt
  %.sink16.i = phi i32 [ %i.rm, %bb.bv ], [ %i.re, %bb.bt ]
  %.sink14.i = phi ptr [ %i.rk, %bb.bv ], [ %i.rd, %bb.bt ]
  %.sink.in.i = phi i16 [ %i.ri, %bb.bv ], [ %i.rc, %bb.bt ]
  %.sink.i = trunc i16 %.sink.in.i to i8
  %i.ro = sext i32 %.sink16.i to i64
  %i.rp = getelementptr i8, ptr %.sink14.i, i64 %i.ro
  store i8 %.sink.i, ptr %i.rp, align 1
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.bu, %.sink.split.i
  %i.rq = getelementptr i8, ptr %0, i64 5920
  store i16 0, ptr %i.rq, align 8
  store i32 0, ptr %i.qo, align 4
  %i.rr = getelementptr i8, ptr %0, i64 5904      ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8
  %i.rt = add i64 %i.rs, 7                        ; 2 uses
  store i64 %i.rt, ptr %i.rr, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge, %bi_windup.exit
  %i.ru = phi i64 [ %.pre, %._crit_edge ], [ %i.rt, %bi_windup.exit ]
  %i.rv = lshr i64 %i.ru, 3
  ret i64 %i.rv
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @build_tree(ptr nofree noundef initializes((5276, 5284)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 17 uses
  %i.b = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 20
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 5276       ; 15 uses
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr i8, ptr %0, i64 5280       ; 9 uses
  store i32 573, ptr %i.h, align 8
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %.lr.ph132

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 2984
  %i.k = getelementptr i8, ptr %0, i64 5284
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

.preheader123:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.g, align 4             ; 2 uses
  %i.l = icmp slt i32 %.pre, 2
  br i1 %i.l, label %.lr.ph132, label %._crit_edge

.lr.ph132:                                        ; preds = %bb.a, %.preheader123
  %.087.lcssa185 = phi i32 [ %.1, %.preheader123 ], [ -1, %bb.a ]
  %i.m = phi i32 [ %.pre, %.preheader123 ], [ 0, %bb.a ]
  %i.n = getelementptr i8, ptr %0, i64 2984
  %i.o = getelementptr i8, ptr %0, i64 5284
  %i.p = getelementptr i8, ptr %0, i64 5888       ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %i.q = getelementptr i8, ptr %0, i64 5896       ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.087130 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.r = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.s = load i16, ptr %i.r, align 2
  %.not91 = icmp eq i16 %i.s, 0
  br i1 %.not91, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.g, align 4
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.g, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %i.v
  %i.x = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.x, ptr %i.w, align 4
  %i.y = getelementptr i8, ptr %i.k, i64 %indvars.iv
  store i8 0, ptr %i.y, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr i8, ptr %i.r, i64 2
  store i16 0, ptr %i.z, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.x, %bb.c ], [ %.087130, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader123, label %bb.b, !llvm.loop !29

bb.f:                                             ; preds = %.lr.ph132, %bb.h
  %i.aa = phi i32 [ %i.m, %.lr.ph132 ], [ %i.ar, %bb.h ]
  %.2131 = phi i32 [ %.087.lcssa185, %.lr.ph132 ], [ %spec.select, %bb.h ] ; 3 uses
  %i.ab = icmp slt i32 %.2131, 2                  ; 2 uses
  %i.ac = add nsw i32 %.2131, 1                   ; 2 uses
  %spec.select = select i1 %i.ab, i32 %i.ac, i32 %.2131 ; 2 uses
  %spec.select92 = select i1 %i.ab, i32 %i.ac, i32 0 ; 2 uses
  %i.ad = add nsw i32 %i.aa, 1                    ; 2 uses
  store i32 %i.ad, ptr %i.g, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %i.n, i64 %i.ae
  store i32 %spec.select92, ptr %i.af, align 4
  %i.ag = sext i32 %spec.select92 to i64          ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.a, i64 %i.ag
  store i16 1, ptr %i.ah, align 2
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  store i8 0, ptr %i.ai, align 1
  %i.aj = load i64, ptr %i.p, align 8
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.p, align 8
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr [4 x i8], ptr %i.d, i64 %i.ag
  %i.am = getelementptr i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i64
  %i.ap = load i64, ptr %i.q, align 8
  %i.aq = sub i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = load i32, ptr %i.g, align 4             ; 2 uses
  %i.as = icmp slt i32 %i.ar, 2
  br i1 %i.as, label %bb.f, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.h, %.preheader123
  %.2.lcssa = phi i32 [ %.1, %.preheader123 ], [ %spec.select, %bb.h ] ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 8         ; 2 uses
  store i32 %.2.lcssa, ptr %i.at, align 8
  %i.au = load i32, ptr %i.g, align 4             ; 3 uses
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %.lr.ph136, label %.preheader

.lr.ph136:                                        ; preds = %._crit_edge
  %i.aw = lshr i32 %i.au, 1
  %i.ax = getelementptr i8, ptr %0, i64 2984      ; 6 uses
  %i.ay = getelementptr i8, ptr %0, i64 5284      ; 4 uses
  %i.az = zext nneg i32 %i.aw to i64
  br label %bb.i

.preheader.loopexit:                              ; preds = %pqdownheap.exit
  %.pre146.pre = load i32, ptr %i.g, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.pre146 = phi i32 [ %.pre146.pre, %.preheader.loopexit ], [ %i.au, %._crit_edge ]
  %i.ba = getelementptr i8, ptr %0, i64 2984      ; 17 uses
  %i.bb = getelementptr i8, ptr %0, i64 2988      ; 5 uses
  %i.bc = getelementptr i8, ptr %0, i64 5284      ; 10 uses
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph136, %pqdownheap.exit
  %indvars.iv142 = phi i64 [ %i.az, %.lr.ph136 ], [ %indvars.iv.next143, %pqdownheap.exit ] ; 6 uses
  %i.bd = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv142
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = load i32, ptr %i.g, align 4             ; 2 uses
  %indvars.iv142.tr = trunc i64 %indvars.iv142 to i32
  %i.bi = shl i32 %indvars.iv142.tr, 1            ; 2 uses
  %.not58.i = icmp sgt i32 %i.bi, %i.bh
  br i1 %.not58.i, label %pqdownheap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %2 = trunc nuw nsw i64 %indvars.iv142 to i32
  %i.bj = getelementptr [4 x i8], ptr %i.a, i64 %i.bf
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph.i
  %i.bk = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.cs, %bb.r ]
  %.060.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.0.i, %bb.r ] ; 7 uses
  %.04959.i = phi i32 [ %2, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 3 uses
  %i.bl = icmp slt i32 %.060.i, %i.bk
  br i1 %i.bl, label %bb.k, label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %bb.j
  %.pre.i = sext i32 %.060.i to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bm = or disjoint i32 %.060.i, 1              ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %i.ax, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [4 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2            ; 2 uses
  %i.bt = sext i32 %.060.i to i64                 ; 3 uses
  %i.bu = getelementptr [4 x i8], ptr %i.ax, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.a, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = icmp ult i16 %i.bs, %i.by
  br i1 %i.bz, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp eq i16 %i.bs, %i.by
  br i1 %i.ca, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr i8, ptr %i.ay, i64 %i.bq
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = getelementptr i8, ptr %i.ay, i64 %i.bw
  %i.ce = load i8, ptr %i.cd, align 1
  %.not55.i = icmp ugt i8 %i.cc, %i.ce
  br i1 %.not55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %._crit_edge65.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge65.i ], [ %i.bn, %bb.n ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ]
  %.1.i = phi i32 [ %.060.i, %._crit_edge65.i ], [ %i.bm, %bb.n ], [ %.060.i, %bb.m ], [ %.060.i, %bb.l ] ; 3 uses
  %i.cf = load i16, ptr %i.bj, align 2            ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.ax, i64 %.pre-phi.i
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2            ; 2 uses
  %i.cl = icmp ult i16 %i.cf, %i.ck
  br i1 %i.cl, label %pqdownheap.exit.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp eq i16 %i.cf, %i.ck
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = load i8, ptr %i.bg, align 1
  %i.co = getelementptr i8, ptr %i.ay, i64 %i.ci
  %i.cp = load i8, ptr %i.co, align 1
  %.not56.i = icmp ugt i8 %i.cn, %i.cp
  br i1 %.not56.i, label %bb.r, label %pqdownheap.exit.loopexit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = sext i32 %.04959.i to i64
  %i.cr = getelementptr [4 x i8], ptr %i.ax, i64 %i.cq
  store i32 %i.ch, ptr %i.cr, align 4
  %.0.i = shl i32 %.1.i, 1                        ; 2 uses
  %i.cs = load i32, ptr %i.g, align 4             ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.cs
  br i1 %.not.i, label %pqdownheap.exit.loopexit, label %bb.j, !llvm.loop !31

pqdownheap.exit.loopexit:                         ; preds = %bb.r, %bb.q, %bb.o
  %.049.lcssa.i.ph = phi i32 [ %.04959.i, %bb.o ], [ %.04959.i, %bb.q ], [ %.1.i, %bb.r ]
  %3 = sext i32 %.049.lcssa.i.ph to i64
  br label %pqdownheap.exit

pqdownheap.exit:                                  ; preds = %pqdownheap.exit.loopexit, %bb.i
  %.049.lcssa.i = phi i64 [ %indvars.iv142, %bb.i ], [ %3, %pqdownheap.exit.loopexit ]
  %i.ct = getelementptr [4 x i8], ptr %i.ax, i64 %.049.lcssa.i
  store i32 %i.be, ptr %i.ct, align 4
  %indvars.iv.next143 = add nsw i64 %indvars.iv142, -1
  %i.cu = icmp sgt i64 %indvars.iv142, 1
  br i1 %i.cu, label %bb.i, label %.preheader.loopexit, !llvm.loop !32

bb.s:                                             ; preds = %.preheader, %pqdownheap.exit120
  %i.cv = phi i32 [ %i.he, %pqdownheap.exit120 ], [ %.pre146, %.preheader ] ; 2 uses
  %.0 = phi i32 [ %i.fr, %pqdownheap.exit120 ], [ %i.f, %.preheader ] ; 5 uses
  %i.cw = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.cx = add i32 %i.cv, -1                       ; 3 uses
  store i32 %i.cx, ptr %i.g, align 4
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr [4 x i8], ptr %i.ba, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4            ; 3 uses
  store i32 %i.da, ptr %i.bb, align 4
  %i.db = sext i32 %i.da to i64                   ; 2 uses
  %i.dc = getelementptr i8, ptr %i.bc, i64 %i.db
  %.not58.i93 = icmp slt i32 %i.cx, 2
  br i1 %.not58.i93, label %pqdownheap.exit106, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.s
  %i.dd = getelementptr [4 x i8], ptr %i.a, i64 %i.db
  br label %bb.t

bb.t:                                             ; preds = %bb.ab, %.lr.ph.i94
  %i.de = phi i32 [ %i.cx, %.lr.ph.i94 ], [ %i.em, %bb.ab ]
  %.060.i95 = phi i32 [ 2, %.lr.ph.i94 ], [ %.0.i101, %bb.ab ] ; 7 uses
  %.04959.i96 = phi i32 [ 1, %.lr.ph.i94 ], [ %.1.i100, %bb.ab ] ; 3 uses
  %i.df = icmp slt i32 %.060.i95, %i.de
  br i1 %i.df, label %bb.u, label %._crit_edge65.i97

._crit_edge65.i97:                                ; preds = %bb.t
  %.pre.i98 = sext i32 %.060.i95 to i64
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dg = or disjoint i32 %.060.i95, 1            ; 2 uses
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr [4 x i8], ptr %i.ba, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = sext i32 %i.dj to i64                   ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %i.a, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2            ; 2 uses
  %i.dn = sext i32 %.060.i95 to i64               ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.ba, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %i.a, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2            ; 2 uses
  %i.dt = icmp ult i16 %i.dm, %i.ds
  br i1 %i.dt, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.du = icmp eq i16 %i.dm, %i.ds
  br i1 %i.du, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dv = getelementptr i8, ptr %i.bc, i64 %i.dk
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr i8, ptr %i.bc, i64 %i.dq
  %i.dy = load i8, ptr %i.dx, align 1
  %.not55.i105 = icmp ugt i8 %i.dw, %i.dy
  br i1 %.not55.i105, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %._crit_edge65.i97
  %.pre-phi.i99 = phi i64 [ %.pre.i98, %._crit_edge65.i97 ], [ %i.dh, %bb.x ], [ %i.dn, %bb.w ], [ %i.dn, %bb.v ]
  %.1.i100 = phi i32 [ %.060.i95, %._crit_edge65.i97 ], [ %i.dg, %bb.x ], [ %.060.i95, %bb.w ], [ %.060.i95, %bb.v ] ; 3 uses
  %i.dz = load i16, ptr %i.dd, align 2            ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.ba, i64 %.pre-phi.i99
  %i.eb = load i32, ptr %i.ea, align 4            ; 2 uses
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.a, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2            ; 2 uses
  %i.ef = icmp ult i16 %i.dz, %i.ee
  br i1 %i.ef, label %pqdownheap.exit106.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = icmp eq i16 %i.dz, %i.ee
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = load i8, ptr %i.dc, align 1
  %i.ei = getelementptr i8, ptr %i.bc, i64 %i.ec
  %i.ej = load i8, ptr %i.ei, align 1
  %.not56.i104 = icmp ugt i8 %i.eh, %i.ej
  br i1 %.not56.i104, label %bb.ab, label %pqdownheap.exit106.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ek = sext i32 %.04959.i96 to i64
  %i.el = getelementptr [4 x i8], ptr %i.ba, i64 %i.ek
  store i32 %i.eb, ptr %i.el, align 4
  %.0.i101 = shl i32 %.1.i100, 1                  ; 2 uses
  %i.em = load i32, ptr %i.g, align 4             ; 2 uses
  %.not.i102 = icmp sgt i32 %.0.i101, %i.em
  br i1 %.not.i102, label %pqdownheap.exit106.loopexit, label %bb.t, !llvm.loop !31

pqdownheap.exit106.loopexit:                      ; preds = %bb.ab, %bb.aa, %bb.y
  %.049.lcssa.i103.ph = phi i32 [ %.04959.i96, %bb.y ], [ %.04959.i96, %bb.aa ], [ %.1.i100, %bb.ab ]
  %i.en = sext i32 %.049.lcssa.i103.ph to i64
  br label %pqdownheap.exit106

pqdownheap.exit106:                               ; preds = %pqdownheap.exit106.loopexit, %bb.s
  %.049.lcssa.i103 = phi i64 [ 1, %bb.s ], [ %i.en, %pqdownheap.exit106.loopexit ]
  %i.eo = getelementptr [4 x i8], ptr %i.ba, i64 %.049.lcssa.i103
  store i32 %i.da, ptr %i.eo, align 4
  %i.ep = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.eq = load i32, ptr %i.h, align 8
  %i.er = add i32 %i.eq, -1                       ; 2 uses
  store i32 %i.er, ptr %i.h, align 8
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [4 x i8], ptr %i.ba, i64 %i.es
  store i32 %i.cw, ptr %i.et, align 4
  %i.eu = load i32, ptr %i.h, align 8
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.h, align 8
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.ba, i64 %i.ew
  store i32 %i.ep, ptr %i.ex, align 4
  %i.ey = sext i32 %i.cw to i64                   ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %i.a, i64 %i.ey ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = sext i32 %i.ep to i64                   ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.a, i64 %i.fb ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = add i16 %i.fd, %i.fa
  %i.ff = sext i32 %.0 to i64                     ; 2 uses
  %i.fg = getelementptr [4 x i8], ptr %i.a, i64 %i.ff ; 2 uses
  store i16 %i.fe, ptr %i.fg, align 2
  %i.fh = getelementptr i8, ptr %i.bc, i64 %i.ey
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = getelementptr i8, ptr %i.bc, i64 %i.fb
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = tail call i8 @llvm.umax.i8(i8 %i.fi, i8 %i.fk)
  %i.fm = add i8 %i.fl, 1
  %i.fn = getelementptr i8, ptr %i.bc, i64 %i.ff  ; 2 uses
  store i8 %i.fm, ptr %i.fn, align 1
  %i.fo = trunc i32 %.0 to i16                    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fc, i64 2
  store i16 %i.fo, ptr %i.fp, align 2
  %i.fq = getelementptr i8, ptr %i.ez, i64 2
  store i16 %i.fo, ptr %i.fq, align 2
  %i.fr = add i32 %.0, 1
  store i32 %.0, ptr %i.bb, align 4
  %i.fs = load i32, ptr %i.g, align 4             ; 2 uses
  %.not58.i107 = icmp slt i32 %i.fs, 2
  br i1 %.not58.i107, label %pqdownheap.exit120, label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %pqdownheap.exit106, %bb.aj
  %i.ft = phi i32 [ %i.hb, %bb.aj ], [ %i.fs, %pqdownheap.exit106 ]
  %.060.i109 = phi i32 [ %.0.i115, %bb.aj ], [ 2, %pqdownheap.exit106 ] ; 7 uses
  %.04959.i110 = phi i32 [ %.1.i114, %bb.aj ], [ 1, %pqdownheap.exit106 ] ; 3 uses
  %i.fu = icmp slt i32 %.060.i109, %i.ft
  br i1 %i.fu, label %bb.ac, label %._crit_edge65.i111

._crit_edge65.i111:                               ; preds = %.lr.ph.i108
  %.pre.i112 = sext i32 %.060.i109 to i64
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i108
  %i.fv = or disjoint i32 %.060.i109, 1           ; 2 uses
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr [4 x i8], ptr %i.ba, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4
  %i.fz = sext i32 %i.fy to i64                   ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %i.a, i64 %i.fz
  %i.gb = load i16, ptr %i.ga, align 2            ; 2 uses
  %i.gc = sext i32 %.060.i109 to i64              ; 3 uses
  %i.gd = getelementptr [4 x i8], ptr %i.ba, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %i.a, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2            ; 2 uses
  %i.gi = icmp ult i16 %i.gb, %i.gh
  br i1 %i.gi, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gj = icmp eq i16 %i.gb, %i.gh
  br i1 %i.gj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gk = getelementptr i8, ptr %i.bc, i64 %i.fz
  %i.gl = load i8, ptr %i.gk, align 1
  %i.gm = getelementptr i8, ptr %i.bc, i64 %i.gf
  %i.gn = load i8, ptr %i.gm, align 1
  %.not55.i119 = icmp ugt i8 %i.gl, %i.gn
  br i1 %.not55.i119, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i111
  %.pre-phi.i113 = phi i64 [ %.pre.i112, %._crit_edge65.i111 ], [ %i.fw, %bb.af ], [ %i.gc, %bb.ae ], [ %i.gc, %bb.ad ]
  %.1.i114 = phi i32 [ %.060.i109, %._crit_edge65.i111 ], [ %i.fv, %bb.af ], [ %.060.i109, %bb.ae ], [ %.060.i109, %bb.ad ] ; 3 uses
  %i.go = load i16, ptr %i.fg, align 2            ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.ba, i64 %.pre-phi.i113
  %i.gq = load i32, ptr %i.gp, align 4            ; 2 uses
  %i.gr = sext i32 %i.gq to i64                   ; 2 uses
  %i.gs = getelementptr [4 x i8], ptr %i.a, i64 %i.gr
  %i.gt = load i16, ptr %i.gs, align 2            ; 2 uses
  %i.gu = icmp ult i16 %i.go, %i.gt
end_hunk_0
