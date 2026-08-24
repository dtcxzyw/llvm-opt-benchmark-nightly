Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/uniset?download=true
inline.NumInlined: 264
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode:bb.a
  %i.d = icmp ne i32 %2, 0                        ; 2 uses
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
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge.loopexit.split.loop.exit84:             ; preds = %.lr.ph
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit84, %.preheader61
  %.053.lcssa = phi i32 [ 0, %.preheader61 ], [ %i.x, %.critedge.loopexit.split.loop.exit84 ], [ %i.h, %bb.l ] ; 3 uses
  %i.y = sub nsw i32 %i.h, %.053.lcssa
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = add nsw i32 %i.z, %.053.lcssa
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.k, %.critedge
  %.154 = phi i32 [ %.053.lcssa, %.critedge ], [ 0, %bb.k ], [ %i.h, %bb.i ] ; 12 uses
  %.052 = phi i32 [ %i.aa, %.critedge ], [ %i.t, %bb.k ], [ %i.h, %bb.i ] ; 8 uses
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
  br i1 %min.iters.check, label %.lr.ph69.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69.preheader
  %i.am = add nsw i32 %.154, -1
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %.056, i64 %i.ao
  %scevgep = getelementptr i8, ptr %i.ap, i64 4
  %i.aq = shl nuw nsw i64 %i.an, 2
  %i.ar = getelementptr i8, ptr %i.aj, i64 %i.aq
  %scevgep88 = getelementptr i8, ptr %i.ar, i64 4
  %bound0 = icmp ult ptr %.15765, %scevgep88
  %bound1 = icmp ult ptr %i.aj, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph69.preheader116, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 2147483640              ; 5 uses
  %i.as = shl nuw nsw i64 %n.vec, 1
  %i.at = getelementptr i8, ptr %.15765, i64 %i.as ; 2 uses
  %i.au = trunc nuw nsw i64 %n.vec to i32
  %i.av = shl nuw nsw i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.aj, i64 %i.av  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.15765, i64 %i.ax ; 2 uses
  %i.ay = shl i64 %index, 2
  %next.gep89 = getelementptr i8, ptr %i.aj, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep89, align 4, !alias.scope !38
  %wide.load90 = load <4 x i32>, ptr %i.az, align 4, !alias.scope !38
  %i.ba = trunc <4 x i32> %wide.load to <4 x i16>
  %i.bb = trunc <4 x i32> %wide.load90 to <4 x i16>
  %i.bc = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %i.ba, ptr %next.gep, align 2, !alias.scope !41, !noalias !38
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !alias.scope !41, !noalias !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.al
  br i1 %cmp.n, label %.preheader, label %.lr.ph69.preheader116

.lr.ph69.preheader116:                            ; preds = %vector.memcheck, %.lr.ph69.preheader, %middle.block
  %.15768.ph = phi ptr [ %.15765, %vector.memcheck ], [ %.15765, %.lr.ph69.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.067.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph69.preheader ], [ %i.au, %middle.block ] ; 4 uses
  %.05066.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph69.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %i.be = sub i32 %.154, %.067.ph
  %xtraiter = and i32 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol

.lr.ph69.prol:                                    ; preds = %.lr.ph69.preheader116, %.lr.ph69.prol
  %.15768.prol = phi ptr [ %.157.prol, %.lr.ph69.prol ], [ %.15768.ph, %.lr.ph69.preheader116 ] ; 2 uses
  %.067.prol = phi i32 [ %i.bi, %.lr.ph69.prol ], [ %.067.ph, %.lr.ph69.preheader116 ]
  %.05066.prol = phi ptr [ %i.bf, %.lr.ph69.prol ], [ %.05066.ph, %.lr.ph69.preheader116 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph69.prol ], [ 0, %.lr.ph69.preheader116 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.05066.prol, i64 4 ; 3 uses
  %i.bg = load i32, ptr %.05066.prol, align 4
  %i.bh = trunc i32 %i.bg to i16
  store i16 %i.bh, ptr %.15768.prol, align 2
  %i.bi = add nuw nsw i32 %.067.prol, 1           ; 2 uses
  %.157.prol = getelementptr inbounds nuw i8, ptr %.15768.prol, i64 2 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph69.prol.loopexit, label %.lr.ph69.prol, !llvm.loop !44

.lr.ph69.prol.loopexit:                           ; preds = %.lr.ph69.prol, %.lr.ph69.preheader116
  %.lcssa.unr = phi ptr [ poison, %.lr.ph69.preheader116 ], [ %i.bf, %.lr.ph69.prol ]
  %.157.lcssa117.unr = phi ptr [ poison, %.lr.ph69.preheader116 ], [ %.157.prol, %.lr.ph69.prol ]
  %.15768.unr = phi ptr [ %.15768.ph, %.lr.ph69.preheader116 ], [ %.157.prol, %.lr.ph69.prol ]
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph69.preheader116 ], [ %i.bi, %.lr.ph69.prol ]
  %.05066.unr = phi ptr [ %.05066.ph, %.lr.ph69.preheader116 ], [ %i.bf, %.lr.ph69.prol ]
  %i.bj = sub i32 %.067.ph, %.154
  %i.bk = icmp ugt i32 %i.bj, -8
  br i1 %i.bk, label %.preheader, label %.lr.ph69

.preheader:                                       ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69, %middle.block, %bb.r
  %.050.lcssa = phi ptr [ %i.aj, %bb.r ], [ %i.aw, %middle.block ], [ %.lcssa.unr, %.lr.ph69.prol.loopexit ], [ %i.db, %.lr.ph69 ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %bb.r ], [ %.154, %middle.block ], [ %.154, %.lr.ph69 ], [ %.154, %.lr.ph69.prol.loopexit ] ; 8 uses
  %.157.lcssa = phi ptr [ %.15765, %bb.r ], [ %i.at, %middle.block ], [ %.157.lcssa117.unr, %.lr.ph69.prol.loopexit ], [ %.157.7, %.lr.ph69 ] ; 6 uses
  %i.bl = icmp slt i32 %.0.lcssa, %.052
  br i1 %i.bl, label %.lr.ph76.preheader, label %.loopexit

.lr.ph76.preheader:                               ; preds = %.preheader
  %4 = add nuw i32 %.0.lcssa, 2
  %5 = tail call i32 @llvm.smax.i32(i32 %.052, i32 %4)
  %i.bm = xor i32 %.0.lcssa, -1
  %i.bn = add i32 %5, %i.bm                       ; 2 uses
  %i.bo = lshr i32 %i.bn, 1
  %narrow = add nuw i32 %i.bo, 1
  %i.bp = zext i32 %narrow to i64                 ; 2 uses
  %min.iters.check100 = icmp ult i32 %i.bn, 30
  br i1 %min.iters.check100, label %.lr.ph76.preheader115, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph76.preheader
  %6 = add nuw i32 %.0.lcssa, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %.052, i32 %6)
  %i.bq = xor i32 %.0.lcssa, -1
  %i.br = add i32 %smax, %i.bq
  %i.bs = lshr i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = add nuw nsw i64 %i.bu, 4                ; 2 uses
  %scevgep94 = getelementptr i8, ptr %.157.lcssa, i64 %i.bv
  %scevgep95 = getelementptr i8, ptr %.050.lcssa, i64 %i.bv
  %bound096 = icmp ult ptr %.157.lcssa, %scevgep95
  %bound197 = icmp ult ptr %.050.lcssa, %scevgep94
  %found.conflict98 = and i1 %bound096, %bound197
  br i1 %found.conflict98, label %.lr.ph76.preheader115, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck93
  %n.vec102 = and i64 %i.bp, 4294967292           ; 4 uses
  %i.bw = trunc nuw i64 %n.vec102 to i32
  %i.bx = shl i32 %i.bw, 1
  %i.by = add i32 %.0.lcssa, %i.bx
  %i.bz = shl nuw nsw i64 %n.vec102, 2            ; 2 uses
  %i.ca = getelementptr i8, ptr %.050.lcssa, i64 %i.bz
  %i.cb = getelementptr i8, ptr %.157.lcssa, i64 %i.bz
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.cc = shl i64 %index104, 2                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %.050.lcssa, i64 %i.cc
  %next.gep106 = getelementptr i8, ptr %.157.lcssa, i64 %i.cc
  %wide.load107 = load <4 x i32>, ptr %next.gep105, align 4, !alias.scope !45 ; 2 uses
  %i.cd = lshr <4 x i32> %wide.load107, splat (i32 16)
  %i.ce = shufflevector <4 x i32> %i.cd, <4 x i32> %wide.load107, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = trunc <8 x i32> %i.ce to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %next.gep106, align 2, !alias.scope !48, !noalias !45
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.cf, label %middle.block110, label %vector.body103, !llvm.loop !50

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %n.vec102, %i.bp
  br i1 %cmp.n111, label %.loopexit, label %.lr.ph76.preheader115

.lr.ph76.preheader115:                            ; preds = %vector.memcheck93, %.lr.ph76.preheader, %middle.block110
  %.175.ph = phi i32 [ %.0.lcssa, %vector.memcheck93 ], [ %.0.lcssa, %.lr.ph76.preheader ], [ %i.by, %middle.block110 ]
  %.15174.ph = phi ptr [ %.050.lcssa, %vector.memcheck93 ], [ %.050.lcssa, %.lr.ph76.preheader ], [ %i.ca, %middle.block110 ]
  %.273.ph = phi ptr [ %.157.lcssa, %vector.memcheck93 ], [ %.157.lcssa, %.lr.ph76.preheader ], [ %i.cb, %middle.block110 ]
  br label %.lr.ph76

.lr.ph69:                                         ; preds = %.lr.ph69.prol.loopexit, %.lr.ph69
  %.15768 = phi ptr [ %.157.7, %.lr.ph69 ], [ %.15768.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %.067 = phi i32 [ %i.de, %.lr.ph69 ], [ %.067.unr, %.lr.ph69.prol.loopexit ]
  %.05066 = phi ptr [ %i.db, %.lr.ph69 ], [ %.05066.unr, %.lr.ph69.prol.loopexit ] ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.05066, i64 4
  %i.ch = load i32, ptr %.05066, align 4
  %i.ci = trunc i32 %i.ch to i16
  store i16 %i.ci, ptr %.15768, align 2
  %.157 = getelementptr inbounds nuw i8, ptr %.15768, i64 2
  %i.cj = getelementptr inbounds nuw i8, ptr %.05066, i64 8
  %i.ck = load i32, ptr %i.cg, align 4
  %i.cl = trunc i32 %i.ck to i16
  store i16 %i.cl, ptr %.157, align 2
  %.157.1 = getelementptr inbounds nuw i8, ptr %.15768, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.05066, i64 12
  %i.cn = load i32, ptr %i.cj, align 4
  %i.co = trunc i32 %i.cn to i16
  store i16 %i.co, ptr %.157.1, align 2
  %.157.2 = getelementptr inbounds nuw i8, ptr %.15768, i64 6
  %i.cp = getelementptr inbounds nuw i8, ptr %.05066, i64 16
  %i.cq = load i32, ptr %i.cm, align 4
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %.157.2, align 2
  %.157.3 = getelementptr inbounds nuw i8, ptr %.15768, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.05066, i64 20
  %i.ct = load i32, ptr %i.cp, align 4
  %i.cu = trunc i32 %i.ct to i16
  store i16 %i.cu, ptr %.157.3, align 2
  %.157.4 = getelementptr inbounds nuw i8, ptr %.15768, i64 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.05066, i64 24
  %i.cw = load i32, ptr %i.cs, align 4
  %i.cx = trunc i32 %i.cw to i16
  store i16 %i.cx, ptr %.157.4, align 2
  %.157.5 = getelementptr inbounds nuw i8, ptr %.15768, i64 12
  %i.cy = getelementptr inbounds nuw i8, ptr %.05066, i64 28
  %i.cz = load i32, ptr %i.cv, align 4
  %i.da = trunc i32 %i.cz to i16
  store i16 %i.da, ptr %.157.5, align 2
  %.157.6 = getelementptr inbounds nuw i8, ptr %.15768, i64 14
  %i.db = getelementptr inbounds nuw i8, ptr %.05066, i64 32 ; 2 uses
  %i.dc = load i32, ptr %i.cy, align 4
  %i.dd = trunc i32 %i.dc to i16
  store i16 %i.dd, ptr %.157.6, align 2
  %i.de = add nuw nsw i32 %.067, 8                ; 2 uses
  %.157.7 = getelementptr inbounds nuw i8, ptr %.15768, i64 16 ; 2 uses
  %exitcond80.not.7 = icmp eq i32 %i.de, %.154
  br i1 %exitcond80.not.7, label %.preheader, label %.lr.ph69, !llvm.loop !51

.lr.ph76:                                         ; preds = %.lr.ph76.preheader115, %.lr.ph76
  %.175 = phi i32 [ %i.dn, %.lr.ph76 ], [ %.175.ph, %.lr.ph76.preheader115 ]
  %.15174 = phi ptr [ %i.dj, %.lr.ph76 ], [ %.15174.ph, %.lr.ph76.preheader115 ] ; 3 uses
  %.273 = phi ptr [ %i.dm, %.lr.ph76 ], [ %.273.ph, %.lr.ph76.preheader115 ] ; 3 uses
  %i.df = load i32, ptr %.15174, align 4
  %i.dg = lshr i32 %i.df, 16
  %i.dh = trunc nuw i32 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.273, i64 2
  store i16 %i.dh, ptr %.273, align 2
  %i.dj = getelementptr inbounds nuw i8, ptr %.15174, i64 4
  %i.dk = load i32, ptr %.15174, align 4
  %i.dl = trunc i32 %i.dk to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %.273, i64 4
  store i16 %i.dl, ptr %i.di, align 2
  %i.dn = add nuw nsw i32 %.175, 2                ; 2 uses
  %i.do = icmp slt i32 %i.dn, %.052
  br i1 %i.do, label %.lr.ph76, label %.loopexit, !llvm.loop !52

bb.s:                                             ; preds = %bb.o
  store i32 15, ptr %3, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph76, %middle.block110, %.preheader, %bb.s, %bb.g, %bb.h, %bb.a, %bb.n, %bb.d
  %.055 = phi i32 [ 1, %bb.g ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %bb.n ], [ 1, %bb.h ], [ %i.ae, %bb.s ], [ %i.ae, %.preheader ], [ %i.ae, %middle.block110 ], [ %i.ae, %.lr.ph76 ]
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
end_hunk_0
