Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/uniset?download=true
inline.NumInlined: 264
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode:bb.a
  %i.e = icmp eq ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = add nsw i32 %i.g, -1                     ; 7 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %1, align 2
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i32 15, ptr %3, align 4
  br label %.loopexit

bb.i:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 65536
  br i1 %i.p, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %i.k, align 4
  %i.r = icmp sgt i32 %i.q, 65535
  br i1 %i.r, label %bb.k, label %.preheader61

.preheader61:                                     ; preds = %bb.j
  %i.s = icmp sgt i32 %i.g, 1
  br i1 %i.s, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader61
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.t = shl nsw i32 %i.h, 1
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp slt i32 %i.v, 65536
  br i1 %i.w, label %bb.l, label %.critedge.loopexit.split.loop.exit84

bb.l:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !38

.critedge.loopexit.split.loop.exit84:             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit84, %.preheader61
  %.053.lcssa = phi i32 [ 0, %.preheader61 ], [ %i.x, %.critedge.loopexit.split.loop.exit84 ], [ %i.h, %bb.l ] ; 3 uses
  %i.y = sub nuw nsw i32 %i.h, %.053.lcssa
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = add nsw i32 %i.z, %.053.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %.critedge
  %.154 = phi i32 [ %.053.lcssa, %.critedge ], [ 0, %bb.k ], [ %i.h, %bb.i ] ; 12 uses
  %.052 = phi i32 [ %i.aa, %.critedge ], [ %i.t, %bb.k ], [ %i.h, %bb.i ] ; 7 uses
  %i.ab = icmp sgt i32 %.052, 32767
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 8, ptr %3, align 4
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ac = icmp sgt i32 %.052, %.154               ; 2 uses
  %i.ad = select i1 %i.ac, i32 2, i32 1
  %i.ae = add nsw i32 %i.ad, %.052                ; 5 uses
  %.not60 = icmp sgt i32 %i.ae, %2
  br i1 %.not60, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = trunc i32 %.052 to i16                  ; 2 uses
  store i16 %i.af, ptr %1, align 2
  br i1 %i.ac, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ag = or i16 %i.af, -32768
  store i16 %i.ag, ptr %1, align 2
  %i.ah = trunc i32 %.154 to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i16 %i.ah, ptr %i.ai, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.056 = phi ptr [ %i.ai, %bb.q ], [ %1, %bb.p ] ; 2 uses
  %i.aj = load ptr, ptr %i.j, align 8             ; 7 uses
  %.15765 = getelementptr i8, ptr %.056, i64 2    ; 6 uses
  %i.ak = icmp sgt i32 %.154, 0
  br i1 %i.ak, label %.lr.ph69.preheader, label %.preheader

.lr.ph69.preheader:                               ; preds = %bb.r
  %i.al = zext nneg i32 %.154 to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %.154, 20
  br i1 %min.iters.check, label %.lr.ph69.preheader118, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69.preheader
  %i.am = add nsw i32 %.154, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %.056, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %i.ar = shl nuw nsw i64 %i.an, 2
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %bound0 = icmp ult ptr %.15765, %i.at
  %bound1 = icmp ult ptr %i.aj, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph69.preheader118, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 2147483640              ; 5 uses
  %i.au = shl nuw nsw i64 %n.vec, 1
  %i.av = getelementptr i8, ptr %.15765, i64 %i.au ; 2 uses
  %i.aw = trunc nuw nsw i64 %n.vec to i32
  %i.ax = shl nuw nsw i64 %n.vec, 2
  %i.ay = getelementptr i8, ptr %i.aj, i64 %i.ax  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.15765, i64 %i.az ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep89 = getelementptr i8, ptr %i.aj, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep89, align 4, !alias.scope !50
  %wide.load90 = load <4 x i32>, ptr %i.bb, align 4, !alias.scope !50
  %i.bc = trunc <4 x i32> %wide.load to <4 x i16>
  %i.bd = trunc <4 x i32> %wide.load90 to <4 x i16>
  %i.be = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.bc, ptr %next.gep, align 2, !alias.scope !51, !noalias !50
  store <4 x i16> %i.bd, ptr %i.be, align 2, !alias.scope !51, !noalias !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %.preheader, label %.lr.ph69.preheader118

.lr.ph69.preheader118:                            ; preds = %vector.memcheck, %.lr.ph69.preheader, %middle.block
  %.15768.ph = phi ptr [ %.15765, %vector.memcheck ], [ %.15765, %.lr.ph69.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %.067.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph69.preheader ], [ %i.aw, %middle.block ] ; 4 uses
  %.05066.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph69.preheader ], [ %i.ay, %middle.block ] ; 2 uses
  %i.bg = sub i32 %.154, %.067.ph
  %xtraiter = and i32 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader118, %.lr.ph69.prol
  %.15768.prol = phi ptr [ %.157.prol, %.lr.ph69.prol ], [ %.15768.ph, %.lr.ph69.preheader118 ] ; 2 uses
  %.067.prol = phi i32 [ %i.bk, %.lr.ph69.prol ], [ %.067.ph, %.lr.ph69.preheader118 ]
  %.05066.prol = phi ptr [ %i.bh, %.lr.ph69.prol ], [ %.05066.ph, %.lr.ph69.preheader118 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader118 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.05066.prol, i64 4 ; 3 uses
  %i.bi = load i32, ptr %.05066.prol, align 4
  %i.bj = trunc i32 %i.bi to i16
  store i16 %i.bj, ptr %.15768.prol, align 2
  %i.bk = add nuw nsw i32 %.067.prol, 1           ; 2 uses
  %.157.prol = getelementptr inbounds nuw i8, ptr %.15768.prol, i64 2 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !43

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader118
  %.lcssa.unr = phi ptr [ poison, %.lr.ph69.preheader118 ], [ %i.bh, %.lr.ph69.prol ]
  %.157.lcssa119.unr = phi ptr [ poison, %.lr.ph69.preheader118 ], [ %.157.prol, %.lr.ph69.prol ]
  %.15768.unr = phi ptr [ %.15768.ph, %.lr.ph69.preheader118 ], [ %.157.prol, %.lr.ph69.prol ]
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph69.preheader118 ], [ %i.bk, %.lr.ph69.prol ]
  %.05066.unr = phi ptr [ %.05066.ph, %.lr.ph69.preheader118 ], [ %i.bh, %.lr.ph69.prol ]
  %i.bl = sub i32 %.067.ph, %.154
  %i.bm = icmp ugt i32 %i.bl, -8
  br i1 %i.bm, label %.preheader, label %.lr.ph69

.preheader:                                       ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69, %middle.block, %bb.r
  %.050.lcssa = phi ptr [ %i.aj, %bb.r ], [ %i.ay, %middle.block ], [ %.lcssa.unr, %.lr.ph69.prol.loopexit ], [ %i.dd, %.lr.ph69 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %.154, %middle.block ], [ %.154, %.lr.ph69 ], [ %.154, %.lr.ph69.prol.loopexit ] ; 5 uses
  %.157.lcssa = phi ptr [ %.15765, %bb.r ], [ %i.av, %middle.block ], [ %.157.lcssa119.unr, %.lr.ph69.prol.loopexit ], [ %.157.7, %.lr.ph69 ] ; 7 uses
  %i.bn = icmp slt i32 %.0.lcssa, %.052
  br i1 %i.bn, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %i.bo = xor i32 %.0.lcssa, -1
  %i.bp = add i32 %.052, %i.bo                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = lshr i64 %i.bq, 1
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check99 = icmp ult i32 %i.bp, 22
  br i1 %min.iters.check99, label %.lr.ph76.preheader117, label %vector.memcheck100

vector.memcheck100:                               ; preds = %.lr.ph76.preheader
  %i.bt = shl nuw nsw i64 %i.bq, 1
  %i.bu = and i64 %i.bt, 8589934588
  %i.bv = add nuw nsw i64 %i.bu, 4                ; 2 uses
  %i.bw = getelementptr i8, ptr %.157.lcssa, i64 %i.bv
  %i.bx = getelementptr i8, ptr %.050.lcssa, i64 %i.bv
  %bound0101 = icmp ult ptr %.157.lcssa, %i.bx
  %bound1102 = icmp ult ptr %.050.lcssa, %i.bw
  %found.conflict103 = and i1 %bound0101, %bound1102
  br i1 %found.conflict103, label %.lr.ph76.preheader117, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck100
  %n.vec105 = and i64 %i.bs, 4294967288           ; 4 uses
  %i.by = trunc nuw i64 %n.vec105 to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = add i32 %.0.lcssa, %i.bz
  %i.cb = shl nuw nsw i64 %n.vec105, 2            ; 2 uses
  %i.cc = getelementptr i8, ptr %.050.lcssa, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.157.lcssa, i64 %i.cb
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next111, %vector.body106 ] ; 2 uses
  %i.ce = shl i64 %index107, 2                    ; 3 uses
  %next.gep108 = getelementptr i8, ptr %.050.lcssa, i64 %i.ce ; 2 uses
  %next.gep109 = getelementptr i8, ptr %.157.lcssa, i64 %i.ce
  %4 = getelementptr i8, ptr %.157.lcssa, i64 %i.ce
  %next.gep108.a = getelementptr i8, ptr %4, i64 16
  %next.gep109.a = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load111 = load <4 x i32>, ptr %next.gep108, align 4, !alias.scope !52 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %next.gep109.a, align 4, !alias.scope !52 ; 2 uses
  %5 = lshr <4 x i32> %wide.load111, splat (i32 16)
  %i.cf = lshr <4 x i32> %wide.load110, splat (i32 16)
  %6 = shufflevector <4 x i32> %5, <4 x i32> %wide.load111, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %6 to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep109, align 2, !alias.scope !53, !noalias !52
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> %wide.load110, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec.a = trunc <8 x i32> %i.cg to <8 x i16>
  store <8 x i16> %interleaved.vec.a, ptr %next.gep108.a, align 2, !alias.scope !53, !noalias !52
  %index.next111 = add nuw i64 %index107, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next111, %n.vec105
  br i1 %i.ch, label %middle.block112, label %vector.body106, !llvm.loop !47

middle.block112:                                  ; preds = %vector.body106
  %cmp.n113 = icmp eq i64 %i.bs, %n.vec105
  br i1 %cmp.n113, label %.loopexit, label %.lr.ph76.preheader117

.lr.ph76.preheader117:                            ; preds = %vector.memcheck100, %.lr.ph76.preheader, %middle.block112
  %.175.ph = phi i32 [ %.0.lcssa, %vector.memcheck100 ], [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.ca, %middle.block112 ]
  %.15174.ph = phi ptr [ %.050.lcssa, %vector.memcheck100 ], [ %.050.lcssa, %.lr.ph76.preheader ], [ %i.cc, %middle.block112 ]
  %.273.ph = phi ptr [ %.157.lcssa, %vector.memcheck100 ], [ %.157.lcssa, %.lr.ph76.preheader ], [ %i.cd, %middle.block112 ]
  br label %.lr.ph76

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.15768 = phi ptr [ %.157.7, %.lr.ph69 ], [ %.15768.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %.067 = phi i32 [ %i.dg, %.lr.ph69 ], [ %.067.unr, %.lr.ph69.prol.loopexit ]
  %.05066 = phi ptr [ %i.dd, %.lr.ph69 ], [ %.05066.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05066, i64 4
  %i.cj = load i32, ptr %.05066, align 4
  %i.ck = trunc i32 %i.cj to i16
  store i16 %i.ck, ptr %.15768, align 2
  %.157 = getelementptr inbounds nuw i8, ptr %.15768, i64 2
  %i.cl = getelementptr inbounds nuw i8, ptr %.05066, i64 8
  %i.cm = load i32, ptr %i.ci, align 4
  %i.cn = trunc i32 %i.cm to i16
  store i16 %i.cn, ptr %.157, align 2
  %.157.1 = getelementptr inbounds nuw i8, ptr %.15768, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %.05066, i64 12
  %i.cp = load i32, ptr %i.cl, align 4
  %i.cq = trunc i32 %i.cp to i16
  store i16 %i.cq, ptr %.157.1, align 2
  %.157.2 = getelementptr inbounds nuw i8, ptr %.15768, i64 6
  %i.cr = getelementptr inbounds nuw i8, ptr %.05066, i64 16
  %i.cs = load i32, ptr %i.co, align 4
  %i.ct = trunc i32 %i.cs to i16
  store i16 %i.ct, ptr %.157.2, align 2
  %.157.3 = getelementptr inbounds nuw i8, ptr %.15768, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.05066, i64 20
  %i.cv = load i32, ptr %i.cr, align 4
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %.157.3, align 2
  %.157.4 = getelementptr inbounds nuw i8, ptr %.15768, i64 10
  %i.cx = getelementptr inbounds nuw i8, ptr %.05066, i64 24
  %i.cy = load i32, ptr %i.cu, align 4
  %i.cz = trunc i32 %i.cy to i16
  store i16 %i.cz, ptr %.157.4, align 2
  %.157.5 = getelementptr inbounds nuw i8, ptr %.15768, i64 12
  %i.da = getelementptr inbounds nuw i8, ptr %.05066, i64 28
  %i.db = load i32, ptr %i.cx, align 4
  %i.dc = trunc i32 %i.db to i16
  store i16 %i.dc, ptr %.157.5, align 2
  %.157.6 = getelementptr inbounds nuw i8, ptr %.15768, i64 14
  %i.dd = getelementptr inbounds nuw i8, ptr %.05066, i64 32 ; 2 uses
  %i.de = load i32, ptr %i.da, align 4
  %i.df = trunc i32 %i.de to i16
  store i16 %i.df, ptr %.157.6, align 2
  %i.dg = add nuw nsw i32 %.067, 8                ; 2 uses
  %.157.7 = getelementptr inbounds nuw i8, ptr %.15768, i64 16 ; 2 uses
  %exitcond80.not.7 = icmp eq i32 %i.dg, %.154
  br i1 %exitcond80.not.7, label %.preheader, label %.lr.ph69, !llvm.loop !48

.lr.ph76:                                         ; preds = %.lr.ph76.preheader117, %.lr.ph76
  %.175 = phi i32 [ %i.dp, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader117 ]
  %.15174 = phi ptr [ %i.dl, %.lr.ph76 ], [ %.15174.ph, %.lr.ph76.preheader117 ] ; 3 uses
  %.273 = phi ptr [ %i.do, %.lr.ph76 ], [ %.273.ph, %.lr.ph76.preheader117 ] ; 3 uses
  %i.dh = load i32, ptr %.15174, align 4
  %i.di = lshr i32 %i.dh, 16
  %i.dj = trunc nuw i32 %i.di to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %.273, i64 2
  store i16 %i.dj, ptr %.273, align 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.15174, i64 4
  %i.dm = load i32, ptr %.15174, align 4
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i16 %i.dn, ptr %i.dk, align 2
  %i.dp = add nuw nsw i32 %.175, 2                ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %.052
  br i1 %i.dq, label %.lr.ph76, label %.loopexit, !llvm.loop !49

bb.s:                                             ; preds = %bb.o
  store i32 15, ptr %3, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph76, %middle.block112, %.preheader, %bb.s, %bb.g, %bb.h, %bb.a, %bb.n, %bb.d
  %.055 = phi i32 [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.h ], [ %i.ae, %bb.s ], [ %i.ae, %.preheader ], [ %i.ae, %middle.block112 ], [ %i.ae, %.lr.ph76 ]
  ret i32 %.055
}

declare void @uprv_deleteUObject_78(ptr noundef) #7

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #7

declare void @_ZN6icu_787UVectorC1EPFvPvEPFa8UElementS4_EiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483623, 1114114) i32 @_ZN6icu_7810UnicodeSet12nextCapacityEi(i32 noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 25
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, 25
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %0, 2501
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = mul nuw nsw i32 %0, 5
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = shl nuw nsw i32 %0, 1
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.e, i32 1114113)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.d, %bb.d ], [ %spec.store.select, %bb.e ]
  ret i32 %.0
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6icu_7810UnicodeSet20ensureBufferCapacityEi(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %1, i32 1114113) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp sgt i32 %spec.store.select, %i.b
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %1, 25
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %spec.store.select, 25
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp samesign ult i32 %1, 2501
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = mul nuw nsw i32 %spec.store.select, 5
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i32 %spec.store.select, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.g, i32 1114113)
  br label %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit

_ZN6icu_7810UnicodeSet12nextCapacityEi.exit:      ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.e ], [ %spec.store.select.i, %bb.f ] ; 2 uses
  %i.h = sext i32 %.0.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.i) #21 ; 2 uses
  %.not11 = icmp eq ptr %i.j, null
  br i1 %.not11, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6icu_7810UnicodeSet12nextCapacityEi.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %.not.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.n, null
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %narrow.i.not.i.i, label %bb.h, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  store i32 1114112, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i3.i.i, label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @uprv_free_78(ptr noundef nonnull %i.t) #20
  store ptr null, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8
  br label %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i

_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810UnicodeSet14releasePatternEv.exit.i.i
  tail call void @_ZN6icu_787UVector17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #20
  br label %_ZN6icu_7810UnicodeSet10setToBogusEv.exit
end_hunk_0
