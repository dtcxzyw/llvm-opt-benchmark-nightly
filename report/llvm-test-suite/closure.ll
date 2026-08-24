Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/closure?download=true
inline.NumInlined: 1
begin_hunk_0_@closure:bb.a
bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %.lr.ph69.preheader, label %.loopexit56.thread

.lr.ph69.preheader:                               ; preds = %bb.b
  %i.k = load ptr, ptr @fderives, align 8, !tbaa !11 ; 2 uses
  %i.l = load i32, ptr @start_symbol, align 4, !tbaa !4
  %i.m = mul i32 %i.l, %.fr86
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.n ; 4 uses
  %i.p = add i64 %.idx, %i.c
  %i.q = add i64 %i.c, 4
  %i.r = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.q)
  %i.s = xor i64 %i.c, -1
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check112 = icmp ult i64 %i.t, 76
  br i1 %min.iters.check112, label %.lr.ph69.preheader157, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph69.preheader
  %i.w = ptrtoaddr ptr %i.k to i64
  %i.x = shl nsw i64 %i.n, 2
  %i.y = add i64 %i.x, %i.w
  %i.z = sub i64 %i.y, %i.c
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph69.preheader157, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck110
  %n.vec114 = and i64 %i.v, 9223372036854775800   ; 3 uses
  %i.aa = shl i64 %n.vec114, 2                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.aa
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.ad = shl i64 %index116, 2                    ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.b, i64 %i.ad ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.o, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !4
  %wide.load120 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr i8, ptr %next.gep117, i64 16
  store <4 x i32> %wide.load119, ptr %next.gep117, align 4, !tbaa !4
  store <4 x i32> %wide.load120, ptr %i.af, align 4, !tbaa !4
  %index.next121 = add nuw i64 %index116, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ag, label %middle.block122, label %vector.body115, !llvm.loop !25

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.v, %n.vec114
  br i1 %cmp.n123, label %.lr.ph80.preheader, label %.lr.ph69.preheader157

.lr.ph69.preheader157:                            ; preds = %vector.memcheck110, %.lr.ph69.preheader, %middle.block122
  %.068.ph = phi ptr [ %i.b, %vector.memcheck110 ], [ %i.b, %.lr.ph69.preheader ], [ %i.ab, %middle.block122 ]
  %.04067.ph = phi ptr [ %i.o, %vector.memcheck110 ], [ %i.o, %.lr.ph69.preheader ], [ %i.ac, %middle.block122 ]
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader157, %.lr.ph69
  %.068 = phi ptr [ %i.aj, %.lr.ph69 ], [ %.068.ph, %.lr.ph69.preheader157 ] ; 2 uses
  %.04067 = phi ptr [ %i.ah, %.lr.ph69 ], [ %.04067.ph, %.lr.ph69.preheader157 ] ; 2 uses
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
  %umax102 = tail call i64 @llvm.umax.i64(i64 %i.au, i64 %i.av)
  %i.aw = xor i64 %i.c, -1
  %i.ax = add i64 %umax102, %i.aw
  %i.ay = and i64 %i.ax, -4
  %i.az = add i64 %i.ay, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.az
  %scevgep103 = getelementptr i8, ptr %i.at, i64 %i.az
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
  %i.bq = mul i32 %.fr86, %i.bo
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.at, i64 %i.br ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph64.us
  %i.bt = shl nsw i64 %i.br, 2
  %scevgep104 = getelementptr i8, ptr %scevgep103, i64 %i.bt
  %bound0 = icmp ult ptr %i.b, %scevgep104
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
  %next.gep105 = getelementptr i8, ptr %i.bs, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep105, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep105, align 4, !tbaa !4, !alias.scope !29
  %wide.load106 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !4, !alias.scope !29
  %i.bx = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load107 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %wide.load108 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !4, !alias.scope !32, !noalias !29
  %i.by = or <4 x i32> %wide.load107, %wide.load
  %i.bz = or <4 x i32> %wide.load108, %wide.load106
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

.lr.ph80.preheader:                               ; preds = %..loopexit57_crit_edge.us, %.lr.ph69, %.preheader58, %middle.block122
  %storemerge = load ptr, ptr @itemset, align 8, !tbaa !8
  store ptr %storemerge, ptr @itemsetend, align 8, !tbaa !8
  br label %.lr.ph80

.preheader.loopexit:                              ; preds = %.loopexit
  %itemsetend.promoted82.pre = load ptr, ptr @itemsetend, align 8
  br label %.preheader

.preheader:                                       ; preds = %.loopexit56.thread, %.preheader.loopexit
  %itemsetend.promoted82 = phi ptr [ %i.ci, %.loopexit56.thread ], [ %itemsetend.promoted82.pre, %.preheader.loopexit ] ; 6 uses
  %.143.lcssa = phi ptr [ %0, %.loopexit56.thread ], [ %.5, %.preheader.loopexit ] ; 7 uses
  %i.cj = icmp ult ptr %.143.lcssa, %i.h
  br i1 %i.cj, label %iter.check, label %bb.h

iter.check:                                       ; preds = %.preheader
  %.143.lcssa128 = ptrtoaddr ptr %.143.lcssa to i64 ; 3 uses
  %itemsetend.promoted82127 = ptrtoaddr ptr %itemsetend.promoted82 to i64
  %i.ck = add i64 %.idx85, %i.a
  %2 = add i64 %.143.lcssa128, 2
  %umax130 = tail call i64 @llvm.umax.i64(i64 %i.ck, i64 %2)
  %i.cl = xor i64 %.143.lcssa128, -1
  %i.cm = add i64 %umax130, %i.cl                 ; 3 uses
  %i.cn = lshr i64 %i.cm, 1
  %i.co = add nuw i64 %i.cn, 1                    ; 5 uses
  %min.iters.check132.a = icmp ult i64 %i.cm, 6
  %i.cp = sub i64 %.143.lcssa128, %itemsetend.promoted82127
  %diff.check129 = icmp ugt i64 %i.cp, -32
  %or.cond = select i1 %min.iters.check132.a, i1 true, i1 %diff.check129
  br i1 %or.cond, label %.lr.ph84.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check133 = icmp ult i64 %i.cm, 30
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.ph134

vector.ph134:                                     ; preds = %vector.main.loop.iter.check
  %i.cq = and i64 %i.co, 12
  %n.vec135 = and i64 %i.co, -16                  ; 4 uses
  %i.cr = shl i64 %n.vec135, 1                    ; 2 uses
  %i.cs = getelementptr i8, ptr %.143.lcssa, i64 %i.cr
  %i.ct = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cr ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next142, %vector.body136 ] ; 2 uses
  %i.cu = shl i64 %index137, 1                    ; 2 uses
  %next.gep138.a = getelementptr i8, ptr %.143.lcssa, i64 %i.cu ; 2 uses
  %next.gep139 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep138.a, i64 16
  %wide.load140.a = load <8 x i16>, ptr %next.gep138.a, align 2, !tbaa !16
  %wide.load141 = load <8 x i16>, ptr %i.cv, align 2, !tbaa !16
  %i.cw = getelementptr i8, ptr %next.gep139, i64 16
  store <8 x i16> %wide.load140.a, ptr %next.gep139, align 2, !tbaa !16
  store <8 x i16> %wide.load141, ptr %i.cw, align 2, !tbaa !16
  %index.next142 = add nuw i64 %index137, 16      ; 2 uses
  %i.cx = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.cx, label %middle.block143, label %vector.body136, !llvm.loop !37

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.co, %n.vec135
  br i1 %cmp.n144, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block143
  %min.epilog.iters.check = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec135, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec147 = and i64 %i.co, -4                   ; 3 uses
  %i.cy = shl i64 %n.vec147, 1                    ; 2 uses
  %i.cz = getelementptr i8, ptr %.143.lcssa, i64 %i.cy
  %i.da = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.cy ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next152, %vec.epilog.vector.body ] ; 2 uses
  %i.db = shl i64 %index148, 1                    ; 2 uses
  %next.gep149.a = getelementptr i8, ptr %.143.lcssa, i64 %i.db
  %next.gep150 = getelementptr i8, ptr %itemsetend.promoted82, i64 %i.db
  %wide.load151 = load <4 x i16>, ptr %next.gep149.a, align 2, !tbaa !16
  store <4 x i16> %wide.load151, ptr %next.gep150, align 2, !tbaa !16
  %index.next152 = add nuw i64 %index148, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.dc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n153 = icmp eq i64 %i.co, %n.vec147
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.683.ph = phi ptr [ %.143.lcssa, %iter.check ], [ %i.cs, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ]
  %.ph = phi ptr [ %itemsetend.promoted82, %iter.check ], [ %i.ct, %vec.epilog.iter.check ], [ %i.da, %vec.epilog.middle.block ]
  br label %.lr.ph84

.lr.ph80:                                         ; preds = %.lr.ph80.preheader, %.loopexit
  %.379 = phi ptr [ %i.dd, %.loopexit ], [ %i.b, %.lr.ph80.preheader ] ; 2 uses
  %.14378 = phi ptr [ %.5, %.loopexit ], [ %0, %.lr.ph80.preheader ] ; 2 uses
  %.04777 = phi i32 [ %.249, %.loopexit ], [ 0, %.lr.ph80.preheader ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.379, i64 4 ; 2 uses
  %i.de = load i32, ptr %.379, align 4, !tbaa !4  ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.c, label %.preheader55

.preheader55:                                     ; preds = %.lr.ph80
  %i.dg = load ptr, ptr @rrhs, align 8
  %i.dh = sext i32 %.04777 to i64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph80
  %i.di = add nsw i32 %.04777, 32
  br label %.loopexit

bb.d:                                             ; preds = %.preheader55, %bb.g
  %indvars.iv = phi i64 [ %i.dh, %.preheader55 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.24476 = phi ptr [ %.14378, %.preheader55 ], [ %.4, %bb.g ] ; 4 uses
  %.04675 = phi i32 [ 1, %.preheader55 ], [ %i.dv, %bb.g ] ; 2 uses
  %i.dj = and i32 %.04675, %i.de
  %.not54 = icmp eq i32 %i.dj, 0
  br i1 %.not54, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !16 ; 2 uses
  %itemsetend.promoted = load ptr, ptr @itemsetend, align 8 ; 2 uses
  %i.dm = icmp ult ptr %.24476, %i.h
  br i1 %i.dm, label %.lr.ph71, label %.critedge

.lr.ph71:                                         ; preds = %bb.e, %bb.f
  %.34570 = phi ptr [ %i.dq, %bb.f ], [ %.24476, %bb.e ] ; 3 uses
  %i.dn = phi ptr [ %i.dr, %bb.f ], [ %itemsetend.promoted, %bb.e ] ; 2 uses
  %i.do = load i16, ptr %.34570, align 2, !tbaa !16 ; 2 uses
  %i.dp = icmp slt i16 %i.do, %i.dl
  br i1 %i.dp, label %bb.f, label %.critedge.loopexit

bb.f:                                             ; preds = %.lr.ph71
  %i.dq = getelementptr inbounds nuw i8, ptr %.34570, i64 2 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  store ptr %i.dr, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.do, ptr %i.dn, align 2, !tbaa !16
  %i.ds = icmp ult ptr %i.dq, %i.h
  br i1 %i.ds, label %.lr.ph71, label %.critedge.loopexit, !llvm.loop !40

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph71
  %.345.lcssa.ph = phi ptr [ %.34570, %.lr.ph71 ], [ %i.dq, %bb.f ]
  %.pre = load ptr, ptr @itemsetend, align 8, !tbaa !8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.e
  %i.dt = phi ptr [ %itemsetend.promoted, %bb.e ], [ %.pre, %.critedge.loopexit ] ; 2 uses
  %.345.lcssa = phi ptr [ %.24476, %bb.e ], [ %.345.lcssa.ph, %.critedge.loopexit ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store ptr %i.du, ptr @itemsetend, align 8, !tbaa !8
  store i16 %i.dl, ptr %i.dt, align 2, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %bb.d
  %.4 = phi ptr [ %.345.lcssa, %.critedge ], [ %.24476, %bb.d ] ; 2 uses
  %i.dv = shl i32 %.04675, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not53 = icmp eq i32 %i.dv, 0
  br i1 %.not53, label %.loopexit.loopexit, label %bb.d, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %bb.g
  %i.dw = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.249 = phi i32 [ %i.di, %bb.c ], [ %i.dw, %.loopexit.loopexit ]
  %.5 = phi ptr [ %.14378, %bb.c ], [ %.4, %.loopexit.loopexit ] ; 2 uses
  %i.dx = icmp ult ptr %i.dd, %i.f
  br i1 %i.dx, label %.lr.ph80, label %.preheader.loopexit, !llvm.loop !42

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %.683 = phi ptr [ %i.dz, %.lr.ph84 ], [ %.683.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.dy = phi ptr [ %i.eb, %.lr.ph84 ], [ %.ph, %.lr.ph84.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.683, i64 2 ; 2 uses
  %i.ea = load i16, ptr %.683, align 2, !tbaa !16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 2 ; 2 uses
  store i16 %i.ea, ptr %i.dy, align 2, !tbaa !16
  %i.ec = icmp ult ptr %i.dz, %i.h
  br i1 %i.ec, label %.lr.ph84, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph84, %vec.epilog.middle.block, %middle.block143
  %.lcssa = phi ptr [ %i.da, %vec.epilog.middle.block ], [ %i.ct, %middle.block143 ], [ %i.eb, %.lr.ph84 ]
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
end_hunk_0
