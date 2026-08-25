Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/closure?download=true
inline.NumInlined: 1
begin_hunk_0_@closure:bb.a

.preheader60:                                     ; preds = %bb.a
  br i1 %i.j, label %.preheader58, label %.loopexit56.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.lr.ph69.preheader, label %.loopexit56.thread

.lr.ph69.preheader:                               ; preds = %bb.b
  %i.k = load ptr, ptr @fderives, align 8, !tbaa !11 ; 2 uses
  %i.l = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.m = mul i32 %i.l, %.fr85
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n ; 4 uses
  %i.p = add i64 %.idx, %i.c
  %i.q = add i64 %i.c, 4
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.s = xor i64 %i.c, -1
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.t, 76
  br i1 %min.iters.check115, label %.lr.ph69.preheader163, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph69.preheader
  %i.w = ptrtoaddr ptr %i.k to i64
  %i.x = shl nsw i64 %i.n, 2
  %i.y = add i64 %i.x, %i.w
  %i.z = sub i64 %i.y, %i.c
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph69.preheader163, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %n.vec117 = and i64 %i.v, 9223372036854775800   ; 3 uses
  %i.aa = shl i64 %n.vec117, 2                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 2 uses
  %i.ad = shl i64 %index119, 2                    ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.b, i64 %i.ad ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <4 x i32>, ptr %next.gep121, align 4, !tbaa !4
  %wide.load123 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %wide.load122, ptr %next.gep120, align 4, !tbaa !4
  store <4 x i32> %wide.load123, ptr %i.af, align 4, !tbaa !4
  %index.next124 = add nuw i64 %index119, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.ag, label %middle.block125, label %vector.body118, !llvm.loop !25

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.v, %n.vec117
  br i1 %cmp.n126, label %.lr.ph80.preheader, label %.lr.ph69.preheader163

.lr.ph69.preheader163:                            ; preds = %vector.memcheck113, %.lr.ph69.preheader, %middle.block125
  %.068.ph = phi ptr [ %i.b, %vector.memcheck113 ], [ %i.b, %.lr.ph69.preheader ], [ %i.ab, %middle.block125 ]
  %.04067.ph = phi ptr [ %i.o, %vector.memcheck113 ], [ %i.o, %.lr.ph69.preheader ], [ %i.ac, %middle.block125 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader163, %.lr.ph69
  %.068 = phi ptr [ %i.aj, %.lr.ph69 ], [ %.068.ph, %.lr.ph69.preheader163 ] ; 2 uses
  %.04067 = phi ptr [ %i.ah, %.lr.ph69 ], [ %.04067.ph, %.lr.ph69.preheader163 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04067, i64 4
  %i.ai = load i32, ptr %.04067, align 4, !tbaa !4
  %i.aj = getelementptr inbounds nuw i8, ptr %.068, i64 4 ; 2 uses
  store i32 %i.ai, ptr %.068, align 4, !tbaa !4
  %i.ak = icmp ult ptr %i.aj, %i.f
  br i1 %i.ak, label %.lr.ph69, label %.lr.ph80.preheader, !llvm.loop !28

.preheader58:                                     ; preds = %.preheader60
  %i.al = add i64 %.idx, %i.c
  %i.am = add i64 %i.c, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %i.am)
  %i.an = xor i64 %i.c, -1
  %i.ao = add i64 %umax, %i.an
  %i.ap = and i64 %i.ao, -4
  %i.aq = add i64 %i.ap, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.aq, i1 false), !tbaa !4
  %i.ar = icmp sgt i32 %1, 0
  br i1 %i.ar, label %.lr.ph66.split.us.preheader, label %.lr.ph80.preheader

.lr.ph66.split.us.preheader:                      ; preds = %.preheader58
  %i.as = load ptr, ptr @ritem, align 8, !tbaa !8
  %i.at = load ptr, ptr @fderives, align 8        ; 2 uses
  %i.au = add i64 %.idx, %i.c
  %i.av = add i64 %i.c, 4
  %umax105 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.aw = xor i64 %i.c, -1
  %i.ax = add i64 %umax105, %i.aw
  %i.ay = and i64 %i.ax, -4
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep106 = getelementptr i8, ptr %i.at, i64 %i.az
  %i.ba = add i64 %.idx, %i.c
  %i.bb = add i64 %i.c, 4
  %i.bc = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.bb)
  %i.bd = xor i64 %i.c, -1
  %i.be = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 28
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bh = shl i64 %n.vec, 2                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.b, i64 %i.bh
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.lr.ph66.split.us

.lr.ph66.split.us:                                ; preds = %.lr.ph66.split.us.preheader, %..loopexit57_crit_edge.us
  %.04265.us = phi ptr [ %i.bj, %..loopexit57_crit_edge.us ], [ %0, %.lr.ph66.split.us.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04265.us, i64 2 ; 2 uses
  %i.bk = load i16, ptr %.04265.us, align 2, !tbaa !16
  %i.bl = sext i16 %i.bk to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %i.as, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !16
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not.us = icmp sgt i32 %i.bp, %i.bo
  br i1 %.not.us, label %..loopexit57_crit_edge.us, label %.lr.ph64.us

.lr.ph64.us:                                      ; preds = %.lr.ph66.split.us
  %i.bq = mul i32 %.fr85, %i.bo
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.at, i64 %i.br ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.us
  %i.bt = shl nsw i64 %i.br, 2
  %scevgep107 = getelementptr i8, ptr %scevgep106, i64 %i.bt
  %bound0 = icmp ult ptr %i.b, %scevgep107
  %bound1 = icmp ult ptr %i.bs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bu = getelementptr i8, ptr %i.bs, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.bv ; 3 uses
  %next.gep108 = getelementptr i8, ptr %i.bs, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep108, align 4, !tbaa !4, !alias.scope !29
  %wide.load109 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !4, !alias.scope !29
  %i.bx = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load110 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %wide.load111 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %i.by = or <4 x i32> %wide.load110, %wide.load
  %i.bz = or <4 x i32> %wide.load111, %wide.load109
  store <4 x i32> %i.by, ptr %next.gep, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  store <4 x i32> %i.bz, ptr %i.bx, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit57_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph64.us, %middle.block
  %.263.us.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph64.us ], [ %i.bi, %middle.block ]
  %.14162.us.ph = phi ptr [ %i.bs, %vector.memcheck ], [ %i.bs, %.lr.ph64.us ], [ %i.bu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.263.us = phi ptr [ %i.cd, %scalar.ph ], [ %.263.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.14162.us = phi ptr [ %i.cb, %scalar.ph ], [ %.14162.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.14162.us, i64 4
  %i.cc = load i32, ptr %.14162.us, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %.263.us, i64 4 ; 2 uses
  %i.ce = load i32, ptr %.263.us, align 4, !tbaa !4
  %i.cf = or i32 %i.ce, %i.cc
  store i32 %i.cf, ptr %.263.us, align 4, !tbaa !4
  %i.cg = icmp ult ptr %i.cd, %i.f
  br i1 %i.cg, label %scalar.ph, label %..loopexit57_crit_edge.us, !llvm.loop !35

..loopexit57_crit_edge.us:                        ; preds = %scalar.ph, %middle.block, %.lr.ph66.split.us
  %i.ch = icmp ult ptr %i.bj, %i.h
  br i1 %i.ch, label %.lr.ph66.split.us, label %.lr.ph80.preheader, !llvm.loop !36

.loopexit56.thread:                               ; preds = %.preheader60, %bb.b
  %i.ci = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  store ptr %i.ci, ptr @itemsetend, align 8, !tbaa !8
  br label %.preheader

.lr.ph80.preheader:                               ; preds = %..loopexit57_crit_edge.us, %.lr.ph69, %.preheader58, %middle.block125
  %storemerge = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  store ptr %storemerge, ptr @itemsetend, align 8, !tbaa !8
  br label %.lr.ph80

.preheader:                                       ; preds = %.loopexit, %.loopexit56.thread
  %itemsetend.promoted = phi ptr [ %i.ci, %.loopexit56.thread ], [ %i.ea, %.loopexit ] ; 6 uses
  %.143.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.loopexit ] ; 7 uses
  %i.cj = icmp ult ptr %.143.lcssa, %i.h
  br i1 %i.cj, label %iter.check, label %bb.h

iter.check:                                       ; preds = %.preheader
  %.143.lcssa131 = ptrtoaddr ptr %.143.lcssa to i64 ; 3 uses
  %itemsetend.promoted130 = ptrtoaddr ptr %itemsetend.promoted to i64
  %i.ck = add i64 %.idx84, %i.a
  %2 = add i64 %.143.lcssa131, 2
  %umax133 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %2)
  %i.cl = xor i64 %.143.lcssa131, -1
  %i.cm = add i64 %umax133, %i.cl                 ; 3 uses
  %i.cn = lshr i64 %i.cm, 1
  %i.co = add nuw i64 %i.cn, 1                    ; 5 uses
  %min.iters.check135.a = icmp ult i64 %i.cm, 6
  %i.cp = sub i64 %.143.lcssa131, %itemsetend.promoted130
  %diff.check132 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check135.a, i1 true, i1 %diff.check132
  br i1 %or.cond, label %.lr.ph83.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check136 = icmp ult i64 %i.cm, 30
  br i1 %min.iters.check136, label %vec.epilog.ph, label %vector.ph137

vector.ph137:                                     ; preds = %vector.main.loop.iter.check
  %i.cq = and i64 %i.co, 12
  %n.vec138 = and i64 %i.co, -16                  ; 4 uses
  %i.cr = shl i64 %n.vec138, 1                    ; 2 uses
  %i.cs = getelementptr i8, ptr %itemsetend.promoted, i64 %i.cr ; 2 uses
  %i.ct = getelementptr i8, ptr %.143.lcssa, i64 %i.cr
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cu = shl i64 %index140, 1                    ; 2 uses
  %next.gep141.a = getelementptr i8, ptr %itemsetend.promoted, i64 %i.cu ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.143.lcssa, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143.a = load <8 x i16>, ptr %next.gep142, align 2, !tbaa !16
  %wide.load144 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !16
  %i.cw = getelementptr i8, ptr %next.gep141.a, i64 16
  store <8 x i16> %wide.load143.a, ptr %next.gep141.a, align 2, !tbaa !16
  store <8 x i16> %wide.load144, ptr %i.cw, align 2, !tbaa !16
  %index.next145 = add nuw i64 %index140, 16      ; 2 uses
  %i.cx = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cx, label %middle.block146, label %vector.body139, !llvm.loop !37

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.co, %n.vec138
  br i1 %cmp.n147, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block146
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph83.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec138, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec150 = and i64 %i.co, -4                   ; 3 uses
  %i.cy = shl i64 %n.vec150, 1                    ; 2 uses
  %i.cz = getelementptr i8, ptr %itemsetend.promoted, i64 %i.cy ; 2 uses
  %i.da = getelementptr i8, ptr %.143.lcssa, i64 %i.cy
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index151 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %i.db = shl i64 %index151, 1                    ; 2 uses
  %next.gep152.a = getelementptr i8, ptr %itemsetend.promoted, i64 %i.db
  %next.gep153 = getelementptr i8, ptr %.143.lcssa, i64 %i.db
  %wide.load154 = load <4 x i16>, ptr %next.gep153, align 2, !tbaa !16
  store <4 x i16> %wide.load154, ptr %next.gep152.a, align 2, !tbaa !16
  %index.next155 = add nuw i64 %index151, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %i.co, %n.vec150
  br i1 %cmp.n156, label %._crit_edge, label %.lr.ph83.preheader

.lr.ph83.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %itemsetend.promoted, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  %.682.ph = phi ptr [ %.143.lcssa, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph83

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
  %i.dd = phi ptr [ %i.ea, %.loopexit ], [ %storemerge, %.lr.ph80.preheader ] ; 2 uses
  %.379 = phi ptr [ %i.de, %.loopexit ], [ %i.b, %.lr.ph80.preheader ] ; 2 uses
  %.14378 = phi ptr [ %.5, %.loopexit ], [ %0, %.lr.ph80.preheader ] ; 2 uses
  %.04777 = phi i32 [ %.249, %.loopexit ], [ 0, %.lr.ph80.preheader ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.379, i64 4 ; 2 uses
  %i.df = load i32, ptr %.379, align 4, !tbaa !4  ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.c, label %.preheader55

.preheader55:                                     ; preds = %.lr.ph80
  %i.dh = load ptr, ptr @rrhs, align 8
  %i.di = sext i32 %.04777 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.dj = add nsw i32 %.04777, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader55, %bb.g
  %i.dk = phi ptr [ %i.dd, %.preheader55 ], [ %i.dx, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %i.di, %.preheader55 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.24476 = phi ptr [ %.14378, %.preheader55 ], [ %.4, %bb.g ] ; 4 uses
  %.04675 = phi i32 [ 1, %.preheader55 ], [ %i.dy, %bb.g ] ; 2 uses
  %i.dl = and i32 %.04675, %i.df
  %.not54 = icmp eq i32 %i.dl, 0
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %indvars.iv
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !16 ; 2 uses
  %i.do = icmp ult ptr %.24476, %i.h
  br i1 %i.do, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.e, %bb.f
  %i.dp = phi ptr [ %i.dt, %bb.f ], [ %i.dk, %bb.e ] ; 3 uses
  %.34570 = phi ptr [ %i.ds, %bb.f ], [ %.24476, %bb.e ] ; 3 uses
  %i.dq = load i16, ptr %.34570, align 2, !tbaa !16 ; 2 uses
  %i.dr = icmp slt i16 %i.dq, %i.dn
  br i1 %i.dr, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph71
  %i.ds = getelementptr inbounds nuw i8, ptr %.34570, i64 2 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 2 ; 2 uses
  store i16 %i.dq, ptr %i.dp, align 2, !tbaa !16
  %i.du = icmp ult ptr %i.ds, %i.h
  br i1 %i.du, label %.lr.ph71, label %.critedge, !llvm.loop !40

.critedge:                                        ; preds = %.lr.ph71, %bb.f, %bb.e
  %i.dv = phi ptr [ %i.dk, %bb.e ], [ %i.dt, %bb.f ], [ %i.dp, %.lr.ph71 ] ; 2 uses
  %.345.lcssa = phi ptr [ %.24476, %bb.e ], [ %i.ds, %bb.f ], [ %.34570, %.lr.ph71 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2 ; 2 uses
  store ptr %i.dw, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dn, ptr %i.dv, align 2, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
  %i.dx = phi ptr [ %i.dw, %.critedge ], [ %i.dk, %bb.d ] ; 2 uses
  %.4 = phi ptr [ %.345.lcssa, %.critedge ], [ %.24476, %bb.d ] ; 2 uses
  %i.dy = shl i32 %.04675, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not53 = icmp eq i32 %i.dy, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.d, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %bb.g
  %i.dz = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ea = phi ptr [ %i.dd, %bb.c ], [ %i.dx, %.loopexit.loopexit ] ; 2 uses
  %.249 = phi i32 [ %i.dj, %bb.c ], [ %i.dz, %.loopexit.loopexit ]
  %.5 = phi ptr [ %.14378, %bb.c ], [ %.4, %.loopexit.loopexit ] ; 2 uses
  %i.eb = icmp ult ptr %i.de, %i.f
  br i1 %i.eb, label %.lr.ph80, label %.preheader, !llvm.loop !42

.lr.ph83:                                         ; preds = %.lr.ph83.preheader, %.lr.ph83
  %i.ec = phi ptr [ %i.ef, %.lr.ph83 ], [ %.ph, %.lr.ph83.preheader ] ; 2 uses
  %.682 = phi ptr [ %i.ed, %.lr.ph83 ], [ %.682.ph, %.lr.ph83.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.682, i64 2 ; 2 uses
  %i.ee = load i16, ptr %.682, align 2, !tbaa !16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 2 ; 2 uses
  store i16 %i.ee, ptr %i.ec, align 2, !tbaa !16
  %i.eg = icmp ult ptr %i.ed, %i.h
  br i1 %i.eg, label %.lr.ph83, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph83, %vec.epilog.middle.block, %middle.block146
  %.lcssa = phi ptr [ %i.cz, %vec.epilog.middle.block ], [ %i.cs, %middle.block146 ], [ %i.ef, %.lr.ph83 ]
  store ptr %.lcssa, ptr @itemsetend, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local void @finalize_closure() local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @itemset, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @ruleset, align 8, !tbaa !11 ; 2 uses
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.c = load ptr, ptr @fderives, align 8, !tbaa !11 ; 2 uses
  %.not4 = icmp eq ptr %i.c, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = load i32, ptr @ntokens, align 4, !tbaa !4
  %i.e = load i32, ptr @rulesetsize, align 4, !tbaa !4
  %i.f = mul nsw i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.g
  tail call void @free(ptr noundef %i.h) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
end_hunk_0
