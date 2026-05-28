inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@SharpYuvUpdateRGB_C:bb.a
  %found.conflict = and i1 %bound0, %bound1
  %bound013 = icmp ult ptr %2, %scevgep12
  %bound114 = icmp ult ptr %1, %scevgep
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %found.conflict, %found.conflict15
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check16 = icmp ult i32 %3, 16
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <8 x i16>, ptr %i.c, align 2, !tbaa !9, !alias.scope !24
  %wide.load17 = load <8 x i16>, ptr %i.d, align 2, !tbaa !9, !alias.scope !24
  %i.e = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load18 = load <8 x i16>, ptr %i.e, align 2, !tbaa !9, !alias.scope !27
  %wide.load19 = load <8 x i16>, ptr %i.f, align 2, !tbaa !9, !alias.scope !27
  %i.g = sub <8 x i16> %wide.load, %wide.load18
  %i.h = sub <8 x i16> %wide.load17, %wide.load19
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load20 = load <8 x i16>, ptr %i.i, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  %wide.load21 = load <8 x i16>, ptr %i.j, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  %i.k = add <8 x i16> %i.g, %wide.load20
  %i.l = add <8 x i16> %i.h, %wide.load21
  store <8 x i16> %i.k, ptr %i.i, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  store <8 x i16> %i.l, ptr %i.j, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index24
  %wide.load25 = load <4 x i16>, ptr %i.n, align 2, !tbaa !9, !alias.scope !24
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index24
  %wide.load26 = load <4 x i16>, ptr %i.o, align 2, !tbaa !9, !alias.scope !27
  %i.p = sub <4 x i16> %wide.load25, %wide.load26
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index24 ; 2 uses
  %wide.load27 = load <4 x i16>, ptr %i.q, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  %i.r = add <4 x i16> %i.p, %wide.load27
  store <4 x i16> %i.r, ptr %i.q, align 2, !tbaa !9, !alias.scope !29, !noalias !31
  %index.next28 = add nuw i64 %index24, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %n.vec23, %wide.trip.count
  br i1 %cmp.n29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec23, %vec.epilog.middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.ph
  %i.u = load i16, ptr %i.t, align 2, !tbaa !9
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.ph
  %i.w = load i16, ptr %i.v, align 2, !tbaa !9
  %i.x = sub i16 %i.u, %i.w
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.ph ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9
  %i.aa = add i16 %i.x, %i.z
  store i16 %i.aa, ptr %i.y, align 2, !tbaa !9
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = add nsw i64 %wide.trip.count, -1
  %i.ac = icmp eq i64 %indvars.iv.ph, %i.ab
  br i1 %i.ac, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !9
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !9
  %i.ah = sub i16 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !9
  %i.ak = add i16 %i.ah, %i.aj
  store i16 %i.ak, ptr %i.ai, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.am = load i16, ptr %i.al, align 2, !tbaa !9
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !9
  %i.ap = sub i16 %i.am, %i.ao
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !9
  %i.as = add i16 %i.ap, %i.ar
  store i16 %i.as, ptr %i.aq, align 2, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SharpYuvFilterRow_C(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef writeonly captures(none) %4, i32 noundef %5) #1 {
bb.a:
  %notmask = shl nsw i32 -1, %5
  %i.a = xor i32 %notmask, -1                     ; 3 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.c   ; 3 uses
  %i.d = shl nuw nsw i64 %wide.trip.count, 1
  %i.e = add nuw nsw i64 %i.d, 2                  ; 2 uses
  %scevgep33 = getelementptr i8, ptr %0, i64 %i.e
  %scevgep34 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep35 = getelementptr i8, ptr %3, i64 %i.c
  %bound0 = icmp ult ptr %4, %scevgep33
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound036 = icmp ult ptr %4, %scevgep34
  %bound137 = icmp ult ptr %1, %scevgep
  %found.conflict38 = and i1 %bound036, %bound137
  %conflict.rdx = or i1 %found.conflict, %found.conflict38
  %bound039 = icmp ult ptr %4, %scevgep35
  %bound140 = icmp ult ptr %3, %scevgep
  %found.conflict41 = and i1 %bound039, %bound140
  %conflict.rdx42 = or i1 %conflict.rdx, %found.conflict41
  br i1 %conflict.rdx42, label %.lr.ph.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 1                ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %1, i64 %i.f
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 1                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.i  ; 2 uses
  %next.gep43 = getelementptr i8, ptr %1, i64 %i.i ; 2 uses
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !9, !alias.scope !36
  %i.j = sext <4 x i16> %wide.load to <4 x i32>   ; 2 uses
  %i.k = mul nsw <4 x i32> %i.j, splat (i32 9)
  %i.l = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load44 = load <4 x i16>, ptr %i.l, align 2, !tbaa !9, !alias.scope !36
  %i.m = sext <4 x i16> %wide.load44 to <4 x i32> ; 2 uses
  %wide.load45 = load <4 x i16>, ptr %next.gep43, align 2, !tbaa !9, !alias.scope !39
  %i.n = sext <4 x i16> %wide.load45 to <4 x i32> ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep43, i64 2
  %wide.load46 = load <4 x i16>, ptr %i.o, align 2, !tbaa !9, !alias.scope !39
  %i.p = sext <4 x i16> %wide.load46 to <4 x i32> ; 2 uses
  %i.q = add nsw <4 x i32> %i.n, %i.m
  %i.r = mul nsw <4 x i32> %i.q, splat (i32 3)
  %i.s = add nsw <4 x i32> %i.k, splat (i32 8)
  %i.t = add nsw <4 x i32> %i.s, %i.p
  %i.u = add nsw <4 x i32> %i.t, %i.r
  %i.v = ashr <4 x i32> %i.u, splat (i32 4)
  %i.w = mul nsw <4 x i32> %i.m, splat (i32 9)
  %i.x = add nsw <4 x i32> %i.p, %i.j
  %i.y = mul nsw <4 x i32> %i.x, splat (i32 3)
  %i.z = add nsw <4 x i32> %i.w, splat (i32 8)
  %i.aa = add nsw <4 x i32> %i.z, %i.n
  %i.ab = add nsw <4 x i32> %i.aa, %i.y
  %i.ac = ashr <4 x i32> %i.ab, splat (i32 4)
  %i.ad = shl nuw nsw i64 %index, 1               ; 2 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ad
  %wide.vec = load <8 x i16>, ptr %i.ae, align 2, !tbaa !9, !alias.scope !41 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec47 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %6 = zext <4 x i16> %strided.vec to <4 x i32>
  %i.af = add nsw <4 x i32> %i.v, %6              ; 2 uses
  %i.ag = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.af, <4 x i32> %broadcast.splat)
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.ad
  %7 = zext <4 x i16> %strided.vec47 to <4 x i32>
  %i.ai = add nsw <4 x i32> %i.ac, %7             ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ai, <4 x i32> %broadcast.splat)
  %i.ak = shufflevector <4 x i32> %i.af, <4 x i32> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.al = icmp slt <8 x i32> %i.ak, zeroinitializer
  %i.am = shufflevector <4 x i32> %i.ag, <4 x i32> %i.aj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.an = trunc <8 x i32> %i.am to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.al, <8 x i16> zeroinitializer, <8 x i16> %i.an
  store <8 x i16> %interleaved.vec, ptr %i.ah, align 2, !tbaa !9, !alias.scope !43, !noalias !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader50

.lr.ph.preheader50:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.031.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  %.02530.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader50, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader50 ] ; 2 uses
  %.031 = phi ptr [ %i.as, %.lr.ph ], [ %.031.ph, %.lr.ph.preheader50 ] ; 2 uses
  %.02530 = phi ptr [ %i.ax, %.lr.ph ], [ %.02530.ph, %.lr.ph.preheader50 ] ; 2 uses
  %i.ap = load i16, ptr %.031, align 2, !tbaa !9
  %i.aq = sext i16 %i.ap to i32                   ; 2 uses
  %i.ar = mul nsw i32 %i.aq, 9
  %i.as = getelementptr inbounds nuw i8, ptr %.031, i64 2 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !9
  %i.au = sext i16 %i.at to i32                   ; 2 uses
  %i.av = load i16, ptr %.02530, align 2, !tbaa !9
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02530, i64 2 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !9
  %i.az = sext i16 %i.ay to i32                   ; 2 uses
  %reass.add = add nsw i32 %i.aw, %i.au
  %reass.mul = mul nsw i32 %reass.add, 3
  %i.ba = add nsw i32 %i.ar, 8
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = add nsw i32 %i.bb, %reass.mul
  %i.bd = ashr i32 %i.bc, 4
  %i.be = mul nsw i32 %i.au, 9
  %reass.add27 = add nsw i32 %i.az, %i.aq
  %reass.mul28 = mul nsw i32 %reass.add27, 3
  %i.bf = add nsw i32 %i.be, 8
  %i.bg = add nsw i32 %i.bf, %i.aw
  %i.bh = add nsw i32 %i.bg, %reass.mul28
  %i.bi = ashr i32 %i.bh, 4
  %i.bj = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !9
  %i.bm = zext i16 %i.bl to i32
  %i.bn = add nsw i32 %i.bd, %i.bm                ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  %i.bp = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.bn, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.bq = trunc i32 %i.bp to i16
  %i.br = select i1 %i.bo, i16 0, i16 %i.bq
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bj
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !9
  %i.bt = or disjoint i64 %i.bj, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !9
  %i.bw = zext i16 %i.bv to i32
  %i.bx = add nsw i32 %i.bi, %i.bw                ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = tail call i32 @llvm.smin.i32(i32 range(i32 -65535, 131071) %i.bx, i32 range(i32 -2147483648, 2147483647) %i.a)
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = select i1 %i.by, i16 0, i16 %i.ca
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %i.bt
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

declare void @InitSharpYuvSSE2() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !5, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13}
!13 = distinct !{!13, !"LVerDomain"}
!14 = !{!15}
!15 = distinct !{!15, !13}
!16 = !{!17}
!17 = distinct !{!17, !13}
!18 = !{!12, !15}
!19 = distinct !{!19, !20, !21, !22}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !20, !21}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!25, !28}
!32 = distinct !{!32, !20, !21, !22}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = distinct !{!34, !20, !21, !22}
!35 = distinct !{!35, !20, !21}
!36 = !{!37}
!37 = distinct !{!37, !38}
!38 = distinct !{!38, !"LVerDomain"}
!39 = !{!40}
!40 = distinct !{!40, !38}
!41 = !{!42}
!42 = distinct !{!42, !38}
!43 = !{!44}
!44 = distinct !{!44, !38}
!45 = !{!37, !40, !42}
!46 = distinct !{!46, !20, !21, !22}
!47 = distinct !{!47, !20, !21}
end_hunk_0
