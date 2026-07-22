inline.NumInlined: 25
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 32
begin_hunk_0_@putRGBUAseparate16bittile:bb.a
  %i.t = load i8, ptr %i.s, align 1, !tbaa !57
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.14150, i64 2 ; 2 uses
  %i.z = load i16, ptr %.14150, align 2, !tbaa !31
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !57
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !57
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %.14548, i64 2 ; 2 uses
  %i.ai = load i16, ptr %.14548, align 2, !tbaa !31
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !57
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !57
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ag, 8
  %i.ar = shl nuw nsw i32 %i.ap, 16
  %i.as = shl nuw i32 %i.l, 24
  %i.at = or disjoint i32 %i.as, %i.x
  %i.au = or disjoint i32 %i.at, %i.aq
  %i.av = or disjoint i32 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %.153, i64 4 ; 2 uses
  store i32 %i.av, ptr %.153, align 4, !tbaa !3
  %i.ax = add i32 %.03652, -1                     ; 2 uses
  %.not46 = icmp eq i32 %i.ax, 0
  br i1 %.not46, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.a
  %i.az = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.a
  %i.ba = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.a
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.a
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.b
  %i.bd = add i32 %.03763, -1                     ; 2 uses
  %.not = icmp eq i32 %i.bd, 0
  br i1 %.not, label %._crit_edge65.split, label %.preheader

._crit_edge65.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @putRGBseparate16bittile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11) #6 {
bb.a:
  %.not38 = icmp eq i32 %5, 0
  br i1 %.not38, label %._crit_edge44.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not45 = icmp eq i32 %4, 0
  %i.a = sext i32 %6 to i64                       ; 3 uses
  %i.b = sext i32 %7 to i64
  br i1 %.not45, label %._crit_edge44.split, label %.preheader.lr.ph.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 9 uses
  %xtraiter = and i32 %4, 1
  %i.e = icmp eq i32 %4, 1
  %unroll_iter = and i32 %4, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod64 = trunc i32 %4 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.043 = phi ptr [ %10, %.preheader.lr.ph.split ], [ %i.cb, %._crit_edge ] ; 2 uses
  %.02242 = phi ptr [ %9, %.preheader.lr.ph.split ], [ %i.ca, %._crit_edge ] ; 2 uses
  %.02441 = phi ptr [ %8, %.preheader.lr.ph.split ], [ %i.bz, %._crit_edge ] ; 2 uses
  %.02640 = phi ptr [ %1, %.preheader.lr.ph.split ], [ %i.cc, %._crit_edge ] ; 2 uses
  %.02939 = phi i32 [ %5, %.preheader.lr.ph.split ], [ %i.cd, %._crit_edge ]
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.134 = phi ptr [ %i.aq, %.preheader.new ], [ %.043, %.preheader ] ; 3 uses
  %.12333 = phi ptr [ %i.aj, %.preheader.new ], [ %.02242, %.preheader ] ; 3 uses
  %.12532 = phi ptr [ %i.ad, %.preheader.new ], [ %.02441, %.preheader ] ; 3 uses
  %.12731 = phi ptr [ %i.ba, %.preheader.new ], [ %.02640, %.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.12532, i64 2
  %i.g = load i16, ptr %.12532, align 2, !tbaa !31
  %i.h = zext i16 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !57
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %.12333, i64 2
  %i.m = load i16, ptr %.12333, align 2, !tbaa !31
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !57
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %.134, i64 2
  %i.t = load i16, ptr %.134, align 2, !tbaa !31
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !57
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 16
  %i.z = or disjoint i32 %i.r, %i.k
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = or disjoint i32 %i.aa, -16777216
  %i.ac = getelementptr inbounds nuw i8, ptr %.12731, i64 4
  store i32 %i.ab, ptr %.12731, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.12532, i64 4 ; 3 uses
  %i.ae = load i16, ptr %i.f, align 2, !tbaa !31
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !57
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.12333, i64 4 ; 3 uses
  %i.ak = load i16, ptr %i.l, align 2, !tbaa !31
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !57
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.134, i64 4 ; 3 uses
  %i.ar = load i16, ptr %i.s, align 2, !tbaa !31
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !57
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, 16
  %i.ax = or disjoint i32 %i.ap, %i.ai
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = or disjoint i32 %i.ay, -16777216
  %i.ba = getelementptr inbounds nuw i8, ptr %.12731, i64 8 ; 3 uses
  store i32 %i.az, ptr %i.ac, align 4, !tbaa !3
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.134.epil.init = phi ptr [ %.043, %.preheader ], [ %i.aq, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12333.epil.init = phi ptr [ %.02242, %.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12532.epil.init = phi ptr [ %.02441, %.preheader ], [ %i.ad, %._crit_edge.unr-lcssa ] ; 2 uses
  %.12731.epil.init = phi ptr [ %.02640, %.preheader ], [ %i.ba, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bb = getelementptr inbounds nuw i8, ptr %.12532.epil.init, i64 2
  %i.bc = load i16, ptr %.12532.epil.init, align 2, !tbaa !31
  %i.bd = zext i16 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !57
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.12333.epil.init, i64 2
  %i.bi = load i16, ptr %.12333.epil.init, align 2, !tbaa !31
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !57
  %i.bm = zext i8 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.134.epil.init, i64 2
  %i.bp = load i16, ptr %.134.epil.init, align 2, !tbaa !31
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !57
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 16
  %i.bv = or disjoint i32 %i.bn, %i.bg
  %i.bw = or disjoint i32 %i.bv, %i.bu
  %i.bx = or disjoint i32 %i.bw, -16777216
  %i.by = getelementptr inbounds nuw i8, ptr %.12731.epil.init, i64 4
  store i32 %i.bx, ptr %.12731.epil.init, align 4, !tbaa !3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa59 = phi ptr [ %i.ad, %._crit_edge.unr-lcssa ], [ %i.bb, %.epil.preheader ]
  %.lcssa58 = phi ptr [ %i.aj, %._crit_edge.unr-lcssa ], [ %i.bh, %.epil.preheader ]
  %.lcssa57 = phi ptr [ %i.aq, %._crit_edge.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %.lcssa = phi ptr [ %i.ba, %._crit_edge.unr-lcssa ], [ %i.by, %.epil.preheader ]
  %i.bz = getelementptr inbounds [2 x i8], ptr %.lcssa59, i64 %i.a
  %i.ca = getelementptr inbounds [2 x i8], ptr %.lcssa58, i64 %i.a
  %i.cb = getelementptr inbounds [2 x i8], ptr %.lcssa57, i64 %i.a
  %i.cc = getelementptr inbounds [4 x i8], ptr %.lcssa, i64 %i.b
  %i.cd = add i32 %.02939, -1                     ; 2 uses
  %.not = icmp eq i32 %i.cd, 0
  br i1 %.not, label %._crit_edge44.split, label %.preheader

._crit_edge44.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @putCMYKseparate8bittile(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef readonly captures(none) %11) #7 {
bb.a:
  %.not51 = icmp eq i32 %5, 0
  br i1 %.not51, label %._crit_edge58.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %.not3540 = icmp eq i32 %4, 0
  %i.a = sext i32 %6 to i64                       ; 5 uses
  %i.b = sext i32 %7 to i64                       ; 2 uses
  br i1 %.not3540, label %._crit_edge58.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.c = add i32 %4, -1
  %i.d = zext i32 %i.c to i64                     ; 4 uses
  %12 = shl nuw nsw i64 %i.d, 2
  %13 = add nsw i64 %i.b, %i.d                    ; 2 uses
  %i.e = shl nsw i64 %13, 2
  %14 = add nsw i64 %i.e, 4
  %15 = add i32 %5, -1
  %i.f = zext i32 %15 to i64                      ; 2 uses
  %16 = mul i64 %14, %i.f
  %17 = getelementptr i8, ptr %1, i64 %16
  %18 = getelementptr i8, ptr %17, i64 %12
  %scevgep = getelementptr i8, ptr %18, i64 4
  %19 = add nsw i64 %i.a, %i.d                    ; 2 uses
  %20 = add nsw i64 %19, 1
  %21 = mul i64 %20, %i.f
  %22 = add i64 %21, %i.d
  %23 = add i64 %22, 1                            ; 4 uses
  %scevgep73 = getelementptr i8, ptr %11, i64 %23
  %scevgep74 = getelementptr i8, ptr %8, i64 %23
  %scevgep75 = getelementptr i8, ptr %9, i64 %23
  %scevgep76 = getelementptr i8, ptr %10, i64 %23
  %24 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %25 = shufflevector <4 x ptr> %24, <4 x ptr> poison, <4 x i32> zeroinitializer
  %26 = insertelement <4 x ptr> poison, ptr %scevgep74, i64 0
  %27 = insertelement <4 x ptr> %26, ptr %scevgep73, i64 1
  %28 = insertelement <4 x ptr> %27, ptr %scevgep75, i64 2
  %29 = insertelement <4 x ptr> %28, ptr %scevgep76, i64 3
  %30 = insertelement <4 x ptr> poison, ptr %8, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %11, i64 1
  %32 = insertelement <4 x ptr> %31, ptr %9, i64 2
  %33 = insertelement <4 x ptr> %32, ptr %10, i64 3
  %34 = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %35 = shufflevector <4 x ptr> %34, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.g = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %36 = icmp ult <4 x ptr> %25, %29
  %37 = icmp ult <4 x ptr> %33, %35
  %stride.check81 = icmp slt i64 %13, -1
  %stride.check82 = icmp slt i64 %19, -1
  %38 = and <4 x i1> %36, %37
  %39 = bitcast <4 x i1> %38 to i4
  %40 = icmp ne i4 %39, 0
  %op.rdx = or i1 %40, %stride.check81
  %op.rdx107 = or i1 %op.rdx, %stride.check82
  %n.vec = and i64 %i.g, 4294967292               ; 8 uses
  %i.h = shl nuw nsw i64 %n.vec, 2
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %4, %i.i
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.057 = phi ptr [ %i.bx, %._crit_edge ], [ %1, %.preheader.preheader ] ; 4 uses
  %.02656 = phi i32 [ %i.by, %._crit_edge ], [ %5, %.preheader.preheader ]
  %.02755 = phi ptr [ %i.bt, %._crit_edge ], [ %8, %.preheader.preheader ] ; 4 uses
  %.02954 = phi ptr [ %i.bw, %._crit_edge ], [ %11, %.preheader.preheader ] ; 4 uses
  %.03153 = phi ptr [ %i.bv, %._crit_edge ], [ %10, %.preheader.preheader ] ; 4 uses
  %.03352 = phi ptr [ %i.bu, %._crit_edge ], [ %9, %.preheader.preheader ] ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  br i1 %op.rdx107, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.k = getelementptr i8, ptr %.057, i64 %i.h    ; 2 uses
  %i.l = getelementptr i8, ptr %.02755, i64 %n.vec ; 2 uses
  %i.m = getelementptr i8, ptr %.02954, i64 %n.vec ; 2 uses
  %i.n = getelementptr i8, ptr %.03153, i64 %n.vec ; 2 uses
  %i.o = getelementptr i8, ptr %.03352, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.057, i64 %i.p
  %next.gep88 = getelementptr i8, ptr %.02755, i64 %index
  %next.gep89 = getelementptr i8, ptr %.02954, i64 %index
  %next.gep90 = getelementptr i8, ptr %.03153, i64 %index
  %next.gep91 = getelementptr i8, ptr %.03352, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep89, align 1, !tbaa !57, !alias.scope !98
  %i.q = xor <4 x i8> %wide.load, splat (i8 -1)
  %i.r = zext <4 x i8> %i.q to <4 x i32>          ; 3 uses
  %wide.load92 = load <4 x i8>, ptr %next.gep88, align 1, !tbaa !57, !alias.scope !101
  %i.s = xor <4 x i8> %wide.load92, splat (i8 -1)
  %i.t = zext <4 x i8> %i.s to <4 x i32>
  %i.u = mul nuw nsw <4 x i32> %i.t, %i.r
  %i.v = trunc nuw <4 x i32> %i.u to <4 x i16>
  %i.w = udiv <4 x i16> %i.v, splat (i16 255)
  %i.x = zext nneg <4 x i16> %i.w to <4 x i32>
  %wide.load93 = load <4 x i8>, ptr %next.gep91, align 1, !tbaa !57, !alias.scope !103
  %i.y = xor <4 x i8> %wide.load93, splat (i8 -1)
  %i.z = zext <4 x i8> %i.y to <4 x i32>
  %i.aa = mul nuw nsw <4 x i32> %i.z, %i.r
  %i.ab = trunc nuw <4 x i32> %i.aa to <4 x i16>
  %i.ac = udiv <4 x i16> %i.ab, splat (i16 255)
  %i.ad = zext nneg <4 x i16> %i.ac to <4 x i32>
  %wide.load94 = load <4 x i8>, ptr %next.gep90, align 1, !tbaa !57, !alias.scope !105
  %i.ae = xor <4 x i8> %wide.load94, splat (i8 -1)
  %i.af = zext <4 x i8> %i.ae to <4 x i32>
  %i.ag = mul nuw nsw <4 x i32> %i.af, %i.r
  %i.ah = trunc nuw <4 x i32> %i.ag to <4 x i16>
  %i.ai = udiv <4 x i16> %i.ah, splat (i16 255)
  %i.aj = zext nneg <4 x i16> %i.ai to <4 x i32>
  %i.ak = shl nuw nsw <4 x i32> %i.ad, splat (i32 8)
  %i.al = shl nuw nsw <4 x i32> %i.aj, splat (i32 16)
  %i.am = or <4 x i32> %i.ak, %i.x
  %i.an = or <4 x i32> %i.am, %i.al
  %i.ao = or <4 x i32> %i.an, splat (i32 -16777216)
  store <4 x i32> %i.ao, ptr %next.gep, align 4, !tbaa !3, !alias.scope !107, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %.146.ph = phi ptr [ %.057, %vector.memcheck ], [ %.057, %.preheader ], [ %i.k, %middle.block ]
  %.02545.ph = phi i32 [ %4, %vector.memcheck ], [ %4, %.preheader ], [ %i.j, %middle.block ]
  %.12844.ph = phi ptr [ %.02755, %vector.memcheck ], [ %.02755, %.preheader ], [ %i.l, %middle.block ]
  %.13043.ph = phi ptr [ %.02954, %vector.memcheck ], [ %.02954, %.preheader ], [ %i.m, %middle.block ]
  %.13242.ph = phi ptr [ %.03153, %vector.memcheck ], [ %.03153, %.preheader ], [ %i.n, %middle.block ]
  %.13441.ph = phi ptr [ %.03352, %vector.memcheck ], [ %.03352, %.preheader ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.146 = phi ptr [ %i.br, %scalar.ph ], [ %.146.ph, %scalar.ph.preheader ] ; 2 uses
  %.02545 = phi i32 [ %i.bs, %scalar.ph ], [ %.02545.ph, %scalar.ph.preheader ]
  %.12844 = phi ptr [ %i.au, %scalar.ph ], [ %.12844.ph, %scalar.ph.preheader ] ; 2 uses
  %.13043 = phi ptr [ %i.aq, %scalar.ph ], [ %.13043.ph, %scalar.ph.preheader ] ; 2 uses
  %.13242 = phi ptr [ %i.bg, %scalar.ph ], [ %.13242.ph, %scalar.ph.preheader ] ; 2 uses
  %.13441 = phi ptr [ %i.ba, %scalar.ph ], [ %.13441.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.13043, i64 1 ; 2 uses
  %i.ar = load i8, ptr %.13043, align 1, !tbaa !57
  %i.as = xor i8 %i.ar, -1
  %i.at = zext i8 %i.as to i32                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.12844, i64 1 ; 2 uses
  %i.av = load i8, ptr %.12844, align 1, !tbaa !57
  %i.aw = xor i8 %i.av, -1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = mul nuw nsw i32 %i.ax, %i.at
  %.lhs.trunc = trunc nuw i32 %i.ay to i16
  %i.az = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.az to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %.13441, i64 1 ; 2 uses
  %i.bb = load i8, ptr %.13441, align 1, !tbaa !57
  %i.bc = xor i8 %i.bb, -1
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, %i.at
  %.lhs.trunc36 = trunc nuw i32 %i.be to i16
  %i.bf = udiv i16 %.lhs.trunc36, 255
  %.zext37 = zext nneg i16 %i.bf to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %.13242, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.13242, align 1, !tbaa !57
  %i.bi = xor i8 %i.bh, -1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul nuw nsw i32 %i.bj, %i.at
  %.lhs.trunc38 = trunc nuw i32 %i.bk to i16
  %i.bl = udiv i16 %.lhs.trunc38, 255
  %.zext39 = zext nneg i16 %i.bl to i32
  %i.bm = shl nuw nsw i32 %.zext37, 8
  %i.bn = shl nuw nsw i32 %.zext39, 16
  %i.bo = or i32 %i.bm, %.zext
  %i.bp = or i32 %i.bo, %i.bn
  %i.bq = or i32 %i.bp, -16777216
  %i.br = getelementptr inbounds nuw i8, ptr %.146, i64 4 ; 2 uses
  store i32 %i.bq, ptr %.146, align 4, !tbaa !3
  %i.bs = add i32 %.02545, -1                     ; 2 uses
  %.not35 = icmp eq i32 %i.bs, 0
  br i1 %.not35, label %._crit_edge, label %scalar.ph, !llvm.loop !111

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa72 = phi ptr [ %i.m, %middle.block ], [ %i.aq, %scalar.ph ]
  %.lcssa71 = phi ptr [ %i.l, %middle.block ], [ %i.au, %scalar.ph ]
  %.lcssa70 = phi ptr [ %i.o, %middle.block ], [ %i.ba, %scalar.ph ]
  %.lcssa69 = phi ptr [ %i.n, %middle.block ], [ %i.bg, %scalar.ph ]
  %.lcssa = phi ptr [ %i.k, %middle.block ], [ %i.br, %scalar.ph ]
  %i.bt = getelementptr inbounds i8, ptr %.lcssa71, i64 %i.a
  %i.bu = getelementptr inbounds i8, ptr %.lcssa70, i64 %i.a
  %i.bv = getelementptr inbounds i8, ptr %.lcssa69, i64 %i.a
  %i.bw = getelementptr inbounds i8, ptr %.lcssa72, i64 %i.a
  %i.bx = getelementptr inbounds [4 x i8], ptr %.lcssa, i64 %i.b
  %i.by = add i32 %.02656, -1                     ; 2 uses
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %._crit_edge58.split, label %.preheader

._crit_edge58.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @putseparate8bitYCbCr11tile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 %2, i32 %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr nofree readnone captures(none) %11) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.not28 = icmp eq i32 %5, 0
  br i1 %.not28, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = sext i32 %6 to i64                       ; 3 uses
  %i.f = sext i32 %7 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.033 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ad, %bb.c ]
  %.01632 = phi ptr [ %10, %.preheader.lr.ph ], [ %i.ac, %bb.c ]
  %.01831 = phi ptr [ %9, %.preheader.lr.ph ], [ %i.ab, %bb.c ]
  %.02030 = phi ptr [ %8, %.preheader.lr.ph ], [ %i.aa, %bb.c ]
  %.02329 = phi i32 [ %5, %.preheader.lr.ph ], [ %i.ae, %bb.c ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %.022 = phi i32 [ %i.z, %bb.b ], [ %4, %.preheader ]
  %.121 = phi ptr [ %i.h, %bb.b ], [ %.02030, %.preheader ] ; 2 uses
  %.119 = phi ptr [ %i.k, %bb.b ], [ %.01831, %.preheader ] ; 2 uses
  %.117 = phi ptr [ %i.n, %bb.b ], [ %.01632, %.preheader ] ; 2 uses
  %.1 = phi ptr [ %i.y, %bb.b ], [ %.033, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %.121, i64 1 ; 2 uses
  %i.i = load i8, ptr %.121, align 1, !tbaa !57
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %.119, i64 1 ; 2 uses
  %i.l = load i8, ptr %.119, align 1, !tbaa !57
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.117, i64 1 ; 2 uses
  %i.o = load i8, ptr %.117, align 1, !tbaa !57
  %i.p = zext i8 %i.o to i32
  call void @TIFFYCbCrtoRGB(ptr noundef %i.g, i32 noundef %i.j, i32 noundef %i.m, i32 noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11
  %i.q = load i32, ptr %i.a, align 4, !tbaa !3
  %i.r = load i32, ptr %i.b, align 4, !tbaa !3
  %i.s = shl i32 %i.r, 8
  %i.t = load i32, ptr %i.c, align 4, !tbaa !3
  %i.u = shl i32 %i.t, 16
  %i.v = or i32 %i.q, %i.s
  %i.w = or i32 %i.v, %i.u
  %i.x = or i32 %i.w, -16777216
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 4 ; 2 uses
  store i32 %i.x, ptr %.1, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.z = add i32 %.022, -1                        ; 2 uses
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 %i.e
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 %i.e
  %i.ac = getelementptr inbounds i8, ptr %i.n, i64 %i.e
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.f
  %i.ae = add i32 %.02329, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}
end_hunk_0
