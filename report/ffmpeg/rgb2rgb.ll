begin_hunk_0_@x2rgb10to64_nobswap:bb.a
  %i.u = trunc nuw <8 x i32> %i.t to <8 x i16>
  %i.v = shufflevector <4 x i16> %i.o, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.u, <8 x i16> %i.v, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.i, align 2, !tbaa !18, !alias.scope !83, !noalias !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 1, !tbaa !10   ; 4 uses
  %i.z = lshr i32 %i.y, 14                        ; 2 uses
  %i.aa = and i32 %i.z, 65472
  %i.ab = lshr i32 %i.y, 24
  %i.ac = and i32 %i.ab, 63
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !18
  %i.ag = lshr i32 %i.y, 4
  %i.ah = and i32 %i.ag, 65472
  %i.ai = and i32 %i.z, 63
  %i.aj = or disjoint i32 %i.ah, %i.ai
  %i.ak = trunc nuw i32 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !18
  %i.am = and i32 %i.y, 1023                      ; 2 uses
  %i.an = shl nuw nsw i32 %i.am, 6
  %i.ao = lshr i32 %i.am, 4
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = trunc nuw i32 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  store i16 -1, ptr %i.as, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10to64_bswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep26 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep26
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !87 ; 4 uses
  %i.f = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.g = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.h = shl nuw nsw i64 %index, 3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.k = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.l = shl nuw nsw <4 x i32> %i.k, splat (i32 6)
  %i.m = lshr <4 x i32> %i.k, splat (i32 4)
  %i.n = or disjoint <4 x i32> %i.l, %i.m
  %i.o = trunc nuw <4 x i32> %i.n to <4 x i16>
  %i.p = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.o)
  %i.q = shufflevector <4 x i32> %i.f, <4 x i32> %i.j, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.r = and <8 x i32> %i.q, splat (i32 65472)
  %i.s = shufflevector <4 x i32> %i.g, <4 x i32> %i.f, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = and <8 x i32> %i.s, splat (i32 63)
  %i.u = or disjoint <8 x i32> %i.r, %i.t
  %i.v = trunc nuw <8 x i32> %i.u to <8 x i16>
  %i.w = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.v)
  %i.x = shufflevector <4 x i16> %i.p, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.w, <8 x i16> %i.x, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.i, align 2, !tbaa !18, !alias.scope !90, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !10  ; 4 uses
  %i.ab = lshr i32 %i.aa, 14                      ; 2 uses
  %i.ac = and i32 %i.ab, 65472
  %i.ad = lshr i32 %i.aa, 24
  %i.ae = and i32 %i.ad, 63
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !18
  %i.aj = lshr i32 %i.aa, 4
  %i.ak = and i32 %i.aj, 65472
  %i.al = and i32 %i.ab, 63
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = trunc nuw i32 %i.am to i16
  %i.ao = tail call i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !18
  %i.aq = and i32 %i.aa, 1023                     ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aq, 6
  %i.as = lshr i32 %i.aq, 4
  %i.at = or disjoint i32 %i.ar, %i.as
  %i.au = trunc nuw i32 %i.at to i16
  %i.av = tail call i16 @llvm.bswap.i16(i16 %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  store i16 -1, ptr %i.ax, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10tobgr48_nobswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = mul nuw nsw i64 %wide.trip.count, 6
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep24 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep24
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !94 ; 4 uses
  %i.f = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.g = shl nuw nsw <4 x i32> %i.f, splat (i32 6)
  %i.h = lshr <4 x i32> %i.f, splat (i32 4)
  %i.i = mul nuw nsw i64 %index, 6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.l = and <4 x i32> %i.k, splat (i32 65472)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.n = and <4 x i32> %i.m, splat (i32 63)
  %i.o = and <4 x i32> %i.m, splat (i32 65472)
  %i.p = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.q = and <4 x i32> %i.p, splat (i32 63)
  %i.r = or disjoint <4 x i32> %i.o, %i.q
  %i.s = trunc nuw <4 x i32> %i.r to <4 x i16>
  %3 = or disjoint <4 x i32> %i.g, %i.h
  %4 = or disjoint <4 x i32> %i.l, %i.n
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = trunc nuw <8 x i32> %5 to <8 x i16>
  %i.u = shufflevector <4 x i16> %i.s, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !18, !alias.scope !97, !noalias !94
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !99

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 1, !tbaa !10   ; 4 uses
  %i.y = and i32 %i.x, 1023                       ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = lshr i32 %i.y, 4
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = trunc nuw i32 %i.ab to i16
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !18
  %i.ae = lshr i32 %i.x, 4
  %i.af = and i32 %i.ae, 65472
  %i.ag = lshr i32 %i.x, 14                       ; 2 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !18
  %i.al = and i32 %i.ag, 65472
  %i.am = lshr i32 %i.x, 24
  %i.an = and i32 %i.am, 63
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10tobgr48_bswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = mul nuw nsw i64 %wide.trip.count, 6
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep24 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep24
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !101 ; 4 uses
  %i.f = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.g = shl nuw nsw <4 x i32> %i.f, splat (i32 6)
  %i.h = lshr <4 x i32> %i.f, splat (i32 4)
  %i.i = mul nuw nsw i64 %index, 6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.l = and <4 x i32> %i.k, splat (i32 65472)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.n = and <4 x i32> %i.m, splat (i32 63)
  %i.o = and <4 x i32> %i.m, splat (i32 65472)
  %i.p = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.q = and <4 x i32> %i.p, splat (i32 63)
  %i.r = or disjoint <4 x i32> %i.o, %i.q
  %i.s = trunc nuw <4 x i32> %i.r to <4 x i16>
  %3 = or disjoint <4 x i32> %i.g, %i.h
  %4 = or disjoint <4 x i32> %i.l, %i.n
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = trunc nuw <8 x i32> %5 to <8 x i16>
  %i.u = shufflevector <4 x i16> %i.s, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.v = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  %interleaved.vec = tail call <12 x i16> @llvm.bswap.v12i16(<12 x i16> %i.v)
  store <12 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !18, !alias.scope !104, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 1, !tbaa !10   ; 4 uses
  %i.z = and i32 %i.y, 1023                       ; 2 uses
  %i.aa = shl nuw nsw i32 %i.z, 6
  %i.ab = lshr i32 %i.z, 4
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = trunc nuw i32 %i.ac to i16
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ad)
  %.idx = mul nuw nsw i64 %indvars.iv, 6
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !18
  %i.ag = lshr i32 %i.y, 4
  %i.ah = and i32 %i.ag, 65472
  %i.ai = lshr i32 %i.y, 14                       ; 2 uses
  %i.aj = and i32 %i.ai, 63
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = trunc nuw i32 %i.ak to i16
  %i.am = tail call i16 @llvm.bswap.i16(i16 %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.am, ptr %i.an, align 2, !tbaa !18
  %i.ao = and i32 %i.ai, 65472
  %i.ap = lshr i32 %i.y, 24
  %i.aq = and i32 %i.ap, 63
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = trunc nuw i32 %i.ar to i16
  %i.at = tail call i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i16 %i.at, ptr %i.au, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !107

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10tobgr64_nobswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep26 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep26
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !108 ; 4 uses
  %i.f = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.g = shl nuw nsw <4 x i32> %i.f, splat (i32 6)
  %i.h = lshr <4 x i32> %i.f, splat (i32 4)
  %i.i = shl nuw nsw i64 %index, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.l = and <4 x i32> %i.k, splat (i32 65472)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.n = and <4 x i32> %i.m, splat (i32 63)
  %i.o = and <4 x i32> %i.m, splat (i32 65472)
  %i.p = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.q = and <4 x i32> %i.p, splat (i32 63)
  %i.r = or disjoint <4 x i32> %i.o, %i.q
  %i.s = trunc nuw <4 x i32> %i.r to <4 x i16>
  %3 = or disjoint <4 x i32> %i.g, %i.h
  %4 = or disjoint <4 x i32> %i.l, %i.n
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.t = trunc nuw <8 x i32> %5 to <8 x i16>
  %i.u = shufflevector <4 x i16> %i.s, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.t, <8 x i16> %i.u, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !18, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 1, !tbaa !10   ; 4 uses
  %i.y = and i32 %i.x, 1023                       ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 6
  %i.aa = lshr i32 %i.y, 4
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = trunc nuw i32 %i.ab to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !18
  %i.ae = lshr i32 %i.x, 4
  %i.af = and i32 %i.ae, 65472
  %i.ag = lshr i32 %i.x, 14                       ; 2 uses
  %i.ah = and i32 %i.ag, 63
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = trunc nuw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !18
  %i.al = and i32 %i.ag, 65472
  %i.am = lshr i32 %i.x, 24
  %i.an = and i32 %i.am, 63
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 6
  store i16 -1, ptr %i.ar, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !114

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @x2rgb10tobgr64_bswap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i32 %2, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader27, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.c = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %1, i64 %i.c
  %i.d = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep26 = getelementptr i8, ptr %0, i64 %i.d
  %bound0 = icmp ult ptr %1, %scevgep26
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.e, align 1, !tbaa !10, !alias.scope !115 ; 4 uses
  %i.f = and <4 x i32> %wide.load, splat (i32 1023) ; 2 uses
  %i.g = shl nuw nsw <4 x i32> %i.f, splat (i32 6)
  %i.h = lshr <4 x i32> %i.f, splat (i32 4)
  %i.i = shl nuw nsw i64 %index, 3
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.k = lshr <4 x i32> %wide.load, splat (i32 4)
  %i.l = and <4 x i32> %i.k, splat (i32 65472)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 14) ; 2 uses
  %i.n = and <4 x i32> %i.m, splat (i32 63)
  %i.o = and <4 x i32> %i.m, splat (i32 65472)
  %i.p = lshr <4 x i32> %wide.load, splat (i32 24)
  %i.q = and <4 x i32> %i.p, splat (i32 63)
  %i.r = or disjoint <4 x i32> %i.o, %i.q
  %i.s = trunc nuw <4 x i32> %i.r to <4 x i16>
  %i.t = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.s)
  %3 = or disjoint <4 x i32> %i.g, %i.h
  %4 = or disjoint <4 x i32> %i.l, %i.n
  %5 = shufflevector <4 x i32> %3, <4 x i32> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.u = trunc nuw <8 x i32> %5 to <8 x i16>
  %i.v = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.u)
  %i.w = shufflevector <4 x i16> %i.t, <4 x i16> splat (i16 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x i16> %i.v, <8 x i16> %i.w, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !18, !alias.scope !118, !noalias !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader27 ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 1, !tbaa !10   ; 4 uses
  %i.aa = and i32 %i.z, 1023                      ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = lshr i32 %i.aa, 4
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = trunc nuw i32 %i.ad to i16
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae)
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  store i16 %i.af, ptr %i.ag, align 2, !tbaa !18
  %i.ah = lshr i32 %i.z, 4
  %i.ai = and i32 %i.ah, 65472
  %i.aj = lshr i32 %i.z, 14                       ; 2 uses
  %i.ak = and i32 %i.aj, 63
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = trunc nuw i32 %i.al to i16
  %i.an = tail call i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !18
  %i.ap = and i32 %i.aj, 65472
  %i.aq = lshr i32 %i.z, 24
  %i.ar = and i32 %i.aq, 63
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = trunc nuw i32 %i.as to i16
  %i.au = tail call i16 @llvm.bswap.i16(i16 %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i16 %i.au, ptr %i.av, align 2, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i16 -1, ptr %i.aw, align 2, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15to16_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -3
  %i.d = icmp sgt i32 %2, 3
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.g = add i64 %i.f, %i.a
  %i.h = add i64 %i.g, -3
  %i.i = add i64 %i.f, 4
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  %i.k = xor i64 %i.f, -1
  %i.l = add i64 %i.j, %i.k                       ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 28
  %i.o = sub i64 %i.f, %i.e
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = shl i64 %n.vec, 2                        ; 2 uses
  %i.q = getelementptr i8, ptr %1, i64 %i.p       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.p       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 2 uses
  %next.gep25 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !9 ; 2 uses
  %wide.load26 = load <4 x i32>, ptr %i.t, align 4, !tbaa !9 ; 2 uses
  %i.u = and <4 x i32> %wide.load, splat (i32 2147450879)
  %i.v = and <4 x i32> %wide.load26, splat (i32 2147450879)
  %i.w = and <4 x i32> %wide.load, splat (i32 2145419232)
  %i.x = and <4 x i32> %wide.load26, splat (i32 2145419232)
  %i.y = add nuw <4 x i32> %i.u, %i.w
  %i.z = add nuw <4 x i32> %i.v, %i.x
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.y, ptr %next.gep, align 4, !tbaa !9
  store <4 x i32> %i.z, ptr %i.aa, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.01819.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.020 = phi ptr [ %i.ag, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.01819 = phi ptr [ %i.ah, %.lr.ph ], [ %.01819.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ac = load i32, ptr %.01819, align 4, !tbaa !9 ; 2 uses
  %i.ad = and i32 %i.ac, 2147450879
  %i.ae = and i32 %i.ac, 2145419232
  %i.af = add nuw i32 %i.ad, %i.ae
  store i32 %i.af, ptr %.020, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.020, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01819, i64 4 ; 3 uses
  %i.ai = icmp ult ptr %i.ah, %i.c
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %i.r, %middle.block ], [ %i.ah, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.q, %middle.block ], [ %i.ag, %.lr.ph ]
  %i.aj = icmp ult ptr %.018.lcssa, %i.b
  br i1 %i.aj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ak = load i16, ptr %.018.lcssa, align 2, !tbaa !18 ; 2 uses
  %i.al = and i16 %i.ak, 32767
  %i.am = and i16 %i.ak, 32736
  %i.an = add nuw i16 %i.al, %i.am
  store i16 %i.an, ptr %.0.lcssa, align 2, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @rgb15tobgr24_c(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 6 uses
  %i.b = sdiv i32 %2, 2
  %i.c = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.c, 1                     ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = add i64 %.idx, %i.a
  %i.g = add i64 %i.a, 2
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.g)
  %i.i = xor i64 %i.a, -1
  %i.j = add i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 30
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.m = add i64 %.idx, %i.a
  %i.n = add i64 %i.a, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.n)
  %i.o = xor i64 %i.a, -1
  %i.p = add i64 %umax, %i.o                      ; 2 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = mul i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep = getelementptr i8, ptr %i.s, i64 3
  %i.t = and i64 %i.p, -2
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  %scevgep18 = getelementptr i8, ptr %i.u, i64 2
  %bound0 = icmp ult ptr %1, %scevgep18
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.v = mul i64 %n.vec, 3
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = shl i64 %n.vec, 1
  %i.y = getelementptr i8, ptr %0, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
