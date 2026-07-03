inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@long_to_decimal_string_internal:bb.a
  br i1 %i.y, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.aa = getelementptr i8, ptr %.val.i, i64 168
  %.val63.i = load i64, ptr %i.aa, align 8, !tbaa !35
  %i.ab = and i64 %.val63.i, 268435456
  %.not.i291 = icmp eq i64 %i.ab, 0
  br i1 %.not.i291, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.41) #16
  br label %.thread.i

bb.l:                                             ; preds = %bb.j
  %.not54.i = icmp eq ptr %2, null
  br i1 %.not54.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %i.x, i64 16
  %.val65.i = load i64, ptr %i.ad, align 8, !tbaa !151 ; 4 uses
  %i.ae = getelementptr i8, ptr %2, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !154
  %i.ag = icmp ugt i32 %i.af, 56
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr i8, ptr %2, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !156
  %i.aj = getelementptr i8, ptr %2, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !157
  %i.al = sub i64 %i.ai, %i.ak
  %i.am = icmp sle i64 %.val65.i, %i.al
  %i.an = icmp eq i64 %.val65.i, 0
  %or.cond.i = or i1 %i.an, %i.am
  br i1 %or.cond.i, label %.critedge.i, label %bb.p

bb.o:                                             ; preds = %bb.m
  %.old1.i = icmp eq i64 %.val65.i, 0
  br i1 %.old1.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %2, i64 noundef %.val65.i, i32 noundef 57) #16
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread.i, label %.critedge.i

.critedge.i:                                      ; preds = %bb.p, %bb.o, %bb.n
  %i.aq = tail call i32 @_PyUnicodeWriter_WriteStr(ptr noundef nonnull %2, ptr noundef nonnull %i.x) #16
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %.thread.i, label %bb.aa

bb.q:                                             ; preds = %bb.l
  %.not55.i = icmp eq ptr %3, null
  br i1 %.not55.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr i8, ptr %i.x, i64 16
  %.val64.i = load i64, ptr %i.as, align 8, !tbaa !151 ; 32 uses
  %i.at = getelementptr i8, ptr %i.x, i64 32
  %.val.i.i = load i32, ptr %i.at, align 8        ; 3 uses
  %i.au = and i32 %.val.i.i, 32
  %.not.i66.i = icmp eq i32 %i.au, 0
  br i1 %.not.i66.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = and i32 %.val.i.i, 64
  %.not.i.i.i = icmp eq i32 %i.av, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.x, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.t:                                             ; preds = %bb.r
  %i.aw = getelementptr i8, ptr %i.x, i64 56
  %.val4.i.i = load ptr, ptr %i.aw, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.t, %bb.s
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.s ], [ %.val4.i.i, %bb.t ] ; 37 uses
  %.0.i.i541 = ptrtoaddr ptr %.0.i.i to i64
  %i.ax = lshr i32 %.val.i.i, 2
  %i.ay = and i32 %i.ax, 7
  %i.az = load ptr, ptr %4, align 8, !tbaa !158
  %i.ba = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %3, i64 noundef %.val64.i, ptr noundef %i.az) #16 ; 23 uses
  %i.bb = ptrtoaddr ptr %i.ba to i64
  store ptr %i.ba, ptr %4, align 8, !tbaa !158
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %_PyUnicode_DATA.exit.i
  %i.bd = icmp sgt i64 %.val64.i, 0
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  switch i32 %i.ay, label %PyUnicode_READ.exit.i.preheader [
    i32 1, label %iter.check557
    i32 2, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i64 %.val64.i, 4
  br i1 %min.iters.check, label %PyUnicode_READ.exit.us78.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ba, i64 %.val64.i
  %i.be = shl nuw i64 %.val64.i, 1
  %scevgep528 = getelementptr i8, ptr %.0.i.i, i64 %i.be
  %bound0 = icmp ult ptr %i.ba, %scevgep528
  %bound1 = icmp ult ptr %.0.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit.us78.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check529 = icmp ult i64 %.val64.i, 16
  br i1 %min.iters.check529, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.val64.i, 12
  %n.vec = and i64 %.val64.i, 9223372036854775792 ; 5 uses
  %i.bf = getelementptr i8, ptr %i.ba, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ba, i64 %index ; 2 uses
  %i.bg = getelementptr [2 x i8], ptr %.0.i.i, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <8 x i16>, ptr %i.bg, align 2, !tbaa !159, !alias.scope !160
  %wide.load530 = load <8 x i16>, ptr %i.bh, align 2, !tbaa !159, !alias.scope !160
  %i.bi = trunc <8 x i16> %wide.load to <8 x i8>
  %i.bj = trunc <8 x i16> %wide.load530 to <8 x i8>
  %i.bk = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.bi, ptr %next.gep, align 1, !tbaa !24, !alias.scope !163, !noalias !160
  store <8 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !24, !alias.scope !163, !noalias !160
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val64.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %PyUnicode_READ.exit.us78.i.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec532 = and i64 %.val64.i, 9223372036854775804 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.ba, i64 %n.vec532 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index533 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next536, %vec.epilog.vector.body ] ; 3 uses
  %next.gep534 = getelementptr i8, ptr %i.ba, i64 %index533
  %i.bn = getelementptr [2 x i8], ptr %.0.i.i, i64 %index533
  %wide.load535 = load <4 x i16>, ptr %i.bn, align 2, !tbaa !159, !alias.scope !160
  %i.bo = trunc <4 x i16> %wide.load535 to <4 x i8>
  store <4 x i8> %i.bo, ptr %next.gep534, align 1, !tbaa !24, !alias.scope !163, !noalias !160
  %index.next536 = add nuw i64 %index533, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next536, %n.vec532
  br i1 %i.bp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n537 = icmp eq i64 %.val64.i, %n.vec532
  br i1 %cmp.n537, label %._crit_edge.i, label %PyUnicode_READ.exit.us78.i.preheader

PyUnicode_READ.exit.us78.i.preheader:             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04674.us76.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec532, %vec.epilog.middle.block ] ; 4 uses
  %.04773.us77.i.ph = phi ptr [ %i.ba, %iter.check ], [ %i.ba, %vector.memcheck ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ] ; 2 uses
  %i.bq = sub nsw i64 %.val64.i, %.04674.us76.i.ph
  %xtraiter611 = and i64 %i.bq, 7                 ; 2 uses
  %lcmp.mod612.not = icmp eq i64 %xtraiter611, 0
  br i1 %lcmp.mod612.not, label %PyUnicode_READ.exit.us78.i.prol.loopexit, label %PyUnicode_READ.exit.us78.i.prol

PyUnicode_READ.exit.us78.i.prol:                  ; preds = %PyUnicode_READ.exit.us78.i.preheader, %PyUnicode_READ.exit.us78.i.prol
  %.04674.us76.i.prol = phi i64 [ %i.bv, %PyUnicode_READ.exit.us78.i.prol ], [ %.04674.us76.i.ph, %PyUnicode_READ.exit.us78.i.preheader ] ; 2 uses
  %.04773.us77.i.prol = phi ptr [ %i.bu, %PyUnicode_READ.exit.us78.i.prol ], [ %.04773.us77.i.ph, %PyUnicode_READ.exit.us78.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit.us78.i.prol ], [ 0, %PyUnicode_READ.exit.us78.i.preheader ]
  %i.br = getelementptr [2 x i8], ptr %.0.i.i, i64 %.04674.us76.i.prol
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !159
  %i.bt = trunc i16 %i.bs to i8
  %i.bu = getelementptr i8, ptr %.04773.us77.i.prol, i64 1 ; 3 uses
  store i8 %i.bt, ptr %.04773.us77.i.prol, align 1, !tbaa !24
  %i.bv = add nuw nsw i64 %.04674.us76.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter611
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit.us78.i.prol.loopexit, label %PyUnicode_READ.exit.us78.i.prol, !llvm.loop !170

PyUnicode_READ.exit.us78.i.prol.loopexit:         ; preds = %PyUnicode_READ.exit.us78.i.prol, %PyUnicode_READ.exit.us78.i.preheader
  %.lcssa600.unr = phi ptr [ poison, %PyUnicode_READ.exit.us78.i.preheader ], [ %i.bu, %PyUnicode_READ.exit.us78.i.prol ]
  %.04674.us76.i.unr = phi i64 [ %.04674.us76.i.ph, %PyUnicode_READ.exit.us78.i.preheader ], [ %i.bv, %PyUnicode_READ.exit.us78.i.prol ]
  %.04773.us77.i.unr = phi ptr [ %.04773.us77.i.ph, %PyUnicode_READ.exit.us78.i.preheader ], [ %i.bu, %PyUnicode_READ.exit.us78.i.prol ]
  %i.bw = sub nsw i64 %.04674.us76.i.ph, %.val64.i
  %i.bx = icmp ugt i64 %i.bw, -8
  br i1 %i.bx, label %._crit_edge.i, label %PyUnicode_READ.exit.us78.i

iter.check557:                                    ; preds = %.lr.ph.i
  %min.iters.check542 = icmp ult i64 %.val64.i, 4
  %i.by = sub i64 %i.bb, %.0.i.i541
  %diff.check = icmp ult i64 %i.by, 32
  %or.cond593 = select i1 %min.iters.check542, i1 true, i1 %diff.check
  br i1 %or.cond593, label %PyUnicode_READ.exit.us.i.preheader, label %vector.main.loop.iter.check543

vector.main.loop.iter.check543:                   ; preds = %iter.check557
  %min.iters.check544 = icmp ult i64 %.val64.i, 32
  br i1 %min.iters.check544, label %vec.epilog.ph561, label %vector.ph545

vector.ph545:                                     ; preds = %vector.main.loop.iter.check543
  %n.mod.vf546 = and i64 %.val64.i, 28
  %n.vec547 = and i64 %.val64.i, 9223372036854775776 ; 5 uses
  %i.bz = getelementptr i8, ptr %i.ba, i64 %n.vec547 ; 2 uses
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph545
  %index549 = phi i64 [ 0, %vector.ph545 ], [ %index.next553, %vector.body548 ] ; 3 uses
  %next.gep550 = getelementptr i8, ptr %i.ba, i64 %index549 ; 2 uses
  %i.ca = getelementptr i8, ptr %.0.i.i, i64 %index549 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %wide.load551 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !24
  %wide.load552 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !24
  %i.cc = getelementptr i8, ptr %next.gep550, i64 16
  store <16 x i8> %wide.load551, ptr %next.gep550, align 1, !tbaa !24
  store <16 x i8> %wide.load552, ptr %i.cc, align 1, !tbaa !24
  %index.next553 = add nuw i64 %index549, 32      ; 2 uses
  %i.cd = icmp eq i64 %index.next553, %n.vec547
  br i1 %i.cd, label %middle.block554, label %vector.body548, !llvm.loop !171

middle.block554:                                  ; preds = %vector.body548
  %cmp.n555 = icmp eq i64 %.val64.i, %n.vec547
  br i1 %cmp.n555, label %._crit_edge.i, label %vec.epilog.iter.check559

vec.epilog.iter.check559:                         ; preds = %middle.block554
  %min.epilog.iters.check560 = icmp eq i64 %n.mod.vf546, 0
  br i1 %min.epilog.iters.check560, label %PyUnicode_READ.exit.us.i.preheader, label %vec.epilog.ph561, !prof !172

vec.epilog.ph561:                                 ; preds = %vector.main.loop.iter.check543, %vec.epilog.iter.check559
  %vec.epilog.resume.val556 = phi i64 [ %n.vec547, %vec.epilog.iter.check559 ], [ 0, %vector.main.loop.iter.check543 ]
  %n.vec563 = and i64 %.val64.i, 9223372036854775804 ; 4 uses
  %i.ce = getelementptr i8, ptr %i.ba, i64 %n.vec563 ; 2 uses
  br label %vec.epilog.vector.body564

vec.epilog.vector.body564:                        ; preds = %vec.epilog.vector.body564, %vec.epilog.ph561
  %index565 = phi i64 [ %vec.epilog.resume.val556, %vec.epilog.ph561 ], [ %index.next568, %vec.epilog.vector.body564 ] ; 3 uses
  %next.gep566 = getelementptr i8, ptr %i.ba, i64 %index565
  %i.cf = getelementptr i8, ptr %.0.i.i, i64 %index565
  %wide.load567 = load <4 x i8>, ptr %i.cf, align 1, !tbaa !24
  store <4 x i8> %wide.load567, ptr %next.gep566, align 1, !tbaa !24
  %index.next568 = add nuw i64 %index565, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next568, %n.vec563
  br i1 %i.cg, label %vec.epilog.middle.block569, label %vec.epilog.vector.body564, !llvm.loop !173

vec.epilog.middle.block569:                       ; preds = %vec.epilog.vector.body564
  %cmp.n570 = icmp eq i64 %.val64.i, %n.vec563
  br i1 %cmp.n570, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i.preheader

PyUnicode_READ.exit.us.i.preheader:               ; preds = %iter.check557, %vec.epilog.iter.check559, %vec.epilog.middle.block569
  %.04674.us.i.ph = phi i64 [ 0, %iter.check557 ], [ %n.vec547, %vec.epilog.iter.check559 ], [ %n.vec563, %vec.epilog.middle.block569 ] ; 4 uses
  %.04773.us.i.ph = phi ptr [ %i.ba, %iter.check557 ], [ %i.bz, %vec.epilog.iter.check559 ], [ %i.ce, %vec.epilog.middle.block569 ] ; 2 uses
  %i.ch = sub nsw i64 %.val64.i, %.04674.us.i.ph
  %xtraiter613 = and i64 %i.ch, 7                 ; 2 uses
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %PyUnicode_READ.exit.us.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.prol

PyUnicode_READ.exit.us.i.prol:                    ; preds = %PyUnicode_READ.exit.us.i.preheader, %PyUnicode_READ.exit.us.i.prol
  %.04674.us.i.prol = phi i64 [ %i.cl, %PyUnicode_READ.exit.us.i.prol ], [ %.04674.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ] ; 2 uses
  %.04773.us.i.prol = phi ptr [ %i.ck, %PyUnicode_READ.exit.us.i.prol ], [ %.04773.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ] ; 2 uses
  %prol.iter615 = phi i64 [ %prol.iter615.next, %PyUnicode_READ.exit.us.i.prol ], [ 0, %PyUnicode_READ.exit.us.i.preheader ]
  %i.ci = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i.prol
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !24
  %i.ck = getelementptr i8, ptr %.04773.us.i.prol, i64 1 ; 3 uses
  store i8 %i.cj, ptr %.04773.us.i.prol, align 1, !tbaa !24
  %i.cl = add nuw nsw i64 %.04674.us.i.prol, 1    ; 2 uses
  %prol.iter615.next = add i64 %prol.iter615, 1   ; 2 uses
  %prol.iter615.cmp.not = icmp eq i64 %prol.iter615.next, %xtraiter613
  br i1 %prol.iter615.cmp.not, label %PyUnicode_READ.exit.us.i.prol.loopexit, label %PyUnicode_READ.exit.us.i.prol, !llvm.loop !174

PyUnicode_READ.exit.us.i.prol.loopexit:           ; preds = %PyUnicode_READ.exit.us.i.prol, %PyUnicode_READ.exit.us.i.preheader
  %.lcssa598.unr = phi ptr [ poison, %PyUnicode_READ.exit.us.i.preheader ], [ %i.ck, %PyUnicode_READ.exit.us.i.prol ]
  %.04674.us.i.unr = phi i64 [ %.04674.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ], [ %i.cl, %PyUnicode_READ.exit.us.i.prol ]
  %.04773.us.i.unr = phi ptr [ %.04773.us.i.ph, %PyUnicode_READ.exit.us.i.preheader ], [ %i.ck, %PyUnicode_READ.exit.us.i.prol ]
  %i.cm = sub nsw i64 %.04674.us.i.ph, %.val64.i
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i

PyUnicode_READ.exit.i.preheader:                  ; preds = %.lr.ph.i
  %min.iters.check579 = icmp ult i64 %.val64.i, 12
  br i1 %min.iters.check579, label %PyUnicode_READ.exit.i.preheader596, label %vector.memcheck573

vector.memcheck573:                               ; preds = %PyUnicode_READ.exit.i.preheader
  %scevgep574 = getelementptr i8, ptr %i.ba, i64 %.val64.i
  %i.co = shl i64 %.val64.i, 2
  %scevgep575 = getelementptr i8, ptr %.0.i.i, i64 %i.co
  %bound0576 = icmp ult ptr %i.ba, %scevgep575
  %bound1577 = icmp ult ptr %.0.i.i, %scevgep574
  %found.conflict578 = and i1 %bound0576, %bound1577
  br i1 %found.conflict578, label %PyUnicode_READ.exit.i.preheader596, label %vector.ph580

vector.ph580:                                     ; preds = %vector.memcheck573
  %n.vec582 = and i64 %.val64.i, 9223372036854775800 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.ba, i64 %n.vec582 ; 2 uses
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph580
  %index584 = phi i64 [ 0, %vector.ph580 ], [ %index.next588, %vector.body583 ] ; 3 uses
  %next.gep585 = getelementptr i8, ptr %i.ba, i64 %index584 ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %.0.i.i, i64 %index584 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %wide.load586 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !7, !alias.scope !175
  %wide.load587 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !7, !alias.scope !175
  %i.cs = trunc <4 x i32> %wide.load586 to <4 x i8>
  %i.ct = trunc <4 x i32> %wide.load587 to <4 x i8>
  %i.cu = getelementptr i8, ptr %next.gep585, i64 4
  store <4 x i8> %i.cs, ptr %next.gep585, align 1, !tbaa !24, !alias.scope !178, !noalias !175
  store <4 x i8> %i.ct, ptr %i.cu, align 1, !tbaa !24, !alias.scope !178, !noalias !175
  %index.next588 = add nuw i64 %index584, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next588, %n.vec582
  br i1 %i.cv, label %middle.block589, label %vector.body583, !llvm.loop !180

middle.block589:                                  ; preds = %vector.body583
  %cmp.n590 = icmp eq i64 %.val64.i, %n.vec582
  br i1 %cmp.n590, label %._crit_edge.i, label %PyUnicode_READ.exit.i.preheader596

PyUnicode_READ.exit.i.preheader596:               ; preds = %vector.memcheck573, %PyUnicode_READ.exit.i.preheader, %middle.block589
  %.04674.i.ph = phi i64 [ 0, %vector.memcheck573 ], [ 0, %PyUnicode_READ.exit.i.preheader ], [ %n.vec582, %middle.block589 ] ; 3 uses
  %.04773.i.ph = phi ptr [ %i.ba, %vector.memcheck573 ], [ %i.ba, %PyUnicode_READ.exit.i.preheader ], [ %i.cp, %middle.block589 ] ; 2 uses
  %xtraiter616 = and i64 %.val64.i, 7             ; 2 uses
  %lcmp.mod617.not = icmp eq i64 %xtraiter616, 0
  br i1 %lcmp.mod617.not, label %PyUnicode_READ.exit.i.prol.loopexit, label %PyUnicode_READ.exit.i.prol

PyUnicode_READ.exit.i.prol:                       ; preds = %PyUnicode_READ.exit.i.preheader596, %PyUnicode_READ.exit.i.prol
  %.04674.i.prol = phi i64 [ %i.da, %PyUnicode_READ.exit.i.prol ], [ %.04674.i.ph, %PyUnicode_READ.exit.i.preheader596 ] ; 2 uses
  %.04773.i.prol = phi ptr [ %i.cz, %PyUnicode_READ.exit.i.prol ], [ %.04773.i.ph, %PyUnicode_READ.exit.i.preheader596 ] ; 2 uses
  %prol.iter618 = phi i64 [ %prol.iter618.next, %PyUnicode_READ.exit.i.prol ], [ 0, %PyUnicode_READ.exit.i.preheader596 ]
  %i.cw = getelementptr [4 x i8], ptr %.0.i.i, i64 %.04674.i.prol
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr i8, ptr %.04773.i.prol, i64 1 ; 3 uses
  store i8 %i.cy, ptr %.04773.i.prol, align 1, !tbaa !24
  %i.da = add nuw nsw i64 %.04674.i.prol, 1       ; 2 uses
  %prol.iter618.next = add i64 %prol.iter618, 1   ; 2 uses
  %prol.iter618.cmp.not = icmp eq i64 %prol.iter618.next, %xtraiter616
  br i1 %prol.iter618.cmp.not, label %PyUnicode_READ.exit.i.prol.loopexit, label %PyUnicode_READ.exit.i.prol, !llvm.loop !181

PyUnicode_READ.exit.i.prol.loopexit:              ; preds = %PyUnicode_READ.exit.i.prol, %PyUnicode_READ.exit.i.preheader596
  %.lcssa.unr = phi ptr [ poison, %PyUnicode_READ.exit.i.preheader596 ], [ %i.cz, %PyUnicode_READ.exit.i.prol ]
  %.04674.i.unr = phi i64 [ %.04674.i.ph, %PyUnicode_READ.exit.i.preheader596 ], [ %i.da, %PyUnicode_READ.exit.i.prol ]
  %.04773.i.unr = phi ptr [ %.04773.i.ph, %PyUnicode_READ.exit.i.preheader596 ], [ %i.cz, %PyUnicode_READ.exit.i.prol ]
  %i.db = sub nsw i64 %.04674.i.ph, %.val64.i
  %i.dc = icmp ugt i64 %i.db, -8
  br i1 %i.dc, label %._crit_edge.i, label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.us.i:                         ; preds = %PyUnicode_READ.exit.us.i.prol.loopexit, %PyUnicode_READ.exit.us.i
  %.04674.us.i = phi i64 [ %i.ei, %PyUnicode_READ.exit.us.i ], [ %.04674.us.i.unr, %PyUnicode_READ.exit.us.i.prol.loopexit ] ; 9 uses
  %.04773.us.i = phi ptr [ %i.eh, %PyUnicode_READ.exit.us.i ], [ %.04773.us.i.unr, %PyUnicode_READ.exit.us.i.prol.loopexit ] ; 9 uses
  %i.dd = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %i.df = getelementptr i8, ptr %.04773.us.i, i64 1
  store i8 %i.de, ptr %.04773.us.i, align 1, !tbaa !24
  %i.dg = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !24
  %i.dj = getelementptr i8, ptr %.04773.us.i, i64 2
  store i8 %i.di, ptr %i.df, align 1, !tbaa !24
  %i.dk = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !24
  %i.dn = getelementptr i8, ptr %.04773.us.i, i64 3
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !24
  %i.do = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.dp = getelementptr i8, ptr %i.do, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !24
  %i.dr = getelementptr i8, ptr %.04773.us.i, i64 4
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !24
  %i.ds = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.dt = getelementptr i8, ptr %i.ds, i64 4
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !24
  %i.dv = getelementptr i8, ptr %.04773.us.i, i64 5
  store i8 %i.du, ptr %i.dr, align 1, !tbaa !24
  %i.dw = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.dx = getelementptr i8, ptr %i.dw, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !24
  %i.dz = getelementptr i8, ptr %.04773.us.i, i64 6
  store i8 %i.dy, ptr %i.dv, align 1, !tbaa !24
  %i.ea = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.eb = getelementptr i8, ptr %i.ea, i64 6
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !24
  %i.ed = getelementptr i8, ptr %.04773.us.i, i64 7
  store i8 %i.ec, ptr %i.dz, align 1, !tbaa !24
  %i.ee = getelementptr i8, ptr %.0.i.i, i64 %.04674.us.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 7
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !24
  %i.eh = getelementptr i8, ptr %.04773.us.i, i64 8 ; 2 uses
  store i8 %i.eg, ptr %i.ed, align 1, !tbaa !24
  %i.ei = add nuw nsw i64 %.04674.us.i, 8         ; 2 uses
  %exitcond86.not.i.7 = icmp eq i64 %i.ei, %.val64.i
  br i1 %exitcond86.not.i.7, label %._crit_edge.i, label %PyUnicode_READ.exit.us.i, !llvm.loop !182

PyUnicode_READ.exit.us78.i:                       ; preds = %PyUnicode_READ.exit.us78.i.prol.loopexit, %PyUnicode_READ.exit.us78.i
  %.04674.us76.i = phi i64 [ %i.fw, %PyUnicode_READ.exit.us78.i ], [ %.04674.us76.i.unr, %PyUnicode_READ.exit.us78.i.prol.loopexit ] ; 9 uses
  %.04773.us77.i = phi ptr [ %i.fv, %PyUnicode_READ.exit.us78.i ], [ %.04773.us77.i.unr, %PyUnicode_READ.exit.us78.i.prol.loopexit ] ; 9 uses
end_hunk_0
begin_hunk_1_@long_bitwise:bb.a
  %.0910.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %v_complement.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod259 = trunc i64 %.0108 to i1
  tail call void @llvm.assume(i1 %lcmp.mod259)
  %i.ad = getelementptr [4 x i8], ptr %i.l, i64 %.0910.i.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = xor i32 %i.ae, -1
  %i.ag = add i32 %.011.i.epil.init, %i.af
  %i.ah = and i32 %i.ag, 1073741823
  %i.ai = getelementptr [4 x i8], ptr %i.k, i64 %.0910.i.epil.init
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  br label %v_complement.exit

v_complement.exit:                                ; preds = %.lr.ph.i.epil.preheader, %v_complement.exit.loopexit.unr-lcssa, %bb.e, %bb.c
  %.1112 = phi ptr [ %.0111, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %v_complement.exit.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.epil.preheader ] ; 6 uses
  %.0104 = phi ptr [ null, %bb.c ], [ %i.i, %bb.e ], [ %i.i, %v_complement.exit.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.i.epil.preheader ] ; 12 uses
  %.1112199 = ptrtoaddr ptr %.1112 to i64         ; 4 uses
  %i.aj = getelementptr i8, ptr %.0113, i64 16
  %.0113.val = load i64, ptr %i.aj, align 8, !tbaa !25
  %i.ak = and i64 %.0113.val, 3
  %i.al = icmp eq i64 %i.ak, 2                    ; 5 uses
  %i.am = zext i1 %i.al to i32                    ; 3 uses
  br i1 %i.al, label %bb.f, label %v_complement.exit129

bb.f:                                             ; preds = %v_complement.exit
  %i.an = tail call fastcc ptr @long_alloc(i64 noundef %.0107) ; 8 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not.i123 = icmp eq ptr %.0104, null
  br i1 %.not.i123, label %Py_XDECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %.0104, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i.i, label %bb.i, label %Py_XDECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %.0104, align 8, !tbaa !24
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %Py_XDECREF.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit

bb.k:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %i.an, i64 24     ; 3 uses
  %i.at = getelementptr i8, ptr %.0113, i64 24    ; 3 uses
  %.not.i124 = icmp eq i64 %.0107, 0
  br i1 %.not.i124, label %v_complement.exit129, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %bb.k
  %xtraiter260 = and i64 %.0107, 1
  %i.au = icmp eq i64 %.0107, 1
  br i1 %i.au, label %.lr.ph.i125.epil.preheader, label %.lr.ph.i125.preheader.new

.lr.ph.i125.preheader.new:                        ; preds = %.lr.ph.i125.preheader
  %unroll_iter263 = and i64 %.0107, 2305843009213693950
  br label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %.lr.ph.i125, %.lr.ph.i125.preheader.new
  %.011.i126 = phi i32 [ 1, %.lr.ph.i125.preheader.new ], [ %i.bj, %.lr.ph.i125 ]
  %.0910.i127 = phi i64 [ 0, %.lr.ph.i125.preheader.new ], [ %i.bk, %.lr.ph.i125 ] ; 4 uses
  %niter264 = phi i64 [ 0, %.lr.ph.i125.preheader.new ], [ %niter264.next.1, %.lr.ph.i125 ]
  %i.av = getelementptr [4 x i8], ptr %i.at, i64 %.0910.i127
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = xor i32 %i.aw, 1073741823
  %i.ay = add i32 %i.ax, %.011.i126               ; 2 uses
  %i.az = and i32 %i.ay, 1073741823
  %i.ba = getelementptr [4 x i8], ptr %i.as, i64 %.0910.i127
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !7
  %i.bb = lshr i32 %i.ay, 30
  %i.bc = or disjoint i64 %.0910.i127, 1          ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.at, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = xor i32 %i.be, 1073741823
  %i.bg = add i32 %i.bf, %i.bb                    ; 2 uses
  %i.bh = and i32 %i.bg, 1073741823
  %i.bi = getelementptr [4 x i8], ptr %i.as, i64 %i.bc
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !7
  %i.bj = lshr i32 %i.bg, 30                      ; 2 uses
  %i.bk = add nuw nsw i64 %.0910.i127, 2          ; 2 uses
  %niter264.next.1 = add i64 %niter264, 2         ; 2 uses
  %niter264.ncmp.1 = icmp eq i64 %niter264.next.1, %unroll_iter263
  br i1 %niter264.ncmp.1, label %v_complement.exit129.loopexit.unr-lcssa, label %.lr.ph.i125, !llvm.loop !323

v_complement.exit129.loopexit.unr-lcssa:          ; preds = %.lr.ph.i125
  %lcmp.mod261.not = icmp eq i64 %xtraiter260, 0
  br i1 %lcmp.mod261.not, label %v_complement.exit129, label %.lr.ph.i125.epil.preheader

.lr.ph.i125.epil.preheader:                       ; preds = %v_complement.exit129.loopexit.unr-lcssa, %.lr.ph.i125.preheader
  %.011.i126.epil.init = phi i32 [ 1, %.lr.ph.i125.preheader ], [ %i.bj, %v_complement.exit129.loopexit.unr-lcssa ]
  %.0910.i127.epil.init = phi i64 [ 0, %.lr.ph.i125.preheader ], [ %i.bk, %v_complement.exit129.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod262 = trunc i64 %.0107 to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.bl = getelementptr [4 x i8], ptr %i.at, i64 %.0910.i127.epil.init
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %.011.i126.epil.init, %i.bn
  %i.bp = and i32 %i.bo, 1073741823
  %i.bq = getelementptr [4 x i8], ptr %i.as, i64 %.0910.i127.epil.init
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !7
  br label %v_complement.exit129

v_complement.exit129:                             ; preds = %.lr.ph.i125.epil.preheader, %v_complement.exit129.loopexit.unr-lcssa, %bb.k, %v_complement.exit
  %.1114 = phi ptr [ %.0113, %v_complement.exit ], [ %i.an, %bb.k ], [ %i.an, %v_complement.exit129.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i125.epil.preheader ] ; 4 uses
  %.0 = phi ptr [ null, %v_complement.exit ], [ %i.an, %bb.k ], [ %i.an, %v_complement.exit129.loopexit.unr-lcssa ], [ %i.an, %.lr.ph.i125.epil.preheader ] ; 8 uses
  %.1114198 = ptrtoaddr ptr %.1114 to i64         ; 3 uses
  switch i8 %1, label %bb.o [
    i8 94, label %bb.l
    i8 38, label %bb.m
    i8 124, label %bb.n
  ]

bb.l:                                             ; preds = %v_complement.exit129
  %i.br = xor i32 %i.am, %i.h
  br label %bb.p

bb.m:                                             ; preds = %v_complement.exit129
  %i.bs = and i32 %i.am, %i.h
  %i.bt = select i1 %i.al, i64 %.0108, i64 %.0107
  br label %bb.p

bb.n:                                             ; preds = %v_complement.exit129
  %i.bu = or i32 %i.am, %i.h
  %i.bv = select i1 %i.al, i64 %.0107, i64 %.0108
  br label %bb.p

bb.o:                                             ; preds = %v_complement.exit129
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.0109 = phi i32 [ %i.br, %bb.l ], [ %i.bs, %bb.m ], [ %i.bu, %bb.n ] ; 2 uses
  %.0106 = phi i64 [ %.0108, %bb.l ], [ %i.bt, %bb.m ], [ %i.bv, %bb.n ] ; 12 uses
  %i.bw = zext nneg i32 %.0109 to i64
  %i.bx = add nuw nsw i64 %.0106, %i.bw
  %i.by = tail call fastcc ptr @long_alloc(i64 noundef %i.bx) ; 12 uses
  %i.bz = ptrtoaddr ptr %i.by to i64              ; 7 uses
  %i.ca = icmp eq ptr %i.by, null
  br i1 %i.ca, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not.i130 = icmp eq ptr %.0104, null
  br i1 %.not.i130, label %Py_XDECREF.exit132, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = load i32, ptr %.0104, align 8, !tbaa !24 ; 2 uses
  %.not.i.i131 = icmp sgt i32 %i.cb, -1
  br i1 %.not.i.i131, label %bb.s, label %Py_XDECREF.exit132

bb.s:                                             ; preds = %bb.r
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %.0104, align 8, !tbaa !24
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.t, label %Py_XDECREF.exit132

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit132

Py_XDECREF.exit132:                               ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.not.i133 = icmp eq ptr %.0, null
  br i1 %.not.i133, label %Py_XDECREF.exit, label %bb.u

bb.u:                                             ; preds = %Py_XDECREF.exit132
  %i.ce = load i32, ptr %.0, align 8, !tbaa !24   ; 2 uses
  %.not.i.i134 = icmp sgt i32 %i.ce, -1
  br i1 %.not.i.i134, label %bb.v, label %Py_XDECREF.exit

bb.v:                                             ; preds = %bb.u
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  store i32 %i.cf, ptr %.0, align 8, !tbaa !24
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.w, label %Py_XDECREF.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_XDECREF.exit

bb.x:                                             ; preds = %bb.p
  %.not168 = icmp eq i64 %.0107, 0                ; 3 uses
  switch i8 %1, label %bb.y [
    i8 38, label %.preheader150
    i8 124, label %.preheader152
    i8 94, label %.preheader154
  ]

.preheader154:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader154
  %i.ch = getelementptr i8, ptr %.1112, i64 24    ; 6 uses
  %i.ci = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.cj = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ck = sub i64 %i.bz, %.1114198
  %diff.check = icmp ult i64 %i.ck, 32
  %i.cl = sub i64 %i.bz, %.1112199
  %diff.check200 = icmp ult i64 %i.cl, 32
  %conflict.rdx = or i1 %diff.check, %diff.check200
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0107, 2305843009213693944    ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cm = getelementptr [4 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %wide.load = load <4 x i32>, ptr %i.cm, align 4, !tbaa !7
  %wide.load201 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !7
  %i.co = getelementptr [4 x i8], ptr %i.ci, i64 %index ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 16
  %wide.load202 = load <4 x i32>, ptr %i.co, align 4, !tbaa !7
  %wide.load203 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !7
  %i.cq = xor <4 x i32> %wide.load202, %wide.load
  %i.cr = xor <4 x i32> %wide.load203, %wide.load201
  %i.cs = getelementptr [4 x i8], ptr %i.cj, i64 %index ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  store <4 x i32> %i.cq, ptr %i.cs, align 4, !tbaa !7
  store <4 x i32> %i.cr, ptr %i.ct, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !324

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0107, %n.vec
  br i1 %cmp.n, label %.loopexit151, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.2157.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter265 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.2157.prol = phi i64 [ %i.db, %scalar.ph.prol ], [ %.2157.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cv = getelementptr [4 x i8], ptr %i.ch, i64 %.2157.prol
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = getelementptr [4 x i8], ptr %i.ci, i64 %.2157.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = xor i32 %i.cy, %i.cw
  %i.da = getelementptr [4 x i8], ptr %i.cj, i64 %.2157.prol
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !7
  %i.db = add nuw nsw i64 %.2157.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter265
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !325

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.2157.unr = phi i64 [ %.2157.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %i.dc = sub nsw i64 %.2157.ph, %.0107
  %i.dd = icmp ugt i64 %i.dc, -4
  br i1 %i.dd, label %.loopexit151, label %scalar.ph

.preheader152:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151.thread, label %.lr.ph159

.lr.ph159:                                        ; preds = %.preheader152
  %i.de = getelementptr i8, ptr %.1112, i64 24    ; 6 uses
  %i.df = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.dg = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check224 = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.memcheck219

vector.memcheck219:                               ; preds = %.lr.ph159
  %i.dh = sub i64 %i.bz, %.1114198
  %diff.check220 = icmp ult i64 %i.dh, 32
  %i.di = sub i64 %i.bz, %.1112199
  %diff.check221 = icmp ult i64 %i.di, 32
  %conflict.rdx222 = or i1 %diff.check220, %diff.check221
  br i1 %conflict.rdx222, label %scalar.ph223.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %vector.memcheck219
  %n.vec227 = and i64 %.0107, 2305843009213693944 ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph225
  %index229 = phi i64 [ 0, %vector.ph225 ], [ %index.next234, %vector.body228 ] ; 4 uses
  %i.dj = getelementptr [4 x i8], ptr %i.de, i64 %index229 ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load230 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !7
  %wide.load231 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !7
  %i.dl = getelementptr [4 x i8], ptr %i.df, i64 %index229 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %wide.load232 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !7
  %wide.load233 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !7
  %i.dn = or <4 x i32> %wide.load232, %wide.load230
  %i.do = or <4 x i32> %wide.load233, %wide.load231
  %i.dp = getelementptr [4 x i8], ptr %i.dg, i64 %index229 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !7
  store <4 x i32> %i.do, ptr %i.dq, align 4, !tbaa !7
  %index.next234 = add nuw i64 %index229, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.dr, label %middle.block235, label %vector.body228, !llvm.loop !326

middle.block235:                                  ; preds = %vector.body228
  %cmp.n236 = icmp eq i64 %.0107, %n.vec227
  br i1 %cmp.n236, label %.loopexit151.thread, label %scalar.ph223.preheader

scalar.ph223.preheader:                           ; preds = %vector.memcheck219, %.lr.ph159, %middle.block235
  %.1158.ph = phi i64 [ 0, %vector.memcheck219 ], [ 0, %.lr.ph159 ], [ %n.vec227, %middle.block235 ] ; 3 uses
  %xtraiter270 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %scalar.ph223.prol.loopexit, label %scalar.ph223.prol

scalar.ph223.prol:                                ; preds = %scalar.ph223.preheader, %scalar.ph223.prol
  %.1158.prol = phi i64 [ %i.dy, %scalar.ph223.prol ], [ %.1158.ph, %scalar.ph223.preheader ] ; 4 uses
  %prol.iter272 = phi i64 [ %prol.iter272.next, %scalar.ph223.prol ], [ 0, %scalar.ph223.preheader ]
  %i.ds = getelementptr [4 x i8], ptr %i.de, i64 %.1158.prol
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = getelementptr [4 x i8], ptr %i.df, i64 %.1158.prol
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = or i32 %i.dv, %i.dt
  %i.dx = getelementptr [4 x i8], ptr %i.dg, i64 %.1158.prol
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !7
  %i.dy = add nuw nsw i64 %.1158.prol, 1          ; 2 uses
  %prol.iter272.next = add i64 %prol.iter272, 1   ; 2 uses
  %prol.iter272.cmp.not = icmp eq i64 %prol.iter272.next, %xtraiter270
  br i1 %prol.iter272.cmp.not, label %scalar.ph223.prol.loopexit, label %scalar.ph223.prol, !llvm.loop !327

scalar.ph223.prol.loopexit:                       ; preds = %scalar.ph223.prol, %scalar.ph223.preheader
  %.1158.unr = phi i64 [ %.1158.ph, %scalar.ph223.preheader ], [ %i.dy, %scalar.ph223.prol ]
  %i.dz = sub nsw i64 %.1158.ph, %.0107
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %.loopexit151.thread, label %scalar.ph223

.preheader150:                                    ; preds = %bb.x
  br i1 %.not168, label %.loopexit151.thread, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader150
  %i.eb = getelementptr i8, ptr %.1112, i64 24    ; 6 uses
  %i.ec = getelementptr i8, ptr %.1114, i64 24    ; 6 uses
  %i.ed = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %min.iters.check243 = icmp samesign ult i64 %.0107, 12
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %.lr.ph162
  %i.ee = sub i64 %i.bz, %.1114198
  %diff.check239 = icmp ult i64 %i.ee, 32
  %i.ef = sub i64 %i.bz, %.1112199
  %diff.check240 = icmp ult i64 %i.ef, 32
  %conflict.rdx241 = or i1 %diff.check239, %diff.check240
  br i1 %conflict.rdx241, label %scalar.ph242.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck238
  %n.vec246 = and i64 %.0107, 2305843009213693944 ; 3 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph244
  %index248 = phi i64 [ 0, %vector.ph244 ], [ %index.next253, %vector.body247 ] ; 4 uses
  %i.eg = getelementptr [4 x i8], ptr %i.eb, i64 %index248 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %wide.load249 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !7
  %wide.load250 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !7
  %i.ei = getelementptr [4 x i8], ptr %i.ec, i64 %index248 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 16
  %wide.load251 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !7
  %wide.load252 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !7
  %i.ek = and <4 x i32> %wide.load251, %wide.load249
  %i.el = and <4 x i32> %wide.load252, %wide.load250
  %i.em = getelementptr [4 x i8], ptr %i.ed, i64 %index248 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16
  store <4 x i32> %i.ek, ptr %i.em, align 4, !tbaa !7
  store <4 x i32> %i.el, ptr %i.en, align 4, !tbaa !7
  %index.next253 = add nuw i64 %index248, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next253, %n.vec246
  br i1 %i.eo, label %middle.block254, label %vector.body247, !llvm.loop !328

middle.block254:                                  ; preds = %vector.body247
  %cmp.n255 = icmp eq i64 %.0107, %n.vec246
  br i1 %cmp.n255, label %.loopexit151.thread, label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %vector.memcheck238, %.lr.ph162, %middle.block254
  %.0105161.ph = phi i64 [ 0, %vector.memcheck238 ], [ 0, %.lr.ph162 ], [ %n.vec246, %middle.block254 ] ; 3 uses
  %xtraiter273 = and i64 %.0107, 3                ; 2 uses
  %lcmp.mod274.not = icmp eq i64 %xtraiter273, 0
  br i1 %lcmp.mod274.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol

scalar.ph242.prol:                                ; preds = %scalar.ph242.preheader, %scalar.ph242.prol
  %.0105161.prol = phi i64 [ %i.ev, %scalar.ph242.prol ], [ %.0105161.ph, %scalar.ph242.preheader ] ; 4 uses
  %prol.iter275 = phi i64 [ %prol.iter275.next, %scalar.ph242.prol ], [ 0, %scalar.ph242.preheader ]
  %i.ep = getelementptr [4 x i8], ptr %i.eb, i64 %.0105161.prol
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !7
  %i.er = getelementptr [4 x i8], ptr %i.ec, i64 %.0105161.prol
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = and i32 %i.es, %i.eq
  %i.eu = getelementptr [4 x i8], ptr %i.ed, i64 %.0105161.prol
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !7
  %i.ev = add nuw nsw i64 %.0105161.prol, 1       ; 2 uses
  %prol.iter275.next = add i64 %prol.iter275, 1   ; 2 uses
  %prol.iter275.cmp.not = icmp eq i64 %prol.iter275.next, %xtraiter273
  br i1 %prol.iter275.cmp.not, label %scalar.ph242.prol.loopexit, label %scalar.ph242.prol, !llvm.loop !329

scalar.ph242.prol.loopexit:                       ; preds = %scalar.ph242.prol, %scalar.ph242.preheader
  %.0105161.unr = phi i64 [ %.0105161.ph, %scalar.ph242.preheader ], [ %i.ev, %scalar.ph242.prol ]
  %i.ew = sub nsw i64 %.0105161.ph, %.0107
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %.loopexit151.thread, label %scalar.ph242

scalar.ph242:                                     ; preds = %scalar.ph242.prol.loopexit, %scalar.ph242
  %.0105161 = phi i64 [ %i.fz, %scalar.ph242 ], [ %.0105161.unr, %scalar.ph242.prol.loopexit ] ; 7 uses
  %i.ey = getelementptr [4 x i8], ptr %i.eb, i64 %.0105161
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = getelementptr [4 x i8], ptr %i.ec, i64 %.0105161
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !7
  %i.fc = and i32 %i.fb, %i.ez
  %i.fd = getelementptr [4 x i8], ptr %i.ed, i64 %.0105161
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = add nuw nsw i64 %.0105161, 1            ; 3 uses
  %i.ff = getelementptr [4 x i8], ptr %i.eb, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  %i.fh = getelementptr [4 x i8], ptr %i.ec, i64 %i.fe
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %i.fj = and i32 %i.fi, %i.fg
  %i.fk = getelementptr [4 x i8], ptr %i.ed, i64 %i.fe
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !7
  %i.fl = add nuw nsw i64 %.0105161, 2            ; 3 uses
  %i.fm = getelementptr [4 x i8], ptr %i.eb, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7
  %i.fo = getelementptr [4 x i8], ptr %i.ec, i64 %i.fl
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = and i32 %i.fp, %i.fn
  %i.fr = getelementptr [4 x i8], ptr %i.ed, i64 %i.fl
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !7
  %i.fs = add nuw nsw i64 %.0105161, 3            ; 3 uses
  %i.ft = getelementptr [4 x i8], ptr %i.eb, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !7
  %i.fv = getelementptr [4 x i8], ptr %i.ec, i64 %i.fs
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !7
  %i.fx = and i32 %i.fw, %i.fu
  %i.fy = getelementptr [4 x i8], ptr %i.ed, i64 %i.fs
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !7
  %i.fz = add nuw nsw i64 %.0105161, 4            ; 2 uses
  %exitcond175.not.3 = icmp eq i64 %i.fz, %.0107
  br i1 %exitcond175.not.3, label %.loopexit151.thread, label %scalar.ph242, !llvm.loop !330

scalar.ph223:                                     ; preds = %scalar.ph223.prol.loopexit, %scalar.ph223
  %.1158 = phi i64 [ %i.hb, %scalar.ph223 ], [ %.1158.unr, %scalar.ph223.prol.loopexit ] ; 7 uses
  %i.ga = getelementptr [4 x i8], ptr %i.de, i64 %.1158
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  %i.gc = getelementptr [4 x i8], ptr %i.df, i64 %.1158
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7
  %i.ge = or i32 %i.gd, %i.gb
  %i.gf = getelementptr [4 x i8], ptr %i.dg, i64 %.1158
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !7
  %i.gg = add nuw nsw i64 %.1158, 1               ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %i.de, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = getelementptr [4 x i8], ptr %i.df, i64 %i.gg
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = or i32 %i.gk, %i.gi
  %i.gm = getelementptr [4 x i8], ptr %i.dg, i64 %i.gg
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !7
  %i.gn = add nuw nsw i64 %.1158, 2               ; 3 uses
  %i.go = getelementptr [4 x i8], ptr %i.de, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = getelementptr [4 x i8], ptr %i.df, i64 %i.gn
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = or i32 %i.gr, %i.gp
  %i.gt = getelementptr [4 x i8], ptr %i.dg, i64 %i.gn
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !7
  %i.gu = add nuw nsw i64 %.1158, 3               ; 3 uses
  %i.gv = getelementptr [4 x i8], ptr %i.de, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7
  %i.gx = getelementptr [4 x i8], ptr %i.df, i64 %i.gu
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = or i32 %i.gy, %i.gw
  %i.ha = getelementptr [4 x i8], ptr %i.dg, i64 %i.gu
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !7
  %i.hb = add nuw nsw i64 %.1158, 4               ; 2 uses
  %exitcond174.not.3 = icmp eq i64 %i.hb, %.0107
  br i1 %exitcond174.not.3, label %.loopexit151.thread, label %scalar.ph223, !llvm.loop !331

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.2157 = phi i64 [ %i.id, %scalar.ph ], [ %.2157.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.hc = getelementptr [4 x i8], ptr %i.ch, i64 %.2157
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !7
  %i.he = getelementptr [4 x i8], ptr %i.ci, i64 %.2157
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %i.hg = xor i32 %i.hf, %i.hd
  %i.hh = getelementptr [4 x i8], ptr %i.cj, i64 %.2157
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !7
  %i.hi = add nuw nsw i64 %.2157, 1               ; 3 uses
  %i.hj = getelementptr [4 x i8], ptr %i.ch, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !7
  %i.hl = getelementptr [4 x i8], ptr %i.ci, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !7
  %i.hn = xor i32 %i.hm, %i.hk
  %i.ho = getelementptr [4 x i8], ptr %i.cj, i64 %i.hi
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !7
  %i.hp = add nuw nsw i64 %.2157, 2               ; 3 uses
  %i.hq = getelementptr [4 x i8], ptr %i.ch, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !7
  %i.hs = getelementptr [4 x i8], ptr %i.ci, i64 %i.hp
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = xor i32 %i.ht, %i.hr
  %i.hv = getelementptr [4 x i8], ptr %i.cj, i64 %i.hp
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !7
  %i.hw = add nuw nsw i64 %.2157, 3               ; 3 uses
  %i.hx = getelementptr [4 x i8], ptr %i.ch, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !7
  %i.hz = getelementptr [4 x i8], ptr %i.ci, i64 %i.hw
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !7
  %i.ib = xor i32 %i.ia, %i.hy
  %i.ic = getelementptr [4 x i8], ptr %i.cj, i64 %i.hw
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !7
  %i.id = add nuw nsw i64 %.2157, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.id, %.0107
  br i1 %exitcond.not.3, label %.loopexit151, label %scalar.ph, !llvm.loop !332

bb.y:                                             ; preds = %bb.x
  unreachable

.loopexit151:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader154
  br i1 %i.al, label %.preheader, label %.loopexit151.thread

.preheader:                                       ; preds = %.loopexit151
  %i.ie = icmp samesign ult i64 %.0107, %.0106
  br i1 %i.ie, label %.lr.ph165, label %.loopexit

.lr.ph165:                                        ; preds = %.preheader
  %i.if = getelementptr i8, ptr %.1112, i64 24    ; 6 uses
  %i.ig = getelementptr i8, ptr %i.by, i64 24     ; 6 uses
  %i.ih = sub nuw nsw i64 %.0106, %.0107          ; 3 uses
  %min.iters.check207 = icmp ult i64 %i.ih, 8
  %i.ii = sub i64 %i.bz, %.1112199
  %diff.check205 = icmp ult i64 %i.ii, 32
  %or.cond = or i1 %min.iters.check207, %diff.check205
  br i1 %or.cond, label %scalar.ph206.preheader, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph165
  %n.vec210 = and i64 %i.ih, -8                   ; 3 uses
  %i.ij = add nsw i64 %.0107, %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph208
  %index212 = phi i64 [ 0, %vector.ph208 ], [ %index.next215, %vector.body211 ] ; 2 uses
  %i.ik = add i64 %.0107, %index212               ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.if, i64 %i.ik ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %wide.load213 = load <4 x i32>, ptr %i.il, align 4, !tbaa !7
  %wide.load214 = load <4 x i32>, ptr %i.im, align 4, !tbaa !7
  %i.in = xor <4 x i32> %wide.load213, splat (i32 1073741823)
  %i.io = xor <4 x i32> %wide.load214, splat (i32 1073741823)
  %i.ip = getelementptr [4 x i8], ptr %i.ig, i64 %i.ik ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 16
  store <4 x i32> %i.in, ptr %i.ip, align 4, !tbaa !7
  store <4 x i32> %i.io, ptr %i.iq, align 4, !tbaa !7
  %index.next215 = add nuw i64 %index212, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next215, %n.vec210
  br i1 %i.ir, label %middle.block216, label %vector.body211, !llvm.loop !333

middle.block216:                                  ; preds = %vector.body211
  %cmp.n217 = icmp eq i64 %i.ih, %n.vec210
  br i1 %cmp.n217, label %.loopexit, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph165, %middle.block216
  %.4164.ph = phi i64 [ %.0107, %.lr.ph165 ], [ %i.ij, %middle.block216 ] ; 4 uses
  %i.is = sub i64 %.0106, %.4164.ph
  %xtraiter267 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod268.not = icmp eq i64 %xtraiter267, 0
  br i1 %lcmp.mod268.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol

scalar.ph206.prol:                                ; preds = %scalar.ph206.preheader, %scalar.ph206.prol
  %.4164.prol = phi i64 [ %i.ix, %scalar.ph206.prol ], [ %.4164.ph, %scalar.ph206.preheader ] ; 3 uses
  %prol.iter269 = phi i64 [ %prol.iter269.next, %scalar.ph206.prol ], [ 0, %scalar.ph206.preheader ]
  %i.it = getelementptr [4 x i8], ptr %i.if, i64 %.4164.prol
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !7
  %i.iv = xor i32 %i.iu, 1073741823
  %i.iw = getelementptr [4 x i8], ptr %i.ig, i64 %.4164.prol
  store i32 %i.iv, ptr %i.iw, align 4, !tbaa !7
  %i.ix = add nuw nsw i64 %.4164.prol, 1          ; 2 uses
  %prol.iter269.next = add i64 %prol.iter269, 1   ; 2 uses
  %prol.iter269.cmp.not = icmp eq i64 %prol.iter269.next, %xtraiter267
  br i1 %prol.iter269.cmp.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol, !llvm.loop !334

scalar.ph206.prol.loopexit:                       ; preds = %scalar.ph206.prol, %scalar.ph206.preheader
  %.4164.unr = phi i64 [ %.4164.ph, %scalar.ph206.preheader ], [ %i.ix, %scalar.ph206.prol ]
  %i.iy = sub i64 %.4164.ph, %.0106
  %i.iz = icmp ugt i64 %i.iy, -4
  br i1 %i.iz, label %.loopexit, label %scalar.ph206

scalar.ph206:                                     ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206
  %.4164 = phi i64 [ %i.jt, %scalar.ph206 ], [ %.4164.unr, %scalar.ph206.prol.loopexit ] ; 6 uses
  %i.ja = getelementptr [4 x i8], ptr %i.if, i64 %.4164
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = xor i32 %i.jb, 1073741823
  %i.jd = getelementptr [4 x i8], ptr %i.ig, i64 %.4164
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !7
  %i.je = add nuw nsw i64 %.4164, 1               ; 2 uses
  %i.jf = getelementptr [4 x i8], ptr %i.if, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !7
  %i.jh = xor i32 %i.jg, 1073741823
  %i.ji = getelementptr [4 x i8], ptr %i.ig, i64 %i.je
  store i32 %i.jh, ptr %i.ji, align 4, !tbaa !7
  %i.jj = add nuw nsw i64 %.4164, 2               ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.if, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !7
  %i.jm = xor i32 %i.jl, 1073741823
  %i.jn = getelementptr [4 x i8], ptr %i.ig, i64 %i.jj
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !7
  %i.jo = add nuw nsw i64 %.4164, 3               ; 2 uses
  %i.jp = getelementptr [4 x i8], ptr %i.if, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !7
  %i.jr = xor i32 %i.jq, 1073741823
  %i.js = getelementptr [4 x i8], ptr %i.ig, i64 %i.jo
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !7
  %i.jt = add nuw nsw i64 %.4164, 4               ; 2 uses
  %exitcond176.not.3 = icmp eq i64 %i.jt, %.0106
  br i1 %exitcond176.not.3, label %.loopexit, label %scalar.ph206, !llvm.loop !335

.loopexit151.thread:                              ; preds = %scalar.ph223.prol.loopexit, %scalar.ph223, %scalar.ph242.prol.loopexit, %scalar.ph242, %middle.block235, %middle.block254, %.preheader150, %.preheader152, %.loopexit151
  %.3193 = phi i64 [ %.0107, %.loopexit151 ], [ 0, %.preheader152 ], [ 0, %.preheader150 ], [ %.0107, %middle.block254 ], [ %.0107, %middle.block235 ], [ %.0107, %scalar.ph242.prol.loopexit ], [ %.0107, %scalar.ph242 ], [ %.0107, %scalar.ph223 ], [ %.0107, %scalar.ph223.prol.loopexit ] ; 4 uses
  %i.ju = icmp samesign ult i64 %.3193, %.0106
  br i1 %i.ju, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %.loopexit151.thread
  %i.jv = getelementptr i8, ptr %i.by, i64 24
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %.3193
  %i.jx = getelementptr i8, ptr %.1112, i64 24
  %i.jy = getelementptr [4 x i8], ptr %i.jx, i64 %.3193
  %i.jz = sub nuw nsw i64 %.0106, %.3193
  %i.ka = shl nsw i64 %i.jz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jw, ptr align 4 %i.jy, i64 %i.ka, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block216, %.preheader, %.loopexit151.thread, %bb.z
  %.not = icmp eq i32 %.0109, 0
  br i1 %.not, label %v_complement.exit141, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.kb = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !25 ; 2 uses
  %i.kd = and i64 %i.kc, 3
  %i.ke = sub nsw i64 2, %i.kd
  %i.kf = and i64 %i.kc, -8
  %i.kg = and i64 %i.ke, 4294967295
  %i.kh = or i64 %i.kg, %i.kf
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !25
  %i.ki = getelementptr i8, ptr %i.by, i64 24     ; 4 uses
  %i.kj = getelementptr [4 x i8], ptr %i.ki, i64 %.0106
  store i32 1073741823, ptr %i.kj, align 4, !tbaa !7
  %i.kk = add nsw i64 %.0106, 1                   ; 2 uses
  %i.kl = icmp eq i64 %.0106, 0
  br i1 %i.kl, label %.lr.ph.i137.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter279 = and i64 %i.kk, -2
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.new
  %.011.i138 = phi i32 [ 1, %.new ], [ %i.ky, %.lr.ph.i137 ]
  %.0910.i139 = phi i64 [ 0, %.new ], [ %i.kz, %.lr.ph.i137 ] ; 3 uses
  %niter280 = phi i64 [ 0, %.new ], [ %niter280.next.1, %.lr.ph.i137 ]
  %i.km = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !7
  %i.ko = xor i32 %i.kn, 1073741823
  %i.kp = add i32 %i.ko, %.011.i138               ; 2 uses
  %i.kq = and i32 %i.kp, 1073741823
  store i32 %i.kq, ptr %i.km, align 4, !tbaa !7
  %i.kr = lshr i32 %i.kp, 30
  %i.ks = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139
  %i.kt = getelementptr i8, ptr %i.ks, i64 4      ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = xor i32 %i.ku, 1073741823
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %i.kx = and i32 %i.kw, 1073741823
  store i32 %i.kx, ptr %i.kt, align 4, !tbaa !7
  %i.ky = lshr i32 %i.kw, 30                      ; 2 uses
  %i.kz = add nuw nsw i64 %.0910.i139, 2          ; 2 uses
  %niter280.next.1 = add i64 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %v_complement.exit141.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !323

v_complement.exit141.loopexit.unr-lcssa:          ; preds = %.lr.ph.i137
  %i.la = and i64 %.0106, 1
  %lcmp.mod277.not.not = icmp eq i64 %i.la, 0
  br i1 %lcmp.mod277.not.not, label %.lr.ph.i137.epil.preheader, label %v_complement.exit141

.lr.ph.i137.epil.preheader:                       ; preds = %v_complement.exit141.loopexit.unr-lcssa, %bb.aa
  %.011.i138.epil.init = phi i32 [ 1, %bb.aa ], [ %i.ky, %v_complement.exit141.loopexit.unr-lcssa ]
  %.0910.i139.epil.init = phi i64 [ 0, %bb.aa ], [ %i.kz, %v_complement.exit141.loopexit.unr-lcssa ]
  %lcmp.mod278 = trunc i64 %i.kk to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.lb = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139.epil.init ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !7
  %i.ld = xor i32 %i.lc, -1
  %i.le = add i32 %.011.i138.epil.init, %i.ld
  %i.lf = and i32 %i.le, 1073741823
  store i32 %i.lf, ptr %i.lb, align 4, !tbaa !7
  br label %v_complement.exit141

v_complement.exit141:                             ; preds = %.lr.ph.i137.epil.preheader, %v_complement.exit141.loopexit.unr-lcssa, %.loopexit
  %.not.i142 = icmp eq ptr %.0104, null
  br i1 %.not.i142, label %Py_XDECREF.exit144, label %bb.ab

bb.ab:                                            ; preds = %v_complement.exit141
  %i.lg = load i32, ptr %.0104, align 8, !tbaa !24 ; 2 uses
  %.not.i.i143 = icmp sgt i32 %i.lg, -1
  br i1 %.not.i.i143, label %bb.ac, label %Py_XDECREF.exit144

bb.ac:                                            ; preds = %bb.ab
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %.0104, align 8, !tbaa !24
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.ad, label %Py_XDECREF.exit144

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit144

Py_XDECREF.exit144:                               ; preds = %v_complement.exit141, %bb.ab, %bb.ac, %bb.ad
  %.not.i145 = icmp eq ptr %.0, null
  br i1 %.not.i145, label %Py_XDECREF.exit147, label %bb.ae

bb.ae:                                            ; preds = %Py_XDECREF.exit144
  %i.lj = load i32, ptr %.0, align 8, !tbaa !24   ; 2 uses
  %.not.i.i146 = icmp sgt i32 %i.lj, -1
  br i1 %.not.i.i146, label %bb.af, label %Py_XDECREF.exit147

bb.af:                                            ; preds = %bb.ae
  %i.lk = add nsw i32 %i.lj, -1                   ; 2 uses
  store i32 %i.lk, ptr %.0, align 8, !tbaa !24
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.ag, label %Py_XDECREF.exit147

bb.ag:                                            ; preds = %bb.af
end_hunk_1
begin_hunk_2_@int___sizeof__:bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = lshr i64 %.val4.i, 3
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr i8, ptr %.val6.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !353
  %i.f = getelementptr i8, ptr %.val6.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !354
  %i.h = mul i64 %i.g, %spec.select.i
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i)
  br label %.split3

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.l, null
  %spec.select = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14264), ptr null
  br label %.split3

.split3:                                          ; preds = %bb.b, %.split
  %.0 = phi ptr [ %spec.select, %bb.b ], [ %i.k, %.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @int_is_integer(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr @_Py_TrueStruct
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_Equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Bytes(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

declare i32 @_PyLong_FormatAdvancedWriter(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @_PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @long_long_getter(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !24
  br label %long_long.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.f, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val24.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nsw i64 %i.k, 5
  %i.n = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 160
  br label %long_long.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.p = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.q = tail call fastcc ptr @long_alloc(i64 noundef %i.p), !inline_history !234 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %long_long.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.s = and i64 %.val24.i.i, -5
  %i.t = getelementptr i8, ptr %i.q, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr i8, ptr %i.q, i64 24
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.u, ptr readonly align 8 %i.v, i64 %i.w, i1 false)
  br label %long_long.exit

long_long.exit:                                   ; preds = %bb.b, %bb.c, %bb.f, %.thread.i.i, %bb.g
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.o, %bb.f ], [ %i.q, %bb.g ], [ null, %.thread.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get0(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get1(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_new_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyLong_Type
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @long_new_impl(ptr noundef nonnull @PyLong_Type, ptr noundef %1, ptr noundef %2), !inline_history !355 ; 10 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %long_subtype_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.e = lshr i64 %.val.i, 3                      ; 3 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1) ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !356
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %spec.store.select.i) #16, !inline_history !355 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i24.i, label %bb.e, label %long_subtype_new.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %long_subtype_new.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !355
  br label %long_subtype_new.exit

bb.g:                                             ; preds = %bb.c
  %i.m = ptrtoaddr ptr %i.h to i64
  %i.n = load i64, ptr %i.d, align 8, !tbaa !25
  %i.o = and i64 %i.n, -5
  %i.p = getelementptr i8, ptr %i.h, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.a, i64 24       ; 6 uses
  %i.r = getelementptr i8, ptr %i.h, i64 24       ; 6 uses
  %min.iters.check = icmp ult i64 %.val.i, 64
  %i.s = sub i64 %i.m, %i.b
  %diff.check = icmp ult i64 %i.s, 32
  %or.cond64 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %spec.store.select.i, 2305843009213693944 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %wide.load63 = load <4 x i32>, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !7
  store <4 x i32> %wide.load63, ptr %i.w, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.0.i51.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.store.select.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i51.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.0.i51.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = add nuw nsw i64 %.0.i51.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !358

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i51.unr = phi i64 [ %.0.i51.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.0.i51.ph, %spec.store.select.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i51 = phi i64 [ %i.at, %scalar.ph ], [ %.0.i51.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %i.ah = add nuw nsw i64 %.0.i51, 1              ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = getelementptr [4 x i8], ptr %i.r, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !7
  %i.al = add nuw nsw i64 %.0.i51, 2              ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.q, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr [4 x i8], ptr %i.r, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !7
  %i.ap = add nuw nsw i64 %.0.i51, 3              ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr [4 x i8], ptr %i.r, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %i.at = add nuw nsw i64 %.0.i51, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.e, %i.at
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !359

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = load i32, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i, label %bb.h, label %long_subtype_new.exit

bb.h:                                             ; preds = %.loopexit
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.a, align 8, !tbaa !24
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %long_subtype_new.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !355
  br label %long_subtype_new.exit

bb.j:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %1, null
  %.not37 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not37, label %long_subtype_new.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.96) #16
  br label %long_subtype_new.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = tail call ptr @PyNumber_Long(ptr noundef nonnull %1) #16
  br label %long_subtype_new.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #16 ; 6 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call ptr @PyErr_Occurred() #16
  %.not32 = icmp eq ptr %i.bc, null
  br i1 %.not32, label %bb.q, label %long_subtype_new.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = icmp ne i64 %i.ba, 0
  %i.be = icmp slt i64 %i.ba, 2
  %or.cond = and i1 %i.bd, %i.be
  %i.bf = icmp sgt i64 %i.ba, 36
  %or.cond3 = or i1 %i.bf, %or.cond
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.97) #16
  br label %long_subtype_new.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val39 = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 3 uses
  %i.bi = getelementptr i8, ptr %.val39, i64 168
  %.val41 = load i64, ptr %i.bi, align 8, !tbaa !35
  %i.bj = and i64 %.val41, 268435456
  %.not33 = icmp eq i64 %i.bj, 0
  br i1 %.not33, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = trunc nuw nsw i64 %i.ba to i32
  %i.bl = tail call ptr @PyLong_FromUnicodeObject(ptr noundef nonnull %1, i32 noundef %i.bk)
  br label %long_subtype_new.exit

bb.u:                                             ; preds = %bb.s
  %.not.i = icmp eq ptr %.val39, @PyByteArray_Type
  br i1 %.not.i, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit

PyObject_TypeCheck.exit:                          ; preds = %bb.u
  %i.bm = tail call i32 @PyType_IsSubtype(ptr noundef %.val39, ptr noundef nonnull @PyByteArray_Type) #16
  %.not49 = icmp eq i32 %i.bm, 0
  %.val42.pre = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 3 uses
  br i1 %.not49, label %bb.v, label %PyObject_TypeCheck.exit.thread

bb.v:                                             ; preds = %PyObject_TypeCheck.exit
  %i.bn = getelementptr i8, ptr %.val42.pre, i64 168
  %.val40 = load i64, ptr %i.bn, align 8, !tbaa !35
  %i.bo = and i64 %.val40, 134217728
  %.not35 = icmp eq i64 %i.bo, 0
  br i1 %.not35, label %bb.y, label %PyObject_TypeCheck.exit.thread

PyObject_TypeCheck.exit.thread:                   ; preds = %bb.v, %PyObject_TypeCheck.exit
  %.not.i45 = icmp eq ptr %.val42.pre, @PyByteArray_Type
  br i1 %.not.i45, label %PyObject_TypeCheck.exit46.thread, label %PyObject_TypeCheck.exit46

PyObject_TypeCheck.exit46:                        ; preds = %PyObject_TypeCheck.exit.thread
  %i.bp = tail call i32 @PyType_IsSubtype(ptr noundef %.val42.pre, ptr noundef nonnull @PyByteArray_Type) #16
  %.not50 = icmp eq i32 %i.bp, 0
  br i1 %.not50, label %bb.w, label %PyObject_TypeCheck.exit46.thread

PyObject_TypeCheck.exit46.thread:                 ; preds = %bb.u, %PyObject_TypeCheck.exit.thread, %PyObject_TypeCheck.exit46
  %i.bq = getelementptr i8, ptr %1, i64 40
  %.val44 = load ptr, ptr %i.bq, align 8, !tbaa !360
  br label %bb.x

bb.w:                                             ; preds = %PyObject_TypeCheck.exit46
  %i.br = getelementptr i8, ptr %1, i64 32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %PyObject_TypeCheck.exit46.thread
  %.0 = phi ptr [ %.val44, %PyObject_TypeCheck.exit46.thread ], [ %i.br, %bb.w ]
  %i.bs = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.bs, align 8, !tbaa !249
  %i.bt = trunc nuw nsw i64 %i.ba to i32
  %i.bu = tail call ptr @_PyLong_FromBytes(ptr noundef %.0, i64 noundef %.val, i32 noundef %i.bt)
  br label %long_subtype_new.exit

bb.y:                                             ; preds = %bb.v
  %i.bv = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.bv, ptr noundef nonnull @.str.98) #16
  br label %long_subtype_new.exit

long_subtype_new.exit:                            ; preds = %bb.k, %bb.b, %bb.f, %bb.e, %bb.d, %bb.i, %bb.h, %.loopexit, %bb.p, %bb.y, %bb.x, %bb.t, %bb.r, %bb.n, %bb.l
  %.027 = phi ptr [ null, %bb.p ], [ null, %bb.l ], [ %i.h, %.loopexit ], [ %i.az, %bb.n ], [ null, %bb.y ], [ null, %bb.r ], [ %i.bl, %bb.t ], [ %i.bu, %bb.x ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ %i.h, %bb.i ], [ %i.h, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.k ]
  ret ptr %.027
}

declare ptr @PyNumber_Long(ptr noundef) local_unnamed_addr #3
end_hunk_2
