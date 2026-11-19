Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib/original/trees?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_tr_flush_block:bb.a
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.qo, align 4, !tbaa !23
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.qp, align 4, !tbaa !23
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.qq, align 4, !tbaa !23
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.qr, align 4, !tbaa !23
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.qt, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.qs, i8 0, i64 20, i1 false)
  %.not89 = icmp eq i32 %3, 0
  br i1 %.not89, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %init_block.exit
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 3 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !21 ; 2 uses
  %i.qw = icmp sgt i32 %i.qv, 8
  br i1 %i.qw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.qy = load i16, ptr %i.qx, align 8, !tbaa !20
  %i.qz = trunc i16 %i.qy to i8
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !26
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !27 ; 2 uses
  %i.re = add i64 %i.rd, 1
  store i64 %i.re, ptr %i.rc, align 8, !tbaa !27
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rd
  store i8 %i.qz, ptr %i.rf, align 1, !tbaa !23
  %i.rg = load i16, ptr %i.qx, align 8, !tbaa !20
  %i.rh = lshr i16 %i.rg, 8
  %i.ri = trunc nuw i16 %i.rh to i8
  %i.rj = load ptr, ptr %i.ra, align 8, !tbaa !26
  %i.rk = load i64, ptr %i.rc, align 8, !tbaa !27 ; 2 uses
  %i.rl = add i64 %i.rk, 1
  store i64 %i.rl, ptr %i.rc, align 8, !tbaa !27
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rk
  store i8 %i.ri, ptr %i.rm, align 1, !tbaa !23
  br label %bi_windup.exit

bb.cv:                                            ; preds = %bb.ct
  %i.rn = icmp sgt i32 %i.qv, 0
  br i1 %i.rn, label %bb.cw, label %bi_windup.exit

bb.cw:                                            ; preds = %bb.cv
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.rp = load i16, ptr %i.ro, align 8, !tbaa !20
  %i.rq = trunc i16 %i.rp to i8
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !26
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !27 ; 2 uses
  %i.rv = add i64 %i.ru, 1
  store i64 %i.rv, ptr %i.rt, align 8, !tbaa !27
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ru
  store i8 %i.rq, ptr %i.rw, align 1, !tbaa !23
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.rx = load i32, ptr %i.qu, align 4, !tbaa !21
  %i.ry = add i32 %i.rx, 7
  %i.rz = and i32 %i.ry, 7
  %i.sa = add nuw nsw i32 %i.rz, 1
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 5944
  store i32 %i.sa, ptr %i.sb, align 8, !tbaa !22
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.sc, align 8, !tbaa !20
  store i32 0, ptr %i.qu, align 4, !tbaa !21
  br label %bb.cx

bb.cx:                                            ; preds = %bi_windup.exit, %init_block.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @build_tree(ptr nofree noundef initializes((5300, 5308)) %0, ptr nofree noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !62     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 14 uses
  store i32 0, ptr %i.h, align 4, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 9 uses
  store i32 573, ptr %i.i, align 8, !tbaa !69
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph141

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader131:                                    ; preds = %bb.e
  %.pre = load i32, ptr %i.h, align 4, !tbaa !68  ; 3 uses
  %i.m = icmp slt i32 %.pre, 2
  br i1 %i.m, label %.lr.ph141, label %.lr.ph146

.lr.ph141:                                        ; preds = %bb.a, %.preheader131
  %.086.lcssa194 = phi i32 [ %.1, %.preheader131 ], [ -1, %bb.a ]
  %i.n = phi i32 [ %.pre, %.preheader131 ], [ 0, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %.not92 = icmp eq ptr %i.e, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.086139 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.e ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !23
  %.not93 = icmp eq i16 %i.t, 0
  br i1 %.not93, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 4, !tbaa !68
  %i.v = add nsw i32 %i.u, 1                      ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !68
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.y, ptr %i.x, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.z, align 1, !tbaa !23
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 0, ptr %i.aa, align 2, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.y, %bb.c ], [ %.086139, %bb.d ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader131, label %bb.b, !llvm.loop !49

bb.f:                                             ; preds = %.lr.ph141, %bb.h
  %i.ab = phi i32 [ %i.n, %.lr.ph141 ], [ %i.as, %bb.h ]
  %.2140 = phi i32 [ %.086.lcssa194, %.lr.ph141 ], [ %spec.select, %bb.h ] ; 3 uses
  %i.ac = icmp slt i32 %.2140, 2                  ; 2 uses
  %i.ad = add nsw i32 %.2140, 1                   ; 2 uses
  %spec.select = select i1 %i.ac, i32 %i.ad, i32 %.2140 ; 2 uses
  %spec.select94 = select i1 %i.ac, i32 %i.ad, i32 0 ; 2 uses
  %i.ae = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ae, ptr %i.h, align 4, !tbaa !68
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.af
  store i32 %spec.select94, ptr %i.ag, align 4, !tbaa !30
  %i.ah = sext i32 %spec.select94 to i64          ; 3 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ah
  store i16 1, ptr %i.ai, align 2, !tbaa !23
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !23
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !28
  %i.al = add i64 %i.ak, -1
  store i64 %i.al, ptr %i.q, align 8, !tbaa !28
  br i1 %.not92, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !23
  %i.ap = zext i16 %i.ao to i64
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !29
  %i.ar = sub i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %i.r, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = load i32, ptr %i.h, align 4, !tbaa !68  ; 3 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.f, label %.lr.ph146, !llvm.loop !50

.lr.ph146:                                        ; preds = %bb.h, %.preheader131
  %.2.lcssa = phi i32 [ %.1, %.preheader131 ], [ %spec.select, %bb.h ] ; 3 uses
  %.lcssa137 = phi i32 [ %.pre, %.preheader131 ], [ %i.as, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %.2.lcssa, ptr %i.au, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 4 uses
  %i.ax = lshr i32 %.lcssa137, 1
  %i.ay = zext nneg i32 %i.ax to i64
  br label %bb.i

.preheader:                                       ; preds = %pqdownheap.exit
  %.pre157.pre = load i32, ptr %i.h, align 4, !tbaa !68
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 17 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3012 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5308 ; 10 uses
  %2 = sext i32 %i.g to i64
  br label %bb.s

bb.i:                                             ; preds = %.lr.ph146, %pqdownheap.exit
  %indvars.iv151 = phi i64 [ %i.ay, %.lr.ph146 ], [ %indvars.iv.next152, %pqdownheap.exit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv151
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !30 ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 %i.be
  %i.bg = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %indvars.iv151.tr = trunc nuw i64 %indvars.iv151 to i32
  %i.bh = shl nuw i32 %indvars.iv151.tr, 1        ; 2 uses
  %.not58.i = icmp sgt i32 %i.bh, %i.bg
  br i1 %.not58.i, label %pqdownheap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.bi = trunc nuw nsw i64 %indvars.iv151 to i32
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.be
  br label %bb.j

bb.j:                                             ; preds = %bb.r, %.lr.ph.i
  %i.bk = phi i32 [ %i.bg, %.lr.ph.i ], [ %i.cs, %bb.r ]
  %.060.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %.0.i, %bb.r ] ; 7 uses
  %.04959.i = phi i32 [ %i.bi, %.lr.ph.i ], [ %.1.i, %bb.r ] ; 3 uses
  %i.bl = icmp slt i32 %.060.i, %i.bk
  br i1 %i.bl, label %bb.k, label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %bb.j
  %.pre.i = sext i32 %.060.i to i64
  br label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bm = or disjoint i32 %.060.i, 1              ; 2 uses
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !30
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !23 ; 2 uses
  %i.bt = sext i32 %.060.i to i64                 ; 3 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !23 ; 2 uses
  %i.bz = icmp ult i16 %i.bs, %i.by
  br i1 %i.bz, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp eq i16 %i.bs, %i.by
  br i1 %i.ca, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds i8, ptr %i.aw, i64 %i.bq
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !23
  %i.cd = getelementptr inbounds i8, ptr %i.aw, i64 %i.bw
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !23
  %.not55.i = icmp ugt i8 %i.cc, %i.ce
  br i1 %.not55.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %._crit_edge65.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge65.i ], [ %i.bn, %bb.n ], [ %i.bt, %bb.m ], [ %i.bt, %bb.l ]
  %.1.i = phi i32 [ %.060.i, %._crit_edge65.i ], [ %i.bm, %bb.n ], [ %.060.i, %bb.m ], [ %.060.i, %bb.l ] ; 3 uses
  %i.cf = load i16, ptr %i.bj, align 2, !tbaa !23 ; 2 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.pre-phi.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !30 ; 2 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !23 ; 2 uses
  %i.cl = icmp ult i16 %i.cf, %i.ck
  br i1 %i.cl, label %pqdownheap.exit.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp eq i16 %i.cf, %i.ck
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.co = getelementptr inbounds i8, ptr %i.aw, i64 %i.ci
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %.not56.i = icmp ugt i8 %i.cn, %i.cp
  br i1 %.not56.i, label %bb.r, label %pqdownheap.exit.loopexit

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = sext i32 %.04959.i to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.cq
  store i32 %i.ch, ptr %i.cr, align 4, !tbaa !30
  %.0.i = shl i32 %.1.i, 1                        ; 2 uses
  %i.cs = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.cs
  br i1 %.not.i, label %pqdownheap.exit.loopexit, label %bb.j, !llvm.loop !51

pqdownheap.exit.loopexit:                         ; preds = %bb.r, %bb.q, %bb.o
  %.049.lcssa.i.ph = phi i32 [ %.04959.i, %bb.o ], [ %.04959.i, %bb.q ], [ %.1.i, %bb.r ]
  %i.ct = sext i32 %.049.lcssa.i.ph to i64
  br label %pqdownheap.exit

pqdownheap.exit:                                  ; preds = %pqdownheap.exit.loopexit, %bb.i
  %.049.lcssa.i = phi i64 [ %indvars.iv151, %bb.i ], [ %i.ct, %pqdownheap.exit.loopexit ]
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.av, i64 %.049.lcssa.i
  store i32 %i.bd, ptr %i.cu, align 4, !tbaa !30
  %indvars.iv.next152 = add nsw i64 %indvars.iv151, -1
  %i.cv = icmp sgt i64 %indvars.iv151, 1
  br i1 %i.cv, label %bb.i, label %.preheader, !llvm.loop !52

bb.s:                                             ; preds = %.preheader, %pqdownheap.exit122
  %i.cw = phi i32 [ %.pre157.pre, %.preheader ], [ %i.hc, %pqdownheap.exit122 ] ; 3 uses
  %indvars.iv154 = phi i64 [ %2, %.preheader ], [ %indvars.iv.next155, %pqdownheap.exit122 ] ; 5 uses
  %i.cx = load i32, ptr %i.ba, align 4, !tbaa !30 ; 2 uses
  %i.cy = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cy, ptr %i.h, align 4, !tbaa !68
  %i.cz = sext i32 %i.cw to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !30 ; 3 uses
  store i32 %i.db, ptr %i.ba, align 4, !tbaa !30
  %i.dc = sext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.bb, i64 %i.dc
  %.not58.i95 = icmp slt i32 %i.cw, 3
  br i1 %.not58.i95, label %pqdownheap.exit108, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.s
  %i.de = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dc
  br label %bb.t

bb.t:                                             ; preds = %bb.ab, %.lr.ph.i96
  %i.df = phi i32 [ %i.cy, %.lr.ph.i96 ], [ %i.en, %bb.ab ]
  %.060.i97 = phi i32 [ 2, %.lr.ph.i96 ], [ %.0.i103, %bb.ab ] ; 7 uses
  %.04959.i98 = phi i32 [ 1, %.lr.ph.i96 ], [ %.1.i102, %bb.ab ] ; 3 uses
  %i.dg = icmp slt i32 %.060.i97, %i.df
  br i1 %i.dg, label %bb.u, label %._crit_edge65.i99

._crit_edge65.i99:                                ; preds = %bb.t
  %.pre.i100 = sext i32 %.060.i97 to i64
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dh = or disjoint i32 %.060.i97, 1            ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !30
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !23 ; 2 uses
  %i.do = sext i32 %.060.i97 to i64               ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !23 ; 2 uses
  %i.du = icmp ult i16 %i.dn, %i.dt
  br i1 %i.du, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dv = icmp eq i16 %i.dn, %i.dt
  br i1 %i.dv, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.dw = getelementptr inbounds i8, ptr %i.bb, i64 %i.dl
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %i.dy = getelementptr inbounds i8, ptr %i.bb, i64 %i.dr
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !23
  %.not55.i107 = icmp ugt i8 %i.dx, %i.dz
  br i1 %.not55.i107, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %._crit_edge65.i99
  %.pre-phi.i101 = phi i64 [ %.pre.i100, %._crit_edge65.i99 ], [ %i.di, %bb.x ], [ %i.do, %bb.w ], [ %i.do, %bb.v ]
  %.1.i102 = phi i32 [ %.060.i97, %._crit_edge65.i99 ], [ %i.dh, %bb.x ], [ %.060.i97, %bb.w ], [ %.060.i97, %bb.v ] ; 3 uses
  %i.ea = load i16, ptr %i.de, align 2, !tbaa !23 ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i101
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !30 ; 2 uses
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !23 ; 2 uses
  %i.eg = icmp ult i16 %i.ea, %i.ef
  br i1 %i.eg, label %pqdownheap.exit108.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = icmp eq i16 %i.ea, %i.ef
  br i1 %i.eh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ei = load i8, ptr %i.dd, align 1, !tbaa !23
  %i.ej = getelementptr inbounds i8, ptr %i.bb, i64 %i.ed
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !23
  %.not56.i106 = icmp ugt i8 %i.ei, %i.ek
  br i1 %.not56.i106, label %bb.ab, label %pqdownheap.exit108.loopexit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.el = sext i32 %.04959.i98 to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.el
  store i32 %i.ec, ptr %i.em, align 4, !tbaa !30
  %.0.i103 = shl i32 %.1.i102, 1                  ; 2 uses
  %i.en = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not.i104 = icmp sgt i32 %.0.i103, %i.en
  br i1 %.not.i104, label %pqdownheap.exit108.loopexit, label %bb.t, !llvm.loop !51

pqdownheap.exit108.loopexit:                      ; preds = %bb.ab, %bb.aa, %bb.y
  %.049.lcssa.i105.ph = phi i32 [ %.04959.i98, %bb.y ], [ %.04959.i98, %bb.aa ], [ %.1.i102, %bb.ab ]
  %i.eo = sext i32 %.049.lcssa.i105.ph to i64
  br label %pqdownheap.exit108

pqdownheap.exit108:                               ; preds = %pqdownheap.exit108.loopexit, %bb.s
  %.049.lcssa.i105 = phi i64 [ 1, %bb.s ], [ %i.eo, %pqdownheap.exit108.loopexit ]
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i105
  store i32 %i.db, ptr %i.ep, align 4, !tbaa !30
  %i.eq = load i32, ptr %i.ba, align 4, !tbaa !30 ; 2 uses
  %i.er = load i32, ptr %i.i, align 8, !tbaa !69
  %i.es = add nsw i32 %i.er, -1                   ; 2 uses
  store i32 %i.es, ptr %i.i, align 8, !tbaa !69
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.et
  store i32 %i.cx, ptr %i.eu, align 4, !tbaa !30
  %i.ev = load i32, ptr %i.i, align 8, !tbaa !69
  %i.ew = add nsw i32 %i.ev, -1                   ; 2 uses
  store i32 %i.ew, ptr %i.i, align 8, !tbaa !69
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ex
  store i32 %i.eq, ptr %i.ey, align 4, !tbaa !30
  %i.ez = sext i32 %i.cx to i64                   ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ez ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !23
  %i.fc = sext i32 %i.eq to i64                   ; 2 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fc ; 2 uses
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !23
  %i.ff = add i16 %i.fe, %i.fb
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv154 ; 2 uses
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !23
  %i.fh = getelementptr inbounds i8, ptr %i.bb, i64 %i.ez
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !23
  %i.fj = getelementptr inbounds i8, ptr %i.bb, i64 %i.fc
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !23
  %. = tail call i8 @llvm.umax.i8(i8 %i.fi, i8 %i.fk)
  %i.fl = add i8 %., 1
  %i.fm = getelementptr inbounds i8, ptr %i.bb, i64 %indvars.iv154 ; 2 uses
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !23
  %3 = trunc nsw i64 %indvars.iv154 to i32        ; 2 uses
  %i.fn = trunc i64 %indvars.iv154 to i16         ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 2
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !23
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fa, i64 2
  store i16 %i.fn, ptr %i.fp, align 2, !tbaa !23
  %indvars.iv.next155 = add nsw i64 %indvars.iv154, 1
  store i32 %3, ptr %i.ba, align 4, !tbaa !30
  %i.fq = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not58.i109 = icmp slt i32 %i.fq, 2
  br i1 %.not58.i109, label %pqdownheap.exit122, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %pqdownheap.exit108, %bb.aj
  %i.fr = phi i32 [ %i.gz, %bb.aj ], [ %i.fq, %pqdownheap.exit108 ]
  %.060.i111 = phi i32 [ %.0.i117, %bb.aj ], [ 2, %pqdownheap.exit108 ] ; 7 uses
  %.04959.i112 = phi i32 [ %.1.i116, %bb.aj ], [ 1, %pqdownheap.exit108 ] ; 3 uses
  %i.fs = icmp slt i32 %.060.i111, %i.fr
  br i1 %i.fs, label %bb.ac, label %._crit_edge65.i113

._crit_edge65.i113:                               ; preds = %.lr.ph.i110
  %.pre.i114 = sext i32 %.060.i111 to i64
  br label %bb.ag

bb.ac:                                            ; preds = %.lr.ph.i110
  %i.ft = or disjoint i32 %.060.i111, 1           ; 2 uses
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !30
  %i.fx = sext i32 %i.fw to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !23 ; 2 uses
  %i.ga = sext i32 %.060.i111 to i64              ; 3 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !30
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gd
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !23 ; 2 uses
  %i.gg = icmp ult i16 %i.fz, %i.gf
  br i1 %i.gg, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gh = icmp eq i16 %i.fz, %i.gf
  br i1 %i.gh, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gi = getelementptr inbounds i8, ptr %i.bb, i64 %i.fx
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !23
  %i.gk = getelementptr inbounds i8, ptr %i.bb, i64 %i.gd
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !23
  %.not55.i121 = icmp ugt i8 %i.gj, %i.gl
  br i1 %.not55.i121, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %._crit_edge65.i113
  %.pre-phi.i115 = phi i64 [ %.pre.i114, %._crit_edge65.i113 ], [ %i.fu, %bb.af ], [ %i.ga, %bb.ae ], [ %i.ga, %bb.ad ]
  %.1.i116 = phi i32 [ %.060.i111, %._crit_edge65.i113 ], [ %i.ft, %bb.af ], [ %.060.i111, %bb.ae ], [ %.060.i111, %bb.ad ] ; 3 uses
  %i.gm = load i16, ptr %i.fg, align 2, !tbaa !23 ; 2 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.pre-phi.i115
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !30 ; 2 uses
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !23 ; 2 uses
  %i.gs = icmp ult i16 %i.gm, %i.gr
  br i1 %i.gs, label %pqdownheap.exit122.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gt = icmp eq i16 %i.gm, %i.gr
  br i1 %i.gt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gu = load i8, ptr %i.fm, align 1, !tbaa !23
  %i.gv = getelementptr inbounds i8, ptr %i.bb, i64 %i.gp
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !23
  %.not56.i120 = icmp ugt i8 %i.gu, %i.gw
  br i1 %.not56.i120, label %bb.aj, label %pqdownheap.exit122.loopexit

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gx = sext i32 %.04959.i112 to i64
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.gx
  store i32 %i.go, ptr %i.gy, align 4, !tbaa !30
  %.0.i117 = shl i32 %.1.i116, 1                  ; 2 uses
  %i.gz = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %.not.i118 = icmp sgt i32 %.0.i117, %i.gz
  br i1 %.not.i118, label %pqdownheap.exit122.loopexit, label %.lr.ph.i110, !llvm.loop !51

pqdownheap.exit122.loopexit:                      ; preds = %bb.aj, %bb.ai, %bb.ag
  %.049.lcssa.i119.ph = phi i32 [ %.04959.i112, %bb.ag ], [ %.04959.i112, %bb.ai ], [ %.1.i116, %bb.aj ]
  %i.ha = sext i32 %.049.lcssa.i119.ph to i64
  br label %pqdownheap.exit122

pqdownheap.exit122:                               ; preds = %pqdownheap.exit122.loopexit, %pqdownheap.exit108
  %.049.lcssa.i119 = phi i64 [ 1, %pqdownheap.exit108 ], [ %i.ha, %pqdownheap.exit122.loopexit ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %.049.lcssa.i119
  store i32 %3, ptr %i.hb, align 4, !tbaa !30
  %i.hc = load i32, ptr %i.h, align 4, !tbaa !68  ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, 1
  br i1 %i.hd, label %bb.s, label %bb.ak, !llvm.loop !53

bb.ak:                                            ; preds = %pqdownheap.exit122
  %i.he = load i32, ptr %i.ba, align 4, !tbaa !30
  %i.hf = load i32, ptr %i.i, align 8, !tbaa !69
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr %i.i, align 8, !tbaa !69
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hh
  store i32 %i.he, ptr %i.hi, align 4, !tbaa !30
  %i.hj = load ptr, ptr %1, align 8, !tbaa !62    ; 4 uses
  %i.hk = load i32, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !63  ; 4 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !66 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !71
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !72 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !73 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 2976 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ht, i8 0, i64 32, i1 false), !tbaa !74
  %i.hu = load i32, ptr %i.i, align 8, !tbaa !69
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !30
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  store i16 0, ptr %i.ia, align 2, !tbaa !23
  %i.ib = load i32, ptr %i.i, align 8, !tbaa !69  ; 2 uses
  %i.ic = icmp slt i32 %i.ib, 572
  br i1 %i.ic, label %.lr.ph.i123, label %gen_bitlen.exit

.lr.ph.i123:                                      ; preds = %bb.ak
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 4 uses
  %.not103.i = icmp eq ptr %i.hm, null
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 5920 ; 2 uses
  %i.if = sext i32 %i.ib to i64
  %i.ig = add nsw i64 %i.if, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.aq, %.lr.ph.i123
  %indvars.iv.i = phi i64 [ %i.ig, %.lr.ph.i123 ], [ %indvars.iv.next.i, %bb.aq ] ; 2 uses
  %.0113.i = phi i32 [ 0, %.lr.ph.i123 ], [ %spec.select104.i, %bb.aq ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.i
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30 ; 4 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 2 ; 2 uses
  %i.im = load i16, ptr %i.il, align 2, !tbaa !23
  %i.in = zext i16 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !23
  %i.ir = zext i16 %i.iq to i32                   ; 2 uses
  %i.is = add nuw nsw i32 %i.ir, 1
  %.not101.i = icmp sle i32 %i.hs, %i.ir          ; 2 uses
  %spec.select.i = select i1 %.not101.i, i32 %i.hs, i32 %i.is ; 3 uses
  %i.it = zext i1 %.not101.i to i32
  %spec.select104.i = add nuw nsw i32 %.0113.i, %i.it ; 3 uses
  %i.iu = trunc i32 %spec.select.i to i16
  store i16 %i.iu, ptr %i.il, align 2, !tbaa !23
  %i.iv = icmp sgt i32 %i.ii, %i.hk
  br i1 %i.iv, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iw = sext i32 %spec.select.i to i64
  %i.ix = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.iw ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !74
  %i.iz = add i16 %i.iy, 1
  store i16 %i.iz, ptr %i.ix, align 2, !tbaa !74
  %.not102.i = icmp slt i32 %i.ii, %i.hq
  br i1 %.not102.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ja = sub nsw i32 %i.ii, %i.hq
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.084.i = phi i32 [ %i.jd, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.je = load i16, ptr %i.ik, align 2, !tbaa !23
  %i.jf = zext i16 %i.je to i64                   ; 2 uses
  %i.jg = add nsw i32 %.084.i, %spec.select.i
  %i.jh = zext i32 %i.jg to i64
  %i.ji = mul nuw nsw i64 %i.jf, %i.jh
  %i.jj = load i64, ptr %i.id, align 8, !tbaa !28
  %i.jk = add i64 %i.ji, %i.jj
  store i64 %i.jk, ptr %i.id, align 8, !tbaa !28
  br i1 %.not103.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ij
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !23
  %i.jo = zext i16 %i.jn to i32
  %i.jp = add nsw i32 %.084.i, %i.jo
  %i.jq = zext i32 %i.jp to i64
  %i.jr = mul nuw nsw i64 %i.jq, %i.jf
  %i.js = load i64, ptr %i.ie, align 8, !tbaa !29
  %i.jt = add i64 %i.jr, %i.js
  store i64 %i.jt, ptr %i.ie, align 8, !tbaa !29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ju = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.ju, 573
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.al, !llvm.loop !54

._crit_edge.i:                                    ; preds = %bb.aq
  %i.jv = icmp eq i32 %spec.select104.i, 0
  br i1 %i.jv, label %gen_bitlen.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %._crit_edge.i
  %i.jw = sext i32 %i.hs to i64                   ; 3 uses
  %i.jx = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.jw ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader105.i
  %.2.i = phi i32 [ %i.ki, %bb.at ], [ %spec.select104.i, %.preheader105.i ] ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %bb.as ], [ %i.jw, %bb.ar ] ; 2 uses
  %indvars.iv.next133.i = add nsw i64 %indvars.iv132.i, -1 ; 3 uses
  %i.jy = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %indvars.iv.next133.i
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !74 ; 2 uses
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.as, label %bb.at, !llvm.loop !55

bb.at:                                            ; preds = %bb.as
  %i.kb = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %indvars.iv.next133.i
  %i.kc = add i16 %i.jz, -1
  store i16 %i.kc, ptr %i.kb, align 2, !tbaa !74
  %i.kd = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %indvars.iv132.i ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !74
  %i.kf = add i16 %i.ke, 2
  store i16 %i.kf, ptr %i.kd, align 2, !tbaa !74
  %i.kg = load i16, ptr %i.jx, align 2, !tbaa !74
  %i.kh = add i16 %i.kg, -1
  store i16 %i.kh, ptr %i.jx, align 2, !tbaa !74
  %i.ki = add nsw i32 %.2.i, -2
  %i.kj = icmp sgt i32 %.2.i, 2
  br i1 %i.kj, label %bb.ar, label %.preheader.i, !llvm.loop !56

.preheader.i:                                     ; preds = %bb.at
  %.not122.i = icmp eq i32 %i.hs, 0
  br i1 %.not122.i, label %gen_bitlen.exit, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %.preheader.i, %.outer._crit_edge.i
  %indvars.iv138.i = phi i64 [ %indvars.iv.next139.i, %.outer._crit_edge.i ], [ %i.jw, %.preheader.i ] ; 5 uses
  %.190123.i = phi i32 [ %.291.lcssa.i, %.outer._crit_edge.i ], [ 573, %.preheader.i ] ; 2 uses
  %i.kk = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %indvars.iv138.i
  %i.kl = load i16, ptr %i.kk, align 2, !tbaa !74 ; 2 uses
  %.not99118.i = icmp eq i16 %i.kl, 0
  br i1 %.not99118.i, label %.outer._crit_edge.i, label %.outer.split.lr.ph.i

.outer.split.lr.ph.i:                             ; preds = %.lr.ph125.i
  %i.km = zext i16 %i.kl to i32
  %i.kn = trunc i64 %indvars.iv138.i to i16
  %i.ko = sext i32 %.190123.i to i64
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.i, %.outer.split.lr.ph.i
  %.088.ph120.i = phi i32 [ %i.km, %.outer.split.lr.ph.i ], [ %i.ld, %.outer.i ]
  %.291.ph119.i = phi i64 [ %i.ko, %.outer.split.lr.ph.i ], [ %indvars.iv.next136.i, %.outer.i ]
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.outer.split.i
  %indvars.iv135.i = phi i64 [ %.291.ph119.i, %.outer.split.i ], [ %indvars.iv.next136.i, %bb.au ]
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 4 uses
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv.next136.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !30 ; 2 uses
  %i.kr = icmp sgt i32 %i.kq, %i.hk
  br i1 %i.kr, label %bb.au, label %bb.av, !llvm.loop !57

bb.av:                                            ; preds = %bb.au
  %i.ks = sext i32 %i.kq to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.hj, i64 %i.ks ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 2 ; 2 uses
  %i.kv = load i16, ptr %i.ku, align 2, !tbaa !23
  %i.kw = zext i16 %i.kv to i64                   ; 2 uses
  %.not100.i = icmp eq i64 %indvars.iv138.i, %i.kw
  br i1 %.not100.i, label %.outer.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kx = sub nsw i64 %indvars.iv138.i, %i.kw
  %i.ky = load i16, ptr %i.kt, align 2, !tbaa !23
  %i.kz = zext i16 %i.ky to i64
  %i.la = mul nsw i64 %i.kx, %i.kz
  %i.lb = load i64, ptr %i.id, align 8, !tbaa !28
  %i.lc = add i64 %i.la, %i.lb
  store i64 %i.lc, ptr %i.id, align 8, !tbaa !28
  store i16 %i.kn, ptr %i.ku, align 2, !tbaa !23
end_hunk_0
