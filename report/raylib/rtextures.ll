inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 118
begin_hunk_0_@ImageFlipVertical:bb.a
.lr.ph:                                           ; preds = %GetPixelDataSize.exit
  %i.z = load i32, ptr %i.c, align 8
  %i.aa = mul i32 %i.z, %i.q                      ; 4 uses
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = zext nneg i32 %i.x to i64               ; 4 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ad = icmp eq i32 %i.x, 1
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ac, 2147483646
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv31.epil.init = phi i64 [ %i.ac, %.lr.ph ], [ %indvars.iv.next32.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.epil.init
  %i.af = trunc i64 %indvars.iv31.epil.init to i32
  %i.ag = add i32 %i.af, -1
  %i.ah = mul i32 %i.aa, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %.pre, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.aj, i64 %i.ab, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %GetPixelDataSize.exit
  tail call void @free(ptr noundef %.pre) #52
  store ptr %i.w, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv31 = phi i64 [ %i.ac, %.lr.ph.new ], [ %indvars.iv.next32.1, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv
  %i.al = trunc i64 %indvars.iv31 to i32
  %i.am = add i32 %i.al, -1
  %i.an = mul i32 %i.aa, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %.pre, i64 %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %i.ap, i64 %i.ab, i1 false)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ab ; 2 uses
  %indvars.iv.next32.1 = add nsw i64 %indvars.iv31, -2 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next
  %i.ar = trunc nuw nsw i64 %indvars.iv.next32.1 to i32
  %i.as = mul i32 %i.aa, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %.pre, i64 %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.au, i64 %i.ab, i1 false)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %i.ab ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.i

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageFlipHorizontal(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %bb.p [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %GetPixelDataSize.exit
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.l:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.m:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.n:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.o:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.p:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.p, %bb.k, %bb.j, %bb.i
  %i.o = phi i1 [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check = phi i1 [ true, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check67 = phi i1 [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.p ]
  %i.p = phi i32 [ 3, %bb.h ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ], [ 0, %bb.p ] ; 7 uses
  %i.q = load i32, ptr %i.c, align 8
  %i.r = load i32, ptr %i.f, align 4
  %i.s = mul i32 %i.q, %i.p
  %i.t = mul i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #53 ; 3 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.f, align 4              ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader39.lr.ph, label %GetPixelDataSize.exit.._crit_edge44.split_crit_edge

GetPixelDataSize.exit.._crit_edge44.split_crit_edge: ; preds = %GetPixelDataSize.exit
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge44.split

.preheader39.lr.ph:                               ; preds = %GetPixelDataSize.exit
  %i.z = load i32, ptr %i.c, align 8              ; 6 uses
  %i.aa = icmp slt i32 %i.z, 1
  %brmerge = or i1 %i.aa, %i.o
  %.pre61 = load ptr, ptr %0, align 8             ; 4 uses
  %.pre6166 = ptrtoaddr ptr %.pre61 to i64
  br i1 %brmerge, label %._crit_edge44.split, label %.preheader39.lr.ph.split.split

.preheader39.lr.ph.split.split:                   ; preds = %.preheader39.lr.ph
  %i.ab = zext nneg i32 %i.p to i64
  %i.ac = zext nneg i32 %i.z to i64
  %wide.trip.count59 = zext nneg i32 %i.x to i64
  %wide.trip.count54 = zext nneg i32 %i.z to i64  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 10 uses
  %i.ad = mul nuw nsw i64 %wide.trip.count, %wide.trip.count54
  %i.ae = add nsw i32 %i.z, -1
  %i.af = mul i32 %i.p, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul i32 %i.p, %i.z
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i32 0, %i.p
  %i.ak = zext i32 %i.aj to i64
  %n.vec = and i64 %wide.trip.count, 16           ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.al = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec68 = and i64 %wide.trip.count, 28         ; 3 uses
  %cmp.n70 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader39

.preheader39:                                     ; preds = %.preheader39.lr.ph.split.split, %._crit_edge42
  %indvars.iv56 = phi i64 [ 0, %.preheader39.lr.ph.split.split ], [ %indvars.iv.next57, %._crit_edge42 ] ; 4 uses
  %i.am = mul i64 %i.ad, %indvars.iv56
  %i.an = add i64 %i.am, %i.w
  %i.ao = mul nuw nsw i64 %indvars.iv56, %i.ai
  %i.ap = add nuw i64 %i.ao, %i.ag
  %i.aq = mul nuw nsw i64 %indvars.iv56, %i.ac    ; 2 uses
  %i.ar = trunc nsw i64 %i.aq to i32
  %invariant.op = add nuw i32 %i.z, %i.ar
  br label %iter.check

._crit_edge44.split:                              ; preds = %._crit_edge42, %GetPixelDataSize.exit.._crit_edge44.split_crit_edge, %.preheader39.lr.ph
  %i.as = phi ptr [ %.pre, %GetPixelDataSize.exit.._crit_edge44.split_crit_edge ], [ %.pre61, %.preheader39.lr.ph ], [ %.pre61, %._crit_edge42 ]
  tail call void @free(ptr noundef %i.as) #52
  store ptr %i.v, ptr %0, align 8
  br label %bb.q

iter.check:                                       ; preds = %.preheader39, %._crit_edge
  %indvars.iv51 = phi i64 [ 0, %.preheader39 ], [ %indvars.iv.next52, %._crit_edge ] ; 5 uses
  %i.at = trunc i64 %indvars.iv51 to i32
  %i.au = xor i32 %i.at, -1
  %.reass = add i32 %invariant.op, %i.au
  %i.av = mul nsw i32 %.reass, %i.p
  %i.aw = add nuw nsw i64 %i.aq, %indvars.iv51
  %i.ax = mul nuw nsw i64 %i.aw, %i.ab
  %i.ay = sext i32 %i.av to i64
  %invariant.gep = getelementptr i8, ptr %.pre61, i64 %i.ay ; 7 uses
  %invariant.gep64 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.az = mul nuw nsw i64 %indvars.iv51, %wide.trip.count
  %i.ba = add i64 %i.an, %i.az
  %i.bb = mul nuw nsw i64 %indvars.iv51, %i.ak
  %i.bc = add i64 %i.ap, %i.bb
  %sext = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = add i64 %i.bd, %.pre6166
  %i.bf = sub i64 %i.be, %i.ba
  %diff.check = icmp ugt i64 %i.bf, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %invariant.gep, align 1
  store <16 x i8> %wide.load, ptr %invariant.gep64, align 1
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load69 = load <4 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %index
  store <4 x i8> %wide.load69, ptr %i.bh, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec68
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n70, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bj = load i8, ptr %gep.prol, align 1
  %gep65.prol = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.prol
  store i8 %i.bj, ptr %gep65.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !113

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bk = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge42:                                    ; preds = %._crit_edge
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge44.split, label %.preheader39

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %._crit_edge42, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bm = load i8, ptr %gep, align 1
  %gep65 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv
  store i8 %i.bm, ptr %gep65, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bn = load i8, ptr %gep.1, align 1
  %gep65.1 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next
  store i8 %i.bn, ptr %gep65.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bo = load i8, ptr %gep.2, align 1
  %gep65.2 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next.1
  store i8 %i.bo, ptr %gep65.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bp = load i8, ptr %gep.3, align 1
  %gep65.3 = getelementptr inbounds nuw i8, ptr %invariant.gep64, i64 %indvars.iv.next.2
  store i8 %i.bp, ptr %gep65.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !114

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge44.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageRotate(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.u

bb.h:                                             ; preds = %bb.f
  %i.o = sitofp i32 %1 to float
  %i.p = fmul nnan float %i.o, f0x40490FDB
  %i.q = fdiv float %i.p, 1.800000e+02            ; 2 uses
  %i.r = tail call float @sinf(float noundef %i.q) #52 ; 3 uses
  %i.s = tail call float @cosf(float noundef %i.q) #52 ; 3 uses
  %i.t = load i32, ptr %i.c, align 8
  %i.u = sitofp i32 %i.t to float                 ; 2 uses
  %i.v = fmul float %i.s, %i.u
  %i.w = tail call float @llvm.fabs.f32(float %i.v)
  %i.x = load i32, ptr %i.f, align 4
  %i.y = sitofp i32 %i.x to float                 ; 2 uses
  %i.z = fmul float %i.r, %i.y
  %i.aa = tail call float @llvm.fabs.f32(float %i.z)
  %i.ab = fadd float %i.w, %i.aa
  %i.ac = fptosi float %i.ab to i32               ; 6 uses
  %i.ad = fmul float %i.s, %i.y
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad)
  %i.af = fmul float %i.r, %i.u
  %i.ag = tail call float @llvm.fabs.f32(float %i.af)
  %i.ah = fadd float %i.ag, %i.ae
  %i.ai = fptosi float %i.ah to i32               ; 5 uses
  %i.aj = load i32, ptr %i.l, align 4             ; 3 uses
  switch i32 %i.aj, label %bb.q [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %.thread
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 24, label %bb.p
    i32 23, label %bb.i
    i32 20, label %bb.i
    i32 17, label %bb.i
    i32 16, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %bb.q

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %bb.q

bb.l:                                             ; preds = %bb.h
  br label %.thread

bb.m:                                             ; preds = %bb.h
  br label %.thread

bb.n:                                             ; preds = %bb.h
  br label %.thread

bb.o:                                             ; preds = %bb.h
  br label %.thread

bb.p:                                             ; preds = %bb.h
  br label %.thread

bb.q:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i = phi i32 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ]
  %i.ak = and i32 %i.aj, -2
  %or.cond3.i = icmp eq i32 %i.ak, 14
  br i1 %or.cond3.i, label %GetPixelDataSize.exit, label %.thread

.thread:                                          ; preds = %bb.h, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  %i.al = phi i32 [ %.0.i, %bb.q ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 0, %bb.p ], [ 3, %bb.h ]
  %i.am = and i32 %i.aj, -8
  %or.cond5.i = icmp eq i32 %i.am, 16
  %spec.select.i = select i1 %or.cond5.i, i32 16, i32 %i.al
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.q, %.thread
  %.016.i = phi i32 [ %spec.select.i, %.thread ], [ 8, %bb.q ] ; 9 uses
  %i.an = mul nsw i32 %i.ac, %i.ai
  %i.ao = sext i32 %i.an to i64
  %i.ap = zext nneg i32 %.016.i to i64            ; 2 uses
  %i.aq = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef %i.ap) #56 ; 3 uses
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = icmp sgt i32 %i.ai, 0
  br i1 %i.as, label %.preheader.lr.ph, label %._crit_edge132.split

.preheader.lr.ph:                                 ; preds = %GetPixelDataSize.exit
  %i.at = icmp sgt i32 %i.ac, 0
  %i.au = sitofp i32 %i.ac to float
  %i.av = fmul nnan float %i.au, 5.000000e-01
  %i.aw = uitofp nneg i32 %i.ai to float
  %i.ax = fmul nnan float %i.aw, 5.000000e-01
  %.not = icmp eq i32 %.016.i, 0
  br i1 %i.at, label %.preheader.lr.ph.split, label %._crit_edge132.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.ay = load <2 x i32>, ptr %i.c, align 8       ; 3 uses
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>   ; 3 uses
  %i.ba = fmul nnan <2 x float> %i.az, splat (float 5.000000e-01)
  %i.bb = add nsw <2 x i32> %i.ay, splat (i32 -1) ; 2 uses
  %i.bc = zext nneg i32 %i.ac to i64
  %wide.trip.count142 = zext nneg i32 %i.ai to i64
  %wide.trip.count137 = zext nneg i32 %i.ac to i64 ; 2 uses
  %wide.trip.count = zext i32 %.016.i to i64      ; 8 uses
  %i.bd = mul nuw nsw i64 %wide.trip.count, %wide.trip.count137
  %i.be = insertelement <2 x float> poison, float %i.r, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.s, i64 1 ; 2 uses
  %i.bg = extractelement <2 x float> %i.az, i64 0
  %i.bh = extractelement <2 x float> %i.az, i64 1
  %i.bi = extractelement <2 x i32> %i.ay, i64 0   ; 2 uses
  %i.bj = extractelement <2 x i32> %i.bb, i64 0
  %i.bk = extractelement <2 x i32> %i.bb, i64 1
  %i.bl = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %min.iters.check = icmp ult i32 %.016.i, 4
  %min.iters.check160 = icmp ult i32 %.016.i, 16
  %i.bm = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec170 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n185 = icmp eq i64 %n.vec170, %wide.trip.count
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv139 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next140, %._crit_edge ] ; 4 uses
  %i.bn = mul i64 %i.bd, %indvars.iv139
  %i.bo = add i64 %i.bn, %i.ar
  %i.bp = trunc nuw nsw i64 %indvars.iv139 to i32
  %i.bq = uitofp nneg i32 %i.bp to float
  %i.br = fsub nnan float %i.bq, %i.ax
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bf, %i.bt           ; 2 uses
  %i.bv = mul nuw nsw i64 %indvars.iv139, %i.bc
  br label %bb.r

._crit_edge132.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %GetPixelDataSize.exit
  %i.bw = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.bw) #52
  store ptr %i.aq, ptr %0, align 8
  store i32 %i.ac, ptr %i.c, align 8
  store i32 %i.ai, ptr %i.f, align 4
  br label %bb.u

._crit_edge:                                      ; preds = %.loopexit
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %._crit_edge132.split, label %.preheader

bb.r:                                             ; preds = %.preheader, %.loopexit
  %indvars.iv134 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next135, %.loopexit ] ; 4 uses
  %i.bx = mul nuw nsw i64 %indvars.iv134, %wide.trip.count
  %i.by = add i64 %i.bo, %i.bx                    ; 4 uses
  %i.bz = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.ca = uitofp nneg i32 %i.bz to float
  %i.cb = fsub nnan float %i.ca, %i.av
  %i.cc = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.bl, %i.cd           ; 2 uses
  %i.cf = fadd <2 x float> %i.bu, %i.ce
  %i.cg = fsub <2 x float> %i.bu, %i.ce
  %i.ch = shufflevector <2 x float> %i.cf, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.ci = fadd <2 x float> %i.ch, %i.ba           ; 5 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.ck = fcmp ult float %i.cj, 0.000000e+00
  br i1 %i.ck, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = fcmp olt float %i.cj, %i.bg
  %i.cm = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cn = fcmp oge float %i.cm, 0.000000e+00
  %or.cond = select i1 %i.cl, i1 %i.cn, i1 false
  %i.co = fcmp olt float %i.cm, %i.bh
  %or.cond124 = select i1 %or.cond, i1 %i.co, i1 false
  br i1 %or.cond124, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.cp = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ci)
  %i.cq = fptosi <2 x float> %i.cp to <2 x i32>   ; 3 uses
  %i.cr = sitofp <2 x i32> %i.cq to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.ci, %i.cr ; 3 uses
  %i.cs = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop187 = fsub <2 x float> %i.ci, %i.cr ; 3 uses
  %i.ct = extractelement <2 x float> %foldExtExtBinop187, i64 1 ; 2 uses
  br i1 %.not, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.t
  %i.cu = extractelement <2 x i32> %i.cq, i64 1   ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  %i.cw = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.bk)
  %i.cx = extractelement <2 x i32> %i.cq, i64 0   ; 3 uses
  %i.cy = add nsw i32 %i.cx, 1
  %. = tail call i32 @llvm.smin.i32(i32 %i.cy, i32 %i.bj) ; 2 uses
  %i.cz = load ptr, ptr %0, align 8               ; 5 uses
  %i.da = mul nsw i32 %i.bi, %i.cu                ; 2 uses
  %i.db = add nsw i32 %i.da, %i.cx
  %i.dc = mul nsw i32 %i.db, %.016.i
  %i.dd = add nsw i32 %i.da, %.
  %i.de = mul nsw i32 %i.dd, %.016.i
  %i.df = mul nsw i32 %i.cw, %i.bi                ; 2 uses
  %i.dg = add nsw i32 %i.df, %i.cx
  %i.dh = mul nsw i32 %i.dg, %.016.i
  %i.di = add nsw i32 %i.df, %.
  %i.dj = mul nsw i32 %i.di, %.016.i
  %i.dk = fsub float 1.000000e+00, %i.cs          ; 3 uses
  %i.dl = fsub float 1.000000e+00, %i.ct          ; 3 uses
  %i.dm = add nuw nsw i64 %indvars.iv134, %i.bv
  %i.dn = mul nuw nsw i64 %i.dm, %i.ap
  %i.do = sext i32 %i.dc to i64                   ; 2 uses
  %i.dp = sext i32 %i.de to i64                   ; 2 uses
  %i.dq = sext i32 %i.dh to i64                   ; 2 uses
  %i.dr = sext i32 %i.dj to i64                   ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.cz, i64 %i.do ; 3 uses
  %invariant.gep147 = getelementptr i8, ptr %i.cz, i64 %i.dp ; 3 uses
  %invariant.gep149 = getelementptr i8, ptr %i.cz, i64 %i.dq ; 3 uses
  %invariant.gep151 = getelementptr i8, ptr %i.cz, i64 %i.dr ; 3 uses
  %invariant.gep153 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dn ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ds = ptrtoaddr ptr %i.cz to i64              ; 4 uses
  %i.dt = add i64 %i.ds, %i.dr
  %i.du = sub i64 %i.dt, %i.by
  %diff.check = icmp ugt i64 %i.du, -16
  %i.dv = add i64 %i.ds, %i.dq
  %i.dw = sub i64 %i.dv, %i.by
  %diff.check155 = icmp ugt i64 %i.dw, -16
  %conflict.rdx = or i1 %diff.check, %diff.check155
  %i.dx = add i64 %i.ds, %i.dp
  %i.dy = sub i64 %i.dx, %i.by
  %diff.check156 = icmp ugt i64 %i.dy, -16
  %conflict.rdx157 = or i1 %conflict.rdx, %diff.check156
  %i.dz = add i64 %i.ds, %i.do
  %i.ea = sub i64 %i.dz, %i.by
  %diff.check158 = icmp ugt i64 %i.ea, -16
  %conflict.rdx159 = or i1 %conflict.rdx157, %diff.check158
  br i1 %conflict.rdx159, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.dk, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <16 x float> poison, float %i.dl, i64 0
  %broadcast.splat162 = shufflevector <16 x float> %broadcast.splatinsert161, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat164 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splat166 = shufflevector <2 x float> %foldExtExtBinop187, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.eb = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load = load <16 x i8>, ptr %i.eb, align 1
  %i.ec = uitofp <16 x i8> %wide.load to <16 x float>
  %i.ed = getelementptr i8, ptr %invariant.gep147, i64 %index
  %wide.load167 = load <16 x i8>, ptr %i.ed, align 1
  %i.ee = uitofp <16 x i8> %wide.load167 to <16 x float>
  %i.ef = getelementptr i8, ptr %invariant.gep149, i64 %index
  %wide.load168 = load <16 x i8>, ptr %i.ef, align 1
  %i.eg = uitofp <16 x i8> %wide.load168 to <16 x float>
  %i.eh = getelementptr i8, ptr %invariant.gep151, i64 %index
  %wide.load169 = load <16 x i8>, ptr %i.eh, align 1
  %i.ei = uitofp <16 x i8> %wide.load169 to <16 x float>
  %i.ej = fmul <16 x float> %broadcast.splat, %i.ec
  %i.ek = fmul <16 x float> %broadcast.splat162, %i.ej
  %i.el = fmul <16 x float> %broadcast.splat164, %i.ee
  %i.em = fmul <16 x float> %broadcast.splat162, %i.el
  %i.en = fadd <16 x float> %i.ek, %i.em
  %i.eo = fmul <16 x float> %broadcast.splat, %i.eg
  %i.ep = fmul <16 x float> %broadcast.splat166, %i.eo
  %i.eq = fadd <16 x float> %i.en, %i.ep
  %i.er = fmul <16 x float> %broadcast.splat164, %i.ei
  %i.es = fmul <16 x float> %broadcast.splat166, %i.er
  %i.et = fadd <16 x float> %i.eq, %i.es
  %i.eu = fptoui <16 x float> %i.et to <16 x i8>
  %i.ev = getelementptr inbounds nuw i8, ptr %invariant.gep153, i64 %index
  store <16 x i8> %i.eu, ptr %i.ev, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert171 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat172 = shufflevector <4 x float> %broadcast.splatinsert171, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert173 = insertelement <4 x float> poison, float %i.dl, i64 0
  %broadcast.splat174 = shufflevector <4 x float> %broadcast.splatinsert173, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat176 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splat178 = shufflevector <2 x float> %foldExtExtBinop187, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index179 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next184, %vec.epilog.vector.body ] ; 6 uses
  %i.ex = getelementptr i8, ptr %invariant.gep, i64 %index179
  %wide.load180 = load <4 x i8>, ptr %i.ex, align 1
  %i.ey = uitofp <4 x i8> %wide.load180 to <4 x float>
  %i.ez = getelementptr i8, ptr %invariant.gep147, i64 %index179
  %wide.load181 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = uitofp <4 x i8> %wide.load181 to <4 x float>
  %i.fb = getelementptr i8, ptr %invariant.gep149, i64 %index179
  %wide.load182 = load <4 x i8>, ptr %i.fb, align 1
  %i.fc = uitofp <4 x i8> %wide.load182 to <4 x float>
  %i.fd = getelementptr i8, ptr %invariant.gep151, i64 %index179
  %wide.load183 = load <4 x i8>, ptr %i.fd, align 1
  %i.fe = uitofp <4 x i8> %wide.load183 to <4 x float>
  %i.ff = fmul <4 x float> %broadcast.splat172, %i.ey
  %i.fg = fmul <4 x float> %broadcast.splat174, %i.ff
  %i.fh = fmul <4 x float> %broadcast.splat176, %i.fa
  %i.fi = fmul <4 x float> %broadcast.splat174, %i.fh
  %i.fj = fadd <4 x float> %i.fg, %i.fi
  %i.fk = fmul <4 x float> %broadcast.splat172, %i.fc
  %i.fl = fmul <4 x float> %broadcast.splat178, %i.fk
  %i.fm = fadd <4 x float> %i.fj, %i.fl
  %i.fn = fmul <4 x float> %broadcast.splat176, %i.fe
  %i.fo = fmul <4 x float> %broadcast.splat178, %i.fn
  %i.fp = fadd <4 x float> %i.fm, %i.fo
  %i.fq = fptoui <4 x float> %i.fp to <4 x i8>
  %i.fr = getelementptr inbounds nuw i8, ptr %invariant.gep153, i64 %index179
  store <4 x i8> %i.fq, ptr %i.fr, align 1
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next184, %n.vec170
  br i1 %i.fs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !116

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n185, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec170, %vec.epilog.middle.block ]
  %i.ft = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.fu = insertelement <4 x float> %i.ft, float %i.cs, i64 1
  %i.fv = shufflevector <4 x float> %i.fu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fw = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ct, i64 1
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.fz = load i8, ptr %gep, align 1
  %gep148 = getelementptr i8, ptr %invariant.gep147, i64 %indvars.iv
  %i.ga = load i8, ptr %gep148, align 1
  %gep150 = getelementptr i8, ptr %invariant.gep149, i64 %indvars.iv
  %i.gb = load i8, ptr %gep150, align 1
  %gep152 = getelementptr i8, ptr %invariant.gep151, i64 %indvars.iv
  %i.gc = load i8, ptr %gep152, align 1
  %i.gd = insertelement <4 x i8> poison, i8 %i.fz, i64 0
  %i.ge = insertelement <4 x i8> %i.gd, i8 %i.gb, i64 1
  %i.gf = insertelement <4 x i8> %i.ge, i8 %i.ga, i64 2
  %i.gg = insertelement <4 x i8> %i.gf, i8 %i.gc, i64 3
  %i.gh = uitofp <4 x i8> %i.gg to <4 x float>
  %i.gi = fmul <4 x float> %i.fv, %i.gh
  %i.gj = fmul <4 x float> %i.fy, %i.gi           ; 4 uses
  %shift = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop189 = fadd <4 x float> %i.gj, %shift
  %shift191 = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop192 = fadd <4 x float> %foldExtExtBinop189, %shift191
  %shift194 = shufflevector <4 x float> %i.gj, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop195 = fadd <4 x float> %foldExtExtBinop192, %shift194
  %i.gk = extractelement <4 x float> %foldExtExtBinop195, i64 0
  %i.gl = fptoui float %i.gk to i8
  %gep154 = getelementptr inbounds nuw i8, ptr %invariant.gep153, i64 %indvars.iv
  store i8 %i.gl, ptr %gep154, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !117

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.t, %bb.s, %bb.r
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond138.not = icmp eq i64 %indvars.iv.next135, %wide.trip.count137
  br i1 %exitcond138.not, label %._crit_edge, label %bb.r

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge132.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageRotateCW(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %bb.p [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %GetPixelDataSize.exit
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.l:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.m:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.n:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.o:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.p:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.p, %bb.k, %bb.j, %bb.i
  %i.o = phi i1 [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check = phi i1 [ true, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check73 = phi i1 [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.p ]
  %i.p = phi i32 [ 3, %bb.h ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ], [ 0, %bb.p ] ; 3 uses
  %i.q = load i32, ptr %i.c, align 8
  %i.r = load i32, ptr %i.f, align 4
  %i.s = mul i32 %i.q, %i.p
  %i.t = mul i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #53 ; 4 uses
  %i.w = load i32, ptr %i.f, align 4              ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader45.lr.ph, label %GetPixelDataSize.exit.._crit_edge50.split_crit_edge

GetPixelDataSize.exit.._crit_edge50.split_crit_edge: ; preds = %GetPixelDataSize.exit
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge50.split

.preheader45.lr.ph:                               ; preds = %GetPixelDataSize.exit
  %i.y = load i32, ptr %i.c, align 8              ; 3 uses
  %i.z = icmp slt i32 %i.y, 1
  %brmerge = or i1 %i.z, %i.o
  %.pre65 = load ptr, ptr %0, align 8             ; 5 uses
  br i1 %brmerge, label %._crit_edge50.split, label %.preheader45.lr.ph.split.split

.preheader45.lr.ph.split.split:                   ; preds = %.preheader45.lr.ph
  %i.aa = zext nneg i32 %i.p to i64               ; 2 uses
  %i.ab = zext nneg i32 %i.w to i64               ; 2 uses
  %i.ac = zext nneg i32 %i.y to i64
  %wide.trip.count63 = zext nneg i32 %i.w to i64  ; 3 uses
  %wide.trip.count58 = zext nneg i32 %i.y to i64  ; 4 uses
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 13 uses
  %1 = mul nuw nsw i64 %wide.trip.count, %wide.trip.count58
  %i.ad = mul i64 %1, %wide.trip.count63
  %i.ae = mul nuw nsw i64 %wide.trip.count, %wide.trip.count58
  %i.af = mul nuw nsw i64 %wide.trip.count, %wide.trip.count58
  %i.ag = getelementptr i8, ptr %.pre65, i64 %i.af
  %n.vec = and i64 %wide.trip.count, 16           ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.ah = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  %n.vec74 = and i64 %wide.trip.count, 28         ; 3 uses
  %cmp.n76 = icmp eq i64 %n.vec74, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.lr.ph.split.split, %._crit_edge48
  %indvars.iv60 = phi i64 [ 0, %.preheader45.lr.ph.split.split ], [ %indvars.iv.next61, %._crit_edge48 ] ; 6 uses
  %i.ai = mul i64 %indvars.iv60, %wide.trip.count
  %i.aj = xor i64 %indvars.iv60, -1
  %i.ak = add nsw i64 %i.aj, %wide.trip.count63
  %i.al = mul i64 %i.ak, %wide.trip.count
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.al
  %i.am = sub i64 %i.ad, %i.ai
  %scevgep70 = getelementptr i8, ptr %i.v, i64 %i.am
  %i.an = mul i64 %i.ae, %indvars.iv60            ; 2 uses
  %scevgep71 = getelementptr i8, ptr %.pre65, i64 %i.an
  %scevgep72 = getelementptr i8, ptr %i.ag, i64 %i.an
  %i.ao = mul nuw nsw i64 %indvars.iv60, %i.ac
  %i.ap = xor i64 %indvars.iv60, -1
  %i.aq = add nsw i64 %i.ab, %i.ap
  %bound0 = icmp ult ptr %scevgep, %scevgep72
  %bound1 = icmp ult ptr %scevgep71, %scevgep70
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

._crit_edge50.split:                              ; preds = %._crit_edge48, %GetPixelDataSize.exit.._crit_edge50.split_crit_edge, %.preheader45.lr.ph
  %i.ar = phi ptr [ %.pre, %GetPixelDataSize.exit.._crit_edge50.split_crit_edge ], [ %.pre65, %.preheader45.lr.ph ], [ %.pre65, %._crit_edge48 ]
  tail call void @free(ptr noundef %i.ar) #52
  store ptr %i.v, ptr %0, align 8
  %i.as = load <2 x i32>, ptr %i.c, align 8
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.at, ptr %i.c, align 8
  br label %bb.q

iter.check:                                       ; preds = %.preheader45, %._crit_edge
  %indvars.iv55 = phi i64 [ 0, %.preheader45 ], [ %indvars.iv.next56, %._crit_edge ] ; 3 uses
  %i.au = add nuw nsw i64 %i.ao, %indvars.iv55
  %i.av = mul nuw nsw i64 %i.au, %i.aa
  %i.aw = mul nuw nsw i64 %indvars.iv55, %i.ab
  %i.ax = add nsw i64 %i.aq, %i.aw
  %i.ay = mul nsw i64 %i.ax, %i.aa
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.pre65, i64 %i.av ; 7 uses
  %invariant.gep68 = getelementptr i8, ptr %i.v, i64 %i.ay ; 7 uses
  %brmerge77 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge77, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %invariant.gep, align 1, !alias.scope !118
  store <16 x i8> %wide.load, ptr %invariant.gep68, align 1, !alias.scope !121, !noalias !118
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index
  %wide.load75 = load <4 x i8>, ptr %i.az, align 1, !alias.scope !118
  %i.ba = getelementptr i8, ptr %invariant.gep68, i64 %index
  store <4 x i8> %wide.load75, ptr %i.ba, align 1, !alias.scope !121, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec74
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !123

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n76, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec74, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bc = load i8, ptr %gep.prol, align 1
  %gep69.prol = getelementptr i8, ptr %invariant.gep68, i64 %indvars.iv.prol
  store i8 %i.bc, ptr %gep69.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !124

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bd = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge48:                                    ; preds = %._crit_edge
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge50.split, label %.preheader45

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %._crit_edge48, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bf = load i8, ptr %gep, align 1
  %gep69 = getelementptr i8, ptr %invariant.gep68, i64 %indvars.iv
  store i8 %i.bf, ptr %gep69, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bg = load i8, ptr %gep.1, align 1
  %gep69.1 = getelementptr i8, ptr %invariant.gep68, i64 %indvars.iv.next
  store i8 %i.bg, ptr %gep69.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bh = load i8, ptr %gep.2, align 1
  %gep69.2 = getelementptr i8, ptr %invariant.gep68, i64 %indvars.iv.next.1
  store i8 %i.bh, ptr %gep69.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.bi = load i8, ptr %gep.3, align 1
  %gep69.3 = getelementptr i8, ptr %invariant.gep68, i64 %indvars.iv.next.2
  store i8 %i.bi, ptr %gep69.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !125

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge50.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageRotateCCW(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.50) #52
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp sgt i32 %i.m, 13
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.51) #52
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  switch i32 %i.m, label %bb.p [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.j
    i32 5, label %bb.j
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 4, label %GetPixelDataSize.exit
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.j
    i32 12, label %bb.n
    i32 13, label %bb.o
  ]

bb.i:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.k:                                             ; preds = %bb.h, %bb.h
  br label %GetPixelDataSize.exit

bb.l:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.m:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.n:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.o:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

bb.p:                                             ; preds = %bb.h
  br label %GetPixelDataSize.exit

GetPixelDataSize.exit:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.h, %bb.p, %bb.k, %bb.j, %bb.i
  %i.o = phi i1 [ false, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check = phi i1 [ true, %bb.h ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ false, %bb.k ], [ true, %bb.p ]
  %min.iters.check74 = phi i1 [ true, %bb.h ], [ true, %bb.o ], [ true, %bb.n ], [ false, %bb.m ], [ true, %bb.l ], [ true, %bb.i ], [ true, %bb.j ], [ true, %bb.k ], [ true, %bb.p ]
  %i.p = phi i32 [ 3, %bb.h ], [ 8, %bb.o ], [ 6, %bb.n ], [ 16, %bb.m ], [ 12, %bb.l ], [ 1, %bb.i ], [ 2, %bb.j ], [ 4, %bb.k ], [ 0, %bb.p ] ; 7 uses
  %i.q = load i32, ptr %i.c, align 8
  %i.r = load i32, ptr %i.f, align 4
  %i.s = mul i32 %i.q, %i.p
  %i.t = mul i32 %i.s, %i.r
  %i.u = sext i32 %i.t to i64
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #53 ; 3 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.f, align 4              ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.preheader45.lr.ph, label %GetPixelDataSize.exit.._crit_edge51.split_crit_edge

GetPixelDataSize.exit.._crit_edge51.split_crit_edge: ; preds = %GetPixelDataSize.exit
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge51.split

.preheader45.lr.ph:                               ; preds = %GetPixelDataSize.exit
  %i.z = load i32, ptr %i.c, align 8              ; 5 uses
  %i.aa = icmp slt i32 %i.z, 1
  %brmerge = or i1 %i.aa, %i.o
  %.pre68 = load ptr, ptr %0, align 8             ; 4 uses
  %.pre6873 = ptrtoaddr ptr %.pre68 to i64
  br i1 %brmerge, label %._crit_edge51.split, label %.preheader45.lr.ph.split.split

.preheader45.lr.ph.split.split:                   ; preds = %.preheader45.lr.ph
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = zext nneg i32 %i.p to i64
  %wide.trip.count66 = zext nneg i32 %i.x to i64  ; 2 uses
  %wide.trip.count61 = zext nneg i32 %i.z to i64
  %wide.trip.count = zext nneg i32 %i.p to i64    ; 10 uses
  %i.ad = mul nuw nsw i64 %wide.trip.count, %wide.trip.count66
  %i.ae = add nsw i32 %i.z, -1
  %i.af = mul i32 %i.p, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul i32 %i.p, %i.z
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sub nsw i32 0, %i.p
  %i.ak = zext i32 %i.aj to i64
  %n.vec = and i64 %wide.trip.count, 16           ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.al = and i64 %wide.trip.count, 12
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec75 = and i64 %wide.trip.count, 28         ; 3 uses
  %cmp.n77 = icmp eq i64 %n.vec75, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.lr.ph.split.split, %._crit_edge48
  %indvars.iv63 = phi i64 [ 0, %.preheader45.lr.ph.split.split ], [ %indvars.iv.next64, %._crit_edge48 ] ; 4 uses
  %i.am = mul nuw nsw i64 %indvars.iv63, %wide.trip.count
  %i.an = add i64 %i.am, %i.w
  %i.ao = mul nuw nsw i64 %indvars.iv63, %i.ai
  %i.ap = add nuw i64 %i.ao, %i.ag
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 3 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next64 to i32
  %invariant.op = mul i32 %i.z, %i.aq
  br label %iter.check

._crit_edge51.split:                              ; preds = %._crit_edge48, %GetPixelDataSize.exit.._crit_edge51.split_crit_edge, %.preheader45.lr.ph
  %i.ar = phi ptr [ %.pre, %GetPixelDataSize.exit.._crit_edge51.split_crit_edge ], [ %.pre68, %.preheader45.lr.ph ], [ %.pre68, %._crit_edge48 ]
  tail call void @free(ptr noundef %i.ar) #52
  store ptr %i.v, ptr %0, align 8
  %i.as = load <2 x i32>, ptr %i.c, align 8
  %i.at = shufflevector <2 x i32> %i.as, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.at, ptr %i.c, align 8
  br label %bb.q

iter.check:                                       ; preds = %.preheader45, %._crit_edge
  %indvars.iv58 = phi i64 [ 0, %.preheader45 ], [ %indvars.iv.next59, %._crit_edge ] ; 5 uses
  %i.au = trunc i64 %indvars.iv58 to i32
  %i.av = xor i32 %i.au, -1
  %.reass = add i32 %invariant.op, %i.av
  %i.aw = mul nsw i32 %.reass, %i.p
  %i.ax = mul nuw nsw i64 %indvars.iv58, %i.ab
  %i.ay = add nuw nsw i64 %i.ax, %indvars.iv63
  %i.az = mul nuw nsw i64 %i.ay, %i.ac
  %i.ba = sext i32 %i.aw to i64
  %invariant.gep = getelementptr i8, ptr %.pre68, i64 %i.ba ; 7 uses
  %invariant.gep71 = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.az ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bb = mul i64 %i.ad, %indvars.iv58
  %i.bc = add i64 %i.an, %i.bb
  %i.bd = mul nuw nsw i64 %indvars.iv58, %i.ak
  %i.be = add i64 %i.ap, %i.bd
  %sext = shl i64 %i.be, 32
  %i.bf = ashr exact i64 %sext, 32
  %i.bg = add i64 %i.bf, %.pre6873
  %i.bh = sub i64 %i.bg, %i.bc
  %diff.check = icmp ugt i64 %i.bh, -16
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check74, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %wide.load = load <16 x i8>, ptr %invariant.gep, align 1
  store <16 x i8> %wide.load, ptr %invariant.gep71, align 1
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !8

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr i8, ptr %invariant.gep, i64 %index
  %wide.load76 = load <4 x i8>, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %index
  store <4 x i8> %wide.load76, ptr %i.bj, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec75
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n77, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.bl = load i8, ptr %gep.prol, align 1
  %gep72.prol = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %indvars.iv.prol
  store i8 %i.bl, ptr %gep72.prol, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !127

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge48:                                    ; preds = %._crit_edge
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge51.split, label %.preheader45

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge48, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bo = load i8, ptr %gep, align 1
  %gep72 = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %indvars.iv
  store i8 %i.bo, ptr %gep72, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.bp = load i8, ptr %gep.1, align 1
  %gep72.1 = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %indvars.iv.next
  store i8 %i.bp, ptr %gep72.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.bq = load i8, ptr %gep.2, align 1
  %gep72.2 = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %indvars.iv.next.1
  store i8 %i.bq, ptr %gep72.2, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.br = load i8, ptr %gep.3, align 1
  %gep72.3 = getelementptr inbounds nuw i8, ptr %invariant.gep71, i64 %indvars.iv.next.2
  store i8 %i.br, ptr %gep72.3, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !128

bb.q:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge51.split, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageColorTint(ptr noundef %0, i32 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i32 %1, 8
  %.sroa.3.0.extract.shift = lshr i32 %1, 16
  %.sroa.4.0.extract.shift = lshr i32 %1, 24
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @LoadImageColors(ptr noundef nonnull byval(%struct.Image) align 8 %0) ; 2 uses
  %i.j = load i32, ptr %i.c, align 8
  %i.k = load i32, ptr %i.f, align 4
  %i.l = mul nsw i32 %i.k, %i.j
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.n = and i32 %1, 255
  %i.o = and i32 %.sroa.2.0.extract.shift, 255
  %i.p = and i32 %.sroa.3.0.extract.shift, 255
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.s) #52
  store ptr %i.i, ptr %0, align 8
  store i32 7, ptr %i.q, align 4
  tail call void @ImageFormat(ptr noundef nonnull %0, i32 noundef %i.r)
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = load i8, ptr %i.v, align 1
  %i.z = load i8, ptr %i.u, align 1
  %i.aa = load i8, ptr %i.t, align 1
  %i.ab = zext i8 %i.x to i32
  %i.ac = zext i8 %i.y to i32
  %i.ad = zext i8 %i.z to i32
  %i.ae = zext i8 %i.aa to i32
  %i.af = mul nuw nsw i32 %.sroa.4.0.extract.shift, %i.ab
  %i.ag = mul nuw nsw i32 %i.p, %i.ac
  %i.ah = mul nuw nsw i32 %i.o, %i.ad
  %i.ai = mul nuw nsw i32 %i.n, %i.ae
  %.lhs.trunc40 = trunc nuw i32 %i.af to i16
  %.lhs.trunc36 = trunc nuw i32 %i.ag to i16
  %.lhs.trunc34 = trunc nuw i32 %i.ah to i16
  %.lhs.trunc = trunc nuw i32 %i.ai to i16
  %i.aj = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.ak = insertelement <4 x i16> %i.aj, i16 %.lhs.trunc34, i64 1
  %i.al = insertelement <4 x i16> %i.ak, i16 %.lhs.trunc36, i64 2
  %i.am = insertelement <4 x i16> %i.al, i16 %.lhs.trunc40, i64 3
  %i.an = udiv <4 x i16> %i.am, splat (i16 255)
  %i.ao = trunc <4 x i16> %i.an to <4 x i8>
  store <4 x i8> %i.ao, ptr %i.t, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = load i32, ptr %i.c, align 8
  %i.aq = load i32, ptr %i.f, align 4
  %i.ar = mul nsw i32 %i.aq, %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.e, label %._crit_edge

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @ImageColorInvert(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 0
end_hunk_0
begin_hunk_1_@stbi__de_iphone:bb.a
  %i.at = zext i8 %i.ac to i32
  %i.au = mul nuw nsw i32 %i.at, 255
  %i.av = add nuw nsw i32 %i.au, %i.ai
  %.lhs.trunc4 = trunc nuw i32 %i.av to i16
  %i.aw = udiv i16 %.lhs.trunc4, %.rhs.trunc
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.ae, align 1
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ay = getelementptr inbounds nuw i8, ptr %.14711, i64 2 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1
  store i8 %i.az, ptr %.14711, align 1
  store i8 %i.ac, ptr %i.ay, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %.14711, i64 4
  %i.bb = add nuw i32 %.112, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.lr.ph15:                                         ; preds = %.lr.ph15, %.lr.ph15.preheader.new
  %.24813 = phi ptr [ %.24.val, %.lr.ph15.preheader.new ], [ %i.br, %.lr.ph15 ] ; 10 uses
  %niter = phi i32 [ 0, %.lr.ph15.preheader.new ], [ %niter.next.3, %.lr.ph15 ]
  %i.bc = load i8, ptr %.24813, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  store i8 %i.be, ptr %.24813, align 1
  store i8 %i.bc, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  store i8 %i.bi, ptr %i.bf, align 1
  store i8 %i.bg, ptr %i.bh, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  store i8 %i.bm, ptr %i.bj, align 1
  store i8 %i.bk, ptr %i.bl, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1
  store i8 %i.bq, ptr %i.bn, align 1
  store i8 %i.bo, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1
  store i8 %i.bu, ptr %.04616.epil, align 1
  store i8 %i.bs, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !202

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1
  store i8 %i.by, ptr %.24813.epil, align 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !203

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a, %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #53 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.w, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.y = mul i32 %i.g, %4                         ; 18 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond = or i1 %.not.i, %i.ad
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ae = add i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 8 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ag = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.af, %i.ag
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.ah = mul nuw nsw i32 %i.af, %5
  %i.ai = xor i32 %i.af, 2147483647
  %.not330 = icmp sgt i32 %i.ah, %i.ai
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  store ptr @.str.89, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.aj = add nuw nsw i32 %i.af, 1
  %i.ak = mul i32 %i.aj, %5
  %i.al = icmp ult i32 %2, %i.ak
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr @.str.107, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.am = shl nuw nsw i32 %i.af, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.an) #53 ; 5 uses
  %.not283 = icmp eq ptr %i.ao, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr @.str.104, ptr @stbi__g_failure_reason, align 8
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.ap, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.ap, i32 %i.af, i32 %4
  %i.aq = zext nneg i32 %i.af to i64              ; 6 uses
  %i.ar = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.as = sext i32 %spec.select to i64            ; 40 uses
  %i.at = icmp slt i32 %spec.select, %i.ar        ; 4 uses
  %i.au = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.av = icmp sgt i32 %i.ar, 0
  %i.aw = sext i32 %i.ar to i64                   ; 13 uses
  %i.ax = icmp eq i32 %6, 8
  %i.ay = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.az = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.y, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.ba = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bb = zext i32 %.030.i305 to i64              ; 17 uses
  %i.bc = zext i32 %i.y to i64
  %i.bd = icmp eq i32 %7, 0
  %i.be = sext i32 %6 to i64
  %i.bf = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.be
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.ar to i64     ; 8 uses
  %i.bg = sub nsw i64 %i.aw, %i.as                ; 28 uses
  %i.bh = add i32 %i.y, -1                        ; 3 uses
  %i.bi = add nuw nsw i64 %i.bb, 1
  %min.iters.check699 = icmp ult i64 %i.bg, 8
  %i.bj = add nsw i64 %i.as, -1
  %diff.check697 = icmp ult i64 %i.bj, 31
  %or.cond736 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  %min.iters.check701 = icmp ult i64 %i.bg, 32
  %i.bk = and i64 %i.bg, 24
  %n.vec703 = and i64 %i.bg, -32                  ; 4 uses
  %i.bl = add nsw i64 %n.vec703, %i.as
  %cmp.n712 = icmp eq i64 %i.bg, %n.vec703
  %min.epilog.iters.check718 = icmp eq i64 %i.bk, 0
  %n.vec720 = and i64 %i.bg, -8                   ; 3 uses
  %i.bm = add nsw i64 %n.vec720, %i.as
  %cmp.n727 = icmp eq i64 %i.bg, %n.vec720
  %i.bn = add nsw i64 %i.aw, -1
  %min.iters.check667 = icmp ult i32 %spec.select, 4
  %min.iters.check669 = icmp ult i32 %spec.select, 32
  %i.bo = and i64 %wide.trip.count424, 28
  %n.vec671 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n680 = icmp eq i64 %n.vec671, %wide.trip.count424
  %min.epilog.iters.check685 = icmp eq i64 %i.bo, 0
  %n.vec687 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n694 = icmp eq i64 %n.vec687, %wide.trip.count424
  %xtraiter750 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  %min.iters.check632 = icmp ult i64 %i.bg, 4
  %i.bp = add nsw i64 %i.as, -1
  %diff.check626 = icmp ult i64 %i.bp, 15
  %min.iters.check634 = icmp ult i64 %i.bg, 16
  %i.bq = and i64 %i.bg, 12
  %n.vec636 = and i64 %i.bg, -16                  ; 4 uses
  %i.br = add nsw i64 %n.vec636, %i.as
  %cmp.n645 = icmp eq i64 %i.bg, %n.vec636
  %min.epilog.iters.check651 = icmp eq i64 %i.bq, 0
  %n.vec653 = and i64 %i.bg, -4                   ; 3 uses
  %i.bs = add nsw i64 %n.vec653, %i.as
  %cmp.n662 = icmp eq i64 %i.bg, %n.vec653
  %min.iters.check596 = icmp ult i32 %spec.select, 4
  %min.iters.check598 = icmp ult i32 %spec.select, 32
  %i.bt = and i64 %wide.trip.count424, 28
  %n.vec600 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n609 = icmp eq i64 %n.vec600, %wide.trip.count424
  %min.epilog.iters.check614 = icmp eq i64 %i.bt, 0
  %n.vec616 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n623 = icmp eq i64 %n.vec616, %wide.trip.count424
  %xtraiter752.a = and i64 %wide.trip.count424, 1
  %lcmp.mod753.not.a = icmp eq i64 %xtraiter752.a, 0
  %i.bu = add nsw i64 %wide.trip.count424, -1
  %min.iters.check563 = icmp ult i64 %i.bg, 4
  %i.bv = add nsw i64 %i.as, -1
  %diff.check561 = icmp ult i64 %i.bv, 15
  %min.iters.check565 = icmp ult i64 %i.bg, 16
  %i.bw = and i64 %i.bg, 12
  %n.vec567 = and i64 %i.bg, -16                  ; 4 uses
  %i.bx = add nsw i64 %n.vec567, %i.as
  %cmp.n575 = icmp eq i64 %i.bg, %n.vec567
  %min.epilog.iters.check581 = icmp eq i64 %i.bw, 0
  %n.vec583 = and i64 %i.bg, -4                   ; 3 uses
  %i.by = add nsw i64 %n.vec583, %i.as
  %cmp.n591 = icmp eq i64 %i.bg, %n.vec583
  %i.bz = add nsw i64 %i.aw, -1
  %min.iters.check530 = icmp ult i32 %i.ar, 4
  %min.iters.check532 = icmp ult i32 %i.ar, 32
  %i.ca = and i64 %wide.trip.count444, 28
  %n.vec534 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n543 = icmp eq i64 %n.vec534, %wide.trip.count444
  %min.epilog.iters.check548 = icmp eq i64 %i.ca, 0
  %n.vec550 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n557 = icmp eq i64 %n.vec550, %wide.trip.count444
  %xtraiter758.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod759.not.a = icmp eq i64 %xtraiter758.a, 0
  %min.iters.check506 = icmp ult i64 %i.bg, 8
  %i.cb = add nsw i64 %i.as, -1
  %diff.check = icmp ult i64 %i.cb, 31
  %or.cond735 = select i1 %min.iters.check506, i1 true, i1 %diff.check
  %min.iters.check507 = icmp ult i64 %i.bg, 32
  %i.cc = and i64 %i.bg, 24
  %n.vec509 = and i64 %i.bg, -32                  ; 4 uses
  %i.cd = add nsw i64 %n.vec509, %i.as
  %cmp.n518 = icmp eq i64 %i.bg, %n.vec509
  %min.epilog.iters.check = icmp eq i64 %i.cc, 0
  %n.vec520 = and i64 %i.bg, -8                   ; 3 uses
  %i.ce = add nsw i64 %n.vec520, %i.as
  %cmp.n525 = icmp eq i64 %i.bg, %n.vec520
  %i.cf = add nsw i64 %i.aw, -1
  %xtraiter764.a = and i32 %4, 1
  %i.cg = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod765.not.a = icmp eq i32 %xtraiter764.a, 0
  %lcmp.mod766.a = trunc i32 %4 to i1
  %xtraiter767 = and i32 %i.y, 3                  ; 3 uses
  %i.ch = icmp ult i32 %i.y, 4
  %unroll_iter770 = and i32 %i.y, -4
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  %lcmp.mod769 = icmp ne i32 %xtraiter767, 0
  %i.ci = and i64 %i.bb, 1
  %lcmp.mod773.not.not = icmp eq i64 %i.ci, 0
  %i.cj = shl nuw nsw i64 %i.bb, 2
  %i.ck = mul nuw nsw i64 %i.bb, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bb, -1
  %i.cl = icmp eq i32 %.030.i305, 0
  %i.cm = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.cm, 4294967288              ; 3 uses
  %i.cn = sub nsw i64 %i.bb, %n.vec
  %cmp.n = icmp eq i64 %i.cm, %n.vec
  %xtraiter775 = and i32 %i.y, 1
  %i.co = icmp eq i32 %i.bh, 0
  %unroll_iter779 = and i32 %i.y, -2
  %lcmp.mod777.not = icmp eq i32 %xtraiter775, 0
  %lcmp.mod778 = trunc i32 %i.y to i1
  %xtraiter781 = and i32 %i.y, 1
  %i.cp = icmp eq i32 %i.bh, 0
  %unroll_iter785 = and i32 %i.y, -2
  %lcmp.mod783.not = icmp eq i32 %xtraiter781, 0
  %lcmp.mod784 = trunc i32 %i.y to i1
  %xtraiter787 = and i32 %i.y, 1
  %i.cq = icmp eq i32 %i.bh, 0
  %unroll_iter791 = and i32 %i.y, -2
  %lcmp.mod789.not = icmp eq i32 %xtraiter787, 0
  %lcmp.mod790 = trunc i32 %i.y to i1
  %i.cr = and i64 %i.bb, 1
  %lcmp.mod794.not.not = icmp eq i64 %i.cr, 0
  %i.cs = shl nuw nsw i64 %i.bb, 2
  %i.ct = mul nuw nsw i64 %i.bb, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bb, -1
  %i.cu = icmp eq i32 %.030.i305, 0
  %xtraiter796 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod797.not = icmp eq i64 %xtraiter796, 0
  %i.cv = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 9 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qf, %.loopexit ] ; 2 uses
  %8 = and i64 %indvars.iv457, 1
  %9 = xor i64 %8, 1
  %10 = mul nuw nsw i64 %9, %i.aq
  %11 = and i64 %indvars.iv457, 1
  %12 = xor i64 %11, 1
  %13 = mul nuw nsw i64 %12, %i.aq                ; 2 uses
  %14 = and i64 %indvars.iv457, 1
  %15 = xor i64 %14, 1
  %16 = mul nuw nsw i64 %15, %i.aq
  %17 = and i64 %indvars.iv457, 1
  %18 = xor i64 %17, 1
  %19 = mul nuw nsw i64 %18, %i.aq
  %20 = and i64 %indvars.iv457, 1
  %21 = xor i64 %20, 1
  %22 = mul nuw nsw i64 %21, %i.aq
  %i.cw = trunc nuw i64 %indvars.iv457 to i32     ; 2 uses
  %i.cx = trunc i64 %indvars.iv457 to i1
  %i.cy = select i1 %i.cx, i64 %i.aq, i64 0       ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.cy ; 75 uses
  %i.da = and i32 %i.cw, 1
  %i.db = xor i32 %i.da, 1
  %i.dc = mul nuw nsw i32 %i.db, %i.af
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.dd ; 30 uses
  %i.df = load ptr, ptr %i.u, align 8
  %i.dg = mul i32 %i.e, %i.cw
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dh ; 33 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dk = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.dl = icmp ugt i8 %i.dk, 4
  br i1 %i.dl, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dm = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = zext nneg i8 %i.dk to i64
  %i.do = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dp, %bb.o ], [ %i.dk, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.au, label %iter.check682, label %.preheader354

iter.check682:                                    ; preds = %.preheader356
  %i.dq = sub nsw i64 %10, %i.cy
  %diff.check665 = icmp ugt i64 %i.dq, -32
  %or.cond730.a = select i1 %min.iters.check667, i1 true, i1 %diff.check665
  br i1 %or.cond730.a, label %.lr.ph360.preheader, label %vector.main.loop.iter.check668

vector.main.loop.iter.check668:                   ; preds = %iter.check682
  br i1 %min.iters.check669, label %vec.epilog.ph686, label %vector.body672

vector.body672:                                   ; preds = %vector.main.loop.iter.check668, %vector.body672
  %index673 = phi i64 [ %index.next678, %vector.body672 ], [ 0, %vector.main.loop.iter.check668 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index673 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load674 = load <16 x i8>, ptr %i.dr, align 1
  %wide.load675 = load <16 x i8>, ptr %i.ds, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 %index673 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load676 = load <16 x i8>, ptr %i.dt, align 1
  %wide.load677 = load <16 x i8>, ptr %i.du, align 1
  %i.dv = add <16 x i8> %wide.load676, %wide.load674
  %i.dw = add <16 x i8> %wide.load677, %wide.load675
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index673 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store <16 x i8> %i.dv, ptr %i.dx, align 1
  store <16 x i8> %i.dw, ptr %i.dy, align 1
  %index.next678 = add nuw i64 %index673, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next678, %n.vec671
  br i1 %i.dz, label %middle.block679, label %vector.body672, !llvm.loop !204

middle.block679:                                  ; preds = %vector.body672
  br i1 %cmp.n680, label %.preheader354, label %vec.epilog.iter.check684

vec.epilog.iter.check684:                         ; preds = %middle.block679
  br i1 %min.epilog.iters.check685, label %.lr.ph360.preheader, label %vec.epilog.ph686, !prof !23

vec.epilog.ph686:                                 ; preds = %vector.main.loop.iter.check668, %vec.epilog.iter.check684
  %vec.epilog.resume.val681 = phi i64 [ %n.vec671, %vec.epilog.iter.check684 ], [ 0, %vector.main.loop.iter.check668 ]
  br label %vec.epilog.vector.body688

vec.epilog.vector.body688:                        ; preds = %vec.epilog.vector.body688, %vec.epilog.ph686
  %index689 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph686 ], [ %index.next692, %vec.epilog.vector.body688 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index689
  %wide.load690 = load <4 x i8>, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %i.de, i64 %index689
  %wide.load691 = load <4 x i8>, ptr %i.eb, align 1
  %i.ec = add <4 x i8> %wide.load691, %wide.load690
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index689
  store <4 x i8> %i.ec, ptr %i.ed, align 1
  %index.next692 = add nuw i64 %index689, 4       ; 2 uses
  %i.ee = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.ee, label %vec.epilog.middle.block693, label %vec.epilog.vector.body688, !llvm.loop !205

vec.epilog.middle.block693:                       ; preds = %vec.epilog.vector.body688
  br i1 %cmp.n694, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check682, %vec.epilog.iter.check684, %vec.epilog.middle.block693
  %indvars.iv421.ph = phi i64 [ 0, %iter.check682 ], [ %n.vec671, %vec.epilog.iter.check684 ], [ %n.vec687, %vec.epilog.middle.block693 ] ; 3 uses
  br i1 %lcmp.mod751.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421.prol
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421.prol
  %i.ei = load i8, ptr %i.eh, align 1
  %.narrow286.prol = add i8 %i.ei, %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.ej, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter750
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !206

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.ek = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.au, label %iter.check611, label %.preheader351

iter.check611:                                    ; preds = %.preheader353
  %i.em = sub nsw i64 %16, %i.cy
  %diff.check594 = icmp ugt i64 %i.em, -32
  %or.cond732 = select i1 %min.iters.check596, i1 true, i1 %diff.check594
  br i1 %or.cond732, label %.lr.ph364.preheader, label %vector.main.loop.iter.check597

vector.main.loop.iter.check597:                   ; preds = %iter.check611
  br i1 %min.iters.check598, label %vec.epilog.ph615, label %vector.body601

vector.body601:                                   ; preds = %vector.main.loop.iter.check597, %vector.body601
  %index602 = phi i64 [ %index.next607, %vector.body601 ], [ 0, %vector.main.loop.iter.check597 ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index602 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load603 = load <16 x i8>, ptr %i.en, align 1
  %wide.load604 = load <16 x i8>, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.de, i64 %index602 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load605 = load <16 x i8>, ptr %i.ep, align 1
  %wide.load606 = load <16 x i8>, ptr %i.eq, align 1
  %i.er = lshr <16 x i8> %wide.load605, splat (i8 1)
  %i.es = lshr <16 x i8> %wide.load606, splat (i8 1)
  %i.et = add <16 x i8> %i.er, %wide.load603
  %i.eu = add <16 x i8> %i.es, %wide.load604
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index602 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <16 x i8> %i.et, ptr %i.ev, align 1
  store <16 x i8> %i.eu, ptr %i.ew, align 1
  %index.next607 = add nuw i64 %index602, 32      ; 2 uses
  %i.ex = icmp eq i64 %index.next607, %n.vec600
  br i1 %i.ex, label %middle.block608, label %vector.body601, !llvm.loop !207

middle.block608:                                  ; preds = %vector.body601
  br i1 %cmp.n609, label %.preheader351, label %vec.epilog.iter.check613

vec.epilog.iter.check613:                         ; preds = %middle.block608
  br i1 %min.epilog.iters.check614, label %.lr.ph364.preheader, label %vec.epilog.ph615, !prof !23

vec.epilog.ph615:                                 ; preds = %vector.main.loop.iter.check597, %vec.epilog.iter.check613
  %vec.epilog.resume.val610 = phi i64 [ %n.vec600, %vec.epilog.iter.check613 ], [ 0, %vector.main.loop.iter.check597 ]
  br label %vec.epilog.vector.body617

vec.epilog.vector.body617:                        ; preds = %vec.epilog.vector.body617, %vec.epilog.ph615
  %index618 = phi i64 [ %vec.epilog.resume.val610, %vec.epilog.ph615 ], [ %index.next621, %vec.epilog.vector.body617 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index618
  %wide.load619 = load <4 x i8>, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.de, i64 %index618
  %wide.load620 = load <4 x i8>, ptr %i.ez, align 1
  %i.fa = lshr <4 x i8> %wide.load620, splat (i8 1)
  %i.fb = add <4 x i8> %i.fa, %wide.load619
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index618
  store <4 x i8> %i.fb, ptr %i.fc, align 1
  %index.next621 = add nuw i64 %index618, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next621, %n.vec616
  br i1 %i.fd, label %vec.epilog.middle.block622, label %vec.epilog.vector.body617, !llvm.loop !208

vec.epilog.middle.block622:                       ; preds = %vec.epilog.vector.body617
  br i1 %cmp.n623, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check611, %vec.epilog.iter.check613, %vec.epilog.middle.block622
  %indvars.iv431.ph = phi i64 [ 0, %iter.check611 ], [ %n.vec600, %vec.epilog.iter.check613 ], [ %n.vec616, %vec.epilog.middle.block622 ] ; 6 uses
  br i1 %lcmp.mod753.not.a, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431.ph
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431.ph
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = lshr i8 %i.fh, 1
  %.narrow290.prol = add i8 %i.fi, %i.ff
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fj, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fk = icmp eq i64 %indvars.iv431.ph, %i.bu
  br i1 %i.fk, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.av, label %iter.check545, label %.loopexit348

iter.check545:                                    ; preds = %.preheader349
  %i.fl = sub nsw i64 %22, %i.cy
  %diff.check528 = icmp ugt i64 %i.fl, -32
  %or.cond734 = select i1 %min.iters.check530, i1 true, i1 %diff.check528
  br i1 %or.cond734, label %.lr.ph368.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.body535

vector.body535:                                   ; preds = %vector.main.loop.iter.check531, %vector.body535
  %index536 = phi i64 [ %index.next541, %vector.body535 ], [ 0, %vector.main.loop.iter.check531 ] ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index536 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load537 = load <16 x i8>, ptr %i.fm, align 1
  %wide.load538 = load <16 x i8>, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.de, i64 %index536 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load539 = load <16 x i8>, ptr %i.fo, align 1
  %wide.load540 = load <16 x i8>, ptr %i.fp, align 1
  %i.fq = add <16 x i8> %wide.load539, %wide.load537
  %i.fr = add <16 x i8> %wide.load540, %wide.load538
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index536 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store <16 x i8> %i.fq, ptr %i.fs, align 1
  store <16 x i8> %i.fr, ptr %i.ft, align 1
  %index.next541 = add nuw i64 %index536, 32      ; 2 uses
  %i.fu = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.fu, label %middle.block542, label %vector.body535, !llvm.loop !209

middle.block542:                                  ; preds = %vector.body535
  br i1 %cmp.n543, label %.loopexit348, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  br i1 %min.epilog.iters.check548, label %.lr.ph368.preheader, label %vec.epilog.ph549, !prof !23

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  br label %vec.epilog.vector.body551

vec.epilog.vector.body551:                        ; preds = %vec.epilog.vector.body551, %vec.epilog.ph549
  %index552 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next555, %vec.epilog.vector.body551 ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %index552
  %wide.load553 = load <4 x i8>, ptr %i.fv, align 1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.de, i64 %index552
  %wide.load554 = load <4 x i8>, ptr %i.fw, align 1
  %i.fx = add <4 x i8> %wide.load554, %wide.load553
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cz, i64 %index552
  store <4 x i8> %i.fx, ptr %i.fy, align 1
  %index.next555 = add nuw i64 %index552, 4       ; 2 uses
  %i.fz = icmp eq i64 %index.next555, %n.vec550
  br i1 %i.fz, label %vec.epilog.middle.block556, label %vec.epilog.vector.body551, !llvm.loop !210

vec.epilog.middle.block556:                       ; preds = %vec.epilog.vector.body551
  br i1 %cmp.n557, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block556
  %indvars.iv441.ph = phi i64 [ 0, %iter.check545 ], [ %n.vec534, %vec.epilog.iter.check547 ], [ %n.vec550, %vec.epilog.middle.block556 ] ; 3 uses
  br i1 %lcmp.mod759.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter760 = phi i64 [ %prol.iter760.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441.prol
  %i.gb = load i8, ptr %i.ga, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441.prol
  %i.gd = load i8, ptr %i.gc, align 1
  %.narrow292.prol = add i8 %i.gd, %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.ge, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter760.next = add i64 %prol.iter760, 1   ; 2 uses
  %prol.iter760.cmp.not = icmp eq i64 %prol.iter760.next, %xtraiter758.a
  br i1 %prol.iter760.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !211

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gf = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.aw, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.as, i1 false)
  br i1 %i.at, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond735, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.body510

vector.body510:                                   ; preds = %vector.main.loop.iter.check, %vector.body510
  %index511 = phi i64 [ %index.next516, %vector.body510 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.gh = add i64 %index511, %i.as                ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.dj, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load512 = load <16 x i8>, ptr %i.gi, align 1
  %wide.load513 = load <16 x i8>, ptr %i.gj, align 1
  %i.gk = getelementptr inbounds i8, ptr %i.cz, i64 %index511 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load514 = load <16 x i8>, ptr %i.gk, align 1
  %wide.load515 = load <16 x i8>, ptr %i.gl, align 1
  %i.gm = add <16 x i8> %wide.load514, %wide.load512
  %i.gn = add <16 x i8> %wide.load515, %wide.load513
  %i.go = getelementptr inbounds i8, ptr %i.cz, i64 %i.gh ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <16 x i8> %i.gm, ptr %i.go, align 1
  store <16 x i8> %i.gn, ptr %i.gp, align 1
  %index.next516 = add nuw i64 %index511, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next516, %n.vec509
  br i1 %i.gq, label %middle.block517, label %vector.body510, !llvm.loop !212

middle.block517:                                  ; preds = %vector.body510
  br i1 %cmp.n518, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block517
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !54

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec509, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index521 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next524, %vec.epilog.vector.body ] ; 3 uses
  %i.gr = add i64 %index521, %i.as                ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.dj, i64 %i.gr
  %wide.load522 = load <8 x i8>, ptr %i.gs, align 1
  %i.gt = getelementptr inbounds i8, ptr %i.cz, i64 %index521
  %wide.load523 = load <8 x i8>, ptr %i.gt, align 1
  %i.gu = add <8 x i8> %wide.load523, %wide.load522
  %i.gv = getelementptr inbounds i8, ptr %i.cz, i64 %i.gr
  store <8 x i8> %i.gu, ptr %i.gv, align 1
  %index.next524 = add nuw i64 %index521, 8       ; 2 uses
  %i.gw = icmp eq i64 %index.next524, %n.vec520
  br i1 %i.gw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !213

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n525, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.as, %iter.check ], [ %i.cd, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 7 uses
  %i.gx = sub nsw i64 %i.aw, %indvars.iv446.ph
  %xtraiter761 = and i64 %i.gx, 1
  %lcmp.mod762.not = icmp eq i64 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.gy = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv446.ph
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = sub nsw i64 %indvars.iv446.ph, %i.as
  %i.hb = getelementptr inbounds i8, ptr %i.cz, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1
  %.narrow294.prol = add i8 %i.hc, %i.gz
  %i.hd = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hd, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.he = icmp eq i64 %indvars.iv446.ph, %i.cf
  br i1 %i.he, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hf = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv446
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = sub nsw i64 %indvars.iv446, %i.as
  %i.hi = getelementptr inbounds i8, ptr %i.cz, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %.narrow294 = add i8 %i.hj, %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hk, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hl = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next447
  %i.hm = load i8, ptr %i.hl, align 1
  %i.hn = sub nsw i64 %indvars.iv.next447, %i.as
  %i.ho = getelementptr inbounds i8, ptr %i.cz, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1
  %.narrow294.1 = add i8 %i.hp, %i.hm
  %i.hq = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hq, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.aw
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !214

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv441
  %i.hs = load i8, ptr %i.hr, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv441
  %i.hu = load i8, ptr %i.ht, align 1
  %.narrow292 = add i8 %i.hu, %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.hv, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442
  %i.hz = load i8, ptr %i.hy, align 1
  %.narrow292.1 = add i8 %i.hz, %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ia, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.1
  %i.ic = load i8, ptr %i.ib, align 1
  %i.id = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.1
  %i.ie = load i8, ptr %i.id, align 1
  %.narrow292.2 = add i8 %i.ie, %i.ic
  %i.if = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.if, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next442.2
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next442.2
  %i.ij = load i8, ptr %i.ii, align 1
  %.narrow292.3 = add i8 %i.ij, %i.ih
  %i.ik = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ik, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !215

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block608, %vec.epilog.middle.block622, %.preheader353
  br i1 %i.at, label %iter.check578, label %.loopexit348

iter.check578:                                    ; preds = %.preheader351
  br i1 %min.iters.check563, label %.lr.ph366.preheader, label %vector.memcheck559

vector.memcheck559:                               ; preds = %iter.check578
  %i.il = sub nsw i64 %19, %i.cy
  %diff.check560 = icmp ugt i64 %i.il, -16
  %conflict.rdx = or i1 %diff.check560, %diff.check561
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck559
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.body568

vector.body568:                                   ; preds = %vector.main.loop.iter.check564, %vector.body568
  %index569 = phi i64 [ %index.next573, %vector.body568 ], [ 0, %vector.main.loop.iter.check564 ] ; 3 uses
  %i.im = add i64 %index569, %i.as                ; 3 uses
  %i.in = getelementptr inbounds i8, ptr %i.dj, i64 %i.im
  %wide.load570 = load <16 x i8>, ptr %i.in, align 1
  %i.io = getelementptr inbounds i8, ptr %i.de, i64 %i.im
  %wide.load571 = load <16 x i8>, ptr %i.io, align 1
  %i.ip = zext <16 x i8> %wide.load571 to <16 x i16>
  %i.iq = getelementptr inbounds i8, ptr %i.cz, i64 %index569
  %wide.load572 = load <16 x i8>, ptr %i.iq, align 1
  %i.ir = zext <16 x i8> %wide.load572 to <16 x i16>
  %i.is = add nuw nsw <16 x i16> %i.ir, %i.ip
  %i.it = lshr <16 x i16> %i.is, splat (i16 1)
  %i.iu = trunc nuw <16 x i16> %i.it to <16 x i8>
  %i.iv = add <16 x i8> %wide.load570, %i.iu
  %i.iw = getelementptr inbounds i8, ptr %i.cz, i64 %i.im
  store <16 x i8> %i.iv, ptr %i.iw, align 1
  %index.next573 = add nuw i64 %index569, 16      ; 2 uses
  %i.ix = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.ix, label %middle.block574, label %vector.body568, !llvm.loop !216

middle.block574:                                  ; preds = %vector.body568
  br i1 %cmp.n575, label %.loopexit348, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  br i1 %min.epilog.iters.check581, label %.lr.ph366.preheader, label %vec.epilog.ph582, !prof !8

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %i.iy = add i64 %index585, %i.as                ; 3 uses
  %i.iz = getelementptr inbounds i8, ptr %i.dj, i64 %i.iy
  %wide.load586 = load <4 x i8>, ptr %i.iz, align 1
  %i.ja = getelementptr inbounds i8, ptr %i.de, i64 %i.iy
  %wide.load587 = load <4 x i8>, ptr %i.ja, align 1
  %i.jb = zext <4 x i8> %wide.load587 to <4 x i16>
  %i.jc = getelementptr inbounds i8, ptr %i.cz, i64 %index585
  %wide.load588 = load <4 x i8>, ptr %i.jc, align 1
  %i.jd = zext <4 x i8> %wide.load588 to <4 x i16>
  %i.je = add nuw nsw <4 x i16> %i.jd, %i.jb
  %i.jf = lshr <4 x i16> %i.je, splat (i16 1)
  %i.jg = trunc nuw <4 x i16> %i.jf to <4 x i8>
  %i.jh = add <4 x i8> %wide.load586, %i.jg
  %i.ji = getelementptr inbounds i8, ptr %i.cz, i64 %i.iy
  store <4 x i8> %i.jh, ptr %i.ji, align 1
  %index.next589 = add nuw i64 %index585, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.jj, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !217

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  br i1 %cmp.n591, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck559, %iter.check578, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %indvars.iv436.ph = phi i64 [ %i.as, %iter.check578 ], [ %i.as, %vector.memcheck559 ], [ %i.bx, %vec.epilog.iter.check580 ], [ %i.by, %vec.epilog.middle.block590 ] ; 8 uses
  %i.jk = sub nsw i64 %i.aw, %indvars.iv436.ph
  %xtraiter755 = and i64 %i.jk, 1
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.jl = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436.ph
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436.ph
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = zext i8 %i.jo to i16
  %i.jq = sub nsw i64 %indvars.iv436.ph, %i.as
  %i.jr = getelementptr inbounds i8, ptr %i.cz, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1
  %i.jt = zext i8 %i.js to i16
  %i.ju = add nuw nsw i16 %i.jt, %i.jp
  %i.jv = lshr i16 %i.ju, 1
  %.tr287.prol = trunc nuw i16 %i.jv to i8
  %.narrow288.prol = add i8 %i.jm, %.tr287.prol
  %i.jw = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.jw, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.jx = icmp eq i64 %indvars.iv436.ph, %i.bz
  br i1 %i.jx, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv431
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv431
  %i.kb = load i8, ptr %i.ka, align 1
  %i.kc = lshr i8 %i.kb, 1
  %.narrow290 = add i8 %i.kc, %i.jz
  %i.kd = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.kd, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next432
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next432
  %i.kh = load i8, ptr %i.kg, align 1
  %i.ki = lshr i8 %i.kh, 1
  %.narrow290.1 = add i8 %i.ki, %i.kf
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.kj, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !218

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv436
  %i.kl = load i8, ptr %i.kk, align 1
  %i.km = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv436
  %i.kn = load i8, ptr %i.km, align 1
  %i.ko = zext i8 %i.kn to i16
  %i.kp = sub nsw i64 %indvars.iv436, %i.as
  %i.kq = getelementptr inbounds i8, ptr %i.cz, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1
  %i.ks = zext i8 %i.kr to i16
  %i.kt = add nuw nsw i16 %i.ks, %i.ko
  %i.ku = lshr i16 %i.kt, 1
  %.tr287 = trunc nuw i16 %i.ku to i8
  %.narrow288 = add i8 %i.kl, %.tr287
  %i.kv = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.kv, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.kw = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv.next437
  %i.kx = load i8, ptr %i.kw, align 1
  %i.ky = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv.next437
  %i.kz = load i8, ptr %i.ky, align 1
  %i.la = zext i8 %i.kz to i16
  %i.lb = sub nsw i64 %indvars.iv.next437, %i.as
  %i.lc = getelementptr inbounds i8, ptr %i.cz, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1
  %i.le = zext i8 %i.ld to i16
  %i.lf = add nuw nsw i16 %i.le, %i.la
  %i.lg = lshr i16 %i.lf, 1
  %.tr287.1 = trunc nuw i16 %i.lg to i8
  %.narrow288.1 = add i8 %i.kx, %.tr287.1
  %i.lh = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lh, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.aw
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !219

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block679, %vec.epilog.middle.block693, %.preheader356
  br i1 %i.at, label %iter.check648, label %.loopexit348

iter.check648:                                    ; preds = %.preheader354
  br i1 %min.iters.check632, label %.lr.ph362.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %iter.check648
  %i.li = sub nsw i64 %13, %i.cy
  %diff.check627 = icmp ugt i64 %i.li, -16
  %conflict.rdx628 = or i1 %diff.check626, %diff.check627
  %i.lj = add nsw i64 %i.cy, %i.as
  %i.lk = sub nsw i64 %13, %i.lj
  %diff.check629 = icmp ugt i64 %i.lk, -16
  %conflict.rdx630 = or i1 %conflict.rdx628, %diff.check629
  br i1 %conflict.rdx630, label %.lr.ph362.preheader, label %vector.main.loop.iter.check633

vector.main.loop.iter.check633:                   ; preds = %vector.memcheck625
  br i1 %min.iters.check634, label %vec.epilog.ph652, label %vector.body637

vector.body637:                                   ; preds = %vector.main.loop.iter.check633, %vector.body637
  %index638 = phi i64 [ %index.next643, %vector.body637 ], [ 0, %vector.main.loop.iter.check633 ] ; 4 uses
  %i.ll = add i64 %index638, %i.as                ; 3 uses
  %i.lm = getelementptr inbounds i8, ptr %i.dj, i64 %i.ll
  %wide.load639 = load <16 x i8>, ptr %i.lm, align 1
  %i.ln = getelementptr inbounds i8, ptr %i.cz, i64 %index638
  %wide.load640 = load <16 x i8>, ptr %i.ln, align 1
  %i.lo = zext <16 x i8> %wide.load640 to <16 x i32> ; 3 uses
  %i.lp = getelementptr inbounds i8, ptr %i.de, i64 %i.ll
  %wide.load641 = load <16 x i8>, ptr %i.lp, align 1
  %i.lq = zext <16 x i8> %wide.load641 to <16 x i32> ; 3 uses
  %i.lr = getelementptr inbounds i8, ptr %i.de, i64 %index638
  %wide.load642 = load <16 x i8>, ptr %i.lr, align 1
  %i.ls = zext <16 x i8> %wide.load642 to <16 x i32> ; 2 uses
  %i.lt = mul nuw nsw <16 x i32> %i.ls, splat (i32 3)
  %i.lu = add nuw nsw <16 x i32> %i.lq, %i.lo
  %i.lv = sub nsw <16 x i32> %i.lt, %i.lu         ; 2 uses
  %i.lw = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lo, <16 x i32> %i.lq) ; 2 uses
  %i.lx = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.lo, <16 x i32> %i.lq) ; 2 uses
  %i.ly = icmp sgt <16 x i32> %i.lx, %i.lv
  %i.lz = select <16 x i1> %i.ly, <16 x i32> %i.ls, <16 x i32> %i.lw
  %i.ma = icmp sgt <16 x i32> %i.lv, %i.lw
  %i.mb = select <16 x i1> %i.ma, <16 x i32> %i.lz, <16 x i32> %i.lx
  %i.mc = trunc nuw <16 x i32> %i.mb to <16 x i8>
  %i.md = add <16 x i8> %wide.load639, %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.cz, i64 %i.ll
  store <16 x i8> %i.md, ptr %i.me, align 1
  %index.next643 = add nuw i64 %index638, 16      ; 2 uses
  %i.mf = icmp eq i64 %index.next643, %n.vec636
  br i1 %i.mf, label %middle.block644, label %vector.body637, !llvm.loop !220

middle.block644:                                  ; preds = %vector.body637
  br i1 %cmp.n645, label %.loopexit348, label %vec.epilog.iter.check650

vec.epilog.iter.check650:                         ; preds = %middle.block644
  br i1 %min.epilog.iters.check651, label %.lr.ph362.preheader, label %vec.epilog.ph652, !prof !8

vec.epilog.ph652:                                 ; preds = %vector.main.loop.iter.check633, %vec.epilog.iter.check650
  %vec.epilog.resume.val646 = phi i64 [ %n.vec636, %vec.epilog.iter.check650 ], [ 0, %vector.main.loop.iter.check633 ]
  br label %vec.epilog.vector.body654

vec.epilog.vector.body654:                        ; preds = %vec.epilog.vector.body654, %vec.epilog.ph652
  %index655 = phi i64 [ %vec.epilog.resume.val646, %vec.epilog.ph652 ], [ %index.next660, %vec.epilog.vector.body654 ] ; 4 uses
  %i.mg = add i64 %index655, %i.as                ; 3 uses
  %i.mh = getelementptr inbounds i8, ptr %i.dj, i64 %i.mg
  %wide.load656 = load <4 x i8>, ptr %i.mh, align 1
  %i.mi = getelementptr inbounds i8, ptr %i.cz, i64 %index655
  %wide.load657 = load <4 x i8>, ptr %i.mi, align 1
  %i.mj = zext <4 x i8> %wide.load657 to <4 x i32> ; 3 uses
  %i.mk = getelementptr inbounds i8, ptr %i.de, i64 %i.mg
  %wide.load658 = load <4 x i8>, ptr %i.mk, align 1
  %i.ml = zext <4 x i8> %wide.load658 to <4 x i32> ; 3 uses
  %i.mm = getelementptr inbounds i8, ptr %i.de, i64 %index655
  %wide.load659 = load <4 x i8>, ptr %i.mm, align 1
  %i.mn = zext <4 x i8> %wide.load659 to <4 x i32> ; 2 uses
  %i.mo = mul nuw nsw <4 x i32> %i.mn, splat (i32 3)
  %i.mp = add nuw nsw <4 x i32> %i.ml, %i.mj
  %i.mq = sub nsw <4 x i32> %i.mo, %i.mp          ; 2 uses
  %i.mr = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mj, <4 x i32> %i.ml) ; 2 uses
  %i.ms = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mj, <4 x i32> %i.ml) ; 2 uses
  %i.mt = icmp sgt <4 x i32> %i.ms, %i.mq
  %i.mu = select <4 x i1> %i.mt, <4 x i32> %i.mn, <4 x i32> %i.mr
  %i.mv = icmp sgt <4 x i32> %i.mq, %i.mr
  %i.mw = select <4 x i1> %i.mv, <4 x i32> %i.mu, <4 x i32> %i.ms
  %i.mx = trunc nuw <4 x i32> %i.mw to <4 x i8>
  %i.my = add <4 x i8> %wide.load656, %i.mx
  %i.mz = getelementptr inbounds i8, ptr %i.cz, i64 %i.mg
  store <4 x i8> %i.my, ptr %i.mz, align 1
  %index.next660 = add nuw i64 %index655, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next660, %n.vec653
  br i1 %i.na, label %vec.epilog.middle.block661, label %vec.epilog.vector.body654, !llvm.loop !221

vec.epilog.middle.block661:                       ; preds = %vec.epilog.vector.body654
  br i1 %cmp.n662, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck625, %iter.check648, %vec.epilog.iter.check650, %vec.epilog.middle.block661
  %indvars.iv426.ph = phi i64 [ %i.as, %iter.check648 ], [ %i.as, %vector.memcheck625 ], [ %i.br, %vec.epilog.iter.check650 ], [ %i.bs, %vec.epilog.middle.block661 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv421
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv421
  %i.ne = load i8, ptr %i.nd, align 1
  %.narrow286 = add i8 %i.ne, %i.nc
  %i.nf = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nf, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422
  %i.nh = load i8, ptr %i.ng, align 1
  %i.ni = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422
  %i.nj = load i8, ptr %i.ni, align 1
  %.narrow286.1 = add i8 %i.nj, %i.nh
  %i.nk = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.nk, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.1
  %i.nm = load i8, ptr %i.nl, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.1
  %i.no = load i8, ptr %i.nn, align 1
  %.narrow286.2 = add i8 %i.no, %i.nm
  %i.np = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.np, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv.next422.2
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv.next422.2
  %i.nt = load i8, ptr %i.ns, align 1
  %.narrow286.3 = add i8 %i.nt, %i.nr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.nu, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !222

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.nv = getelementptr inbounds i8, ptr %i.dj, i64 %indvars.iv426
  %i.nw = load i8, ptr %i.nv, align 1
  %i.nx = sub nsw i64 %indvars.iv426, %i.as       ; 2 uses
  %i.ny = getelementptr inbounds i8, ptr %i.cz, i64 %i.nx
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = zext i8 %i.nz to i32                    ; 3 uses
  %i.ob = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv426
  %i.oc = load i8, ptr %i.ob, align 1
  %i.od = zext i8 %i.oc to i32                    ; 3 uses
  %i.oe = getelementptr inbounds i8, ptr %i.de, i64 %i.nx
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = zext i8 %i.of to i32                    ; 2 uses
  %i.oh = mul nuw nsw i32 %i.og, 3
  %i.oi = add nuw nsw i32 %i.od, %i.oa
  %i.oj = sub nsw i32 %i.oh, %i.oi                ; 2 uses
  %i.ok = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.oa, i32 range(i32 0, 256) %i.od) ; 2 uses
  %i.ol = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.oa, i32 range(i32 0, 256) %i.od) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.ol, %i.oj
  %i.om = select i1 %.not.i303, i32 %i.og, i32 %i.ok
  %.not20.i = icmp sgt i32 %i.oj, %i.ok
  %i.on = select i1 %.not20.i, i32 %i.om, i32 %i.ol
  %.tr = trunc nuw i32 %i.on to i8
  %.narrow284 = add i8 %i.nw, %.tr
  %i.oo = getelementptr inbounds i8, ptr %i.cz, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.oo, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.aw
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !223

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cz, ptr nonnull align 1 %i.dj, i64 %i.as, i1 false)
  br i1 %i.at, label %iter.check715, label %.loopexit348

iter.check715:                                    ; preds = %bb.s
  br i1 %or.cond736, label %.lr.ph.preheader, label %vector.main.loop.iter.check700

vector.main.loop.iter.check700:                   ; preds = %iter.check715
  br i1 %min.iters.check701, label %vec.epilog.ph719, label %vector.body704

vector.body704:                                   ; preds = %vector.main.loop.iter.check700, %vector.body704
  %index705 = phi i64 [ %index.next710, %vector.body704 ], [ 0, %vector.main.loop.iter.check700 ] ; 3 uses
  %i.op = add i64 %index705, %i.as                ; 2 uses
  %i.oq = getelementptr inbounds i8, ptr %i.dj, i64 %i.op ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %wide.load706 = load <16 x i8>, ptr %i.oq, align 1
  %wide.load707 = load <16 x i8>, ptr %i.or, align 1
  %i.os = getelementptr inbounds i8, ptr %i.cz, i64 %index705 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load708 = load <16 x i8>, ptr %i.os, align 1
  %wide.load709 = load <16 x i8>, ptr %i.ot, align 1
  %i.ou = lshr <16 x i8> %wide.load708, splat (i8 1)
  %i.ov = lshr <16 x i8> %wide.load709, splat (i8 1)
  %i.ow = add <16 x i8> %i.ou, %wide.load706
  %i.ox = add <16 x i8> %i.ov, %wide.load707
  %i.oy = getelementptr inbounds i8, ptr %i.cz, i64 %i.op ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store <16 x i8> %i.ow, ptr %i.oy, align 1
  store <16 x i8> %i.ox, ptr %i.oz, align 1
  %index.next710 = add nuw i64 %index705, 32      ; 2 uses
  %i.pa = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.pa, label %middle.block711, label %vector.body704, !llvm.loop !224

middle.block711:                                  ; preds = %vector.body704
  br i1 %cmp.n712, label %.loopexit348, label %vec.epilog.iter.check717

vec.epilog.iter.check717:                         ; preds = %middle.block711
  br i1 %min.epilog.iters.check718, label %.lr.ph.preheader, label %vec.epilog.ph719, !prof !54

vec.epilog.ph719:                                 ; preds = %vector.main.loop.iter.check700, %vec.epilog.iter.check717
  %vec.epilog.resume.val713 = phi i64 [ %n.vec703, %vec.epilog.iter.check717 ], [ 0, %vector.main.loop.iter.check700 ]
  br label %vec.epilog.vector.body721

vec.epilog.vector.body721:                        ; preds = %vec.epilog.vector.body721, %vec.epilog.ph719
  %index722 = phi i64 [ %vec.epilog.resume.val713, %vec.epilog.ph719 ], [ %index.next725, %vec.epilog.vector.body721 ] ; 3 uses
  %i.pb = add i64 %index722, %i.as                ; 2 uses
end_hunk_1
