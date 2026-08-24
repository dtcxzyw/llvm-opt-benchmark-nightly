Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_huf?download=true
inline.NumInlined: 45
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@internal_huf_compress:bb.a
  %i.tb = sext i32 %.15.i to i64
  %i.tc = add i64 %i.ta, %i.tb                    ; 3 uses
  %i.td = icmp ugt i64 %i.tc, 4294967295
  br i1 %i.td, label %hufPackEncTable.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.te = trunc nuw i64 %i.tc to i32
  %i.tf = ptrtoint ptr %i.b to i64
  %i.tg = sub i64 %i.sy, %i.tf
  %i.th = trunc i64 %i.tg to i32
  %i.ti = add nuw nsw i64 %i.tc, 7
  %i.tj = lshr i64 %i.ti, 3
  store i32 %storemerge.i, ptr %1, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.im, ptr %i.tk, align 1
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.th, ptr %i.tl, align 1
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.te, ptr %i.tm, align 1
  %i.tn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.tn, align 1
  %i.to = and i64 %i.tj, 536870911
  %i.tp = ptrtoint ptr %1 to i64
  %i.tq = sub i64 %i.sy, %i.tp
  %i.tr = add i64 %i.tq, %i.to
  br label %hufPackEncTable.exit.thread.sink.split

hufPackEncTable.exit.thread.sink.split:           ; preds = %bb.a, %bb.bi
  %.sink = phi i64 [ %i.tr, %bb.bi ], [ 0, %bb.a ]
  store i64 %.sink, ptr %0, align 8, !tbaa !10
  br label %hufPackEncTable.exit.thread

hufPackEncTable.exit.thread:                      ; preds = %.lr.ph176.i, %.lr.ph182.i, %.lr.ph187.i, %.lr.ph192.i, %.lr.ph327.i, %.lr.ph332.i, %.lr.ph337.i, %.lr.ph.i57, %.lr.ph367.i, %.lr.ph372.i, %.lr.ph377.i, %.lr.ph355.i, %hufPackEncTable.exit.thread.sink.split, %bb.bh, %bb.bf, %bb.ao, %bb.b
  %.0 = phi i32 [ 4, %.lr.ph372.i ], [ 4, %.lr.ph327.i ], [ 3, %bb.b ], [ 4, %.lr.ph192.i ], [ 4, %.lr.ph355.i ], [ 4, %.lr.ph187.i ], [ 4, %.lr.ph377.i ], [ 4, %bb.ao ], [ 4, %.lr.ph182.i ], [ 4, %.lr.ph337.i ], [ 4, %bb.bf ], [ 4, %.lr.ph.i57 ], [ 4, %.lr.ph367.i ], [ 4, %bb.bh ], [ 4, %.lr.ph332.i ], [ 0, %hufPackEncTable.exit.thread.sink.split ], [ 4, %.lr.ph176.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 24) i32 @internal_huf_decompress(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(address) %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [59 x i64], align 16              ; 11 uses
  %i.b = alloca [59 x i64], align 16              ; 7 uses
  %i.c = alloca [59 x i64], align 16              ; 26 uses
  %i.d = alloca [59 x i64], align 16              ; 23 uses
  %i.e = alloca [59 x i64], align 16              ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.060 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.h = icmp ult i64 %2, 20
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not76 = icmp eq i64 %4, 0
  %. = select i1 %.not76, i32 0, i32 3
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %.not74 = icmp eq i64 %6, 786440
  br i1 %.not74, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.i = load i32, ptr %1, align 1                ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i32, ptr %i.l, align 1              ; 2 uses
  %i.n = icmp ugt i32 %i.i, 65536
  %i.o = icmp ugt i32 %i.k, 65536
  %or.cond = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 11 uses
  %i.q = zext i32 %i.m to i64                     ; 4 uses
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 20
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = icmp ugt i32 %i.m, 128
  br i1 %i.v, label %bb.i, label %bb.at

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i32 %i.k, ptr %5, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.w, align 4, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i8 -1, ptr %i.x, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 9 ; 3 uses
  store i8 0, ptr %i.y, align 1, !tbaa !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.d, i8 0, i64 472, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.b, i8 -1, i64 472, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.c, i8 0, i64 472, i1 false), !tbaa !10
  %i.z = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  %i.aa = zext nneg i32 %i.i to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.k to i64               ; 3 uses
  %.not233.i = icmp samesign ugt i32 %i.i, %i.k   ; 2 uses
  br i1 %.not233.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.loopexit.i:                   ; preds = %bb.y
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.phi.trans.insert145 = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %.phi.trans.insert177 = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %.pre178 = load i64, ptr %.phi.trans.insert177, align 8, !tbaa !10
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %.pre180 = load i64, ptr %.phi.trans.insert179, align 16, !tbaa !10
  %i.ac = load <32 x i64>, ptr %.phi.trans.insert.i, align 8, !tbaa !10
  %i.ad = trunc <32 x i64> %i.ac to <32 x i32>    ; 2 uses
  %i.ae = load <16 x i64>, ptr %.phi.trans.insert145, align 8, !tbaa !10
  %i.af = trunc <16 x i64> %i.ae to <16 x i32>
  %i.ag = trunc i64 %.pre178 to i32
  %i.ah = trunc i64 %.pre180 to i32
  %i.ai = shufflevector <32 x i32> %i.ad, <32 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %rdx.op = add <16 x i32> %i.ai, %i.af
  %i.aj = shufflevector <16 x i32> %rdx.op, <16 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = shufflevector <32 x i32> %i.aj, <32 x i32> %i.ad, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.al = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.ak)
  %op.rdx = add i32 %i.al, %i.ag
  %op.rdx290 = add i32 %op.rdx, %i.ah
  br label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.critedge.preheader.loopexit.i, %bb.i
  %i.am = phi i32 [ %op.rdx290, %.critedge.preheader.loopexit.i ], [ 0, %bb.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !10
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add i32 %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.as = load i64, ptr %i.ar, align 16, !tbaa !10
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.aq, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = add i32 %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.ba = load i64, ptr %i.az, align 16, !tbaa !10
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !10
  %i.bf = trunc i64 %i.be to i32
  %i.bg = add i32 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.bi = load i64, ptr %i.bh, align 16, !tbaa !10
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add i32 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = add i32 %i.bk, %i.bn                    ; 4 uses
  store i32 %i.bo, ptr %i.w, align 4, !tbaa !64
  %i.bp = icmp ugt i32 %i.bo, 65537
  br i1 %i.bp, label %bb.z, label %bb.aa

.lr.ph.i:                                         ; preds = %bb.i, %bb.y
  %i.bq = phi i8 [ %i.dn, %bb.y ], [ 0, %bb.i ]   ; 5 uses
  %i.br = phi i8 [ %i.do, %bb.y ], [ -1, %bb.i ]  ; 5 uses
  %.0131237.i = phi i64 [ %i.dp, %bb.y ], [ %i.aa, %bb.i ] ; 4 uses
  %.0193236.i = phi i32 [ %.2195.i, %bb.y ], [ 0, %bb.i ] ; 3 uses
  %.0196235.i = phi i64 [ %.2198.i, %bb.y ], [ 0, %bb.i ] ; 2 uses
  %.0201234.i = phi ptr [ %.2203.i, %bb.y ], [ %i.p, %bb.i ] ; 3 uses
  %.not149.i = icmp ult ptr %.0201234.i, %i.z
  br i1 %.not149.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %.not153.i = icmp eq ptr %.060, null
  br i1 %.not153.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.k:                                             ; preds = %.lr.ph.i
  %i.bs = icmp slt i32 %.0193236.i, 6
  br i1 %i.bs, label %.lr.ph.i.i, label %fasthuf_read_bits.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %i.bt = phi ptr [ %i.bx, %.lr.ph.i.i ], [ %.0201234.i, %bb.k ] ; 2 uses
  %i.bu = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.0196235.i, %bb.k ]
  %i.bv = phi i32 [ %i.cb, %.lr.ph.i.i ], [ %.0193236.i, %bb.k ] ; 2 uses
  %i.bw = shl i64 %i.bu, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i64
  %i.ca = or disjoint i64 %i.bw, %i.bz            ; 2 uses
  %i.cb = add nsw i32 %i.bv, 8                    ; 2 uses
  %i.cc = icmp slt i32 %i.bv, -2
  br i1 %i.cc, label %.lr.ph.i.i, label %fasthuf_read_bits.exit.i, !llvm.loop !67

fasthuf_read_bits.exit.i:                         ; preds = %.lr.ph.i.i, %bb.k
  %.6207.i = phi ptr [ %.0201234.i, %bb.k ], [ %i.bx, %.lr.ph.i.i ] ; 7 uses
  %.5.i = phi i64 [ %.0196235.i, %bb.k ], [ %i.ca, %.lr.ph.i.i ] ; 6 uses
  %.lcssa.i.i = phi i32 [ %.0193236.i, %bb.k ], [ %i.cb, %.lr.ph.i.i ] ; 3 uses
  %i.cd = add nsw i32 %.lcssa.i.i, -6             ; 5 uses
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = lshr i64 %.5.i, %i.ce
  %i.cg = and i64 %i.cf, 63                       ; 9 uses
  %i.ch = icmp samesign ult i64 %i.cg, 59
  br i1 %i.ch, label %bb.l, label %bb.r

bb.l:                                             ; preds = %fasthuf_read_bits.exit.i
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %bb.y, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = zext i8 %i.br to i64
  %i.ck = icmp samesign ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = trunc nuw nsw i64 %i.cg to i8           ; 2 uses
  store i8 %i.cl, ptr %i.x, align 8, !tbaa !65
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cm = phi i8 [ %i.cl, %bb.n ], [ %i.br, %bb.m ]
  %i.cn = zext nneg i8 %i.bq to i64
  %i.co = icmp samesign ugt i64 %i.cg, %i.cn
  br i1 %i.co, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cp = trunc nuw nsw i64 %i.cg to i8           ; 2 uses
  store i8 %i.cp, ptr %i.y, align 1, !tbaa !66
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cq = phi i8 [ %i.cp, %bb.p ], [ %i.bq, %bb.o ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cg ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !10
  br label %bb.w

bb.r:                                             ; preds = %fasthuf_read_bits.exit.i
  %i.cu = icmp eq i64 %i.cg, 63
  br i1 %i.cu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not150.i = icmp ult ptr %.6207.i, %i.z
  br i1 %.not150.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not151.i = icmp eq ptr %.060, null
  br i1 %.not151.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.u:                                             ; preds = %bb.s
  %i.cv = icmp samesign ult i32 %.lcssa.i.i, 14
  br i1 %i.cv, label %.lr.ph.i168.i, label %fasthuf_read_bits.exit170.i

.lr.ph.i168.i:                                    ; preds = %bb.u
  %i.cw = shl i64 %.5.i, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.6207.i, i64 1
  %i.cy = load i8, ptr %.6207.i, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cw, %i.cz
  %i.db = add nuw nsw i32 %.lcssa.i.i, 2
  br label %fasthuf_read_bits.exit170.i, !llvm.loop !67

fasthuf_read_bits.exit170.i:                      ; preds = %.lr.ph.i168.i, %bb.u
  %.7208.i = phi ptr [ %i.cx, %.lr.ph.i168.i ], [ %.6207.i, %bb.u ]
  %.6.i = phi i64 [ %i.da, %.lr.ph.i168.i ], [ %.5.i, %bb.u ] ; 2 uses
  %.lcssa.i167.i = phi i32 [ %i.db, %.lr.ph.i168.i ], [ %i.cd, %bb.u ]
  %i.dc = add nsw i32 %.lcssa.i167.i, -8          ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = lshr i64 %.6.i, %i.dd
  %i.df = and i64 %i.de, 255
  %i.dg = add nuw nsw i64 %.0131237.i, 5
  %i.dh = add nuw nsw i64 %i.dg, %i.df
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.di = add i64 %.0131237.i, -58
  %i.dj = add i64 %i.di, %i.cg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %fasthuf_read_bits.exit170.i, %bb.q
  %i.dk = phi i8 [ %i.cq, %bb.q ], [ %i.bq, %fasthuf_read_bits.exit170.i ], [ %i.bq, %bb.v ]
  %i.dl = phi i8 [ %i.cm, %bb.q ], [ %i.br, %fasthuf_read_bits.exit170.i ], [ %i.br, %bb.v ]
  %.1202.i = phi ptr [ %.6207.i, %bb.q ], [ %.7208.i, %fasthuf_read_bits.exit170.i ], [ %.6207.i, %bb.v ]
  %.1197.i = phi i64 [ %.5.i, %bb.q ], [ %.6.i, %fasthuf_read_bits.exit170.i ], [ %.5.i, %bb.v ]
  %.1194.i = phi i32 [ %i.cd, %bb.q ], [ %i.dc, %fasthuf_read_bits.exit170.i ], [ %i.cd, %bb.v ]
  %.1132.i = phi i64 [ %.0131237.i, %bb.q ], [ %i.dh, %fasthuf_read_bits.exit170.i ], [ %i.dj, %bb.v ] ; 2 uses
  %i.dm = icmp samesign ugt i64 %.1132.i, %i.ab
  br i1 %i.dm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.not152.i = icmp eq ptr %.060, null
  br i1 %.not152.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.y:                                             ; preds = %bb.w, %bb.l
  %i.dn = phi i8 [ %i.bq, %bb.l ], [ %i.dk, %bb.w ]
  %i.do = phi i8 [ %i.br, %bb.l ], [ %i.dl, %bb.w ]
  %.2203.i = phi ptr [ %.6207.i, %bb.l ], [ %.1202.i, %bb.w ]
  %.2198.i = phi i64 [ %.5.i, %bb.l ], [ %.1197.i, %bb.w ]
  %.2195.i = phi i32 [ %i.cd, %bb.l ], [ %.1194.i, %bb.w ]
  %.2.i = phi i64 [ %.0131237.i, %bb.l ], [ %.1132.i, %bb.w ] ; 2 uses
  %i.dp = add nuw nsw i64 %.2.i, 1
  %.not.not.i = icmp ult i64 %.2.i, %i.ab
  br i1 %.not.not.i, label %.lr.ph.i, label %.critedge.preheader.loopexit.i, !llvm.loop !68

bb.z:                                             ; preds = %.critedge.preheader.i
  %.not162.i = icmp eq ptr %.060, null
  br i1 %.not162.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.aa:                                            ; preds = %.critedge.preheader.i
  %i.dq = load i8, ptr %i.x, align 8, !tbaa !65   ; 7 uses
  %i.dr = load i8, ptr %i.y, align 1, !tbaa !66   ; 4 uses
  %.not154240.i = icmp ugt i8 %i.dq, %i.dr        ; 3 uses
  %.pre181 = zext i8 %i.dr to i64                 ; 16 uses
  br i1 %.not154240.i, label %._crit_edge253.i, label %.lr.ph242.preheader.i

.lr.ph242.preheader.i:                            ; preds = %bb.aa
  %i.ds = zext i8 %i.dq to i64                    ; 8 uses
  %i.dt = add nuw nsw i64 %.pre181, 1
  %i.du = sub nsw i64 %i.dt, %i.ds                ; 3 uses
  %min.iters.check258 = icmp ult i64 %i.du, 2
  br i1 %min.iters.check258, label %.lr.ph242.i.preheader.a, label %vector.ph259

vector.ph259:                                     ; preds = %.lr.ph242.preheader.i
  %n.vec260 = and i64 %i.du, -2                   ; 3 uses
  %i.dv = add nsw i64 %n.vec260, %i.ds
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre181, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert261 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat262 = shufflevector <2 x i64> %broadcast.splatinsert261, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat262, <i64 0, i64 1>
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph259
  %index264 = phi i64 [ 0, %vector.ph259 ], [ %index.next265, %vector.body263 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph259 ], [ %vec.ind.next, %vector.body263 ] ; 2 uses
  %i.dw = add nuw i64 %index264, %i.ds            ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.dw
  %wide.load = load <2 x i64>, ptr %i.dx, align 8, !tbaa !10
  %i.dy = uitofp <2 x i64> %wide.load to <2 x double>
  %i.dz = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ea = shl <2 x i64> splat (i64 2), %i.dz
  %i.eb = sitofp <2 x i64> %i.ea to <2 x double>
  %i.ec = fmul nnan <2 x double> %i.dy, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.dw
  store <2 x double> %i.ec, ptr %i.ed, align 8, !tbaa !69
  %index.next265 = add nuw i64 %index264, 2       ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ee = icmp eq i64 %index.next265, %n.vec260
  br i1 %i.ee, label %middle.block266, label %vector.body263, !llvm.loop !71

middle.block266:                                  ; preds = %vector.body263
  %cmp.n267 = icmp eq i64 %i.du, %n.vec260
  br i1 %cmp.n267, label %.lr.ph252.i.preheader, label %.lr.ph242.i.preheader.a

.lr.ph242.i.preheader.a:                          ; preds = %.lr.ph242.preheader.i, %middle.block266
  %indvars.iv.i.ph = phi i64 [ %i.ds, %.lr.ph242.preheader.i ], [ %i.dv, %middle.block266 ]
  br label %.lr.ph242.i.a

.lr.ph252.i.preheader:                            ; preds = %.lr.ph242.i.a, %middle.block266
  %i.ef = sub nsw i64 %i.ds, %.pre181
  br label %.lr.ph252.i

.lr.ph242.i.a:                                    ; preds = %.lr.ph242.i.preheader.a, %.lr.ph242.i.a
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph242.i.a ], [ %indvars.iv.i.ph, %.lr.ph242.i.preheader.a ] ; 5 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.ei = uitofp i64 %i.eh to double
  %i.ej = sub nuw nsw i64 %.pre181, %indvars.iv.i
  %i.ek = shl i64 2, %i.ej
  %i.el = sitofp i64 %i.ek to double
  %i.em = fmul nnan double %i.ei, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i
  store double %i.em, ptr %i.en, align 8, !tbaa !69
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %.pre181
  br i1 %exitcond.not.i, label %.lr.ph252.i.preheader, label %.lr.ph242.i.a, !llvm.loop !74

._crit_edge253.i:                                 ; preds = %._crit_edge.i, %bb.aa
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.pre181
  store i64 0, ptr %i.eo, align 8, !tbaa !10
  %.not156.not254.i = icmp ugt i8 %i.dr, %i.dq
  br i1 %.not156.not254.i, label %.lr.ph257.preheader.i, label %.preheader211.i

.lr.ph257.preheader.i:                            ; preds = %._crit_edge253.i
  %i.ep = zext i8 %i.dq to i64                    ; 2 uses
  %i.eq = sub nsw i64 %.pre181, %i.ep             ; 2 uses
  %xtraiter312 = and i64 %i.eq, 3                 ; 3 uses
  %i.er = sub nsw i64 %i.ep, %.pre181
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %.lr.ph257.i.epil.preheader, label %.lr.ph257.preheader.i.new

.lr.ph257.preheader.i.new:                        ; preds = %.lr.ph257.preheader.i
  %unroll_iter = and i64 %i.eq, -4
  br label %.lr.ph257.i

.lr.ph252.i:                                      ; preds = %.lr.ph252.i.preheader, %._crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph252.i.preheader ], [ %indvar.next, %._crit_edge.i ] ; 3 uses
  %indvars.iv296.i = phi i64 [ %i.ds, %.lr.ph252.i.preheader ], [ %indvars.iv.next297.i, %._crit_edge.i ] ; 5 uses
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 3 uses
  %.not161245.not.i = icmp samesign ult i64 %indvars.iv296.i, %.pre181
  br i1 %.not161245.not.i, label %.lr.ph248.i.preheader, label %._crit_edge.i

.lr.ph248.i.preheader:                            ; preds = %.lr.ph252.i
  %i.et = add i64 %indvar, %i.ds
  %i.eu = sub i64 %.pre181, %i.et
  %xtraiter309 = and i64 %i.eu, 7                 ; 2 uses
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.lr.ph248.i.prol.loopexit, label %.lr.ph248.i.prol

.lr.ph248.i.prol:                                 ; preds = %.lr.ph248.i.preheader, %.lr.ph248.i.prol
  %indvars.iv291.i.prol = phi i64 [ %indvars.iv.next292.i.prol, %.lr.ph248.i.prol ], [ %indvars.iv.next297.i, %.lr.ph248.i.preheader ] ; 2 uses
  %.0125246.i.prol = phi double [ %i.ex, %.lr.ph248.i.prol ], [ 0.000000e+00, %.lr.ph248.i.preheader ]
  %prol.iter311 = phi i64 [ %prol.iter311.next, %.lr.ph248.i.prol ], [ 0, %.lr.ph248.i.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i.prol
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !69
  %i.ex = fadd double %.0125246.i.prol, %i.ew     ; 3 uses
  %indvars.iv.next292.i.prol = add nuw nsw i64 %indvars.iv291.i.prol, 1 ; 2 uses
  %prol.iter311.next = add i64 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i64 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.lr.ph248.i.prol.loopexit, label %.lr.ph248.i.prol, !llvm.loop !75

.lr.ph248.i.prol.loopexit:                        ; preds = %.lr.ph248.i.prol, %.lr.ph248.i.preheader
  %.lcssa298.unr = phi double [ poison, %.lr.ph248.i.preheader ], [ %i.ex, %.lr.ph248.i.prol ]
  %indvars.iv291.i.unr = phi i64 [ %indvars.iv.next297.i, %.lr.ph248.i.preheader ], [ %indvars.iv.next292.i.prol, %.lr.ph248.i.prol ]
  %.0125246.i.unr = phi double [ 0.000000e+00, %.lr.ph248.i.preheader ], [ %i.ex, %.lr.ph248.i.prol ]
  %i.ey = add i64 %i.ef, %indvar
  %i.ez = icmp ugt i64 %i.ey, -8
  br i1 %i.ez, label %._crit_edge.i, label %.lr.ph248.i

._crit_edge.i:                                    ; preds = %.lr.ph248.i.prol.loopexit, %.lr.ph248.i, %.lr.ph252.i
  %.0125.lcssa.i = phi double [ 0.000000e+00, %.lr.ph252.i ], [ %.lcssa298.unr, %.lr.ph248.i.prol.loopexit ], [ %i.gk, %.lr.ph248.i ]
  %i.fa = sub nuw nsw i64 %.pre181, %indvars.iv296.i
  %i.fb = shl i64 2, %i.fa
  %i.fc = sitofp i64 %i.fb to double
  %i.fd = fdiv double %.0125.lcssa.i, %i.fc
  %i.fe = tail call double @llvm.ceil.f64(double %i.fd)
  %i.ff = fptoui double %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv296.i
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !10
  %exitcond300.not.i = icmp eq i64 %indvars.iv296.i, %.pre181
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond300.not.i, label %._crit_edge253.i, label %.lr.ph252.i, !llvm.loop !76

.lr.ph248.i:                                      ; preds = %.lr.ph248.i.prol.loopexit, %.lr.ph248.i
  %indvars.iv291.i = phi i64 [ %indvars.iv.next292.i.7, %.lr.ph248.i ], [ %indvars.iv291.i.unr, %.lr.ph248.i.prol.loopexit ] ; 9 uses
  %.0125246.i = phi double [ %i.gk, %.lr.ph248.i ], [ %.0125246.i.unr, %.lr.ph248.i.prol.loopexit ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !69
  %i.fj = fadd double %.0125246.i, %i.fi
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !69
  %i.fn = fadd double %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !69
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !69
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !69
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !69
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv291.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !69
  %i.gh = fadd double %i.gd, %i.gg
  %indvars.iv.next292.i.6 = add nuw nsw i64 %indvars.iv291.i, 7 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next292.i.6
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !69
  %i.gk = fadd double %i.gh, %i.gj                ; 2 uses
  %indvars.iv.next292.i.7 = add nuw nsw i64 %indvars.iv291.i, 8
  %exitcond295.not.i.7 = icmp eq i64 %indvars.iv.next292.i.6, %.pre181
  br i1 %exitcond295.not.i.7, label %._crit_edge.i, label %.lr.ph248.i, !llvm.loop !77

.preheader211.i.loopexit.unr-lcssa:               ; preds = %.lr.ph257.i
  %lcmp.mod313.not = icmp eq i64 %xtraiter312, 0
  br i1 %lcmp.mod313.not, label %.preheader211.i, label %.lr.ph257.i.epil.preheader

.lr.ph257.i.epil.preheader:                       ; preds = %.preheader211.i.loopexit.unr-lcssa, %.lr.ph257.preheader.i
  %.epil.init = phi i64 [ 0, %.lr.ph257.preheader.i ], [ %i.hf, %.preheader211.i.loopexit.unr-lcssa ]
  %indvars.iv301.i.epil.init = phi i64 [ %.pre181, %.lr.ph257.preheader.i ], [ %indvars.iv.next302.i.3, %.preheader211.i.loopexit.unr-lcssa ]
  %lcmp.mod314 = icmp ne i64 %xtraiter312, 0
  tail call void @llvm.assume(i1 %lcmp.mod314)
  br label %.lr.ph257.i.epil

.lr.ph257.i.epil:                                 ; preds = %.lr.ph257.i.epil, %.lr.ph257.i.epil.preheader
  %i.gl = phi i64 [ %.epil.init, %.lr.ph257.i.epil.preheader ], [ %i.go, %.lr.ph257.i.epil ]
  %indvars.iv301.i.epil = phi i64 [ %indvars.iv301.i.epil.init, %.lr.ph257.i.epil.preheader ], [ %indvars.iv.next302.i.epil, %.lr.ph257.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph257.i.epil.preheader ], [ %epil.iter.next, %.lr.ph257.i.epil ]
  %indvars.iv.next302.i.epil = add nsw i64 %indvars.iv301.i.epil, -1 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv301.i.epil
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = add i64 %i.gn, %i.gl                    ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next302.i.epil
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !10
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter312
  br i1 %epil.iter.cmp.not, label %.preheader211.i, label %.lr.ph257.i.epil, !llvm.loop !78

.preheader211.i:                                  ; preds = %.preheader211.i.loopexit.unr-lcssa, %.lr.ph257.i.epil, %._crit_edge253.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.e, i8 -1, i64 472, i1 false), !tbaa !10
  br i1 %.not154240.i, label %._crit_edge262.i, label %.lr.ph261.preheader.i

.lr.ph257.i:                                      ; preds = %.lr.ph257.i, %.lr.ph257.preheader.i.new
  %i.gq = phi i64 [ 0, %.lr.ph257.preheader.i.new ], [ %i.hf, %.lr.ph257.i ]
  %indvars.iv301.i = phi i64 [ %.pre181, %.lr.ph257.preheader.i.new ], [ %indvars.iv.next302.i.3, %.lr.ph257.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph257.preheader.i.new ], [ %niter.next.3, %.lr.ph257.i ]
  %indvars.iv.next302.i = add nsw i64 %indvars.iv301.i, -1 ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv301.i
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !10
  %i.gt = add i64 %i.gs, %i.gq                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next302.i
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !10
  %indvars.iv.next302.i.1 = add nsw i64 %indvars.iv301.i, -2 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next302.i
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = add i64 %i.gw, %i.gt                    ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next302.i.1
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !10
  %indvars.iv.next302.i.2 = add nsw i64 %indvars.iv301.i, -3 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next302.i.1
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !10
  %i.hb = add i64 %i.ha, %i.gx                    ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next302.i.2
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !10
  %indvars.iv.next302.i.3 = add nsw i64 %indvars.iv301.i, -4 ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next302.i.2
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = add i64 %i.he, %i.hb                    ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next302.i.3
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !10
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader211.i.loopexit.unr-lcssa, label %.lr.ph257.i, !llvm.loop !79

.lr.ph261.preheader.i:                            ; preds = %.preheader211.i
  %i.hh = zext i8 %i.dq to i64
  %i.hi = shl nuw nsw i64 %i.hh, 3                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.hi
  %scevgep307.i = getelementptr i8, ptr %i.c, i64 %i.hi
  %narrow.i = sub nuw i8 %i.dr, %i.dq
  %i.hj = zext i8 %narrow.i to i64
  %i.hk = shl nuw nsw i64 %i.hj, 3
  %i.hl = add nuw nsw i64 %i.hk, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep307.i, i64 %i.hl, i1 false), !tbaa !10
  br label %._crit_edge262.i

._crit_edge262.i:                                 ; preds = %.lr.ph261.preheader.i, %.preheader211.i
  br i1 %.not233.i, label %.critedge164.i, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %._crit_edge262.i
  %i.hm = zext nneg i32 %i.bo to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aj, %.lr.ph269.i
  %.0267.i = phi i64 [ %i.aa, %.lr.ph269.i ], [ %i.ja, %bb.aj ] ; 5 uses
  %.3266.i = phi i32 [ 0, %.lr.ph269.i ], [ %.4.i, %bb.aj ] ; 3 uses
  %.3199265.i = phi i64 [ 0, %.lr.ph269.i ], [ %.4200.i, %bb.aj ] ; 2 uses
  %.3204264.i = phi ptr [ %i.p, %.lr.ph269.i ], [ %.4205.i, %bb.aj ] ; 2 uses
  %i.ho = icmp slt i32 %.3266.i, 6
  br i1 %i.ho, label %.lr.ph.i174.i, label %fasthuf_read_bits.exit176.i

.lr.ph.i174.i:                                    ; preds = %bb.ab, %.lr.ph.i174.i
  %i.hp = phi ptr [ %i.ht, %.lr.ph.i174.i ], [ %.3204264.i, %bb.ab ] ; 2 uses
  %i.hq = phi i64 [ %i.hw, %.lr.ph.i174.i ], [ %.3199265.i, %bb.ab ]
  %i.hr = phi i32 [ %i.hx, %.lr.ph.i174.i ], [ %.3266.i, %bb.ab ] ; 2 uses
  %i.hs = shl i64 %i.hq, 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 1 ; 2 uses
  %i.hu = load i8, ptr %i.hp, align 1, !tbaa !28
  %i.hv = zext i8 %i.hu to i64
  %i.hw = or disjoint i64 %i.hs, %i.hv            ; 2 uses
  %i.hx = add nsw i32 %i.hr, 8                    ; 2 uses
  %i.hy = icmp slt i32 %i.hr, -2
  br i1 %i.hy, label %.lr.ph.i174.i, label %fasthuf_read_bits.exit176.i, !llvm.loop !67

fasthuf_read_bits.exit176.i:                      ; preds = %.lr.ph.i174.i, %bb.ab
  %.8209.i = phi ptr [ %.3204264.i, %bb.ab ], [ %i.ht, %.lr.ph.i174.i ] ; 6 uses
  %.7.i = phi i64 [ %.3199265.i, %bb.ab ], [ %i.hw, %.lr.ph.i174.i ] ; 6 uses
  %.lcssa.i173.i = phi i32 [ %.3266.i, %bb.ab ], [ %i.hx, %.lr.ph.i174.i ] ; 3 uses
  %i.hz = add nsw i32 %.lcssa.i173.i, -6          ; 5 uses
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = lshr i64 %.7.i, %i.ia
  %i.ic = and i64 %i.ib, 63                       ; 5 uses
  %i.id = icmp samesign ult i64 %i.ic, 59
  br i1 %i.id, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %fasthuf_read_bits.exit176.i
  %i.ie = icmp eq i64 %i.ic, 0
  br i1 %i.ie, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ic ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !10 ; 3 uses
  %.not159.i = icmp ult i64 %i.ig, %i.hm
  br i1 %.not159.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not160.i = icmp eq ptr %.060, null
  br i1 %.not160.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.af:                                            ; preds = %bb.ad
  %i.ih = trunc nuw nsw i64 %.0267.i to i32
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ig
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !22
  %i.ij = add nuw nsw i64 %i.ig, 1
  store i64 %i.ij, ptr %i.if, align 8, !tbaa !10
  br label %bb.aj

bb.ag:                                            ; preds = %fasthuf_read_bits.exit176.i
  %i.ik = icmp eq i64 %i.ic, 63
  br i1 %i.ik, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.il = icmp samesign ult i32 %.lcssa.i173.i, 14
  br i1 %i.il, label %.lr.ph.i180.i, label %fasthuf_read_bits.exit182.i

.lr.ph.i180.i:                                    ; preds = %bb.ah
  %i.im = shl i64 %.7.i, 8
  %i.in = getelementptr inbounds nuw i8, ptr %.8209.i, i64 1
  %i.io = load i8, ptr %.8209.i, align 1, !tbaa !28
  %i.ip = zext i8 %i.io to i64
  %i.iq = or disjoint i64 %i.im, %i.ip
  %i.ir = add nuw nsw i32 %.lcssa.i173.i, 2
  br label %fasthuf_read_bits.exit182.i, !llvm.loop !67

fasthuf_read_bits.exit182.i:                      ; preds = %.lr.ph.i180.i, %bb.ah
  %.9.i = phi ptr [ %i.in, %.lr.ph.i180.i ], [ %.8209.i, %bb.ah ]
  %.8.i = phi i64 [ %i.iq, %.lr.ph.i180.i ], [ %.7.i, %bb.ah ] ; 2 uses
  %.lcssa.i179.i = phi i32 [ %i.ir, %.lr.ph.i180.i ], [ %i.hz, %bb.ah ]
  %i.is = add nsw i32 %.lcssa.i179.i, -8          ; 2 uses
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = lshr i64 %.8.i, %i.it
  %i.iv = and i64 %i.iu, 255
  %i.iw = add nuw nsw i64 %.0267.i, 5
  %i.ix = add nuw nsw i64 %i.iw, %i.iv
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.iy = add i64 %.0267.i, -58
  %i.iz = add i64 %i.iy, %i.ic
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %fasthuf_read_bits.exit182.i, %bb.af, %bb.ac
  %.4205.i = phi ptr [ %.8209.i, %bb.ac ], [ %.8209.i, %bb.af ], [ %.9.i, %fasthuf_read_bits.exit182.i ], [ %.8209.i, %bb.ai ] ; 2 uses
  %.4200.i = phi i64 [ %.7.i, %bb.ac ], [ %.7.i, %bb.af ], [ %.8.i, %fasthuf_read_bits.exit182.i ], [ %.7.i, %bb.ai ]
  %.4.i = phi i32 [ %i.hz, %bb.ac ], [ %i.hz, %bb.af ], [ %i.is, %fasthuf_read_bits.exit182.i ], [ %i.hz, %bb.ai ]
  %.1.i = phi i64 [ %.0267.i, %bb.ac ], [ %.0267.i, %bb.af ], [ %i.ix, %fasthuf_read_bits.exit182.i ], [ %i.iz, %bb.ai ] ; 2 uses
  %i.ja = add nuw nsw i64 %.1.i, 1
  %.not158.not.i = icmp ult i64 %.1.i, %i.ab
  br i1 %.not158.not.i, label %bb.ab, label %.critedge164.i, !llvm.loop !80

.critedge164.i:                                   ; preds = %bb.aj, %._crit_edge262.i
  %.3204.lcssa.i = phi ptr [ %i.p, %._crit_edge262.i ], [ %.4205.i, %bb.aj ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %5, i64 262160 ; 5 uses
  br label %bb.ak

vector.ph270:                                     ; preds = %bb.ak
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 262632
  store i64 0, ptr %i.jc, align 8, !tbaa !10
  %i.jd = load i64, ptr %i.c, align 16, !tbaa !10
  %i.je = load i64, ptr %i.jb, align 8, !tbaa !10 ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 262640 ; 3 uses
  store i64 %i.jf, ptr %i.jg, align 8, !tbaa !10
  br label %vector.body271

vector.body271:                                   ; preds = %vector.body271, %vector.ph270
  %index272 = phi i64 [ 0, %vector.ph270 ], [ %index.next278, %vector.body271 ] ; 2 uses
  %vec.ind273 = phi <2 x i64> [ <i64 1, i64 2>, %vector.ph270 ], [ %vec.ind.next279, %vector.body271 ] ; 3 uses
  %i.jh = or disjoint i64 %index272, 1            ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load274 = load <2 x i64>, ptr %i.ji, align 8, !tbaa !10
  %wide.load275 = load <2 x i64>, ptr %i.jj, align 8, !tbaa !10
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jh ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %wide.load276 = load <2 x i64>, ptr %i.jk, align 8, !tbaa !10
  %wide.load277 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !10
  %i.jm = sub nuw nsw <2 x i64> splat (i64 64), %vec.ind273
  %i.jn = sub nuw nsw <2 x i64> splat (i64 62), %vec.ind273
  %i.jo = lshr <2 x i64> %wide.load276, %i.jm
  %i.jp = lshr <2 x i64> %wide.load277, %i.jn
  %i.jq = sub <2 x i64> %wide.load274, %i.jo
  %i.jr = sub <2 x i64> %wide.load275, %i.jp
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.jh ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <2 x i64> %i.jq, ptr %i.js, align 8, !tbaa !10
  store <2 x i64> %i.jr, ptr %i.jt, align 8, !tbaa !10
  %index.next278 = add nuw i64 %index272, 4       ; 2 uses
  %vec.ind.next279 = add nuw nsw <2 x i64> %vec.ind273, splat (i64 4)
  %i.ju = icmp eq i64 %index.next278, 56
  br i1 %i.ju, label %scalar.ph269, label %vector.body271, !llvm.loop !81

bb.ak:                                            ; preds = %bb.al, %.critedge164.i
  %indvars.iv.i.i = phi i64 [ 0, %.critedge164.i ], [ %indvars.iv.next.i.i.1, %bb.al ] ; 7 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.jw = load i64, ptr %i.jv, align 16, !tbaa !10 ; 2 uses
  %.not82.i.i = icmp eq i64 %i.jw, -1
  %i.jx = sub nuw nsw i64 64, %indvars.iv.i.i
  %i.jy = shl i64 %i.jw, %i.jx
  %.sink.i.i = select i1 %.not82.i.i, i64 -1, i64 %i.jy
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i.i
  store i64 %.sink.i.i, ptr %i.jz, align 8, !tbaa !10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 58
  br i1 %exitcond.not.i.i, label %vector.ph270, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !10 ; 2 uses
  %.not82.i.i.1 = icmp eq i64 %i.kb, -1
  %i.kc = sub nuw nsw i64 63, %indvars.iv.i.i
  %i.kd = shl i64 %i.kb, %i.kc
  %.sink.i.i.1 = select i1 %.not82.i.i.1, i64 -1, i64 %i.kd
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i
  store i64 %.sink.i.i.1, ptr %i.ke, align 8, !tbaa !10
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2
  br label %bb.ak

vector.body283:                                   ; preds = %scalar.ph269, %vector.body283
  %index284 = phi i64 [ %index.next285.1, %vector.body283 ], [ 0, %scalar.ph269 ] ; 4 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index284 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kf, align 4, !tbaa !22
  store <4 x i32> splat (i32 65535), ptr %i.kg, align 4, !tbaa !22
  %i.kh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index284 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kh, align 1, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %i.ki, align 1, !tbaa !28
  %index.next285 = or disjoint i64 %index284, 8   ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index.next285 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <4 x i32> splat (i32 65535), ptr %i.kj, align 4, !tbaa !22
  store <4 x i32> splat (i32 65535), ptr %i.kk, align 4, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.lf, i64 %index.next285 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  store <4 x i8> zeroinitializer, ptr %i.kl, align 1, !tbaa !28
  store <4 x i8> zeroinitializer, ptr %i.km, align 1, !tbaa !28
  %index.next285.1 = add nuw nsw i64 %index284, 16 ; 2 uses
  %i.kn = icmp eq i64 %index.next285.1, 4096
  br i1 %i.kn, label %.critedge86.preheader.i.i, label %vector.body283, !llvm.loop !82

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph269
  %i.ko = zext i8 %i.dq to i64
  %i.kp = zext nneg i32 %i.bo to i64
  br label %.lr.ph.i183.i

scalar.ph269:                                     ; preds = %vector.body271
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %5, i64 262616
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !10
  %i.ku = lshr i64 %i.kt, 7
  %i.kv = sub i64 %i.kr, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 263096
  store i64 %i.kv, ptr %i.kw, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ky = load i64, ptr %i.kx, align 16, !tbaa !10
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 262624
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !10
  %i.lb = lshr i64 %i.la, 6
  %i.lc = sub i64 %i.ky, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 263104
  store i64 %i.lc, ptr %i.ld, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 263112 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 279496 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 12
  br i1 %.not154240.i, label %vector.body283, label %.lr.ph.preheader.i.i

.critedge86.preheader.i.i:                        ; preds = %.critedge84.i.i, %vector.body283
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 262256
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !10 ; 2 uses
  %i.lj = icmp eq i64 %i.li, -1
  br i1 %i.lj, label %.critedge86.i.i, label %bb.ar

.lr.ph.i183.i:                                    ; preds = %.critedge84.i.i, %.lr.ph.preheader.i.i
  %.06994.i.i = phi i64 [ %i.lz, %.critedge84.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.lk = shl nuw i64 %.06994.i.i, 52             ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.06994.i.i ; 2 uses
  store i32 65535, ptr %i.ll, align 4, !tbaa !22
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lf, i64 %.06994.i.i ; 2 uses
  store i8 0, ptr %i.lm, align 1, !tbaa !28
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.lr.ph.i183.i
  %indvars.iv106.i.i = phi i64 [ %i.ko, %.lr.ph.i183.i ], [ %indvars.iv.next107.i.i, %bb.ap ] ; 6 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv106.i.i
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !10
  %.not80.i.i = icmp ugt i64 %i.lo, %i.lk
  br i1 %.not80.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lp = trunc i64 %indvars.iv106.i.i to i8
  store i8 %i.lp, ptr %i.lm, align 1, !tbaa !28
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv106.i.i
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !10
  %i.ls = sub nsw i64 64, %indvars.iv106.i.i
  %i.lt = and i64 %i.ls, 4294967295
  %i.lu = lshr i64 %i.lk, %i.lt
  %i.lv = add i64 %i.lr, %i.lu                    ; 2 uses
  %i.lw = icmp ult i64 %i.lv, %i.kp
  br i1 %i.lw, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not81.i.i = icmp eq ptr %.060, null
  br i1 %.not81.i.i, label %fasthuf_initialize.exit.thread, label %fasthuf_initialize.exit.thread.sink.split

bb.ap:                                            ; preds = %bb.am
  %indvars.iv.next107.i.i = add nuw nsw i64 %indvars.iv106.i.i, 1
  %exitcond109.not.i.i = icmp eq i64 %indvars.iv106.i.i, %.pre181
  br i1 %exitcond109.not.i.i, label %.critedge84.i.i, label %bb.am, !llvm.loop !83

bb.aq:                                            ; preds = %bb.an
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.lv
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !22
  store i32 %i.ly, ptr %i.ll, align 4, !tbaa !22
  br label %.critedge84.i.i

.critedge84.i.i:                                  ; preds = %bb.ap, %bb.aq
  %i.lz = add nuw nsw i64 %.06994.i.i, 1          ; 2 uses
  %exitcond110.i.i = icmp eq i64 %i.lz, 4096
  br i1 %exitcond110.i.i, label %.critedge86.preheader.i.i, label %.lr.ph.i183.i, !llvm.loop !84

.critedge86.i.i:                                  ; preds = %.critedge86.preheader.i.i
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 262248
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !10 ; 2 uses
  %i.mc = icmp eq i64 %i.mb, -1
  br i1 %i.mc, label %.critedge86.1.i.i, label %bb.ar

end_hunk_0
begin_hunk_1_@internal_huf_decompress:bb.a
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !10
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rx ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !10
  %i.sa = add i64 %i.rz, 1
  store i64 %i.sa, ptr %i.ry, align 8, !tbaa !10
  %indvars.iv.next.i.i82.3 = add nuw nsw i64 %indvars.iv.i.i81, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.02232.i.i = phi i64 [ %i.si, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv36.i.i ; 2 uses
  %i.sc = load i64, ptr %i.sb, align 16, !tbaa !10
  %i.sd = add i64 %i.sc, %.02232.i.i
  %i.se = lshr i64 %i.sd, 1                       ; 2 uses
  store i64 %.02232.i.i, ptr %i.sb, align 16, !tbaa !10
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !10
  %i.sh = add i64 %i.sg, %i.se
  %i.si = lshr i64 %i.sh, 1
  store i64 %i.se, ptr %i.sf, align 8, !tbaa !10
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not315 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not315, label %.preheader.i.i84, label %.preheader27.i.i, !llvm.loop !25

.preheader.i.i84:                                 ; preds = %.preheader27.i.i, %bb.bd
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.1, %bb.bd ], [ 0, %.preheader27.i.i ] ; 4 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i ; 2 uses
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !10 ; 3 uses
  %.not.i.i = icmp eq i64 %i.sk, 0
  br i1 %.not.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %.preheader.i.i84
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.sk ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !10 ; 2 uses
  %i.sn = add i64 %i.sm, 1
  store i64 %i.sn, ptr %i.sl, align 8, !tbaa !10
  %i.so = shl i64 %i.sm, 6
  %i.sp = or i64 %i.so, %i.sk
  store i64 %i.sp, ptr %i.sj, align 8, !tbaa !10
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.preheader.i.i84
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv39.i.i, 65536
  br i1 %exitcond42.not.i.i, label %hufCanonicalCodeTable.exit.i, label %.preheader.i.i84.1

.preheader.i.i84.1:                               ; preds = %bb.bb
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv39.i.i
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !10 ; 3 uses
  %.not.i.i.1 = icmp eq i64 %i.ss, 0
  br i1 %.not.i.i.1, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.preheader.i.i84.1
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ss ; 2 uses
  %i.su = load i64, ptr %i.st, align 8, !tbaa !10 ; 2 uses
  %i.sv = add i64 %i.su, 1
  store i64 %i.sv, ptr %i.st, align 8, !tbaa !10
  %i.sw = shl i64 %i.su, 6
  %i.sx = or i64 %i.sw, %i.ss
  store i64 %i.sx, ptr %i.sr, align 8, !tbaa !10
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.preheader.i.i84.1
  %indvars.iv.next40.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i, 2
  br label %.preheader.i.i84

hufCanonicalCodeTable.exit.i:                     ; preds = %bb.bb
  %i.sy = ptrtoint ptr %.067.lcssa.i to i64
  %i.sz = ptrtoint ptr %i.p to i64
  %.neg.i = add i64 %i.nt, %i.sz
  %i.ta = sub i64 %.neg.i, %i.sy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %hufUnpackEncTable.exit

hufUnpackEncTable.exit:                           ; preds = %bb.av, %bb.ax, %getBits.exit50.i, %bb.az, %hufCanonicalCodeTable.exit.i
  %.1 = phi ptr [ %.067.lcssa.i, %hufCanonicalCodeTable.exit.i ], [ %i.p, %bb.az ], [ %i.p, %getBits.exit50.i ], [ %i.p, %bb.ax ], [ %i.p, %bb.av ]
  %.0 = phi i64 [ %i.ta, %hufCanonicalCodeTable.exit.i ], [ %i.nt, %bb.az ], [ %i.nt, %getBits.exit50.i ], [ %i.nt, %bb.ax ], [ %i.nt, %bb.av ]
  %i.tb = shl i64 %.0, 3
  %.not75 = icmp ult i64 %i.tb, %i.q
  br i1 %.not75, label %.critedge, label %bb.be

bb.be:                                            ; preds = %hufUnpackEncTable.exit
  %i.tc = tail call fastcc i32 @hufBuildDecTable(ptr noundef %.060, ptr noundef nonnull %5, i32 noundef %i.i, i32 noundef %i.k, ptr noundef nonnull %i.ns) ; 2 uses
  %i.td = icmp eq i32 %i.tc, 0
  br i1 %i.td, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.te = tail call fastcc i32 @hufDecode(ptr noundef nonnull %5, ptr noundef nonnull %i.ns, ptr noundef %.1, i64 noundef %i.q, i32 noundef %i.k, i64 noundef %4, ptr noundef %3)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.2 = phi i32 [ %i.te, %bb.bf ], [ %i.tc, %bb.be ]
  %.not.i86 = icmp eq ptr %.060, null
  br i1 %.not.i86, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.tf = getelementptr inbounds nuw i8, ptr %.060, i64 96
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !102
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.th = phi ptr [ %i.tg, %bb.bh ], [ @internal_exr_free, %bb.bg ]
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  %indvars.iv.i87 = phi i64 [ 0, %bb.bi ], [ %indvars.iv.next.i88, %bb.bl ] ; 2 uses
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %indvars.iv.i87
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 8 ; 2 uses
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !103 ; 2 uses
  %.not12.i = icmp eq ptr %i.tk, null
  br i1 %.not12.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void %i.th(ptr noundef nonnull %i.tk) #10, !inline_history !105
  store ptr null, ptr %i.tj, align 8, !tbaa !103
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, 16384
  br i1 %exitcond.not.i89, label %.critedge, label %bb.bj, !llvm.loop !106

.critedge:                                        ; preds = %bb.bl, %hufUnpackEncTable.exit, %fasthuf_initialize.exit.thread, %bb.ar, %bb.as, %bb.g, %bb.f, %bb.e, %bb.d
  %.265 = phi i32 [ %., %bb.d ], [ %i.nr, %bb.as ], [ 1, %bb.ar ], [ 3, %bb.e ], [ 23, %bb.f ], [ 23, %hufUnpackEncTable.exit ], [ 1, %bb.g ], [ 23, %fasthuf_initialize.exit.thread ], [ %.2, %bb.bl ]
  ret i32 %.265
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @fasthuf_decode(ptr noundef %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4294967296) %3, ptr noalias nofree noundef captures(none) %4, i64 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = add nsw i64 %3, -128                     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 283592
  %i.c = load i64, ptr %i.b, align 8, !tbaa !97
  %i.d = load i32, ptr %1, align 8, !tbaa !62
  %.not303 = icmp eq i64 %5, 0
  br i1 %.not303, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i64, ptr %i.e, align 1
  %i.f = tail call i64 @llvm.bswap.i64(i64 %.val)
  %.val123 = load i64, ptr %2, align 1
  %i.g = tail call i64 @llvm.bswap.i64(i64 %.val123)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 279496
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 263112
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 262160
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 262640
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FastHufDecoder_refill.exit155
  %.087302 = phi i32 [ 64, %.lr.ph ], [ %.7, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.094301 = phi i64 [ 0, %.lr.ph ], [ %.296, %FastHufDecoder_refill.exit155 ] ; 5 uses
  %.0185300 = phi ptr [ %i.h, %.lr.ph ], [ %.5, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0188299 = phi i32 [ 64, %.lr.ph ], [ %.5193, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0206298 = phi i64 [ %i.f, %.lr.ph ], [ %.5211, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.0227297 = phi i64 [ %i.g, %.lr.ph ], [ %.5232, %FastHufDecoder_refill.exit155 ] ; 5 uses
  %.0242296 = phi i64 [ %i.a, %.lr.ph ], [ %.5247, %FastHufDecoder_refill.exit155 ] ; 3 uses
  %.not114 = icmp ugt i64 %i.c, %.0227297
  br i1 %.not114, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = lshr i64 %.0227297, 52                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.p
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %.087302, 64
  br i1 %i.u, label %.preheader262, label %FastHufDecoder_refill.exit

.preheader262:                                    ; preds = %bb.d, %.sink.split.i
  %.6248 = phi i64 [ %.8250, %.sink.split.i ], [ %.0242296, %bb.d ] ; 9 uses
  %.6233 = phi i64 [ %.7234, %.sink.split.i ], [ %.0227297, %bb.d ]
  %.6212 = phi i64 [ %.9215, %.sink.split.i ], [ %.0206298, %bb.d ] ; 3 uses
  %.6194 = phi i32 [ 64, %.sink.split.i ], [ %.0188299, %bb.d ] ; 4 uses
  %.6186 = phi ptr [ %.9, %.sink.split.i ], [ %.0185300, %bb.d ] ; 7 uses
  %.041.i = phi i32 [ %.1.i, %.sink.split.i ], [ %.087302, %bb.d ] ; 4 uses
  %i.v = icmp sgt i32 %.041.i, 0
  br i1 %i.v, label %bb.e, label %bb.h, !prof !27

bb.e:                                             ; preds = %.preheader262
  %i.w = sub nuw nsw i32 64, %.041.i              ; 3 uses
  %i.x = zext nneg i32 %.041.i to i64
  %i.y = lshr i64 %.6212, %i.x
  %i.z = or i64 %i.y, %.6233                      ; 2 uses
  %.not.i = icmp slt i32 %.6194, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %i.w to i64
  %i.ab = shl i64 %.6212, %i.aa
  %i.ac = sub nuw nsw i32 %.6194, %i.w
  br label %FastHufDecoder_refill.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %.041.i, %.6194
  br label %bb.h

bb.h:                                             ; preds = %.preheader262, %bb.g
  %.7234 = phi i64 [ %i.z, %bb.g ], [ %.6212, %.preheader262 ] ; 2 uses
  %.1.i = phi i32 [ %i.ad, %bb.g ], [ %.6194, %.preheader262 ] ; 2 uses
  %i.ae = icmp ugt i64 %.6248, 63
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %bb.h
  %.val.i = load i64, ptr %.6186, align 1, !noalias !107
  %i.af = tail call i64 @llvm.bswap.i64(i64 %.val.i)
  %i.ag = getelementptr inbounds nuw i8, ptr %.6186, i64 8
  %i.ah = add i64 %.6248, -64
  br label %.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp samesign ugt i64 %.6248, 7
  br i1 %i.ai, label %.lr.ph.i.preheader, label %bb.k

.lr.ph.i.preheader:                               ; preds = %bb.j
  %i.aj = add nsw i64 %.6248, -8                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %xtraiter = and i64 %i.al, 3                    ; 3 uses
  %i.am = icmp ult i64 %i.aj, 24
  br i1 %i.am, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.al, 4611686018427387900
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %i.an = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bl, %.lr.ph.i ]
  %i.ao = phi ptr [ %.6186, %.lr.ph.i.preheader.new ], [ %i.bm, %.lr.ph.i ] ; 5 uses
  %.049.i = phi i64 [ 56, %.lr.ph.i.preheader.new ], [ %i.bn, %.lr.ph.i ] ; 5 uses
  %i.ap = phi i64 [ %.6248, %.lr.ph.i.preheader.new ], [ %i.bo, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !28, !noalias !107
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl i64 %i.ar, %.049.i
  %i.at = or i64 %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.av = add nsw i64 %.049.i, -8
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !28, !noalias !107
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.av
  %i.az = or i64 %i.ay, %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bb = add nsw i64 %.049.i, -16
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !28, !noalias !107
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl i64 %i.bd, %i.bb
  %i.bf = or i64 %i.be, %i.az
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 3
  %i.bh = add nsw i64 %.049.i, -24
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !28, !noalias !107
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl i64 %i.bj, %i.bh
  %i.bl = or i64 %i.bk, %i.bf                     ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bn = add i64 %.049.i, -32                    ; 3 uses
  %i.bo = add i64 %i.ap, -32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !113

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bl, %._crit_edge.i.unr-lcssa ]
  %.epil.init438 = phi ptr [ %.6186, %.lr.ph.i.preheader ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %.049.i.epil.init = phi i64 [ 56, %.lr.ph.i.preheader ], [ %i.bn, %._crit_edge.i.unr-lcssa ]
  %.epil.init440 = phi i64 [ %.6248, %.lr.ph.i.preheader ], [ %i.bo, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod444 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod444)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %i.bp = phi i64 [ %i.bv, %.lr.ph.i.epil ], [ %.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bq = phi ptr [ %i.bw, %.lr.ph.i.epil ], [ %.epil.init438, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.049.i.epil = phi i64 [ %i.bx, %.lr.ph.i.epil ], [ %.049.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.br = phi i64 [ %i.by, %.lr.ph.i.epil ], [ %.epil.init440, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bs = load i8, ptr %i.bq, align 1, !tbaa !28, !noalias !107
  %i.bt = zext i8 %i.bs to i64
  %i.bu = shl i64 %i.bt, %.049.i.epil
  %i.bv = or i64 %i.bu, %i.bp                     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bx = add i64 %.049.i.epil, -8                ; 2 uses
  %i.by = add i64 %i.br, -8                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !114

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa412 = phi i64 [ %i.bl, %._crit_edge.i.unr-lcssa ], [ %i.bv, %.lr.ph.i.epil ]
  %.lcssa411 = phi i64 [ %i.bn, %._crit_edge.i.unr-lcssa ], [ %i.bx, %.lr.ph.i.epil ]
  %.lcssa = phi i64 [ %i.bo, %._crit_edge.i.unr-lcssa ], [ %i.by, %.lr.ph.i.epil ]
  %scevgep.i = getelementptr i8, ptr %.6186, i64 1
  %i.bz = add nsw i64 %.6248, -8
  %i.ca = lshr i64 %i.bz, 3
  %scevgep62.i = getelementptr i8, ptr %scevgep.i, i64 %i.ca
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.j
  %.7249 = phi i64 [ %.lcssa, %._crit_edge.i ], [ %.6248, %bb.j ]
  %.7213 = phi i64 [ %.lcssa412, %._crit_edge.i ], [ 0, %bb.j ] ; 2 uses
  %.7187 = phi ptr [ %scevgep62.i, %._crit_edge.i ], [ %.6186, %bb.j ] ; 3 uses
  %.0.lcssa.i = phi i64 [ %.lcssa411, %._crit_edge.i ], [ 56, %bb.j ]
  %.not45.i = icmp eq i64 %.7249, 0
  br i1 %.not45.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = load i8, ptr %.7187, align 1, !tbaa !28, !noalias !107
  %i.cc = zext i8 %i.cb to i64
  %i.cd = shl i64 %i.cc, %.0.lcssa.i
  %i.ce = or i64 %i.cd, %.7213
  %i.cf = getelementptr inbounds nuw i8, ptr %.7187, i64 1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.l, %bb.k
  %.8250 = phi i64 [ 0, %bb.k ], [ 0, %bb.l ], [ %i.ah, %bb.i ] ; 2 uses
  %.9215 = phi i64 [ %.7213, %bb.k ], [ %i.ce, %bb.l ], [ %i.af, %bb.i ] ; 2 uses
  %.9 = phi ptr [ %.7187, %bb.k ], [ %i.cf, %bb.l ], [ %i.ag, %bb.i ] ; 2 uses
  %i.cg = icmp slt i32 %.1.i, 64
  br i1 %i.cg, label %.preheader262, label %FastHufDecoder_refill.exit, !llvm.loop !115

FastHufDecoder_refill.exit:                       ; preds = %.sink.split.i, %bb.f, %bb.d
  %.1243 = phi i64 [ %.0242296, %bb.d ], [ %.6248, %bb.f ], [ %.8250, %.sink.split.i ]
  %.1228 = phi i64 [ %.0227297, %bb.d ], [ %i.z, %bb.f ], [ %.7234, %.sink.split.i ] ; 3 uses
  %.1207 = phi i64 [ %.0206298, %bb.d ], [ %i.ab, %bb.f ], [ %.9215, %.sink.split.i ]
  %.1189 = phi i32 [ %.0188299, %bb.d ], [ %i.ac, %bb.f ], [ 64, %.sink.split.i ]
  %.1 = phi ptr [ %.0185300, %bb.d ], [ %.6186, %bb.f ], [ %.9, %.sink.split.i ]
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %FastHufDecoder_refill.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 13, %FastHufDecoder_refill.exit ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !10
  %i.cj = icmp ugt i64 %i.ci, %.1228
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.cj, label %bb.m, label %bb.n, !llvm.loop !116

bb.n:                                             ; preds = %bb.m
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  %i.cl = load i8, ptr %i.l, align 1, !tbaa !66
  %i.cm = zext i8 %i.cl to i64
  %i.cn = icmp samesign ugt i64 %indvars.iv, %i.cm
  br i1 %i.cn, label %bb.o, label %bb.q, !prof !117

bb.o:                                             ; preds = %bb.n
  %.not116 = icmp eq ptr %0, null
  br i1 %.not116, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !85
  %i.cq = tail call i32 (ptr, i32, ptr, ...) %i.cp(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %.critedge

bb.q:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = sub nsw i64 64, %indvars.iv
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = lshr i64 %.1228, %i.cu
  %i.cw = add i64 %i.cs, %i.cv                    ; 2 uses
  %i.cx = load i32, ptr %i.n, align 4, !tbaa !64
  %i.cy = zext i32 %i.cx to i64
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cw
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.not115 = icmp eq ptr %0, null
  br i1 %.not115, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !85
  %i.dd = tail call i32 (ptr, i32, ptr, ...) %i.dc(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.r, %bb.c
  %.2244 = phi i64 [ %.1243, %bb.r ], [ %.0242296, %bb.c ] ; 3 uses
  %.2229 = phi i64 [ %.1228, %bb.r ], [ %.0227297, %bb.c ]
  %.2208 = phi i64 [ %.1207, %bb.r ], [ %.0206298, %bb.c ] ; 3 uses
  %.2190 = phi i32 [ %.1189, %bb.r ], [ %.0188299, %bb.c ] ; 3 uses
  %.2 = phi ptr [ %.1, %bb.r ], [ %.0185300, %bb.c ] ; 3 uses
  %.289 = phi i32 [ 64, %bb.r ], [ %.087302, %bb.c ]
  %.186.in = phi ptr [ %i.da, %bb.r ], [ %i.t, %bb.c ]
  %.184 = phi i32 [ %i.ck, %bb.r ], [ %i.s, %bb.c ] ; 2 uses
  %.186 = load i32, ptr %.186.in, align 4, !tbaa !22 ; 2 uses
  %i.de = zext nneg i32 %.184 to i64
  %i.df = shl i64 %.2229, %i.de                   ; 3 uses
  %i.dg = sub nsw i32 %.289, %.184                ; 4 uses
  %i.dh = icmp eq i32 %.186, %i.d
  br i1 %i.dh, label %bb.v, label %bb.am

bb.v:                                             ; preds = %bb.u
  %i.di = icmp slt i32 %i.dg, 8
  br i1 %i.di, label %.preheader261, label %FastHufDecoder_refill.exit139

.preheader261:                                    ; preds = %bb.v, %.sink.split.i129
  %.10252 = phi i64 [ %.12254, %.sink.split.i129 ], [ %.2244, %bb.v ] ; 9 uses
  %.9236 = phi i64 [ %.10237, %.sink.split.i129 ], [ %i.df, %bb.v ]
  %.11217 = phi i64 [ %.14220, %.sink.split.i129 ], [ %.2208, %bb.v ] ; 3 uses
  %.10198 = phi i32 [ 64, %.sink.split.i129 ], [ %.2190, %bb.v ] ; 4 uses
  %.11 = phi ptr [ %.14, %.sink.split.i129 ], [ %.2, %bb.v ] ; 7 uses
  %.041.i124 = phi i32 [ %.1.i125, %.sink.split.i129 ], [ %i.dg, %bb.v ] ; 4 uses
  %i.dj = icmp sgt i32 %.041.i124, 0
  br i1 %i.dj, label %bb.w, label %bb.z, !prof !27

bb.w:                                             ; preds = %.preheader261
  %i.dk = sub nuw nsw i32 64, %.041.i124          ; 3 uses
  %i.dl = zext nneg i32 %.041.i124 to i64
  %i.dm = lshr i64 %.11217, %i.dl
  %i.dn = or i64 %i.dm, %.9236                    ; 2 uses
  %.not.i138 = icmp slt i32 %.10198, %i.dk
  br i1 %.not.i138, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = zext nneg i32 %i.dk to i64
  %i.dp = shl i64 %.11217, %i.do
  %i.dq = sub nuw nsw i32 %.10198, %i.dk
  br label %FastHufDecoder_refill.exit139

bb.y:                                             ; preds = %bb.w
  %i.dr = add nsw i32 %.041.i124, %.10198
  br label %bb.z

bb.z:                                             ; preds = %.preheader261, %bb.y
  %.10237 = phi i64 [ %i.dn, %bb.y ], [ %.11217, %.preheader261 ] ; 2 uses
  %.1.i125 = phi i32 [ %i.dr, %bb.y ], [ %.10198, %.preheader261 ] ; 2 uses
  %i.ds = icmp ugt i64 %.10252, 63
  br i1 %i.ds, label %bb.aa, label %bb.ab, !prof !27

bb.aa:                                            ; preds = %bb.z
  %.val.i137 = load i64, ptr %.11, align 1, !noalias !118
  %i.dt = tail call i64 @llvm.bswap.i64(i64 %.val.i137)
  %i.du = getelementptr inbounds nuw i8, ptr %.11, i64 8
  %i.dv = add i64 %.10252, -64
  br label %.sink.split.i129

bb.ab:                                            ; preds = %bb.z
  %i.dw = icmp samesign ugt i64 %.10252, 7
  br i1 %i.dw, label %.lr.ph.i131.preheader, label %bb.ac

.lr.ph.i131.preheader:                            ; preds = %bb.ab
  %i.dx = add nsw i64 %.10252, -8                 ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %xtraiter445 = and i64 %i.dz, 3                 ; 3 uses
  %i.ea = icmp ult i64 %i.dx, 24
  br i1 %i.ea, label %.lr.ph.i131.epil.preheader, label %.lr.ph.i131.preheader.new

.lr.ph.i131.preheader.new:                        ; preds = %.lr.ph.i131.preheader
  %unroll_iter458 = and i64 %i.dz, 4611686018427387900
  br label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %.lr.ph.i131, %.lr.ph.i131.preheader.new
  %i.eb = phi i64 [ 0, %.lr.ph.i131.preheader.new ], [ %i.ez, %.lr.ph.i131 ]
  %i.ec = phi ptr [ %.11, %.lr.ph.i131.preheader.new ], [ %i.fa, %.lr.ph.i131 ] ; 5 uses
  %.049.i133 = phi i64 [ 56, %.lr.ph.i131.preheader.new ], [ %i.fb, %.lr.ph.i131 ] ; 5 uses
  %i.ed = phi i64 [ %.10252, %.lr.ph.i131.preheader.new ], [ %i.fc, %.lr.ph.i131 ]
  %niter459 = phi i64 [ 0, %.lr.ph.i131.preheader.new ], [ %niter459.next.3, %.lr.ph.i131 ]
  %i.ee = load i8, ptr %i.ec, align 1, !tbaa !28, !noalias !118
  %i.ef = zext i8 %i.ee to i64
  %i.eg = shl i64 %i.ef, %.049.i133
  %i.eh = or i64 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ej = add nsw i64 %.049.i133, -8
  %i.ek = load i8, ptr %i.ei, align 1, !tbaa !28, !noalias !118
  %i.el = zext i8 %i.ek to i64
  %i.em = shl i64 %i.el, %i.ej
  %i.en = or i64 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ep = add nsw i64 %.049.i133, -16
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !28, !noalias !118
  %i.er = zext i8 %i.eq to i64
  %i.es = shl i64 %i.er, %i.ep
  %i.et = or i64 %i.es, %i.en
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 3
  %i.ev = add nsw i64 %.049.i133, -24
  %i.ew = load i8, ptr %i.eu, align 1, !tbaa !28, !noalias !118
  %i.ex = zext i8 %i.ew to i64
  %i.ey = shl i64 %i.ex, %i.ev
  %i.ez = or i64 %i.ey, %i.et                     ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.fb = add i64 %.049.i133, -32                 ; 3 uses
  %i.fc = add i64 %i.ed, -32                      ; 3 uses
  %niter459.next.3 = add i64 %niter459, 4         ; 2 uses
  %niter459.ncmp.3.not = icmp eq i64 %niter459.next.3, %unroll_iter458
  br i1 %niter459.ncmp.3.not, label %._crit_edge.i134.unr-lcssa, label %.lr.ph.i131, !llvm.loop !113

._crit_edge.i134.unr-lcssa:                       ; preds = %.lr.ph.i131
  %lcmp.mod453.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod453.not, label %._crit_edge.i134, label %.lr.ph.i131.epil.preheader

.lr.ph.i131.epil.preheader:                       ; preds = %._crit_edge.i134.unr-lcssa, %.lr.ph.i131.preheader
  %.epil.init448 = phi i64 [ 0, %.lr.ph.i131.preheader ], [ %i.ez, %._crit_edge.i134.unr-lcssa ]
  %.epil.init450 = phi ptr [ %.11, %.lr.ph.i131.preheader ], [ %i.fa, %._crit_edge.i134.unr-lcssa ]
  %.049.i133.epil.init = phi i64 [ 56, %.lr.ph.i131.preheader ], [ %i.fb, %._crit_edge.i134.unr-lcssa ]
  %.epil.init452 = phi i64 [ %.10252, %.lr.ph.i131.preheader ], [ %i.fc, %._crit_edge.i134.unr-lcssa ]
  %lcmp.mod457 = icmp ne i64 %xtraiter445, 0
  tail call void @llvm.assume(i1 %lcmp.mod457)
  br label %.lr.ph.i131.epil

.lr.ph.i131.epil:                                 ; preds = %.lr.ph.i131.epil, %.lr.ph.i131.epil.preheader
  %i.fd = phi i64 [ %i.fj, %.lr.ph.i131.epil ], [ %.epil.init448, %.lr.ph.i131.epil.preheader ]
  %i.fe = phi ptr [ %i.fk, %.lr.ph.i131.epil ], [ %.epil.init450, %.lr.ph.i131.epil.preheader ] ; 2 uses
  %.049.i133.epil = phi i64 [ %i.fl, %.lr.ph.i131.epil ], [ %.049.i133.epil.init, %.lr.ph.i131.epil.preheader ] ; 2 uses
  %i.ff = phi i64 [ %i.fm, %.lr.ph.i131.epil ], [ %.epil.init452, %.lr.ph.i131.epil.preheader ]
  %epil.iter446 = phi i64 [ %epil.iter446.next, %.lr.ph.i131.epil ], [ 0, %.lr.ph.i131.epil.preheader ]
  %i.fg = load i8, ptr %i.fe, align 1, !tbaa !28, !noalias !118
  %i.fh = zext i8 %i.fg to i64
  %i.fi = shl i64 %i.fh, %.049.i133.epil
  %i.fj = or i64 %i.fi, %i.fd                     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fl = add i64 %.049.i133.epil, -8             ; 2 uses
  %i.fm = add i64 %i.ff, -8                       ; 2 uses
  %epil.iter446.next = add i64 %epil.iter446, 1   ; 2 uses
  %epil.iter446.cmp.not = icmp eq i64 %epil.iter446.next, %xtraiter445
  br i1 %epil.iter446.cmp.not, label %._crit_edge.i134, label %.lr.ph.i131.epil, !llvm.loop !124

._crit_edge.i134:                                 ; preds = %.lr.ph.i131.epil, %._crit_edge.i134.unr-lcssa
  %.lcssa421 = phi i64 [ %i.ez, %._crit_edge.i134.unr-lcssa ], [ %i.fj, %.lr.ph.i131.epil ]
  %.lcssa420 = phi i64 [ %i.fb, %._crit_edge.i134.unr-lcssa ], [ %i.fl, %.lr.ph.i131.epil ]
  %.lcssa419 = phi i64 [ %i.fc, %._crit_edge.i134.unr-lcssa ], [ %i.fm, %.lr.ph.i131.epil ]
  %scevgep.i135 = getelementptr i8, ptr %.11, i64 1
  %i.fn = add nsw i64 %.10252, -8
  %i.fo = lshr i64 %i.fn, 3
  %scevgep62.i136 = getelementptr i8, ptr %scevgep.i135, i64 %i.fo
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i134, %bb.ab
  %.11253 = phi i64 [ %.lcssa419, %._crit_edge.i134 ], [ %.10252, %bb.ab ]
  %.12218 = phi i64 [ %.lcssa421, %._crit_edge.i134 ], [ 0, %bb.ab ] ; 2 uses
  %.12 = phi ptr [ %scevgep62.i136, %._crit_edge.i134 ], [ %.11, %bb.ab ] ; 3 uses
  %.0.lcssa.i127 = phi i64 [ %.lcssa420, %._crit_edge.i134 ], [ 56, %bb.ab ]
  %.not45.i128 = icmp eq i64 %.11253, 0
  br i1 %.not45.i128, label %.sink.split.i129, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fp = load i8, ptr %.12, align 1, !tbaa !28, !noalias !118
  %i.fq = zext i8 %i.fp to i64
  %i.fr = shl i64 %i.fq, %.0.lcssa.i127
  %i.fs = or i64 %i.fr, %.12218
  %i.ft = getelementptr inbounds nuw i8, ptr %.12, i64 1
  br label %.sink.split.i129

.sink.split.i129:                                 ; preds = %bb.aa, %bb.ad, %bb.ac
  %.12254 = phi i64 [ 0, %bb.ac ], [ 0, %bb.ad ], [ %i.dv, %bb.aa ] ; 2 uses
  %.14220 = phi i64 [ %.12218, %bb.ac ], [ %i.fs, %bb.ad ], [ %i.dt, %bb.aa ] ; 2 uses
  %.14 = phi ptr [ %.12, %bb.ac ], [ %i.ft, %bb.ad ], [ %i.du, %bb.aa ] ; 2 uses
  %i.fu = icmp slt i32 %.1.i125, 64
  br i1 %i.fu, label %.preheader261, label %FastHufDecoder_refill.exit139, !llvm.loop !115

FastHufDecoder_refill.exit139:                    ; preds = %.sink.split.i129, %bb.x, %bb.v
  %.3245 = phi i64 [ %.2244, %bb.v ], [ %.10252, %bb.x ], [ %.12254, %.sink.split.i129 ]
  %.3230 = phi i64 [ %i.df, %bb.v ], [ %i.dn, %bb.x ], [ %.10237, %.sink.split.i129 ] ; 5 uses
  %.3209 = phi i64 [ %.2208, %bb.v ], [ %i.dp, %bb.x ], [ %.14220, %.sink.split.i129 ]
  %.3191 = phi i32 [ %.2190, %bb.v ], [ %i.dq, %bb.x ], [ 64, %.sink.split.i129 ]
  %.3 = phi ptr [ %.2, %bb.v ], [ %.11, %bb.x ], [ %.14, %.sink.split.i129 ]
  %.390 = phi i32 [ %i.dg, %bb.v ], [ 64, %bb.x ], [ 64, %.sink.split.i129 ]
  %i.fv = lshr i64 %.3230, 56                     ; 7 uses
  %i.fw = icmp eq i64 %.094301, 0
  br i1 %i.fw, label %bb.ae, label %bb.ag, !prof !117

bb.ae:                                            ; preds = %FastHufDecoder_refill.exit139
  %.not119 = icmp eq ptr %0, null
  br i1 %.not119, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !85
  %i.fz = tail call i32 (ptr, i32, ptr, ...) %i.fy(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %.critedge

bb.ag:                                            ; preds = %FastHufDecoder_refill.exit139
  %i.ga = add i64 %i.fv, %.094301                 ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, %5
  br i1 %i.gb, label %bb.ah, label %bb.aj, !prof !117

bb.ah:                                            ; preds = %bb.ag
  %.not118 = icmp eq ptr %0, null
  br i1 %.not118, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !85
  %i.ge = tail call i32 (ptr, i32, ptr, ...) %i.gd(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %.critedge

bb.aj:                                            ; preds = %bb.ag
  %i.gf = icmp eq i64 %i.fv, 0
  br i1 %i.gf, label %bb.ak, label %iter.check, !prof !117

iter.check:                                       ; preds = %bb.aj
  %i.gg = getelementptr [2 x i8], ptr %4, i64 %.094301 ; 4 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -2
  %.pre = load i16, ptr %i.gh, align 2, !tbaa !8  ; 3 uses
  %min.iters.check = icmp ult i64 %.3230, 288230376151711744
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check404 = icmp ult i64 %.3230, 1152921504606846976
  br i1 %min.iters.check404, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.fv, 240                     ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gi = getelementptr [2 x i8], ptr %i.gg, i64 %index ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.gi, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.gj, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.gl = and i64 %.3230, 864691128455135232
  %min.epilog.iters.check = icmp eq i64 %i.gl, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec405 = and i64 %i.fv, 252                  ; 3 uses
  %broadcast.splatinsert406 = insertelement <4 x i16> poison, i16 %.pre, i64 0
  %broadcast.splat407 = shufflevector <4 x i16> %broadcast.splatinsert406, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index408 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next409, %vec.epilog.vector.body ] ; 2 uses
  %i.gm = getelementptr [2 x i8], ptr %i.gg, i64 %index408
  store <4 x i16> %broadcast.splat407, ptr %i.gm, align 2, !tbaa !8
  %index.next409 = add nuw i64 %index408, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next409, %n.vec405
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n410 = icmp eq i64 %i.fv, %n.vec405
  br i1 %cmp.n410, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv332.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec405, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.ak:                                            ; preds = %bb.aj
  %.not117 = icmp eq ptr %0, null
  br i1 %.not117, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !85
  %i.gq = tail call i32 (ptr, i32, ptr, ...) %i.gp(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %.critedge

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.gr = shl i64 %.3230, 8
  %i.gs = add nsw i32 %.390, -8
  br label %bb.an

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %vec.epilog.scalar.ph ], [ %indvars.iv332.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.gt = getelementptr [2 x i8], ptr %i.gg, i64 %indvars.iv332
  store i16 %.pre, ptr %i.gt, align 2, !tbaa !8
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next333, %i.fv
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !128

bb.am:                                            ; preds = %bb.u
  %i.gu = trunc i32 %.186 to i16
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %.094301
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !8
  %i.gw = add i64 %.094301, 1
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.am
  %.4246 = phi i64 [ %.3245, %.loopexit ], [ %.2244, %bb.am ] ; 2 uses
  %.4231 = phi i64 [ %i.gr, %.loopexit ], [ %i.df, %bb.am ] ; 2 uses
  %.4210 = phi i64 [ %.3209, %.loopexit ], [ %.2208, %bb.am ] ; 2 uses
  %.4192 = phi i32 [ %.3191, %.loopexit ], [ %.2190, %bb.am ] ; 2 uses
  %.4 = phi ptr [ %.3, %.loopexit ], [ %.2, %bb.am ] ; 2 uses
  %.296 = phi i64 [ %i.ga, %.loopexit ], [ %i.gw, %bb.am ] ; 2 uses
  %.592 = phi i32 [ %i.gs, %.loopexit ], [ %i.dg, %bb.am ] ; 3 uses
  %i.gx = icmp slt i32 %.592, 12
  br i1 %i.gx, label %.preheader, label %FastHufDecoder_refill.exit155

.preheader:                                       ; preds = %bb.an, %.sink.split.i145
  %.14256 = phi i64 [ %.16258, %.sink.split.i145 ], [ %.4246, %bb.an ] ; 9 uses
  %.12239 = phi i64 [ %.13240, %.sink.split.i145 ], [ %.4231, %bb.an ]
  %.16222 = phi i64 [ %.19225, %.sink.split.i145 ], [ %.4210, %bb.an ] ; 3 uses
  %.14202 = phi i32 [ 64, %.sink.split.i145 ], [ %.4192, %bb.an ] ; 4 uses
  %.16 = phi ptr [ %.19, %.sink.split.i145 ], [ %.4, %bb.an ] ; 7 uses
  %.041.i140 = phi i32 [ %.1.i141, %.sink.split.i145 ], [ %.592, %bb.an ] ; 4 uses
  %i.gy = icmp sgt i32 %.041.i140, 0
  br i1 %i.gy, label %bb.ao, label %bb.ar, !prof !27

bb.ao:                                            ; preds = %.preheader
  %i.gz = sub nuw nsw i32 64, %.041.i140          ; 3 uses
  %i.ha = zext nneg i32 %.041.i140 to i64
  %i.hb = lshr i64 %.16222, %i.ha
  %i.hc = or i64 %i.hb, %.12239                   ; 2 uses
  %.not.i154 = icmp slt i32 %.14202, %i.gz
  br i1 %.not.i154, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hd = zext nneg i32 %i.gz to i64
  %i.he = shl i64 %.16222, %i.hd
  %i.hf = sub nuw nsw i32 %.14202, %i.gz
  br label %FastHufDecoder_refill.exit155

bb.aq:                                            ; preds = %bb.ao
  %i.hg = add nsw i32 %.041.i140, %.14202
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %bb.aq
  %.13240 = phi i64 [ %i.hc, %bb.aq ], [ %.16222, %.preheader ] ; 2 uses
  %.1.i141 = phi i32 [ %i.hg, %bb.aq ], [ %.14202, %.preheader ] ; 2 uses
  %i.hh = icmp ugt i64 %.14256, 63
  br i1 %i.hh, label %bb.as, label %bb.at, !prof !27

bb.as:                                            ; preds = %bb.ar
  %.val.i153 = load i64, ptr %.16, align 1, !noalias !129
  %i.hi = tail call i64 @llvm.bswap.i64(i64 %.val.i153)
  %i.hj = getelementptr inbounds nuw i8, ptr %.16, i64 8
  %i.hk = add i64 %.14256, -64
  br label %.sink.split.i145

bb.at:                                            ; preds = %bb.ar
  %i.hl = icmp samesign ugt i64 %.14256, 7
  br i1 %i.hl, label %.lr.ph.i147.preheader, label %bb.au

.lr.ph.i147.preheader:                            ; preds = %bb.at
  %i.hm = add nsw i64 %.14256, -8                 ; 2 uses
  %i.hn = lshr i64 %i.hm, 3
  %i.ho = add nuw nsw i64 %i.hn, 1                ; 2 uses
  %xtraiter460 = and i64 %i.ho, 3                 ; 3 uses
  %i.hp = icmp ult i64 %i.hm, 24
  br i1 %i.hp, label %.lr.ph.i147.epil.preheader, label %.lr.ph.i147.preheader.new

.lr.ph.i147.preheader.new:                        ; preds = %.lr.ph.i147.preheader
  %unroll_iter473 = and i64 %i.ho, 4611686018427387900
  br label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.lr.ph.i147, %.lr.ph.i147.preheader.new
  %i.hq = phi i64 [ 0, %.lr.ph.i147.preheader.new ], [ %i.io, %.lr.ph.i147 ]
  %i.hr = phi ptr [ %.16, %.lr.ph.i147.preheader.new ], [ %i.ip, %.lr.ph.i147 ] ; 5 uses
  %.049.i149 = phi i64 [ 56, %.lr.ph.i147.preheader.new ], [ %i.iq, %.lr.ph.i147 ] ; 5 uses
  %i.hs = phi i64 [ %.14256, %.lr.ph.i147.preheader.new ], [ %i.ir, %.lr.ph.i147 ]
  %niter474 = phi i64 [ 0, %.lr.ph.i147.preheader.new ], [ %niter474.next.3, %.lr.ph.i147 ]
  %i.ht = load i8, ptr %i.hr, align 1, !tbaa !28, !noalias !129
  %i.hu = zext i8 %i.ht to i64
  %i.hv = shl i64 %i.hu, %.049.i149
  %i.hw = or i64 %i.hv, %i.hq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.hy = add nsw i64 %.049.i149, -8
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !28, !noalias !129
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl i64 %i.ia, %i.hy
  %i.ic = or i64 %i.ib, %i.hw
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ie = add nsw i64 %.049.i149, -16
  %i.if = load i8, ptr %i.id, align 1, !tbaa !28, !noalias !129
  %i.ig = zext i8 %i.if to i64
  %i.ih = shl i64 %i.ig, %i.ie
  %i.ii = or i64 %i.ih, %i.ic
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.ik = add nsw i64 %.049.i149, -24
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !28, !noalias !129
  %i.im = zext i8 %i.il to i64
  %i.in = shl i64 %i.im, %i.ik
  %i.io = or i64 %i.in, %i.ii                     ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.iq = add i64 %.049.i149, -32                 ; 3 uses
  %i.ir = add i64 %i.hs, -32                      ; 3 uses
  %niter474.next.3 = add i64 %niter474, 4         ; 2 uses
  %niter474.ncmp.3.not = icmp eq i64 %niter474.next.3, %unroll_iter473
  br i1 %niter474.ncmp.3.not, label %._crit_edge.i150.unr-lcssa, label %.lr.ph.i147, !llvm.loop !113

._crit_edge.i150.unr-lcssa:                       ; preds = %.lr.ph.i147
  %lcmp.mod468.not = icmp eq i64 %xtraiter460, 0
  br i1 %lcmp.mod468.not, label %._crit_edge.i150, label %.lr.ph.i147.epil.preheader

.lr.ph.i147.epil.preheader:                       ; preds = %._crit_edge.i150.unr-lcssa, %.lr.ph.i147.preheader
  %.epil.init463 = phi i64 [ 0, %.lr.ph.i147.preheader ], [ %i.io, %._crit_edge.i150.unr-lcssa ]
  %.epil.init465 = phi ptr [ %.16, %.lr.ph.i147.preheader ], [ %i.ip, %._crit_edge.i150.unr-lcssa ]
  %.049.i149.epil.init = phi i64 [ 56, %.lr.ph.i147.preheader ], [ %i.iq, %._crit_edge.i150.unr-lcssa ]
  %.epil.init467 = phi i64 [ %.14256, %.lr.ph.i147.preheader ], [ %i.ir, %._crit_edge.i150.unr-lcssa ]
  %lcmp.mod472 = icmp ne i64 %xtraiter460, 0
  tail call void @llvm.assume(i1 %lcmp.mod472)
  br label %.lr.ph.i147.epil

.lr.ph.i147.epil:                                 ; preds = %.lr.ph.i147.epil, %.lr.ph.i147.epil.preheader
  %i.is = phi i64 [ %i.iy, %.lr.ph.i147.epil ], [ %.epil.init463, %.lr.ph.i147.epil.preheader ]
  %i.it = phi ptr [ %i.iz, %.lr.ph.i147.epil ], [ %.epil.init465, %.lr.ph.i147.epil.preheader ] ; 2 uses
  %.049.i149.epil = phi i64 [ %i.ja, %.lr.ph.i147.epil ], [ %.049.i149.epil.init, %.lr.ph.i147.epil.preheader ] ; 2 uses
  %i.iu = phi i64 [ %i.jb, %.lr.ph.i147.epil ], [ %.epil.init467, %.lr.ph.i147.epil.preheader ]
  %epil.iter461 = phi i64 [ %epil.iter461.next, %.lr.ph.i147.epil ], [ 0, %.lr.ph.i147.epil.preheader ]
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !28, !noalias !129
  %i.iw = zext i8 %i.iv to i64
  %i.ix = shl i64 %i.iw, %.049.i149.epil
  %i.iy = or i64 %i.ix, %i.is                     ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  %i.ja = add i64 %.049.i149.epil, -8             ; 2 uses
  %i.jb = add i64 %i.iu, -8                       ; 2 uses
  %epil.iter461.next = add i64 %epil.iter461, 1   ; 2 uses
  %epil.iter461.cmp.not = icmp eq i64 %epil.iter461.next, %xtraiter460
  br i1 %epil.iter461.cmp.not, label %._crit_edge.i150, label %.lr.ph.i147.epil, !llvm.loop !135

._crit_edge.i150:                                 ; preds = %.lr.ph.i147.epil, %._crit_edge.i150.unr-lcssa
  %.lcssa430 = phi i64 [ %i.io, %._crit_edge.i150.unr-lcssa ], [ %i.iy, %.lr.ph.i147.epil ]
  %.lcssa429 = phi i64 [ %i.iq, %._crit_edge.i150.unr-lcssa ], [ %i.ja, %.lr.ph.i147.epil ]
  %.lcssa428 = phi i64 [ %i.ir, %._crit_edge.i150.unr-lcssa ], [ %i.jb, %.lr.ph.i147.epil ]
  %scevgep.i151 = getelementptr i8, ptr %.16, i64 1
  %i.jc = add nsw i64 %.14256, -8
  %i.jd = lshr i64 %i.jc, 3
  %scevgep62.i152 = getelementptr i8, ptr %scevgep.i151, i64 %i.jd
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i150, %bb.at
  %.15257 = phi i64 [ %.lcssa428, %._crit_edge.i150 ], [ %.14256, %bb.at ]
  %.17223 = phi i64 [ %.lcssa430, %._crit_edge.i150 ], [ 0, %bb.at ] ; 2 uses
  %.17 = phi ptr [ %scevgep62.i152, %._crit_edge.i150 ], [ %.16, %bb.at ] ; 3 uses
  %.0.lcssa.i143 = phi i64 [ %.lcssa429, %._crit_edge.i150 ], [ 56, %bb.at ]
  %.not45.i144 = icmp eq i64 %.15257, 0
  br i1 %.not45.i144, label %.sink.split.i145, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = load i8, ptr %.17, align 1, !tbaa !28, !noalias !129
  %i.jf = zext i8 %i.je to i64
  %i.jg = shl i64 %i.jf, %.0.lcssa.i143
  %i.jh = or i64 %i.jg, %.17223
  %i.ji = getelementptr inbounds nuw i8, ptr %.17, i64 1
  br label %.sink.split.i145

.sink.split.i145:                                 ; preds = %bb.as, %bb.av, %bb.au
  %.16258 = phi i64 [ 0, %bb.au ], [ 0, %bb.av ], [ %i.hk, %bb.as ] ; 2 uses
  %.19225 = phi i64 [ %.17223, %bb.au ], [ %i.jh, %bb.av ], [ %i.hi, %bb.as ] ; 2 uses
  %.19 = phi ptr [ %.17, %bb.au ], [ %i.ji, %bb.av ], [ %i.hj, %bb.as ] ; 2 uses
  %i.jj = icmp slt i32 %.1.i141, 64
  br i1 %i.jj, label %.preheader, label %FastHufDecoder_refill.exit155, !llvm.loop !115

FastHufDecoder_refill.exit155:                    ; preds = %.sink.split.i145, %bb.ap, %bb.an
  %.5247 = phi i64 [ %.4246, %bb.an ], [ %.14256, %bb.ap ], [ %.16258, %.sink.split.i145 ] ; 2 uses
  %.5232 = phi i64 [ %.4231, %bb.an ], [ %i.hc, %bb.ap ], [ %.13240, %.sink.split.i145 ]
  %.5211 = phi i64 [ %.4210, %bb.an ], [ %i.he, %bb.ap ], [ %.19225, %.sink.split.i145 ]
  %.5193 = phi i32 [ %.4192, %bb.an ], [ %i.hf, %bb.ap ], [ 64, %.sink.split.i145 ]
  %.5 = phi ptr [ %.4, %bb.an ], [ %.16, %bb.ap ], [ %.19, %.sink.split.i145 ]
  %.7 = phi i32 [ %.592, %bb.an ], [ 64, %bb.ap ], [ 64, %.sink.split.i145 ]
  %i.jk = icmp ult i64 %.296, %5
  br i1 %i.jk, label %bb.b, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %FastHufDecoder_refill.exit155, %bb.a
  %.0242.lcssa = phi i64 [ %i.a, %bb.a ], [ %.5247, %FastHufDecoder_refill.exit155 ] ; 2 uses
  %.not = icmp eq i64 %.0242.lcssa, 0
  br i1 %.not, label %.critedge, label %bb.aw, !prof !27

bb.aw:                                            ; preds = %._crit_edge
  %.not113 = icmp eq ptr %0, null
  br i1 %.not113, label %.critedge, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !85
  %i.jn = trunc i64 %.0242.lcssa to i32
  %i.jo = tail call i32 (ptr, i32, ptr, ...) %i.jm(ptr noundef nonnull %0, i32 noundef 23, ptr noundef nonnull @.str.9, i32 noundef %i.jn) #10 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ae, %bb.ah, %bb.af, %bb.ai, %bb.al, %bb.ak, %bb.o, %bb.p, %bb.t, %bb.s, %._crit_edge, %bb.aw, %bb.ax
  %.6 = phi i32 [ 0, %._crit_edge ], [ 23, %bb.aw ], [ 23, %bb.ax ], [ 23, %bb.o ], [ 23, %bb.s ], [ 23, %bb.t ], [ 23, %bb.p ], [ 23, %bb.ak ], [ 23, %bb.al ], [ 23, %bb.ai ], [ 23, %bb.af ], [ 23, %bb.ah ], [ 23, %bb.ae ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @hufBuildDecTable(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 65537) %2, i32 noundef range(i32 0, 65537) %3, ptr nofree noundef captures(none) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.b, %bb.b ], [ @internal_exr_alloc, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.d, %bb.b ], [ @internal_exr_free, %bb.a ]
  %.not74102 = icmp samesign ugt i32 %2, %3
  br i1 %.not74102, label %.thread84, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.thread
  %i.g = zext nneg i32 %2 to i64
  %i.h = add nuw nsw i32 %3, 1
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.loopexit97
  %indvars.iv114 = phi i64 [ %i.g, %.lr.ph104.preheader ], [ %indvars.iv.next115, %.loopexit97 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv114
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10   ; 3 uses
  %i.k = lshr i64 %i.j, 6                         ; 3 uses
  %i.l = trunc i64 %i.j to i32
  %i.m = and i32 %i.l, 63                         ; 5 uses
  %i.n = and i64 %i.j, 63
  %i.o = lshr i64 %i.k, %i.n
  %.not75 = icmp eq i64 %i.o, 0
  br i1 %.not75, label %bb.c, label %.thread84
end_hunk_1
begin_hunk_2_@hufDecode:bb.a
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.p ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !138  ; 3 uses
  %.not255 = icmp eq i32 %i.r, 0
  br i1 %.not255, label %bb.l, label %bb.b

bb.b:                                             ; preds = %.lr.ph387
  %i.s = icmp sgt i32 %i.r, %.1156385
  br i1 %i.s, label %.thread314, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = sub nsw i32 %.1156385, %i.r              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !139  ; 2 uses
  %i.w = icmp eq i32 %i.v, %4
  br i1 %i.w, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.t, 8
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not260 = icmp ult ptr %.1216382, %i.d
  br i1 %.not260, label %bb.f, label %.thread314

bb.f:                                             ; preds = %bb.e
  %i.y = shl i64 %.1163384, 8
  %i.z = getelementptr inbounds nuw i8, ptr %.1216382, i64 1
  %i.aa = load i8, ptr %.1216382, align 1, !tbaa !28
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.y, %i.ab
  %i.ad = add nsw i32 %i.t, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.2217 = phi ptr [ %i.z, %bb.f ], [ %.1216382, %bb.d ] ; 4 uses
  %.2164 = phi i64 [ %i.ac, %bb.f ], [ %.1163384, %bb.d ] ; 5 uses
  %.2157 = phi i32 [ %i.ad, %bb.f ], [ %i.t, %bb.d ]
  %i.ae = add nsw i32 %.2157, -8                  ; 5 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = lshr i64 %.2164, %i.af                  ; 5 uses
  %i.ah = trunc i64 %i.ag to i8                   ; 4 uses
  %i.ai = and i64 %i.ag, 255                      ; 5 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.1182383, i64 %i.ai
  %i.ak = icmp ugt ptr %i.aj, %i.a
  br i1 %i.ak, label %.thread314, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %.1182383, i64 -2 ; 2 uses
  %i.am = icmp ult ptr %i.al, %6
  br i1 %i.am, label %.thread314, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load i16, ptr %i.al, align 2, !tbaa !8  ; 3 uses
  %.not261354 = icmp eq i8 %i.ah, 0
  br i1 %.not261354, label %.loopexit331, label %iter.check527

iter.check527:                                    ; preds = %bb.i
  %min.iters.check512 = icmp samesign ult i64 %i.ai, 4
  br i1 %min.iters.check512, label %.lr.ph.preheader, label %vector.main.loop.iter.check513

vector.main.loop.iter.check513:                   ; preds = %iter.check527
  %min.iters.check514 = icmp samesign ult i64 %i.ai, 16
  br i1 %min.iters.check514, label %vec.epilog.ph531, label %vector.ph515

vector.ph515:                                     ; preds = %vector.main.loop.iter.check513
  %i.ao = and i64 %i.ag, 12
  %n.vec516 = and i64 %i.ag, 240                  ; 5 uses
  %i.ap = trunc nuw i64 %n.vec516 to i8
  %i.aq = sub i8 %i.ah, %i.ap
  %i.ar = shl nuw nsw i64 %n.vec516, 1
  %i.as = getelementptr i8, ptr %.1182383, i64 %i.ar ; 2 uses
  %broadcast.splatinsert517 = insertelement <8 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat518 = shufflevector <8 x i16> %broadcast.splatinsert517, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body519

vector.body519:                                   ; preds = %vector.body519, %vector.ph515
  %index520 = phi i64 [ 0, %vector.ph515 ], [ %index.next522, %vector.body519 ] ; 2 uses
  %i.at = shl i64 %index520, 1
  %next.gep521 = getelementptr i8, ptr %.1182383, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep521, i64 16
  store <8 x i16> %broadcast.splat518, ptr %next.gep521, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat518, ptr %i.au, align 2, !tbaa !8
  %index.next522 = add nuw i64 %index520, 16      ; 2 uses
  %i.av = icmp eq i64 %index.next522, %n.vec516
  br i1 %i.av, label %middle.block523, label %vector.body519, !llvm.loop !144

middle.block523:                                  ; preds = %vector.body519
  %cmp.n524 = icmp eq i64 %i.ai, %n.vec516
  br i1 %cmp.n524, label %.loopexit331, label %vec.epilog.iter.check529

vec.epilog.iter.check529:                         ; preds = %middle.block523
  %min.epilog.iters.check530 = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check530, label %.lr.ph.preheader, label %vec.epilog.ph531, !prof !126

vec.epilog.ph531:                                 ; preds = %vector.main.loop.iter.check513, %vec.epilog.iter.check529
  %vec.epilog.resume.val525 = phi i64 [ %n.vec516, %vec.epilog.iter.check529 ], [ 0, %vector.main.loop.iter.check513 ]
  %n.vec532 = and i64 %i.ag, 252                  ; 4 uses
  %i.aw = trunc nuw i64 %n.vec532 to i8
  %i.ax = sub i8 %i.ah, %i.aw
  %i.ay = shl nuw nsw i64 %n.vec532, 1
  %i.az = getelementptr i8, ptr %.1182383, i64 %i.ay ; 2 uses
  %broadcast.splatinsert533 = insertelement <4 x i16> poison, i16 %i.an, i64 0
  %broadcast.splat534 = shufflevector <4 x i16> %broadcast.splatinsert533, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body535

vec.epilog.vector.body535:                        ; preds = %vec.epilog.vector.body535, %vec.epilog.ph531
  %index536 = phi i64 [ %vec.epilog.resume.val525, %vec.epilog.ph531 ], [ %index.next538, %vec.epilog.vector.body535 ] ; 2 uses
  %i.ba = shl i64 %index536, 1
  %next.gep537 = getelementptr i8, ptr %.1182383, i64 %i.ba
  store <4 x i16> %broadcast.splat534, ptr %next.gep537, align 2, !tbaa !8
  %index.next538 = add nuw i64 %index536, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next538, %n.vec532
  br i1 %i.bb, label %vec.epilog.middle.block539, label %vec.epilog.vector.body535, !llvm.loop !145

vec.epilog.middle.block539:                       ; preds = %vec.epilog.vector.body535
  %cmp.n540 = icmp eq i64 %i.ai, %n.vec532
  br i1 %cmp.n540, label %.loopexit331, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check527, %vec.epilog.iter.check529, %vec.epilog.middle.block539
  %.0153356.ph = phi i8 [ %i.ah, %iter.check527 ], [ %i.aq, %vec.epilog.iter.check529 ], [ %i.ax, %vec.epilog.middle.block539 ]
  %.2183355.ph = phi ptr [ %.1182383, %iter.check527 ], [ %i.as, %vec.epilog.iter.check529 ], [ %i.az, %vec.epilog.middle.block539 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0153356 = phi i8 [ %i.bc, %.lr.ph ], [ %.0153356.ph, %.lr.ph.preheader ]
  %.2183355 = phi ptr [ %i.bd, %.lr.ph ], [ %.2183355.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bc = add i8 %.0153356, -1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.2183355, i64 2 ; 2 uses
  store i16 %i.an, ptr %.2183355, align 2, !tbaa !8
  %.not261 = icmp eq i8 %i.bc, 0
  br i1 %.not261, label %.loopexit331, label %.lr.ph, !llvm.loop !146

bb.j:                                             ; preds = %bb.c
  %i.be = icmp ult ptr %.1182383, %i.a
  br i1 %i.be, label %bb.k, label %.thread314

bb.k:                                             ; preds = %bb.j
  %i.bf = trunc i32 %i.v to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.1182383, i64 2
  store i16 %i.bf, ptr %.1182383, align 2, !tbaa !8
  br label %.loopexit331

bb.l:                                             ; preds = %.lr.ph387
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !103 ; 2 uses
  %.not256 = icmp eq ptr %i.bi, null
  br i1 %.not256, label %.thread314, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !139 ; 3 uses
  %.not418 = icmp eq i32 %i.bk, 0
  br i1 %.not418, label %.loopexit329, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext i32 %i.bk to i64
  br label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph370.preheader ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %.4159368 = phi i32 [ %.1156385, %.lr.ph370.preheader ], [ %.5160.lcssa, %bb.w ] ; 3 uses
  %.4166367 = phi i64 [ %.1163384, %.lr.ph370.preheader ], [ %.5167.lcssa, %bb.w ] ; 2 uses
  %.4219366 = phi ptr [ %.1216382, %.lr.ph370.preheader ], [ %.5220.lcssa, %bb.w ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10 ; 3 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = and i32 %i.bq, 63                       ; 3 uses
  %i.bs = icmp slt i32 %.4159368, %i.br           ; 2 uses
  %i.bt = icmp ult ptr %.4219366, %i.d            ; 2 uses
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph360, label %._crit_edge

.lr.ph360:                                        ; preds = %.lr.ph370, %.lr.ph360
  %.5160359 = phi i32 [ %i.ca, %.lr.ph360 ], [ %.4159368, %.lr.ph370 ]
  %.5167358 = phi i64 [ %i.bz, %.lr.ph360 ], [ %.4166367, %.lr.ph370 ]
  %.5220357 = phi ptr [ %i.bw, %.lr.ph360 ], [ %.4219366, %.lr.ph370 ] ; 2 uses
  %i.bv = shl i64 %.5167358, 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.5220357, i64 1 ; 3 uses
  %i.bx = load i8, ptr %.5220357, align 1, !tbaa !28
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bv, %i.by            ; 2 uses
  %i.ca = add nsw i32 %.5160359, 8                ; 3 uses
  %i.cb = icmp slt i32 %i.ca, %i.br               ; 2 uses
  %i.cc = icmp ult ptr %i.bw, %i.d                ; 2 uses
  %i.cd = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %i.cd, label %.lr.ph360, label %._crit_edge, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph360, %.lr.ph370
  %.5220.lcssa = phi ptr [ %.4219366, %.lr.ph370 ], [ %i.bw, %.lr.ph360 ] ; 5 uses
  %.5167.lcssa = phi i64 [ %.4166367, %.lr.ph370 ], [ %i.bz, %.lr.ph360 ] ; 5 uses
  %.5160.lcssa = phi i32 [ %.4159368, %.lr.ph370 ], [ %i.ca, %.lr.ph360 ] ; 2 uses
  %.lcssa336 = phi i1 [ %i.bs, %.lr.ph370 ], [ %i.cb, %.lr.ph360 ]
  %.lcssa = phi i1 [ %i.bt, %.lr.ph370 ], [ %i.cc, %.lr.ph360 ]
  br i1 %.lcssa336, label %bb.w, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.ce = lshr i64 %i.bp, 6
  %i.cf = sub nuw nsw i32 %.5160.lcssa, %i.br     ; 5 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %.5167.lcssa, %i.cg
  %i.ci = and i64 %i.bp, 63
  %notmask = shl nsw i64 -1, %i.ci
  %i.cj = xor i64 %notmask, -1
  %i.ck = and i64 %i.ch, %i.cj
  %i.cl = icmp eq i64 %i.ce, %i.ck
  br i1 %i.cl, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.cm = trunc nuw i64 %indvars.iv to i32        ; 5 uses
  %i.cn = icmp eq i32 %i.bm, %4
  br i1 %i.cn, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.co = icmp slt i32 %i.cf, 8
  br i1 %i.co, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %.lcssa, label %bb.q, label %.thread314

bb.q:                                             ; preds = %bb.p
  %i.cp = shl i64 %.5167.lcssa, 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.5220.lcssa, i64 1
  %i.cr = load i8, ptr %.5220.lcssa, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i64
  %i.ct = or disjoint i64 %i.cp, %i.cs
  %i.cu = add nsw i32 %i.cf, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.6221 = phi ptr [ %i.cq, %bb.q ], [ %.5220.lcssa, %bb.o ] ; 4 uses
  %.6168 = phi i64 [ %i.ct, %bb.q ], [ %.5167.lcssa, %bb.o ] ; 5 uses
  %.6161 = phi i32 [ %i.cu, %bb.q ], [ %i.cf, %bb.o ]
  %i.cv = add nsw i32 %.6161, -8                  ; 5 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = lshr i64 %.6168, %i.cw                  ; 5 uses
  %i.cy = trunc i64 %i.cx to i8                   ; 4 uses
  %i.cz = and i64 %i.cx, 255                      ; 5 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.1182383, i64 %i.cz
  %i.db = icmp ugt ptr %i.da, %i.a
  br i1 %i.db, label %.thread314, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds i8, ptr %.1182383, i64 -2 ; 2 uses
  %i.dd = icmp ult ptr %i.dc, %6
  br i1 %i.dd, label %.thread314, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.de = load i16, ptr %i.dc, align 2, !tbaa !8  ; 3 uses
  %.not259376 = icmp eq i8 %i.cy, 0
  br i1 %.not259376, label %.loopexit329, label %iter.check

iter.check:                                       ; preds = %bb.t
  %min.iters.check = icmp samesign ult i64 %i.cz, 4
  br i1 %min.iters.check, label %.lr.ph380.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check501 = icmp samesign ult i64 %i.cz, 16
  br i1 %min.iters.check501, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %i.cx, 12
  %n.vec = and i64 %i.cx, 240                     ; 5 uses
  %i.dg = trunc nuw i64 %n.vec to i8
  %i.dh = sub i8 %i.cy, %i.dg
  %i.di = shl nuw nsw i64 %n.vec, 1
  %i.dj = getelementptr i8, ptr %.1182383, i64 %i.di ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.1182383, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %broadcast.splat, ptr %next.gep, align 2, !tbaa !8
  store <8 x i16> %broadcast.splat, ptr %i.dl, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %.loopexit329, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check, label %.lr.ph380.preheader, label %vec.epilog.ph, !prof !126

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec503 = and i64 %i.cx, 252                  ; 4 uses
  %i.dn = trunc nuw i64 %n.vec503 to i8
  %i.do = sub i8 %i.cy, %i.dn
  %i.dp = shl nuw nsw i64 %n.vec503, 1
  %i.dq = getelementptr i8, ptr %.1182383, i64 %i.dp ; 2 uses
  %broadcast.splatinsert504 = insertelement <4 x i16> poison, i16 %i.de, i64 0
  %broadcast.splat505 = shufflevector <4 x i16> %broadcast.splatinsert504, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index506 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next508, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = shl i64 %index506, 1
  %next.gep507 = getelementptr i8, ptr %.1182383, i64 %i.dr
  store <4 x i16> %broadcast.splat505, ptr %next.gep507, align 2, !tbaa !8
  %index.next508 = add nuw i64 %index506, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next508, %n.vec503
  br i1 %i.ds, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !149

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n509 = icmp eq i64 %i.cz, %n.vec503
  br i1 %cmp.n509, label %.loopexit329, label %.lr.ph380.preheader

.lr.ph380.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0151378.ph = phi i8 [ %i.cy, %iter.check ], [ %i.dh, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ]
  %.5186377.ph = phi ptr [ %.1182383, %iter.check ], [ %i.dj, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %.0151378 = phi i8 [ %i.dt, %.lr.ph380 ], [ %.0151378.ph, %.lr.ph380.preheader ]
  %.5186377 = phi ptr [ %i.du, %.lr.ph380 ], [ %.5186377.ph, %.lr.ph380.preheader ] ; 2 uses
  %i.dt = add i8 %.0151378, -1                    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.5186377, i64 2 ; 2 uses
  store i16 %i.de, ptr %.5186377, align 2, !tbaa !8
  %.not259 = icmp eq i8 %i.dt, 0
  br i1 %.not259, label %.loopexit329, label %.lr.ph380, !llvm.loop !150

bb.u:                                             ; preds = %bb.n
  %i.dv = icmp ult ptr %.1182383, %i.a
  br i1 %i.dv, label %bb.v, label %.thread314

bb.v:                                             ; preds = %bb.u
  %i.dw = trunc i32 %i.bm to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %.1182383, i64 2
  store i16 %i.dw, ptr %.1182383, align 2, !tbaa !8
  br label %.loopexit329

bb.w:                                             ; preds = %bb.m, %._crit_edge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread314, label %.lr.ph370, !llvm.loop !151

.loopexit329:                                     ; preds = %.lr.ph380, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.t, %bb.v
  %.0152340 = phi i32 [ %i.cm, %bb.t ], [ %i.cm, %bb.v ], [ 0, %.preheader ], [ %i.cm, %middle.block ], [ %i.cm, %vec.epilog.middle.block ], [ %i.cm, %.lr.ph380 ]
  %.10225 = phi ptr [ %.6221, %bb.t ], [ %.5220.lcssa, %bb.v ], [ %.1216382, %.preheader ], [ %.6221, %middle.block ], [ %.6221, %vec.epilog.middle.block ], [ %.6221, %.lr.ph380 ]
  %.9190 = phi ptr [ %.1182383, %bb.t ], [ %i.dx, %bb.v ], [ %.1182383, %.preheader ], [ %i.dj, %middle.block ], [ %i.dq, %vec.epilog.middle.block ], [ %i.du, %.lr.ph380 ]
  %.10172 = phi i64 [ %.6168, %bb.t ], [ %.5167.lcssa, %bb.v ], [ %.1163384, %.preheader ], [ %.6168, %middle.block ], [ %.6168, %vec.epilog.middle.block ], [ %.6168, %.lr.ph380 ]
  %.10 = phi i32 [ %i.cv, %bb.t ], [ %i.cf, %bb.v ], [ %.1156385, %.preheader ], [ %i.cv, %middle.block ], [ %i.cv, %vec.epilog.middle.block ], [ %i.cv, %.lr.ph380 ]
  %i.dy = icmp eq i32 %.0152340, %i.bk
  br i1 %i.dy, label %.thread314, label %.loopexit331

.loopexit331:                                     ; preds = %.lr.ph, %middle.block523, %vec.epilog.middle.block539, %bb.i, %bb.k, %.loopexit329
  %.13228 = phi ptr [ %.10225, %.loopexit329 ], [ %.1216382, %bb.k ], [ %.2217, %bb.i ], [ %.2217, %middle.block523 ], [ %.2217, %vec.epilog.middle.block539 ], [ %.2217, %.lr.ph ] ; 2 uses
  %.12193 = phi ptr [ %.9190, %.loopexit329 ], [ %i.bg, %bb.k ], [ %.1182383, %bb.i ], [ %i.as, %middle.block523 ], [ %i.az, %vec.epilog.middle.block539 ], [ %i.bd, %.lr.ph ] ; 2 uses
  %.13175 = phi i64 [ %.10172, %.loopexit329 ], [ %.1163384, %bb.k ], [ %.2164, %bb.i ], [ %.2164, %middle.block523 ], [ %.2164, %vec.epilog.middle.block539 ], [ %.2164, %.lr.ph ] ; 2 uses
  %.13 = phi i32 [ %.10, %.loopexit329 ], [ %i.t, %bb.k ], [ %i.ae, %bb.i ], [ %i.ae, %middle.block523 ], [ %i.ae, %vec.epilog.middle.block539 ], [ %i.ae, %.lr.ph ] ; 3 uses
  %i.dz = icmp sgt i32 %.13, 13
  br i1 %i.dz, label %.lr.ph387, label %.loopexit332, !llvm.loop !152

._crit_edge398:                                   ; preds = %.loopexit332, %bb.a
  %.0215.lcssa = phi ptr [ %2, %bb.a ], [ %.1216.lcssa, %.loopexit332 ]
  %.0181.lcssa = phi ptr [ %6, %bb.a ], [ %.1182.lcssa, %.loopexit332 ] ; 2 uses
  %.0162.lcssa = phi i64 [ 0, %bb.a ], [ %.1163.lcssa, %.loopexit332 ]
  %.0155.lcssa = phi i32 [ 0, %bb.a ], [ %.1156.lcssa, %.loopexit332 ]
  %i.ea = sub nsw i64 0, %3
  %i.eb = and i64 %i.ea, 7                        ; 2 uses
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = sub nsw i32 %.0155.lcssa, %i.ec         ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %.lr.ph414.preheader, label %._crit_edge415

.lr.ph414.preheader:                              ; preds = %._crit_edge398
  %i.ef = lshr i64 %.0162.lcssa, %i.eb
  br label %.lr.ph414

.lr.ph414:                                        ; preds = %.lr.ph414.preheader, %.loopexit
  %.14412 = phi i32 [ %.18, %.loopexit ], [ %i.ed, %.lr.ph414.preheader ] ; 3 uses
  %.14176411 = phi i64 [ %.18180, %.loopexit ], [ %i.ef, %.lr.ph414.preheader ] ; 4 uses
  %.13194410 = phi ptr [ %.17198, %.loopexit ], [ %.0181.lcssa, %.lr.ph414.preheader ] ; 11 uses
  %.14229409 = phi ptr [ %.18233, %.loopexit ], [ %.0215.lcssa, %.lr.ph414.preheader ] ; 5 uses
  %i.eg = sub nsw i32 14, %.14412
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl i64 %.14176411, %i.eh
  %i.ej = and i64 %i.ei, 16383
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !138 ; 3 uses
  %.not252 = icmp eq i32 %i.el, 0
  %i.em = icmp sgt i32 %i.el, %.14412
  %or.cond = or i1 %.not252, %i.em
  br i1 %or.cond, label %.thread314, label %bb.x

bb.x:                                             ; preds = %.lr.ph414
  %i.en = sub nsw i32 %.14412, %i.el              ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !139 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, %4
  br i1 %i.eq, label %bb.y, label %bb.ae

end_hunk_2
