inline.NumInlined: 43
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mult:bb.a
  %i.bj = sext i32 %i.i to i64
  %i.bk = getelementptr [4 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %spec.select, i64 24 ; 3 uses
  %i.bm = sext i32 %i.k to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %.lr.ph72, label %.preheader

.preheader:                                       ; preds = %bb.k, %._crit_edge
  %i.bp = icmp sgt i32 %i.l, 0
  br i1 %i.bp, label %.lr.ph75, label %.critedge

.lr.ph72:                                         ; preds = %._crit_edge, %bb.k
  %.05570 = phi ptr [ %i.cg, %bb.k ], [ %i.aw, %._crit_edge ] ; 2 uses
  %.05769 = phi ptr [ %i.bq, %bb.k ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bq = getelementptr i8, ptr %.05769, i64 4    ; 2 uses
  %i.br = load i32, ptr %.05769, align 4          ; 2 uses
  %.not64 = icmp eq i32 %i.br, 0
  br i1 %.not64, label %bb.k, label %.preheader66

.preheader66:                                     ; preds = %.lr.ph72
  %i.bs = zext i32 %i.br to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader66, %bb.i
  %.160 = phi ptr [ %i.bt, %bb.i ], [ %i.bi, %.preheader66 ] ; 2 uses
  %.056 = phi ptr [ %i.cd, %bb.i ], [ %.05570, %.preheader66 ] ; 3 uses
  %.053 = phi i64 [ %i.cb, %bb.i ], [ 0, %.preheader66 ]
  %i.bt = getelementptr i8, ptr %.160, i64 4      ; 2 uses
  %i.bu = load i32, ptr %.160, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.bs
  %i.bx = load i32, ptr %.056, align 4
  %i.by = zext i32 %i.bx to i64
  %i.bz = add nuw nsw i64 %.053, %i.by
  %i.ca = add nuw i64 %i.bz, %i.bw                ; 2 uses
  %i.cb = lshr i64 %i.ca, 32                      ; 2 uses
  %i.cc = trunc i64 %i.ca to i32
  %i.cd = getelementptr i8, ptr %.056, i64 4      ; 2 uses
  store i32 %i.cc, ptr %.056, align 4
  %i.ce = icmp ult ptr %i.bt, %i.bk
  br i1 %i.ce, label %bb.i, label %bb.j, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.cf = trunc nuw i64 %i.cb to i32
  store i32 %i.cf, ptr %i.cd, align 4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph72, %bb.j
  %i.cg = getelementptr i8, ptr %.05570, i64 4
  %i.ch = icmp ult ptr %i.bq, %i.bn
  br i1 %i.ch, label %.lr.ph72, label %.preheader, !llvm.loop !15

.lr.ph75:                                         ; preds = %.preheader, %bb.l
  %.174 = phi ptr [ %i.ci, %bb.l ], [ %i.ay, %.preheader ]
  %.06173 = phi i32 [ %i.ck, %bb.l ], [ %i.l, %.preheader ] ; 3 uses
  %i.ci = getelementptr i8, ptr %.174, i64 -4     ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph75
  %i.ck = add nsw i32 %.06173, -1
  %i.cl = icmp sgt i32 %.06173, 1
  br i1 %i.cl, label %.lr.ph75, label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph75, %bb.l, %.preheader
  %.061.lcssa = phi i32 [ %i.l, %.preheader ], [ 0, %bb.l ], [ %.06173, %.lr.ph75 ]
  store i32 %.061.lcssa, ptr %i.au, align 4
  ret ptr %.1.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @lshift(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = lshr i32 %1, 5                           ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, %i.b                       ; 4 uses
  %i.h = add i32 %i.g, 1                          ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04151 = phi i32 [ %i.m, %.lr.ph ], [ %i.j, %bb.a ]
  %.04450 = phi i32 [ %i.l, %.lr.ph ], [ %i.d, %bb.a ]
  %i.l = add i32 %.04450, 1                       ; 2 uses
  %i.m = shl i32 %.04151, 1                       ; 2 uses
  %i.n = icmp sgt i32 %i.h, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.044.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.l, %.lr.ph ] ; 5 uses
  %i.o = icmp slt i32 %.044.lcssa, 8
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.p = sext i32 %.044.lcssa to i64
  %i.q = getelementptr [8 x i8], ptr @TI0, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.s, ptr %i.q, align 8
  br label %Balloc.exit

bb.d:                                             ; preds = %._crit_edge
  %i.t = shl nuw i32 1, %.044.lcssa               ; 2 uses
  %i.u = add i32 %i.t, -1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.y = shl nuw nsw i32 1, %.044.lcssa           ; 3 uses
  %i.z = add nsw i32 %i.y, -1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = add nuw nsw i64 %i.ab, 36               ; 2 uses
  %i.ad = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ae = load ptr, ptr @pmem_next, align 8       ; 3 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, ptrtoint (ptr @private_mem to i64)
  %i.ah = ashr exact i64 %i.ag, 3
  %i.ai = add nsw i64 %i.ah, %i.ad
  %i.aj = icmp slt i64 %i.ai, 289
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr [8 x i8], ptr %i.ae, i64 %i.ad
  store ptr %i.ak, ptr @pmem_next, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.al = phi i64 [ %i.ac, %bb.e ], [ %i.x, %bb.d ]
  %i.am = phi i32 [ %i.y, %bb.e ], [ %i.t, %bb.d ]
  %i.an = and i64 %i.al, 34359738360
  %i.ao = tail call noalias ptr @g_malloc(i64 noundef %i.an) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %i.y, %bb.f ], [ %i.am, %bb.g ]
  %.0.i = phi ptr [ %i.ae, %bb.f ], [ %i.ao, %bb.g ] ; 3 uses
  %i.aq = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.044.lcssa, ptr %i.aq, align 8
  %i.ar = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.ap, ptr %i.ar, align 4
  br label %Balloc.exit

Balloc.exit:                                      ; preds = %bb.c, %bb.h
  %.1.i = phi ptr [ %i.r, %bb.c ], [ %.0.i, %bb.h ] ; 5 uses
  %i.as = getelementptr i8, ptr %.1.i, i64 20     ; 2 uses
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %.not57 = icmp eq i32 %i.b, 0
  br i1 %.not57, label %._crit_edge55, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %Balloc.exit
  %i.av = lshr i32 %1, 3
  %i.aw = and i32 %i.av, 268435452
  %i.ax = zext nneg i32 %i.aw to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.au, i8 0, i64 %i.ax, i1 false)
  %i.ay = add nsw i32 %i.b, -1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = getelementptr i8, ptr %.1.i, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.bb, i64 28
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %.lr.ph54.preheader, %Balloc.exit
  %.038.lcssa = phi ptr [ %i.au, %Balloc.exit ], [ %scevgep, %.lr.ph54.preheader ] ; 9 uses
  %.038.lcssa75 = ptrtoaddr ptr %.038.lcssa to i64
  %i.bc = getelementptr i8, ptr %0, i64 24        ; 9 uses
  %i.bd = load i32, ptr %i.e, align 4
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.be ; 2 uses
  %i.bg = and i32 %1, 31                          ; 3 uses
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.preheader.preheader, label %bb.i

.preheader.preheader:                             ; preds = %._crit_edge55
  %i.bh = shl nsw i64 %i.be, 2
  %i.bi = add i64 %i.bh, %i.a
  %i.bj = add i64 %i.bi, 24
  %i.bk = add i64 %i.a, 28
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk)
  %i.bm = sub i64 %i.bl, %i.a
  %i.bn = add i64 %i.bm, -25                      ; 2 uses
  %i.bo = lshr i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bn, 332
  br i1 %min.iters.check, label %.preheader.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.preheader
  %i.bq = shl nsw i64 %i.be, 2
  %i.br = add i64 %i.bq, %i.a
  %i.bs = add i64 %i.br, 24
  %i.bt = add i64 %i.a, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.bt)
  %i.bu = add i64 %umax, -25
  %i.bv = sub i64 %i.bu, %i.a
  %mul = and i64 %i.bv, -4                        ; 2 uses
  %i.bw = getelementptr i8, ptr %.038.lcssa, i64 %mul
  %i.bx = icmp ult ptr %i.bw, %.038.lcssa
  %i.by = getelementptr i8, ptr %i.bc, i64 %mul
  %i.bz = icmp ult ptr %i.by, %i.bc
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %.preheader.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cb = sub i64 %.038.lcssa75, %i.a
  %i.cc = add i64 %i.cb, -25
  %diff.check = icmp ult i64 %i.cc, 31
  br i1 %diff.check, label %.preheader.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bp, 9223372036854775800     ; 3 uses
  %i.cd = shl i64 %n.vec, 2                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bc, i64 %i.cd
  %i.cf = getelementptr i8, ptr %.038.lcssa, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.cg ; 2 uses
  %next.gep76 = getelementptr i8, ptr %.038.lcssa, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load77 = load <4 x i32>, ptr %i.ch, align 4
  %i.ci = getelementptr i8, ptr %next.gep76, i64 16
  store <4 x i32> %wide.load, ptr %next.gep76, align 4
  store <4 x i32> %wide.load77, ptr %i.ci, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader79

.preheader.preheader79:                           ; preds = %vector.memcheck, %vector.scevcheck, %.preheader.preheader, %middle.block
  %.140.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %vector.scevcheck ], [ %i.bc, %.preheader.preheader ], [ %i.ce, %middle.block ]
  %.2.ph = phi ptr [ %.038.lcssa, %vector.memcheck ], [ %.038.lcssa, %vector.scevcheck ], [ %.038.lcssa, %.preheader.preheader ], [ %i.cf, %middle.block ]
  br label %.preheader

bb.i:                                             ; preds = %._crit_edge55
  %i.ck = sub nuw nsw i32 32, %i.bg
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.039 = phi ptr [ %i.bc, %bb.i ], [ %i.cp, %bb.j ] ; 3 uses
  %.1 = phi ptr [ %.038.lcssa, %bb.i ], [ %i.co, %bb.j ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.i ], [ %i.cr, %bb.j ]
  %i.cl = load i32, ptr %.039, align 4
  %i.cm = shl i32 %i.cl, %i.bg
  %i.cn = or i32 %i.cm, %.0
  %i.co = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.cn, ptr %.1, align 4
  %i.cp = getelementptr i8, ptr %.039, i64 4      ; 2 uses
  %i.cq = load i32, ptr %.039, align 4
  %i.cr = lshr i32 %i.cq, %i.ck                   ; 3 uses
  %i.cs = icmp ult ptr %i.cp, %i.bf
  br i1 %i.cs, label %bb.j, label %bb.k, !llvm.loop !21

bb.k:                                             ; preds = %bb.j
  store i32 %i.cr, ptr %i.co, align 4
  %.not47 = icmp eq i32 %i.cr, 0
  %spec.select = select i1 %.not47, i32 %i.g, i32 %i.h
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader79, %.preheader
  %.140 = phi ptr [ %i.ct, %.preheader ], [ %.140.ph, %.preheader.preheader79 ] ; 2 uses
  %.2 = phi ptr [ %i.cv, %.preheader ], [ %.2.ph, %.preheader.preheader79 ] ; 2 uses
  %i.ct = getelementptr i8, ptr %.140, i64 4      ; 2 uses
  %i.cu = load i32, ptr %.140, align 4
  %i.cv = getelementptr i8, ptr %.2, i64 4
  store i32 %i.cu, ptr %.2, align 4
  %i.cw = icmp ult ptr %i.ct, %i.bf
  br i1 %i.cw, label %.preheader, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.k
  %.043 = phi i32 [ %spec.select, %bb.k ], [ %i.g, %middle.block ], [ %i.g, %.preheader ]
  store i32 %.043, ptr %i.as, align 4
  %.not.i48 = icmp eq ptr %0, null
  br i1 %.not.i48, label %Bfree.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.cx = load i32, ptr %i.c, align 8             ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 7
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @g_free(ptr noundef nonnull %0)
  br label %Bfree.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr [8 x i8], ptr @TI0, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  store ptr %i.db, ptr %0, align 8
  store ptr %0, ptr %i.da, align 8
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %.loopexit, %bb.m, %bb.n
  ret ptr %.1.i
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @multadd(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = sext i32 %1 to i64                       ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.e = icmp slt i32 %i.b, 4
  br i1 %i.e, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %smax, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.027 = phi ptr [ %i.c, %.new ], [ %i.ag, %bb.b ] ; 6 uses
  %.026 = phi i64 [ 0, %.new ], [ %i.ae, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.f = load i32, ptr %.027, align 4
  %i.g = zext i32 %i.f to i64
  %i.h = mul nsw i64 %i.g, %i.d
  %i.i = add nsw i64 %i.h, %.026                  ; 2 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc i64 %i.i to i32
  %i.l = getelementptr i8, ptr %.027, i64 4       ; 2 uses
  store i32 %i.k, ptr %.027, align 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %i.o = mul nsw i64 %i.n, %i.d
  %i.p = add nsw i64 %i.o, %i.j                   ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc i64 %i.p to i32
  %i.s = getelementptr i8, ptr %.027, i64 8       ; 2 uses
  store i32 %i.r, ptr %i.l, align 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = zext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, %i.d
  %i.w = add nsw i64 %i.v, %i.q                   ; 2 uses
  %i.x = lshr i64 %i.w, 32
  %i.y = trunc i64 %i.w to i32
  %i.z = getelementptr i8, ptr %.027, i64 12      ; 2 uses
  store i32 %i.y, ptr %i.s, align 4
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.d
  %i.ad = add nsw i64 %i.ac, %i.x                 ; 2 uses
  %i.ae = lshr i64 %i.ad, 32                      ; 3 uses
  %i.af = trunc i64 %i.ad to i32
  %i.ag = getelementptr i8, ptr %.027, i64 16     ; 2 uses
  store i32 %i.af, ptr %i.z, align 4
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !23

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.027.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ag, %.unr-lcssa ]
  %.026.epil.init = phi i64 [ 0, %bb.a ], [ %i.ae, %.unr-lcssa ]
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.027.epil = phi ptr [ %.027.epil.init, %.epil.preheader ], [ %i.an, %bb.c ] ; 3 uses
  %.026.epil = phi i64 [ %.026.epil.init, %.epil.preheader ], [ %i.al, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ah = load i32, ptr %.027.epil, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = mul nsw i64 %i.ai, %i.d
  %i.ak = add nsw i64 %i.aj, %.026.epil           ; 2 uses
  %i.al = lshr i64 %i.ak, 32                      ; 2 uses
  %i.am = trunc i64 %i.ak to i32
  %i.an = getelementptr i8, ptr %.027.epil, i64 4
  store i32 %i.am, ptr %.027.epil, align 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !24

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.ae, %.unr-lcssa ], [ %i.al, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %bb.p, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ao = getelementptr i8, ptr %0, i64 12
  %i.ap = load i32, ptr %i.ao, align 4
  %.not30 = icmp slt i32 %i.b, %i.ap
  br i1 %.not30, label %Bfree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_0
