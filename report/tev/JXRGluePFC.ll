Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRGluePFC?download=true
inline.NumInlined: 75
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 19
begin_hunk_0_@RGBA32_BGRA32:bb.a
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge25.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shl nsw i32 %i.d, 2
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.1, %.lr.ph.preheader.new
  %indvars.iv27 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next28.1, %._crit_edge.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %._crit_edge.1 ]
  %i.j = trunc nuw nsw i64 %indvars.iv27 to i32
  %i.k = mul i32 %3, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  store i8 %i.q, ptr %i.n, align 1, !tbaa !18
  store i8 %i.o, ptr %i.p, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.b
  %i.s = trunc i64 %indvars.iv27 to i32
  %i.t = or disjoint i32 %i.s, 1
  %i.u = mul i32 %3, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !18
  store i8 %i.y, ptr %i.z, align 1, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next.1, %i.h
  br i1 %i.ab, label %bb.c, label %._crit_edge.1, !llvm.loop !5

._crit_edge.1:                                    ; preds = %bb.c
  %indvars.iv.next28.1 = add nuw nsw i64 %indvars.iv27, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge25.split.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !6

._crit_edge25.split.loopexit.unr-lcssa:           ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge25.split, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge25.split.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv27.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next28.1, %._crit_edge25.split.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ac = trunc nuw nsw i64 %indvars.iv27.epil.init to i32
  %i.ad = mul i32 %3, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.epil ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !18
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !18
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 4 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next.epil, %i.h
  br i1 %i.ak, label %bb.d, label %._crit_edge25.split, !llvm.loop !5

._crit_edge25.split:                              ; preds = %._crit_edge25.split.loopexit.unr-lcssa, %bb.d, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @BGRA32_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond.i = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %RGBA32_BGRA32.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = shl nuw nsw i32 %i.d, 2
  %i.h = zext nneg i32 %i.g to i64                ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.b, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.1, %.lr.ph.preheader.i.new
  %indvars.iv27.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next28.i.1, %._crit_edge.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.1 ]
  %i.j = trunc nuw nsw i64 %indvars.iv27.i to i32
  %i.k = mul i32 %3, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  store i8 %i.q, ptr %i.n, align 1, !tbaa !18
  store i8 %i.o, ptr %i.p, align 1, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.r, label %bb.b, label %._crit_edge.i, !llvm.loop !5

._crit_edge.i:                                    ; preds = %bb.b
  %i.s = trunc i64 %indvars.iv27.i to i32
  %i.t = or disjoint i32 %i.s, 1
  %i.u = mul i32 %3, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge.i
  %indvars.iv.i.1 = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i.1, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.i.1 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !18
  store i8 %i.y, ptr %i.z, align 1, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 4 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next.i.1, %i.h
  br i1 %i.ab, label %bb.c, label %._crit_edge.i.1, !llvm.loop !5

._crit_edge.i.1:                                  ; preds = %bb.c
  %indvars.iv.next28.i.1 = add nuw nsw i64 %indvars.iv27.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %RGBA32_BGRA32.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !6

RGBA32_BGRA32.exit.loopexit.unr-lcssa:            ; preds = %._crit_edge.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %RGBA32_BGRA32.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %RGBA32_BGRA32.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv27.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next28.i.1, %RGBA32_BGRA32.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = trunc nuw nsw i64 %indvars.iv27.i.epil.init to i32
  %i.ad = mul i32 %3, %i.ac
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i.epil ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  store i8 %i.aj, ptr %i.ag, align 1, !tbaa !18
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !18
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 4 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i.epil, %i.h
  br i1 %i.ak, label %bb.d, label %RGBA32_BGRA32.exit, !llvm.loop !5

RGBA32_BGRA32.exit:                               ; preds = %RGBA32_BGRA32.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @BlackWhite_Gray8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 33212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !158  ; 12 uses
  %.03546 = add nsw i32 %i.b, -1                  ; 4 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph48, label %._crit_edge

.lr.ph48:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17   ; 3 uses
  %i.j = srem i32 %i.i, 8                         ; 10 uses
  %i.k = sdiv i32 %i.i, 8                         ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp slt i32 %i.j, 1                     ; 2 uses
  %i.n = shl nsw i32 %i.k, 3                      ; 2 uses
  %.03443 = add nsw i32 %i.k, -1                  ; 3 uses
  %i.o = icmp sgt i32 %i.i, 7
  br i1 %i.o, label %.lr.ph48.split.us, label %.lr.ph48.split

.lr.ph48.split.us:                                ; preds = %.lr.ph48
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.lr.ph45.us.us.preheader, label %.lr.ph48.split.us.split

.lr.ph45.us.us.preheader:                         ; preds = %.lr.ph48.split.us
  %i.p = zext i32 %.03443 to i64
  %i.q = zext nneg i32 %.03546 to i64
  %i.r = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %i.s = shufflevector <8 x i32> %i.r, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph45.us.us

.lr.ph45.us.us:                                   ; preds = %.lr.ph45.us.us.preheader, %..loopexit39_crit_edge.us.us
  %indvars.iv98 = phi i64 [ %i.q, %.lr.ph45.us.us.preheader ], [ %indvars.iv.next99, %..loopexit39_crit_edge.us.us ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv98 to i32
  %i.u = mul i32 %3, %i.t
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us, %.lr.ph45.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.loopexit.us.us ], [ %i.p, %.lr.ph45.us.us ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv95
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = shl nuw nsw i64 %indvars.iv95, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = insertelement <8 x i8> poison, i8 %i.y, i64 0
  %i.ac = shufflevector <8 x i8> %i.ab, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ad = lshr <8 x i8> %i.ac, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.ae = and <8 x i8> %i.ad, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %i.af = zext <8 x i8> %i.ae to <8 x i32>
  %i.ag = icmp ne <8 x i32> %i.s, %i.af
  %i.ah = sext <8 x i1> %i.ag to <8 x i8>
  store <8 x i8> %i.ah, ptr %i.aa, align 1, !tbaa !18
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, -1
  %i.ai = trunc nuw i64 %indvars.iv95 to i32
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.loopexit.us.us, label %..loopexit39_crit_edge.us.us, !llvm.loop !154

..loopexit39_crit_edge.us.us:                     ; preds = %.loopexit.us.us
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, -1
  %i.ak = icmp sgt i64 %indvars.iv98, 0
  br i1 %i.ak, label %.lr.ph45.us.us, label %._crit_edge, !llvm.loop !155

.lr.ph48.split.us.split:                          ; preds = %.lr.ph48.split.us
  br i1 %i.m, label %.loopexit40.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph48.split.us.split
  %i.al = zext nneg i32 %i.n to i64
  %i.am = zext i32 %.03443 to i64
  %i.an = zext nneg i32 %.03546 to i64
  %wide.trip.count69 = zext nneg i32 %i.j to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  %n.vec112 = and i64 %wide.trip.count69, 4       ; 3 uses
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n123 = icmp eq i64 %n.vec112, %wide.trip.count69
  %i.ao = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %i.ap = shufflevector <8 x i32> %i.ao, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %iter.check

.loopexit40.us.preheader:                         ; preds = %.lr.ph48.split.us.split
  %i.aq = zext i32 %.03443 to i64
  %i.ar = zext nneg i32 %.03546 to i64
  %i.as = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %i.at = shufflevector <8 x i32> %i.as, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.loopexit40.us

iter.check:                                       ; preds = %.lr.ph.us.us.preheader, %..loopexit39_crit_edge.us.us56
  %indvars.iv78 = phi i64 [ %i.an, %.lr.ph.us.us.preheader ], [ %indvars.iv.next79, %..loopexit39_crit_edge.us.us56 ] ; 3 uses
  %i.au = trunc nuw nsw i64 %indvars.iv78 to i32
  %i.av = mul i32 %3, %i.au
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.aw ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.l
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !18
  %i.ba = zext i8 %i.az to i32                    ; 2 uses
  %invariant.gep104 = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.al ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph

vec.epilog.ph:                                    ; preds = %iter.check
  %broadcast.splatinsert113 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat114 = shufflevector <4 x i32> %broadcast.splatinsert113, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index119 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vec.epilog.ph ], [ %vec.ind.next122, %vec.epilog.vector.body ] ; 2 uses
  %4 = sub <4 x i32> splat (i32 7), %vec.ind120
  %5 = lshr <4 x i32> %broadcast.splat114, %4
  %6 = and <4 x i32> %5, splat (i32 1)
  %7 = icmp ne <4 x i32> %6, %broadcast.splat116
  %8 = sext <4 x i1> %7 to <4 x i8>
  %i.bb = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 %index119
  store <4 x i8> %8, ptr %i.bb, align 1, !tbaa !18
  %index.next121 = add nuw i64 %index119, 4       ; 2 uses
  %vec.ind.next122 = add <4 x i32> %vec.ind120, splat (i32 4)
  %9 = icmp eq i64 %index.next121, %n.vec112
  br i1 %9, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !156

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n123, label %..loopexit40_crit_edge.us.us.preheader, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.middle.block
  %indvars.iv66.ph = phi i64 [ 0, %iter.check ], [ %n.vec112, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %vec.epilog.scalar.ph ], [ %indvars.iv66.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %10 = trunc i64 %indvars.iv66 to i32
  %11 = sub i32 7, %10
  %i.bc = lshr i32 %i.ba, %11
  %i.bd = and i32 %i.bc, 1
  %.not38.us.us.a = icmp ne i32 %i.bd, %i.f
  %i.be = sext i1 %.not38.us.us.a to i8
  %gep105 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 %indvars.iv66
  store i8 %i.be, ptr %gep105, align 1, !tbaa !18
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %..loopexit40_crit_edge.us.us.preheader, label %vec.epilog.scalar.ph, !llvm.loop !157

..loopexit40_crit_edge.us.us.preheader:           ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block
  br label %..loopexit40_crit_edge.us.us

..loopexit40_crit_edge.us.us:                     ; preds = %..loopexit40_crit_edge.us.us.preheader, %..loopexit40_crit_edge.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %..loopexit40_crit_edge.us.us ], [ %i.am, %..loopexit40_crit_edge.us.us.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv75
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %i.bh = shl nuw nsw i64 %indvars.iv75, 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bh
  %i.bj = insertelement <8 x i8> poison, i8 %i.bg, i64 0
  %i.bk = shufflevector <8 x i8> %i.bj, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.bl = lshr <8 x i8> %i.bk, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bm = and <8 x i8> %i.bl, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %i.bn = zext <8 x i8> %i.bm to <8 x i32>
  %i.bo = icmp ne <8 x i32> %i.ap, %i.bn
  %i.bp = sext <8 x i1> %i.bo to <8 x i8>
  store <8 x i8> %i.bp, ptr %i.bi, align 1, !tbaa !18
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, -1
  %i.bq = trunc nuw i64 %indvars.iv75 to i32
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %..loopexit40_crit_edge.us.us, label %..loopexit39_crit_edge.us.us56, !llvm.loop !154

..loopexit39_crit_edge.us.us56:                   ; preds = %..loopexit40_crit_edge.us.us
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, -1
  %i.bs = icmp sgt i64 %indvars.iv78, 0
  br i1 %i.bs, label %iter.check, label %._crit_edge, !llvm.loop !155

.loopexit40.us:                                   ; preds = %.loopexit40.us.preheader, %..loopexit39_crit_edge.us
  %indvars.iv88 = phi i64 [ %i.ar, %.loopexit40.us.preheader ], [ %indvars.iv.next89, %..loopexit39_crit_edge.us ] ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.bu = mul i32 %3, %i.bt
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv ; 2 uses
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit40.us, %.loopexit.us
  %indvars.iv85 = phi i64 [ %i.aq, %.loopexit40.us ], [ %indvars.iv.next86, %.loopexit.us ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv85
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.bz = shl nuw nsw i64 %indvars.iv85, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = insertelement <8 x i8> poison, i8 %i.by, i64 0
  %i.cc = shufflevector <8 x i8> %i.cb, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.cd = lshr <8 x i8> %i.cc, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.ce = and <8 x i8> %i.cd, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %i.cf = zext <8 x i8> %i.ce to <8 x i32>
  %i.cg = icmp ne <8 x i32> %i.at, %i.cf
  %i.ch = sext <8 x i1> %i.cg to <8 x i8>
  store <8 x i8> %i.ch, ptr %i.ca, align 1, !tbaa !18
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, -1
  %i.ci = trunc nuw i64 %indvars.iv85 to i32
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.loopexit.us, label %..loopexit39_crit_edge.us, !llvm.loop !154

..loopexit39_crit_edge.us:                        ; preds = %.loopexit.us
  %indvars.iv.next89 = add nsw i64 %indvars.iv88, -1
  %i.ck = icmp sgt i64 %indvars.iv88, 0
  br i1 %i.ck, label %.loopexit40.us, label %._crit_edge, !llvm.loop !155

.lr.ph48.split:                                   ; preds = %.lr.ph48
  br i1 %i.m, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph48.split
  %i.cl = sext i32 %i.n to i64
  %i.cm = zext nneg i32 %.03546 to i64
  %exitcond.not = icmp eq i32 %i.j, 1
  %exitcond.not.1 = icmp eq i32 %i.j, 2
  %exitcond.not.2 = icmp eq i32 %i.j, 3
  %exitcond.not.3 = icmp eq i32 %i.j, 4
  %exitcond.not.4 = icmp eq i32 %i.j, 5
  %exitcond.not.5 = icmp eq i32 %i.j, 6
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit40_crit_edge
  %indvars.iv63 = phi i64 [ %i.cm, %.lr.ph.preheader ], [ %indvars.iv.next64, %..loopexit40_crit_edge ] ; 3 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.co = mul i32 %3, %i.cn
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.l
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = zext i8 %i.cs to i32                    ; 7 uses
  %invariant.gep = getelementptr i8, ptr %i.cq, i64 %i.cl ; 7 uses
  %i.cu = lshr i32 %i.ct, 7
  %.not38 = icmp ne i32 %i.cu, %i.f
  %i.cv = sext i1 %.not38 to i8
  store i8 %i.cv, ptr %invariant.gep, align 1, !tbaa !18
  br i1 %exitcond.not, label %..loopexit40_crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.cw = lshr i32 %i.ct, 6
  %i.cx = and i32 %i.cw, 1
  %.not38.1 = icmp ne i32 %i.cx, %i.f
  %i.cy = sext i1 %.not38.1 to i8
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 1
  store i8 %i.cy, ptr %gep.1, align 1, !tbaa !18
  br i1 %exitcond.not.1, label %..loopexit40_crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cz = lshr i32 %i.ct, 5
  %i.da = and i32 %i.cz, 1
  %.not38.2 = icmp ne i32 %i.da, %i.f
  %i.db = sext i1 %.not38.2 to i8
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 2
  store i8 %i.db, ptr %gep.2, align 1, !tbaa !18
  br i1 %exitcond.not.2, label %..loopexit40_crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dc = lshr i32 %i.ct, 4
  %i.dd = and i32 %i.dc, 1
  %.not38.3 = icmp ne i32 %i.dd, %i.f
  %i.de = sext i1 %.not38.3 to i8
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 3
  store i8 %i.de, ptr %gep.3, align 1, !tbaa !18
  br i1 %exitcond.not.3, label %..loopexit40_crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = lshr i32 %i.ct, 3
  %i.dg = and i32 %i.df, 1
  %.not38.4 = icmp ne i32 %i.dg, %i.f
  %i.dh = sext i1 %.not38.4 to i8
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 4
  store i8 %i.dh, ptr %gep.4, align 1, !tbaa !18
  br i1 %exitcond.not.4, label %..loopexit40_crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = lshr i32 %i.ct, 2
  %i.dj = and i32 %i.di, 1
  %.not38.5 = icmp ne i32 %i.dj, %i.f
  %i.dk = sext i1 %.not38.5 to i8
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 5
  store i8 %i.dk, ptr %gep.5, align 1, !tbaa !18
  br i1 %exitcond.not.5, label %..loopexit40_crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dl = lshr i32 %i.ct, 1
  %i.dm = and i32 %i.dl, 1
  %.not38.6 = icmp ne i32 %i.dm, %i.f
  %i.dn = sext i1 %.not38.6 to i8
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 6
  store i8 %i.dn, ptr %gep.6, align 1, !tbaa !18
  br label %..loopexit40_crit_edge

..loopexit40_crit_edge:                           ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %i.do = icmp sgt i64 %indvars.iv63, 0
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %..loopexit40_crit_edge, %..loopexit39_crit_edge.us.us56, %..loopexit39_crit_edge.us, %..loopexit39_crit_edge.us.us, %.lr.ph48.split, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @Gray16_Gray8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge18

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = zext i32 %3 to i64
  %i.f = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %._crit_edge18

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.s, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i32 [ %i.t, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %.017 = phi ptr [ %i.u, %._crit_edge ], [ %2, %.preheader.lr.ph ] ; 3 uses
  %.01416 = phi i32 [ %i.v, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %.017, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = lshr i16 %i.l, 8
  %i.n = trunc nuw i16 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %.017, i64 %indvars.iv
  store i8 %i.n, ptr %i.o, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !159

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.s = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.t = phi i32 [ %i.p, %._crit_edge.loopexit ], [ %i.i, %.preheader ]
  %i.u = getelementptr inbounds nuw i8, ptr %.017, i64 %i.e
  %i.v = add nuw nsw i32 %.01416, 1               ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.s
  br i1 %i.w, label %.preheader, label %._crit_edge18, !llvm.loop !160

._crit_edge18:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB48_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge32.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count37 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv34 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next35, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv34 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 4 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !27
  %i.q = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = lshr i16 %i.m, 8
  %i.u = trunc nuw i16 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %i.w = lshr i16 %i.p, 8
  %i.x = trunc nuw i16 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  store i8 %i.x, ptr %i.y, align 1, !tbaa !18
  %i.z = lshr i16 %i.s, 8
  %i.aa = trunc nuw i16 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !162

._crit_edge32.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGBA64_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 4 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge37.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count42 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod45 = trunc i32 %i.d to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv39 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next40, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv39 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 6 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.l = shl nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.o = load <4 x i16>, ptr %i.m, align 2, !tbaa !27
  %i.p = lshr <4 x i16> %i.o, splat (i16 8)
  %i.q = trunc nuw <4 x i16> %i.p to <4 x i8>
  store <4 x i8> %i.q, ptr %i.n, align 1, !tbaa !18
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.r = or disjoint i64 %indvars.iv.next, 4      ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.u = load <4 x i16>, ptr %i.s, align 2, !tbaa !27
  %i.v = lshr <4 x i16> %i.u, splat (i16 8)
  %i.w = trunc nuw <4 x i16> %i.v to <4 x i8>
  store <4 x i8> %i.w, ptr %i.t, align 1, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !163

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.x = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x
  %i.aa = load <4 x i16>, ptr %i.y, align 2, !tbaa !27
  %i.ab = lshr <4 x i16> %i.aa, splat (i16 8)
  %i.ac = trunc nuw <4 x i16> %i.ab to <4 x i8>
  store <4 x i8> %i.ac, ptr %i.z, align 1, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge37.split, label %.lr.ph, !llvm.loop !164

._crit_edge37.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @Gray32Float_Gray8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge22.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count27 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv24 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next25, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load float, ptr %i.k, align 4, !tbaa !23 ; 5 uses
  %i.m = fcmp ugt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.n = fcmp ugt float %i.l, 3.130800e-03
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = fmul nnan float %i.l, 2.550000e+02
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float 1.292000e+01, float 5.000000e-01)
  %i.q = fptoui float %i.p to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.r = fcmp olt float %i.l, 1.000000e+00
  br i1 %i.r, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.s = fpext float %i.l to double
  %i.t = tail call double @pow(double noundef %i.s, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.u = fptrunc double %i.t to float
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float 1.055000e+00, float -5.500000e-02)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.550000e+02, float 5.000000e-01)
  %i.x = fptoui float %i.w to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.q, %bb.d ], [ %i.x, %bb.f ], [ -1, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %.0.i, ptr %i.y, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !165

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge22.split, label %.lr.ph, !llvm.loop !166

._crit_edge22.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB96Float_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count41 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv38 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit31
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit31 ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !23 ; 5 uses
  %i.n = add nuw nsw i64 %i.k, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !23 ; 5 uses
  %i.q = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !23 ; 5 uses
  %i.t = fcmp ugt float %i.m, 0.000000e+00
  br i1 %i.t, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.u = fcmp ugt float %i.m, 3.130800e-03
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = fmul nnan float %i.m, 2.550000e+02
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 1.292000e+01, float 5.000000e-01)
  %i.x = fptoui float %i.w to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.y = fcmp olt float %i.m, 1.000000e+00
  br i1 %i.y, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.z = fpext float %i.m to double
  %i.aa = tail call double @pow(double noundef %i.z, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ab = fptrunc double %i.aa to float
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 1.055000e+00, float -5.500000e-02)
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.550000e+02, float 5.000000e-01)
  %i.ae = fptoui float %i.ad to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.x, %bb.d ], [ %i.ae, %bb.f ], [ -1, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.af, align 1, !tbaa !18
  %i.ag = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %Convert_Float_To_U8.exit29

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ah = fcmp ugt float %i.p, 3.130800e-03
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul nnan float %i.p, 2.550000e+02
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 1.292000e+01, float 5.000000e-01)
  %i.ak = fptoui float %i.aj to i8
  br label %Convert_Float_To_U8.exit29

bb.i:                                             ; preds = %bb.g
  %i.al = fcmp olt float %i.p, 1.000000e+00
  br i1 %i.al, label %bb.j, label %Convert_Float_To_U8.exit29

bb.j:                                             ; preds = %bb.i
  %i.am = fpext float %i.p to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ao = fptrunc double %i.an to float
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 1.055000e+00, float -5.500000e-02)
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.550000e+02, float 5.000000e-01)
  %i.ar = fptoui float %i.aq to i8
  br label %Convert_Float_To_U8.exit29

Convert_Float_To_U8.exit29:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i28 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.ak, %bb.h ], [ %i.ar, %bb.j ], [ -1, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  store i8 %.0.i28, ptr %i.as, align 1, !tbaa !18
  %i.at = fcmp ugt float %i.s, 0.000000e+00
  br i1 %i.at, label %bb.k, label %Convert_Float_To_U8.exit31

bb.k:                                             ; preds = %Convert_Float_To_U8.exit29
  %i.au = fcmp ugt float %i.s, 3.130800e-03
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = fmul nnan float %i.s, 2.550000e+02
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float 1.292000e+01, float 5.000000e-01)
  %i.ax = fptoui float %i.aw to i8
  br label %Convert_Float_To_U8.exit31

bb.m:                                             ; preds = %bb.k
  %i.ay = fcmp olt float %i.s, 1.000000e+00
  br i1 %i.ay, label %bb.n, label %Convert_Float_To_U8.exit31

bb.n:                                             ; preds = %bb.m
  %i.az = fpext float %i.s to double
  %i.ba = tail call double @pow(double noundef %i.az, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bb = fptrunc double %i.ba to float
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.055000e+00, float -5.500000e-02)
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.550000e+02, float 5.000000e-01)
  %i.be = fptoui float %i.bd to i8
  br label %Convert_Float_To_U8.exit31

Convert_Float_To_U8.exit31:                       ; preds = %Convert_Float_To_U8.exit29, %bb.l, %bb.m, %bb.n
  %.0.i30 = phi i8 [ 0, %Convert_Float_To_U8.exit29 ], [ %i.ax, %bb.l ], [ %i.be, %bb.n ], [ -1, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 %.0.i30, ptr %i.bf, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !167

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit31
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge36.split, label %.lr.ph, !llvm.loop !168

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB128Float_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count41 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv38 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit31
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit31 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !23 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !23 ; 5 uses
  %i.q = fcmp ugt float %i.l, 0.000000e+00
  br i1 %i.q, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.r = fcmp ugt float %i.l, 3.130800e-03
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = fmul nnan float %i.l, 2.550000e+02
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float 1.292000e+01, float 5.000000e-01)
  %i.u = fptoui float %i.t to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.v = fcmp olt float %i.l, 1.000000e+00
  br i1 %i.v, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.w = fpext float %i.l to double
  %i.x = tail call double @pow(double noundef %i.w, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.y = fptrunc double %i.x to float
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 1.055000e+00, float -5.500000e-02)
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.550000e+02, float 5.000000e-01)
  %i.ab = fptoui float %i.aa to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.u, %bb.d ], [ %i.ab, %bb.f ], [ -1, %bb.e ]
  %i.ac = mul nuw nsw i64 %indvars.iv, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac ; 3 uses
  store i8 %.0.i, ptr %i.ad, align 1, !tbaa !18
  %i.ae = fcmp ugt float %i.n, 0.000000e+00
  br i1 %i.ae, label %bb.g, label %Convert_Float_To_U8.exit29

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.af = fcmp ugt float %i.n, 3.130800e-03
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fmul nnan float %i.n, 2.550000e+02
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 1.292000e+01, float 5.000000e-01)
  %i.ai = fptoui float %i.ah to i8
  br label %Convert_Float_To_U8.exit29

bb.i:                                             ; preds = %bb.g
  %i.aj = fcmp olt float %i.n, 1.000000e+00
  br i1 %i.aj, label %bb.j, label %Convert_Float_To_U8.exit29

bb.j:                                             ; preds = %bb.i
  %i.ak = fpext float %i.n to double
  %i.al = tail call double @pow(double noundef %i.ak, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.am = fptrunc double %i.al to float
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float 1.055000e+00, float -5.500000e-02)
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 2.550000e+02, float 5.000000e-01)
  %i.ap = fptoui float %i.ao to i8
  br label %Convert_Float_To_U8.exit29

Convert_Float_To_U8.exit29:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i28 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.ai, %bb.h ], [ %i.ap, %bb.j ], [ -1, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %.0.i28, ptr %i.aq, align 1, !tbaa !18
  %i.ar = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.ar, label %bb.k, label %Convert_Float_To_U8.exit31

bb.k:                                             ; preds = %Convert_Float_To_U8.exit29
  %i.as = fcmp ugt float %i.p, 3.130800e-03
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = fmul nnan float %i.p, 2.550000e+02
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float 1.292000e+01, float 5.000000e-01)
  %i.av = fptoui float %i.au to i8
  br label %Convert_Float_To_U8.exit31

bb.m:                                             ; preds = %bb.k
  %i.aw = fcmp olt float %i.p, 1.000000e+00
  br i1 %i.aw, label %bb.n, label %Convert_Float_To_U8.exit31

bb.n:                                             ; preds = %bb.m
  %i.ax = fpext float %i.p to double
  %i.ay = tail call double @pow(double noundef %i.ax, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.az = fptrunc double %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float 1.055000e+00, float -5.500000e-02)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 2.550000e+02, float 5.000000e-01)
  %i.bc = fptoui float %i.bb to i8
  br label %Convert_Float_To_U8.exit31

Convert_Float_To_U8.exit31:                       ; preds = %Convert_Float_To_U8.exit29, %bb.l, %bb.m, %bb.n
  %.0.i30 = phi i8 [ 0, %Convert_Float_To_U8.exit29 ], [ %i.av, %bb.l ], [ %i.bc, %bb.n ], [ -1, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store i8 %.0.i30, ptr %i.bd, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !169

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit31
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge36.split, label %.lr.ph, !llvm.loop !170

._crit_edge36.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGBA128Float_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge42.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count47 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv44 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next45, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv44 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_AlphaFloat_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_AlphaFloat_To_U8.exit ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2           ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !23 ; 5 uses
  %i.n = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !23 ; 5 uses
  %i.q = or disjoint i64 %i.k, 2                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !23 ; 5 uses
  %i.t = or disjoint i64 %i.k, 3                  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !23 ; 3 uses
  %i.w = fcmp ugt float %i.m, 0.000000e+00
  br i1 %i.w, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.x = fcmp ugt float %i.m, 3.130800e-03
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = fmul nnan float %i.m, 2.550000e+02
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 1.292000e+01, float 5.000000e-01)
  %i.aa = fptoui float %i.z to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = fcmp olt float %i.m, 1.000000e+00
  br i1 %i.ab, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = fpext float %i.m to double
  %i.ad = tail call double @pow(double noundef %i.ac, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ae = fptrunc double %i.ad to float
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float 1.055000e+00, float -5.500000e-02)
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 2.550000e+02, float 5.000000e-01)
  %i.ah = fptoui float %i.ag to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.aa, %bb.d ], [ %i.ah, %bb.f ], [ -1, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.ai, align 1, !tbaa !18
  %i.aj = fcmp ugt float %i.p, 0.000000e+00
  br i1 %i.aj, label %bb.g, label %Convert_Float_To_U8.exit34

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ak = fcmp ugt float %i.p, 3.130800e-03
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = fmul nnan float %i.p, 2.550000e+02
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float 1.292000e+01, float 5.000000e-01)
  %i.an = fptoui float %i.am to i8
  br label %Convert_Float_To_U8.exit34

bb.i:                                             ; preds = %bb.g
  %i.ao = fcmp olt float %i.p, 1.000000e+00
  br i1 %i.ao, label %bb.j, label %Convert_Float_To_U8.exit34

bb.j:                                             ; preds = %bb.i
  %i.ap = fpext float %i.p to double
  %i.aq = tail call double @pow(double noundef %i.ap, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ar = fptrunc double %i.aq to float
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float 1.055000e+00, float -5.500000e-02)
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float 2.550000e+02, float 5.000000e-01)
  %i.au = fptoui float %i.at to i8
  br label %Convert_Float_To_U8.exit34

Convert_Float_To_U8.exit34:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i33 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.an, %bb.h ], [ %i.au, %bb.j ], [ -1, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  store i8 %.0.i33, ptr %i.av, align 1, !tbaa !18
  %i.aw = fcmp ugt float %i.s, 0.000000e+00
  br i1 %i.aw, label %bb.k, label %Convert_Float_To_U8.exit36

bb.k:                                             ; preds = %Convert_Float_To_U8.exit34
  %i.ax = fcmp ugt float %i.s, 3.130800e-03
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = fmul nnan float %i.s, 2.550000e+02
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ay, float 1.292000e+01, float 5.000000e-01)
  %i.ba = fptoui float %i.az to i8
  br label %Convert_Float_To_U8.exit36

bb.m:                                             ; preds = %bb.k
  %i.bb = fcmp olt float %i.s, 1.000000e+00
  br i1 %i.bb, label %bb.n, label %Convert_Float_To_U8.exit36

bb.n:                                             ; preds = %bb.m
  %i.bc = fpext float %i.s to double
  %i.bd = tail call double @pow(double noundef %i.bc, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.be = fptrunc double %i.bd to float
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float 1.055000e+00, float -5.500000e-02)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 2.550000e+02, float 5.000000e-01)
  %i.bh = fptoui float %i.bg to i8
  br label %Convert_Float_To_U8.exit36

Convert_Float_To_U8.exit36:                       ; preds = %Convert_Float_To_U8.exit34, %bb.l, %bb.m, %bb.n
  %.0.i35 = phi i8 [ 0, %Convert_Float_To_U8.exit34 ], [ %i.ba, %bb.l ], [ %i.bh, %bb.n ], [ -1, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.q
  store i8 %.0.i35, ptr %i.bi, align 1, !tbaa !18
  %i.bj = fcmp ugt float %i.v, 0.000000e+00
  br i1 %i.bj, label %bb.o, label %Convert_AlphaFloat_To_U8.exit

bb.o:                                             ; preds = %Convert_Float_To_U8.exit36
  %i.bk = fcmp olt float %i.v, 1.000000e+00
  br i1 %i.bk, label %bb.p, label %Convert_AlphaFloat_To_U8.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.v, float 2.550000e+02, float 5.000000e-01)
  %i.bm = fptoui float %i.bl to i8
  br label %Convert_AlphaFloat_To_U8.exit

Convert_AlphaFloat_To_U8.exit:                    ; preds = %Convert_Float_To_U8.exit36, %bb.o, %bb.p
  %.0.i37 = phi i8 [ 0, %Convert_Float_To_U8.exit36 ], [ %i.bm, %bb.p ], [ -1, %bb.o ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t
  store i8 %.0.i37, ptr %i.bn, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !171

._crit_edge:                                      ; preds = %Convert_AlphaFloat_To_U8.exit
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %._crit_edge42.split, label %.lr.ph, !llvm.loop !172

._crit_edge42.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @Gray16Fixed_Gray8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = sitofp i16 %i.l to float
  %i.n = fmul nnan float %i.m, f0x39000000        ; 5 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ugt float %i.n, 3.130800e-03
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fmul nnan float %i.n, 2.550000e+02
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 1.292000e+01, float 5.000000e-01)
  %i.s = fptoui float %i.r to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp olt float %i.n, 1.000000e+00
  br i1 %i.t, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.u = fpext float %i.n to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.w = fptrunc double %i.v to float
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 1.055000e+00, float -5.500000e-02)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 2.550000e+02, float 5.000000e-01)
  %i.z = fptoui float %i.y to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ -1, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %.0.i, ptr %i.aa, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !173

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !174

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @Gray32Fixed_Gray8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge21.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count26 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next24, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv23 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, f0x33800000        ; 5 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ugt float %i.n, 3.130800e-03
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fmul nnan float %i.n, 2.550000e+02
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 1.292000e+01, float 5.000000e-01)
  %i.s = fptoui float %i.r to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp olt float %i.n, 1.000000e+00
  br i1 %i.t, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.u = fpext float %i.n to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.w = fptrunc double %i.v to float
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 1.055000e+00, float -5.500000e-02)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 2.550000e+02, float 5.000000e-01)
  %i.z = fptoui float %i.y to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ -1, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %.0.i, ptr %i.aa, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !175

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge21.split, label %.lr.ph, !llvm.loop !176

._crit_edge21.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB48Fixed_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count38 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit28 ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 4 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = sitofp i16 %i.m to float
  %i.o = fmul nnan float %i.n, f0x39000000        ; 5 uses
  %i.p = fcmp ugt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ugt float %i.o, 3.130800e-03
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = fmul nnan float %i.o, 2.550000e+02
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 1.292000e+01, float 5.000000e-01)
  %i.t = fptoui float %i.s to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.u = fcmp olt float %i.o, 1.000000e+00
  br i1 %i.u, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.v = fpext float %i.o to double
  %i.w = tail call double @pow(double noundef %i.v, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.x = fptrunc double %i.w to float
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 1.055000e+00, float -5.500000e-02)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01)
  %i.aa = fptoui float %i.z to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.t, %bb.d ], [ %i.aa, %bb.f ], [ -1, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = add nuw nsw i64 %i.k, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !27
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul nnan float %i.af, f0x39000000      ; 5 uses
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %Convert_Float_To_U8.exit26

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ai = fcmp ugt float %i.ag, 3.130800e-03
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = fmul nnan float %i.ag, 2.550000e+02
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 1.292000e+01, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i8
  br label %Convert_Float_To_U8.exit26

bb.i:                                             ; preds = %bb.g
  %i.am = fcmp olt float %i.ag, 1.000000e+00
  br i1 %i.am, label %bb.j, label %Convert_Float_To_U8.exit26

bb.j:                                             ; preds = %bb.i
  %i.an = fpext float %i.ag to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ap = fptrunc double %i.ao to float
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 2.550000e+02, float 5.000000e-01)
  %i.as = fptoui float %i.ar to i8
  br label %Convert_Float_To_U8.exit26

Convert_Float_To_U8.exit26:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i25 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.al, %bb.h ], [ %i.as, %bb.j ], [ -1, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  store i8 %.0.i25, ptr %i.at, align 1, !tbaa !18
  %i.au = add nuw nsw i64 %i.k, 2                 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !27
  %i.ax = sitofp i16 %i.aw to float
  %i.ay = fmul nnan float %i.ax, f0x39000000      ; 5 uses
  %i.az = fcmp ugt float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.k, label %Convert_Float_To_U8.exit28

bb.k:                                             ; preds = %Convert_Float_To_U8.exit26
  %i.ba = fcmp ugt float %i.ay, 3.130800e-03
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = fmul nnan float %i.ay, 2.550000e+02
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.292000e+01, float 5.000000e-01)
  %i.bd = fptoui float %i.bc to i8
  br label %Convert_Float_To_U8.exit28

bb.m:                                             ; preds = %bb.k
  %i.be = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.be, label %bb.n, label %Convert_Float_To_U8.exit28

bb.n:                                             ; preds = %bb.m
  %i.bf = fpext float %i.ay to double
  %i.bg = tail call double @pow(double noundef %i.bf, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bh = fptrunc double %i.bg to float
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float 1.055000e+00, float -5.500000e-02)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 2.550000e+02, float 5.000000e-01)
  %i.bk = fptoui float %i.bj to i8
  br label %Convert_Float_To_U8.exit28

Convert_Float_To_U8.exit28:                       ; preds = %Convert_Float_To_U8.exit26, %bb.l, %bb.m, %bb.n
  %.0.i27 = phi i8 [ 0, %Convert_Float_To_U8.exit26 ], [ %i.bd, %bb.l ], [ %i.bk, %bb.n ], [ -1, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  store i8 %.0.i27, ptr %i.bl, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !177

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit28
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33.split, label %.lr.ph, !llvm.loop !178

._crit_edge33.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB64Fixed_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count38 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit28 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27
  %i.m = sitofp i16 %i.l to float
  %i.n = fmul nnan float %i.m, f0x39000000        ; 5 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ugt float %i.n, 3.130800e-03
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fmul nnan float %i.n, 2.550000e+02
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 1.292000e+01, float 5.000000e-01)
  %i.s = fptoui float %i.r to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp olt float %i.n, 1.000000e+00
  br i1 %i.t, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.u = fpext float %i.n to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.w = fptrunc double %i.v to float
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 1.055000e+00, float -5.500000e-02)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 2.550000e+02, float 5.000000e-01)
  %i.z = fptoui float %i.y to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ -1, %bb.e ]
  %i.aa = mul nuw nsw i64 %indvars.iv, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa ; 3 uses
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !27
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x39000000      ; 5 uses
  %i.ag = fcmp ugt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %Convert_Float_To_U8.exit26

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ah = fcmp ugt float %i.af, 3.130800e-03
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul nnan float %i.af, 2.550000e+02
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 1.292000e+01, float 5.000000e-01)
  %i.ak = fptoui float %i.aj to i8
  br label %Convert_Float_To_U8.exit26

bb.i:                                             ; preds = %bb.g
  %i.al = fcmp olt float %i.af, 1.000000e+00
  br i1 %i.al, label %bb.j, label %Convert_Float_To_U8.exit26

bb.j:                                             ; preds = %bb.i
  %i.am = fpext float %i.af to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ao = fptrunc double %i.an to float
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 1.055000e+00, float -5.500000e-02)
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.550000e+02, float 5.000000e-01)
  %i.ar = fptoui float %i.aq to i8
  br label %Convert_Float_To_U8.exit26

Convert_Float_To_U8.exit26:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i25 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.ak, %bb.h ], [ %i.ar, %bb.j ], [ -1, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.0.i25, ptr %i.as, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.au = load i16, ptr %i.at, align 2, !tbaa !27
  %i.av = sitofp i16 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x39000000      ; 5 uses
  %i.ax = fcmp ugt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %Convert_Float_To_U8.exit28

bb.k:                                             ; preds = %Convert_Float_To_U8.exit26
  %i.ay = fcmp ugt float %i.aw, 3.130800e-03
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = fmul nnan float %i.aw, 2.550000e+02
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float 1.292000e+01, float 5.000000e-01)
  %i.bb = fptoui float %i.ba to i8
  br label %Convert_Float_To_U8.exit28

bb.m:                                             ; preds = %bb.k
  %i.bc = fcmp olt float %i.aw, 1.000000e+00
  br i1 %i.bc, label %bb.n, label %Convert_Float_To_U8.exit28

bb.n:                                             ; preds = %bb.m
  %i.bd = fpext float %i.aw to double
  %i.be = tail call double @pow(double noundef %i.bd, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bf = fptrunc double %i.be to float
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 1.055000e+00, float -5.500000e-02)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01)
  %i.bi = fptoui float %i.bh to i8
  br label %Convert_Float_To_U8.exit28

Convert_Float_To_U8.exit28:                       ; preds = %Convert_Float_To_U8.exit26, %bb.l, %bb.m, %bb.n
  %.0.i27 = phi i8 [ 0, %Convert_Float_To_U8.exit26 ], [ %i.bb, %bb.l ], [ %i.bi, %bb.n ], [ -1, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %.0.i27, ptr %i.bj, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !179

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit28
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33.split, label %.lr.ph, !llvm.loop !180

._crit_edge33.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB96Fixed_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count38 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit28 ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x33800000        ; 5 uses
  %i.p = fcmp ugt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ugt float %i.o, 3.130800e-03
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = fmul nnan float %i.o, 2.550000e+02
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 1.292000e+01, float 5.000000e-01)
  %i.t = fptoui float %i.s to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.u = fcmp olt float %i.o, 1.000000e+00
  br i1 %i.u, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.v = fpext float %i.o to double
  %i.w = tail call double @pow(double noundef %i.v, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.x = fptrunc double %i.w to float
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 1.055000e+00, float -5.500000e-02)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01)
  %i.aa = fptoui float %i.z to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.t, %bb.d ], [ %i.aa, %bb.f ], [ -1, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = add nuw nsw i64 %i.k, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fmul nnan float %i.af, f0x33800000      ; 5 uses
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %Convert_Float_To_U8.exit26

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ai = fcmp ugt float %i.ag, 3.130800e-03
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = fmul nnan float %i.ag, 2.550000e+02
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 1.292000e+01, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i8
  br label %Convert_Float_To_U8.exit26

bb.i:                                             ; preds = %bb.g
  %i.am = fcmp olt float %i.ag, 1.000000e+00
  br i1 %i.am, label %bb.j, label %Convert_Float_To_U8.exit26

bb.j:                                             ; preds = %bb.i
  %i.an = fpext float %i.ag to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ap = fptrunc double %i.ao to float
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 2.550000e+02, float 5.000000e-01)
  %i.as = fptoui float %i.ar to i8
  br label %Convert_Float_To_U8.exit26

Convert_Float_To_U8.exit26:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i25 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.al, %bb.h ], [ %i.as, %bb.j ], [ -1, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  store i8 %.0.i25, ptr %i.at, align 1, !tbaa !18
  %i.au = add nuw nsw i64 %i.k, 2                 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fmul nnan float %i.ax, f0x33800000      ; 5 uses
  %i.az = fcmp ugt float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.k, label %Convert_Float_To_U8.exit28

bb.k:                                             ; preds = %Convert_Float_To_U8.exit26
  %i.ba = fcmp ugt float %i.ay, 3.130800e-03
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = fmul nnan float %i.ay, 2.550000e+02
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.292000e+01, float 5.000000e-01)
  %i.bd = fptoui float %i.bc to i8
  br label %Convert_Float_To_U8.exit28

bb.m:                                             ; preds = %bb.k
  %i.be = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.be, label %bb.n, label %Convert_Float_To_U8.exit28

bb.n:                                             ; preds = %bb.m
  %i.bf = fpext float %i.ay to double
  %i.bg = tail call double @pow(double noundef %i.bf, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bh = fptrunc double %i.bg to float
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float 1.055000e+00, float -5.500000e-02)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 2.550000e+02, float 5.000000e-01)
  %i.bk = fptoui float %i.bj to i8
  br label %Convert_Float_To_U8.exit28

Convert_Float_To_U8.exit28:                       ; preds = %Convert_Float_To_U8.exit26, %bb.l, %bb.m, %bb.n
  %.0.i27 = phi i8 [ 0, %Convert_Float_To_U8.exit26 ], [ %i.bd, %bb.l ], [ %i.bk, %bb.n ], [ -1, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  store i8 %.0.i27, ptr %i.bl, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !181

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit28
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33.split, label %.lr.ph, !llvm.loop !182

._crit_edge33.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB128Fixed_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge33.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count38 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv35 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit28
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit28 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, f0x33800000        ; 5 uses
  %i.o = fcmp ugt float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.p = fcmp ugt float %i.n, 3.130800e-03
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = fmul nnan float %i.n, 2.550000e+02
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 1.292000e+01, float 5.000000e-01)
  %i.s = fptoui float %i.r to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fcmp olt float %i.n, 1.000000e+00
  br i1 %i.t, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.u = fpext float %i.n to double
  %i.v = tail call double @pow(double noundef %i.u, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.w = fptrunc double %i.v to float
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 1.055000e+00, float -5.500000e-02)
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 2.550000e+02, float 5.000000e-01)
  %i.z = fptoui float %i.y to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.s, %bb.d ], [ %i.z, %bb.f ], [ -1, %bb.e ]
  %i.aa = mul nuw nsw i64 %indvars.iv, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa ; 3 uses
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fmul nnan float %i.ae, f0x33800000      ; 5 uses
  %i.ag = fcmp ugt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %Convert_Float_To_U8.exit26

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ah = fcmp ugt float %i.af, 3.130800e-03
  br i1 %i.ah, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = fmul nnan float %i.af, 2.550000e+02
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 1.292000e+01, float 5.000000e-01)
  %i.ak = fptoui float %i.aj to i8
  br label %Convert_Float_To_U8.exit26

bb.i:                                             ; preds = %bb.g
  %i.al = fcmp olt float %i.af, 1.000000e+00
  br i1 %i.al, label %bb.j, label %Convert_Float_To_U8.exit26

bb.j:                                             ; preds = %bb.i
  %i.am = fpext float %i.af to double
  %i.an = tail call double @pow(double noundef %i.am, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ao = fptrunc double %i.an to float
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 1.055000e+00, float -5.500000e-02)
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.550000e+02, float 5.000000e-01)
  %i.ar = fptoui float %i.aq to i8
  br label %Convert_Float_To_U8.exit26

Convert_Float_To_U8.exit26:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i25 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.ak, %bb.h ], [ %i.ar, %bb.j ], [ -1, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.0.i25, ptr %i.as, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = sitofp i32 %i.au to float
  %i.aw = fmul nnan float %i.av, f0x33800000      ; 5 uses
  %i.ax = fcmp ugt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.k, label %Convert_Float_To_U8.exit28

bb.k:                                             ; preds = %Convert_Float_To_U8.exit26
  %i.ay = fcmp ugt float %i.aw, 3.130800e-03
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = fmul nnan float %i.aw, 2.550000e+02
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float 1.292000e+01, float 5.000000e-01)
  %i.bb = fptoui float %i.ba to i8
  br label %Convert_Float_To_U8.exit28

bb.m:                                             ; preds = %bb.k
  %i.bc = fcmp olt float %i.aw, 1.000000e+00
  br i1 %i.bc, label %bb.n, label %Convert_Float_To_U8.exit28

bb.n:                                             ; preds = %bb.m
  %i.bd = fpext float %i.aw to double
  %i.be = tail call double @pow(double noundef %i.bd, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bf = fptrunc double %i.be to float
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 1.055000e+00, float -5.500000e-02)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01)
  %i.bi = fptoui float %i.bh to i8
  br label %Convert_Float_To_U8.exit28

Convert_Float_To_U8.exit28:                       ; preds = %Convert_Float_To_U8.exit26, %bb.l, %bb.m, %bb.n
  %.0.i27 = phi i8 [ 0, %Convert_Float_To_U8.exit26 ], [ %i.bb, %bb.l ], [ %i.bi, %bb.n ], [ -1, %bb.m ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %.0.i27, ptr %i.bj, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !183

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit28
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %._crit_edge33.split, label %.lr.ph, !llvm.loop !184

._crit_edge33.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGBA64Fixed_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge38.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count43 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv40 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_AlphaFloat_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_AlphaFloat_To_U8.exit ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2           ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = sitofp i16 %i.m to float
  %i.o = fmul nnan float %i.n, f0x39000000        ; 5 uses
  %i.p = fcmp ugt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ugt float %i.o, 3.130800e-03
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = fmul nnan float %i.o, 2.550000e+02
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 1.292000e+01, float 5.000000e-01)
  %i.t = fptoui float %i.s to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.u = fcmp olt float %i.o, 1.000000e+00
  br i1 %i.u, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.v = fpext float %i.o to double
  %i.w = tail call double @pow(double noundef %i.v, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.x = fptrunc double %i.w to float
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 1.055000e+00, float -5.500000e-02)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01)
  %i.aa = fptoui float %i.z to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.t, %bb.d ], [ %i.aa, %bb.f ], [ -1, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = or disjoint i64 %i.k, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !27
  %i.af = sitofp i16 %i.ae to float
  %i.ag = fmul nnan float %i.af, f0x39000000      ; 5 uses
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %Convert_Float_To_U8.exit30

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ai = fcmp ugt float %i.ag, 3.130800e-03
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = fmul nnan float %i.ag, 2.550000e+02
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 1.292000e+01, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i8
  br label %Convert_Float_To_U8.exit30

bb.i:                                             ; preds = %bb.g
  %i.am = fcmp olt float %i.ag, 1.000000e+00
  br i1 %i.am, label %bb.j, label %Convert_Float_To_U8.exit30

bb.j:                                             ; preds = %bb.i
  %i.an = fpext float %i.ag to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ap = fptrunc double %i.ao to float
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 2.550000e+02, float 5.000000e-01)
  %i.as = fptoui float %i.ar to i8
  br label %Convert_Float_To_U8.exit30

Convert_Float_To_U8.exit30:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i29 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.al, %bb.h ], [ %i.as, %bb.j ], [ -1, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  store i8 %.0.i29, ptr %i.at, align 1, !tbaa !18
  %i.au = or disjoint i64 %i.k, 2                 ; 2 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !27
  %i.ax = sitofp i16 %i.aw to float
  %i.ay = fmul nnan float %i.ax, f0x39000000      ; 5 uses
  %i.az = fcmp ugt float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.k, label %Convert_Float_To_U8.exit32

bb.k:                                             ; preds = %Convert_Float_To_U8.exit30
  %i.ba = fcmp ugt float %i.ay, 3.130800e-03
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = fmul nnan float %i.ay, 2.550000e+02
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.292000e+01, float 5.000000e-01)
  %i.bd = fptoui float %i.bc to i8
  br label %Convert_Float_To_U8.exit32

bb.m:                                             ; preds = %bb.k
  %i.be = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.be, label %bb.n, label %Convert_Float_To_U8.exit32

bb.n:                                             ; preds = %bb.m
  %i.bf = fpext float %i.ay to double
  %i.bg = tail call double @pow(double noundef %i.bf, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bh = fptrunc double %i.bg to float
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float 1.055000e+00, float -5.500000e-02)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 2.550000e+02, float 5.000000e-01)
  %i.bk = fptoui float %i.bj to i8
  br label %Convert_Float_To_U8.exit32

Convert_Float_To_U8.exit32:                       ; preds = %Convert_Float_To_U8.exit30, %bb.l, %bb.m, %bb.n
  %.0.i31 = phi i8 [ 0, %Convert_Float_To_U8.exit30 ], [ %i.bd, %bb.l ], [ %i.bk, %bb.n ], [ -1, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  store i8 %.0.i31, ptr %i.bl, align 1, !tbaa !18
  %i.bm = or disjoint i64 %i.k, 3                 ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !27
  %i.bp = sitofp i16 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x39000000      ; 3 uses
  %i.br = fcmp ugt float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.o, label %Convert_AlphaFloat_To_U8.exit

bb.o:                                             ; preds = %Convert_Float_To_U8.exit32
  %i.bs = fcmp olt float %i.bq, 1.000000e+00
  br i1 %i.bs, label %bb.p, label %Convert_AlphaFloat_To_U8.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bq, float 2.550000e+02, float 5.000000e-01)
  %i.bu = fptoui float %i.bt to i8
  br label %Convert_AlphaFloat_To_U8.exit

Convert_AlphaFloat_To_U8.exit:                    ; preds = %Convert_Float_To_U8.exit32, %bb.o, %bb.p
  %.0.i33 = phi i8 [ 0, %Convert_Float_To_U8.exit32 ], [ %i.bu, %bb.p ], [ -1, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bm
  store i8 %.0.i33, ptr %i.bv, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !185

._crit_edge:                                      ; preds = %Convert_AlphaFloat_To_U8.exit
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.lr.ph, !llvm.loop !186

._crit_edge38.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGBA128Fixed_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge38.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count43 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next41, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv40 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_AlphaFloat_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_AlphaFloat_To_U8.exit ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2           ; 5 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x33800000        ; 5 uses
  %i.p = fcmp ugt float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.c, label %Convert_Float_To_U8.exit

bb.c:                                             ; preds = %bb.b
  %i.q = fcmp ugt float %i.o, 3.130800e-03
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = fmul nnan float %i.o, 2.550000e+02
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 1.292000e+01, float 5.000000e-01)
  %i.t = fptoui float %i.s to i8
  br label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %bb.c
  %i.u = fcmp olt float %i.o, 1.000000e+00
  br i1 %i.u, label %bb.f, label %Convert_Float_To_U8.exit

bb.f:                                             ; preds = %bb.e
  %i.v = fpext float %i.o to double
  %i.w = tail call double @pow(double noundef %i.v, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.x = fptrunc double %i.w to float
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float 1.055000e+00, float -5.500000e-02)
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 2.550000e+02, float 5.000000e-01)
  %i.aa = fptoui float %i.z to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 0, %bb.b ], [ %i.t, %bb.d ], [ %i.aa, %bb.f ], [ -1, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = or disjoint i64 %i.k, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !21
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fmul nnan float %i.af, f0x33800000      ; 5 uses
  %i.ah = fcmp ugt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.g, label %Convert_Float_To_U8.exit30

bb.g:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ai = fcmp ugt float %i.ag, 3.130800e-03
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = fmul nnan float %i.ag, 2.550000e+02
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 1.292000e+01, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i8
  br label %Convert_Float_To_U8.exit30

bb.i:                                             ; preds = %bb.g
  %i.am = fcmp olt float %i.ag, 1.000000e+00
  br i1 %i.am, label %bb.j, label %Convert_Float_To_U8.exit30

bb.j:                                             ; preds = %bb.i
  %i.an = fpext float %i.ag to double
  %i.ao = tail call double @pow(double noundef %i.an, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ap = fptrunc double %i.ao to float
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 2.550000e+02, float 5.000000e-01)
  %i.as = fptoui float %i.ar to i8
  br label %Convert_Float_To_U8.exit30

Convert_Float_To_U8.exit30:                       ; preds = %Convert_Float_To_U8.exit, %bb.h, %bb.i, %bb.j
  %.0.i29 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.al, %bb.h ], [ %i.as, %bb.j ], [ -1, %bb.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  store i8 %.0.i29, ptr %i.at, align 1, !tbaa !18
  %i.au = or disjoint i64 %i.k, 2                 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21
  %i.ax = sitofp i32 %i.aw to float
  %i.ay = fmul nnan float %i.ax, f0x33800000      ; 5 uses
  %i.az = fcmp ugt float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.k, label %Convert_Float_To_U8.exit32

bb.k:                                             ; preds = %Convert_Float_To_U8.exit30
  %i.ba = fcmp ugt float %i.ay, 3.130800e-03
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = fmul nnan float %i.ay, 2.550000e+02
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float 1.292000e+01, float 5.000000e-01)
  %i.bd = fptoui float %i.bc to i8
  br label %Convert_Float_To_U8.exit32

bb.m:                                             ; preds = %bb.k
  %i.be = fcmp olt float %i.ay, 1.000000e+00
  br i1 %i.be, label %bb.n, label %Convert_Float_To_U8.exit32

bb.n:                                             ; preds = %bb.m
  %i.bf = fpext float %i.ay to double
  %i.bg = tail call double @pow(double noundef %i.bf, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bh = fptrunc double %i.bg to float
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float 1.055000e+00, float -5.500000e-02)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 2.550000e+02, float 5.000000e-01)
  %i.bk = fptoui float %i.bj to i8
  br label %Convert_Float_To_U8.exit32

Convert_Float_To_U8.exit32:                       ; preds = %Convert_Float_To_U8.exit30, %bb.l, %bb.m, %bb.n
  %.0.i31 = phi i8 [ 0, %Convert_Float_To_U8.exit30 ], [ %i.bd, %bb.l ], [ %i.bk, %bb.n ], [ -1, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au
  store i8 %.0.i31, ptr %i.bl, align 1, !tbaa !18
  %i.bm = or disjoint i64 %i.k, 3                 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !21
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x33800000      ; 3 uses
  %i.br = fcmp ugt float %i.bq, 0.000000e+00
  br i1 %i.br, label %bb.o, label %Convert_AlphaFloat_To_U8.exit

bb.o:                                             ; preds = %Convert_Float_To_U8.exit32
  %i.bs = fcmp olt float %i.bq, 1.000000e+00
  br i1 %i.bs, label %bb.p, label %Convert_AlphaFloat_To_U8.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bq, float 2.550000e+02, float 5.000000e-01)
  %i.bu = fptoui float %i.bt to i8
  br label %Convert_AlphaFloat_To_U8.exit

Convert_AlphaFloat_To_U8.exit:                    ; preds = %Convert_Float_To_U8.exit32, %bb.o, %bb.p
  %.0.i33 = phi i8 [ 0, %Convert_Float_To_U8.exit32 ], [ %i.bu, %bb.p ], [ -1, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bm
  store i8 %.0.i33, ptr %i.bv, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !187

._crit_edge:                                      ; preds = %Convert_AlphaFloat_To_U8.exit
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge38.split, label %.lr.ph, !llvm.loop !188

._crit_edge38.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @Gray16Half_Gray8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge23.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count28 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv25 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next26, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv25 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27   ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = lshr i32 %i.m, 10
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.signext.i = sext i16 %i.l to i32
  %i.p = and i32 %.signext.i, -2147483648         ; 3 uses
  switch i32 %i.o, label %bb.d [
    i32 0, label %Convert_Half_To_Float.exit
    i32 31, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i32 %i.m, 13
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = or i32 %i.r, 2139095040
  br label %Convert_Half_To_Float.exit

bb.d:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i32 %i.o, 23
  %i.u = add nuw nsw i32 %i.t, 939524096
  %i.v = shl nuw nsw i32 %i.m, 13
  %i.w = and i32 %i.v, 8380416
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = or disjoint i32 %i.x, %i.p
  br label %Convert_Half_To_Float.exit

Convert_Half_To_Float.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.y, %bb.d ], [ %i.s, %bb.c ], [ %i.p, %bb.b ]
  %i.z = bitcast i32 %.0.i to float               ; 5 uses
  %i.aa = fcmp ugt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %Convert_Float_To_U8.exit

bb.e:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ab = fcmp ugt float %i.z, 3.130800e-03
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = fmul nnan float %i.z, 2.550000e+02
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 1.292000e+01, float 5.000000e-01)
  %i.ae = fptoui float %i.ad to i8
  br label %Convert_Float_To_U8.exit

bb.g:                                             ; preds = %bb.e
  %i.af = fcmp olt float %i.z, 1.000000e+00
  br i1 %i.af, label %bb.h, label %Convert_Float_To_U8.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = fpext float %i.z to double
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ai = fptrunc double %i.ah to float
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 1.055000e+00, float -5.500000e-02)
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float 2.550000e+02, float 5.000000e-01)
  %i.al = fptoui float %i.ak to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %Convert_Half_To_Float.exit, %bb.f, %bb.g, %bb.h
  %.0.i18 = phi i8 [ 0, %Convert_Half_To_Float.exit ], [ %i.ae, %bb.f ], [ %i.al, %bb.h ], [ -1, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %.0.i18, ptr %i.am, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !189

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge23.split, label %.lr.ph, !llvm.loop !190

._crit_edge23.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB48Half_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge43.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count48 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv45 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit38
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit38 ] ; 2 uses
  %i.k = mul nuw nsw i64 %indvars.iv, 3           ; 4 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27   ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = lshr i32 %i.n, 10
  %i.p = and i32 %i.o, 31                         ; 2 uses
  %.signext.i = sext i16 %i.m to i32
  %i.q = and i32 %.signext.i, -2147483648         ; 3 uses
  switch i32 %i.p, label %bb.d [
    i32 0, label %Convert_Half_To_Float.exit
    i32 31, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i32 %i.n, 13
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = or i32 %i.s, 2139095040
  br label %Convert_Half_To_Float.exit

bb.d:                                             ; preds = %bb.b
  %i.u = shl nuw nsw i32 %i.p, 23
  %i.v = add nuw nsw i32 %i.u, 939524096
  %i.w = shl nuw nsw i32 %i.n, 13
  %i.x = and i32 %i.w, 8380416
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = or disjoint i32 %i.y, %i.q
  br label %Convert_Half_To_Float.exit

Convert_Half_To_Float.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.z, %bb.d ], [ %i.t, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = add nuw nsw i64 %i.k, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = lshr i32 %i.ad, 10
  %i.af = and i32 %i.ae, 31                       ; 2 uses
  %.signext.i28 = sext i16 %i.ac to i32
  %i.ag = and i32 %.signext.i28, -2147483648      ; 3 uses
  switch i32 %i.af, label %bb.f [
    i32 0, label %Convert_Half_To_Float.exit30
    i32 31, label %bb.e
  ]

bb.e:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ah = shl nuw nsw i32 %i.ad, 13
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = or i32 %i.ai, 2139095040
  br label %Convert_Half_To_Float.exit30

bb.f:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ak = shl nuw nsw i32 %i.af, 23
  %i.al = add nuw nsw i32 %i.ak, 939524096
  %i.am = shl nuw nsw i32 %i.ad, 13
  %i.an = and i32 %i.am, 8380416
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ag
  br label %Convert_Half_To_Float.exit30

Convert_Half_To_Float.exit30:                     ; preds = %Convert_Half_To_Float.exit, %bb.e, %bb.f
  %.0.i29 = phi i32 [ %i.ap, %bb.f ], [ %i.aj, %bb.e ], [ %i.ag, %Convert_Half_To_Float.exit ]
  %i.aq = add nuw nsw i64 %i.k, 2                 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !27 ; 2 uses
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = lshr i32 %i.at, 10
  %i.av = and i32 %i.au, 31                       ; 2 uses
  %.signext.i31 = sext i16 %i.as to i32
  %i.aw = and i32 %.signext.i31, -2147483648      ; 3 uses
  switch i32 %i.av, label %bb.h [
    i32 0, label %Convert_Half_To_Float.exit33
    i32 31, label %bb.g
  ]

bb.g:                                             ; preds = %Convert_Half_To_Float.exit30
  %i.ax = shl nuw nsw i32 %i.at, 13
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 2139095040
  br label %Convert_Half_To_Float.exit33

bb.h:                                             ; preds = %Convert_Half_To_Float.exit30
  %i.ba = shl nuw nsw i32 %i.av, 23
  %i.bb = add nuw nsw i32 %i.ba, 939524096
  %i.bc = shl nuw nsw i32 %i.at, 13
  %i.bd = and i32 %i.bc, 8380416
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.aw
  br label %Convert_Half_To_Float.exit33

Convert_Half_To_Float.exit33:                     ; preds = %Convert_Half_To_Float.exit30, %bb.g, %bb.h
  %.0.i32 = phi i32 [ %i.bf, %bb.h ], [ %i.az, %bb.g ], [ %i.aw, %Convert_Half_To_Float.exit30 ]
  %i.bg = bitcast i32 %.0.i to float              ; 5 uses
  %i.bh = fcmp ugt float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.i, label %Convert_Float_To_U8.exit

bb.i:                                             ; preds = %Convert_Half_To_Float.exit33
  %i.bi = fcmp ugt float %i.bg, 3.130800e-03
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = fmul nnan float %i.bg, 2.550000e+02
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float 1.292000e+01, float 5.000000e-01)
  %i.bl = fptoui float %i.bk to i8
  br label %Convert_Float_To_U8.exit

bb.k:                                             ; preds = %bb.i
  %i.bm = fcmp olt float %i.bg, 1.000000e+00
  br i1 %i.bm, label %bb.l, label %Convert_Float_To_U8.exit

bb.l:                                             ; preds = %bb.k
  %i.bn = fpext float %i.bg to double
  %i.bo = tail call double @pow(double noundef %i.bn, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bp = fptrunc double %i.bo to float
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float 1.055000e+00, float -5.500000e-02)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float 2.550000e+02, float 5.000000e-01)
  %i.bs = fptoui float %i.br to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %Convert_Half_To_Float.exit33, %bb.j, %bb.k, %bb.l
  %.0.i34 = phi i8 [ 0, %Convert_Half_To_Float.exit33 ], [ %i.bl, %bb.j ], [ %i.bs, %bb.l ], [ -1, %bb.k ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i34, ptr %i.bt, align 1, !tbaa !18
  %i.bu = bitcast i32 %.0.i29 to float            ; 5 uses
  %i.bv = fcmp ugt float %i.bu, 0.000000e+00
  br i1 %i.bv, label %bb.m, label %Convert_Float_To_U8.exit36

bb.m:                                             ; preds = %Convert_Float_To_U8.exit
  %i.bw = fcmp ugt float %i.bu, 3.130800e-03
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = fmul nnan float %i.bu, 2.550000e+02
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float 1.292000e+01, float 5.000000e-01)
  %i.bz = fptoui float %i.by to i8
  br label %Convert_Float_To_U8.exit36

bb.o:                                             ; preds = %bb.m
  %i.ca = fcmp olt float %i.bu, 1.000000e+00
  br i1 %i.ca, label %bb.p, label %Convert_Float_To_U8.exit36

bb.p:                                             ; preds = %bb.o
  %i.cb = fpext float %i.bu to double
  %i.cc = tail call double @pow(double noundef %i.cb, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.cd = fptrunc double %i.cc to float
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float 1.055000e+00, float -5.500000e-02)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float 2.550000e+02, float 5.000000e-01)
  %i.cg = fptoui float %i.cf to i8
  br label %Convert_Float_To_U8.exit36

Convert_Float_To_U8.exit36:                       ; preds = %Convert_Float_To_U8.exit, %bb.n, %bb.o, %bb.p
  %.0.i35 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.bz, %bb.n ], [ %i.cg, %bb.p ], [ -1, %bb.o ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  store i8 %.0.i35, ptr %i.ch, align 1, !tbaa !18
  %i.ci = bitcast i32 %.0.i32 to float            ; 5 uses
  %i.cj = fcmp ugt float %i.ci, 0.000000e+00
  br i1 %i.cj, label %bb.q, label %Convert_Float_To_U8.exit38

bb.q:                                             ; preds = %Convert_Float_To_U8.exit36
  %i.ck = fcmp ugt float %i.ci, 3.130800e-03
  br i1 %i.ck, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = fmul nnan float %i.ci, 2.550000e+02
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float 1.292000e+01, float 5.000000e-01)
  %i.cn = fptoui float %i.cm to i8
  br label %Convert_Float_To_U8.exit38

bb.s:                                             ; preds = %bb.q
  %i.co = fcmp olt float %i.ci, 1.000000e+00
  br i1 %i.co, label %bb.t, label %Convert_Float_To_U8.exit38

bb.t:                                             ; preds = %bb.s
  %i.cp = fpext float %i.ci to double
  %i.cq = tail call double @pow(double noundef %i.cp, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.cr = fptrunc double %i.cq to float
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float 1.055000e+00, float -5.500000e-02)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float 2.550000e+02, float 5.000000e-01)
  %i.cu = fptoui float %i.ct to i8
  br label %Convert_Float_To_U8.exit38

Convert_Float_To_U8.exit38:                       ; preds = %Convert_Float_To_U8.exit36, %bb.r, %bb.s, %bb.t
  %.0.i37 = phi i8 [ 0, %Convert_Float_To_U8.exit36 ], [ %i.cn, %bb.r ], [ %i.cu, %bb.t ], [ -1, %bb.s ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aq
  store i8 %.0.i37, ptr %i.cv, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !191

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit38
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %._crit_edge43.split, label %.lr.ph, !llvm.loop !192

._crit_edge43.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGB64Half_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge43.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count48 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next46, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv45 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_Float_To_U8.exit38
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_Float_To_U8.exit38 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 3 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !27   ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 3 uses
  %i.n = lshr i32 %i.m, 10
  %i.o = and i32 %i.n, 31                         ; 2 uses
  %.signext.i = sext i16 %i.l to i32
  %i.p = and i32 %.signext.i, -2147483648         ; 3 uses
  switch i32 %i.o, label %bb.d [
    i32 0, label %Convert_Half_To_Float.exit
    i32 31, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = shl nuw nsw i32 %i.m, 13
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = or i32 %i.r, 2139095040
  br label %Convert_Half_To_Float.exit

bb.d:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i32 %i.o, 23
  %i.u = add nuw nsw i32 %i.t, 939524096
  %i.v = shl nuw nsw i32 %i.m, 13
  %i.w = and i32 %i.v, 8380416
  %i.x = or disjoint i32 %i.u, %i.w
  %i.y = or disjoint i32 %i.x, %i.p
  br label %Convert_Half_To_Float.exit

Convert_Half_To_Float.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.y, %bb.d ], [ %i.s, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !27  ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 3 uses
  %i.ac = lshr i32 %i.ab, 10
  %i.ad = and i32 %i.ac, 31                       ; 2 uses
  %.signext.i28 = sext i16 %i.aa to i32
  %i.ae = and i32 %.signext.i28, -2147483648      ; 3 uses
  switch i32 %i.ad, label %bb.f [
    i32 0, label %Convert_Half_To_Float.exit30
    i32 31, label %bb.e
  ]

bb.e:                                             ; preds = %Convert_Half_To_Float.exit
  %i.af = shl nuw nsw i32 %i.ab, 13
  %i.ag = or disjoint i32 %i.ae, %i.af
  %i.ah = or i32 %i.ag, 2139095040
  br label %Convert_Half_To_Float.exit30

bb.f:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ai = shl nuw nsw i32 %i.ad, 23
  %i.aj = add nuw nsw i32 %i.ai, 939524096
  %i.ak = shl nuw nsw i32 %i.ab, 13
  %i.al = and i32 %i.ak, 8380416
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ae
  br label %Convert_Half_To_Float.exit30

Convert_Half_To_Float.exit30:                     ; preds = %Convert_Half_To_Float.exit, %bb.e, %bb.f
  %.0.i29 = phi i32 [ %i.an, %bb.f ], [ %i.ah, %bb.e ], [ %i.ae, %Convert_Half_To_Float.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !27 ; 2 uses
  %i.aq = zext i16 %i.ap to i32                   ; 3 uses
  %i.ar = lshr i32 %i.aq, 10
  %i.as = and i32 %i.ar, 31                       ; 2 uses
  %.signext.i31 = sext i16 %i.ap to i32
  %i.at = and i32 %.signext.i31, -2147483648      ; 3 uses
  switch i32 %i.as, label %bb.h [
    i32 0, label %Convert_Half_To_Float.exit33
    i32 31, label %bb.g
  ]

bb.g:                                             ; preds = %Convert_Half_To_Float.exit30
  %i.au = shl nuw nsw i32 %i.aq, 13
  %i.av = or disjoint i32 %i.at, %i.au
  %i.aw = or i32 %i.av, 2139095040
  br label %Convert_Half_To_Float.exit33

bb.h:                                             ; preds = %Convert_Half_To_Float.exit30
  %i.ax = shl nuw nsw i32 %i.as, 23
  %i.ay = add nuw nsw i32 %i.ax, 939524096
  %i.az = shl nuw nsw i32 %i.aq, 13
  %i.ba = and i32 %i.az, 8380416
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.at
  br label %Convert_Half_To_Float.exit33

Convert_Half_To_Float.exit33:                     ; preds = %Convert_Half_To_Float.exit30, %bb.g, %bb.h
  %.0.i32 = phi i32 [ %i.bc, %bb.h ], [ %i.aw, %bb.g ], [ %i.at, %Convert_Half_To_Float.exit30 ]
  %i.bd = bitcast i32 %.0.i to float              ; 5 uses
  %i.be = fcmp ugt float %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.i, label %Convert_Float_To_U8.exit

bb.i:                                             ; preds = %Convert_Half_To_Float.exit33
  %i.bf = fcmp ugt float %i.bd, 3.130800e-03
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = fmul nnan float %i.bd, 2.550000e+02
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 1.292000e+01, float 5.000000e-01)
  %i.bi = fptoui float %i.bh to i8
  br label %Convert_Float_To_U8.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = fcmp olt float %i.bd, 1.000000e+00
  br i1 %i.bj, label %bb.l, label %Convert_Float_To_U8.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = fpext float %i.bd to double
  %i.bl = tail call double @pow(double noundef %i.bk, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bm = fptrunc double %i.bl to float
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float 1.055000e+00, float -5.500000e-02)
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float 2.550000e+02, float 5.000000e-01)
  %i.bp = fptoui float %i.bo to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %Convert_Half_To_Float.exit33, %bb.j, %bb.k, %bb.l
  %.0.i34 = phi i8 [ 0, %Convert_Half_To_Float.exit33 ], [ %i.bi, %bb.j ], [ %i.bp, %bb.l ], [ -1, %bb.k ]
  %i.bq = mul nuw nsw i64 %indvars.iv, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bq ; 3 uses
  store i8 %.0.i34, ptr %i.br, align 1, !tbaa !18
  %i.bs = bitcast i32 %.0.i29 to float            ; 5 uses
  %i.bt = fcmp ugt float %i.bs, 0.000000e+00
  br i1 %i.bt, label %bb.m, label %Convert_Float_To_U8.exit36

bb.m:                                             ; preds = %Convert_Float_To_U8.exit
  %i.bu = fcmp ugt float %i.bs, 3.130800e-03
  br i1 %i.bu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = fmul nnan float %i.bs, 2.550000e+02
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float 1.292000e+01, float 5.000000e-01)
  %i.bx = fptoui float %i.bw to i8
  br label %Convert_Float_To_U8.exit36

bb.o:                                             ; preds = %bb.m
  %i.by = fcmp olt float %i.bs, 1.000000e+00
  br i1 %i.by, label %bb.p, label %Convert_Float_To_U8.exit36

bb.p:                                             ; preds = %bb.o
  %i.bz = fpext float %i.bs to double
  %i.ca = tail call double @pow(double noundef %i.bz, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.cb = fptrunc double %i.ca to float
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.cb, float 1.055000e+00, float -5.500000e-02)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float 2.550000e+02, float 5.000000e-01)
  %i.ce = fptoui float %i.cd to i8
  br label %Convert_Float_To_U8.exit36

Convert_Float_To_U8.exit36:                       ; preds = %Convert_Float_To_U8.exit, %bb.n, %bb.o, %bb.p
  %.0.i35 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.bx, %bb.n ], [ %i.ce, %bb.p ], [ -1, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %.0.i35, ptr %i.cf, align 1, !tbaa !18
  %i.cg = bitcast i32 %.0.i32 to float            ; 5 uses
  %i.ch = fcmp ugt float %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.q, label %Convert_Float_To_U8.exit38

bb.q:                                             ; preds = %Convert_Float_To_U8.exit36
  %i.ci = fcmp ugt float %i.cg, 3.130800e-03
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = fmul nnan float %i.cg, 2.550000e+02
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float 1.292000e+01, float 5.000000e-01)
  %i.cl = fptoui float %i.ck to i8
  br label %Convert_Float_To_U8.exit38

bb.s:                                             ; preds = %bb.q
  %i.cm = fcmp olt float %i.cg, 1.000000e+00
  br i1 %i.cm, label %bb.t, label %Convert_Float_To_U8.exit38

bb.t:                                             ; preds = %bb.s
  %i.cn = fpext float %i.cg to double
  %i.co = tail call double @pow(double noundef %i.cn, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.cp = fptrunc double %i.co to float
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float 1.055000e+00, float -5.500000e-02)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float 2.550000e+02, float 5.000000e-01)
  %i.cs = fptoui float %i.cr to i8
  br label %Convert_Float_To_U8.exit38

Convert_Float_To_U8.exit38:                       ; preds = %Convert_Float_To_U8.exit36, %bb.r, %bb.s, %bb.t
  %.0.i37 = phi i8 [ 0, %Convert_Float_To_U8.exit36 ], [ %i.cl, %bb.r ], [ %i.cs, %bb.t ], [ -1, %bb.s ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %.0.i37, ptr %i.ct, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !193

._crit_edge:                                      ; preds = %Convert_Float_To_U8.exit38
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %._crit_edge43.split, label %.lr.ph, !llvm.loop !194

._crit_edge43.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGBA64Half_RGBA32(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge52.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count57 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv54 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next55, %._crit_edge ] ; 2 uses
  %i.g = trunc nuw nsw i64 %indvars.iv54 to i32
  %i.h = mul i32 %3, %i.g
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Convert_AlphaFloat_To_U8.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Convert_AlphaFloat_To_U8.exit ] ; 2 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2           ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27   ; 2 uses
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = lshr i32 %i.n, 10
  %i.p = and i32 %i.o, 31                         ; 2 uses
  %.signext.i = sext i16 %i.m to i32
  %i.q = and i32 %.signext.i, -2147483648         ; 3 uses
  switch i32 %i.p, label %bb.d [
    i32 0, label %Convert_Half_To_Float.exit
    i32 31, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i32 %i.n, 13
  %i.s = or disjoint i32 %i.q, %i.r
  %i.t = or i32 %i.s, 2139095040
  br label %Convert_Half_To_Float.exit

bb.d:                                             ; preds = %bb.b
  %i.u = shl nuw nsw i32 %i.p, 23
  %i.v = add nuw nsw i32 %i.u, 939524096
  %i.w = shl nuw nsw i32 %i.n, 13
  %i.x = and i32 %i.w, 8380416
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = or disjoint i32 %i.y, %i.q
  br label %Convert_Half_To_Float.exit

Convert_Half_To_Float.exit:                       ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.z, %bb.d ], [ %i.t, %bb.c ], [ %i.q, %bb.b ]
  %i.aa = or disjoint i64 %i.k, 1                 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !27 ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
  %i.ae = lshr i32 %i.ad, 10
  %i.af = and i32 %i.ae, 31                       ; 2 uses
  %.signext.i33 = sext i16 %i.ac to i32
  %i.ag = and i32 %.signext.i33, -2147483648      ; 3 uses
  switch i32 %i.af, label %bb.f [
    i32 0, label %Convert_Half_To_Float.exit35
    i32 31, label %bb.e
  ]

bb.e:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ah = shl nuw nsw i32 %i.ad, 13
  %i.ai = or disjoint i32 %i.ag, %i.ah
  %i.aj = or i32 %i.ai, 2139095040
  br label %Convert_Half_To_Float.exit35

bb.f:                                             ; preds = %Convert_Half_To_Float.exit
  %i.ak = shl nuw nsw i32 %i.af, 23
  %i.al = add nuw nsw i32 %i.ak, 939524096
  %i.am = shl nuw nsw i32 %i.ad, 13
  %i.an = and i32 %i.am, 8380416
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.ag
  br label %Convert_Half_To_Float.exit35

Convert_Half_To_Float.exit35:                     ; preds = %Convert_Half_To_Float.exit, %bb.e, %bb.f
  %.0.i34 = phi i32 [ %i.ap, %bb.f ], [ %i.aj, %bb.e ], [ %i.ag, %Convert_Half_To_Float.exit ]
  %i.aq = or disjoint i64 %i.k, 2                 ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !27 ; 2 uses
  %i.at = zext i16 %i.as to i32                   ; 3 uses
  %i.au = lshr i32 %i.at, 10
  %i.av = and i32 %i.au, 31                       ; 2 uses
  %.signext.i36 = sext i16 %i.as to i32
  %i.aw = and i32 %.signext.i36, -2147483648      ; 3 uses
  switch i32 %i.av, label %bb.h [
    i32 0, label %Convert_Half_To_Float.exit38
    i32 31, label %bb.g
  ]

bb.g:                                             ; preds = %Convert_Half_To_Float.exit35
  %i.ax = shl nuw nsw i32 %i.at, 13
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = or i32 %i.ay, 2139095040
  br label %Convert_Half_To_Float.exit38

bb.h:                                             ; preds = %Convert_Half_To_Float.exit35
  %i.ba = shl nuw nsw i32 %i.av, 23
  %i.bb = add nuw nsw i32 %i.ba, 939524096
  %i.bc = shl nuw nsw i32 %i.at, 13
  %i.bd = and i32 %i.bc, 8380416
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.aw
  br label %Convert_Half_To_Float.exit38

Convert_Half_To_Float.exit38:                     ; preds = %Convert_Half_To_Float.exit35, %bb.g, %bb.h
  %.0.i37 = phi i32 [ %i.bf, %bb.h ], [ %i.az, %bb.g ], [ %i.aw, %Convert_Half_To_Float.exit35 ]
  %i.bg = or disjoint i64 %i.k, 3                 ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !27 ; 2 uses
  %i.bj = zext i16 %i.bi to i32                   ; 3 uses
  %i.bk = lshr i32 %i.bj, 10
  %i.bl = and i32 %i.bk, 31                       ; 2 uses
  %.signext.i39 = sext i16 %i.bi to i32
  %i.bm = and i32 %.signext.i39, -2147483648      ; 3 uses
  switch i32 %i.bl, label %bb.j [
    i32 0, label %Convert_Half_To_Float.exit41
    i32 31, label %bb.i
  ]

bb.i:                                             ; preds = %Convert_Half_To_Float.exit38
  %i.bn = shl nuw nsw i32 %i.bj, 13
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = or i32 %i.bo, 2139095040
  br label %Convert_Half_To_Float.exit41

bb.j:                                             ; preds = %Convert_Half_To_Float.exit38
  %i.bq = shl nuw nsw i32 %i.bl, 23
  %i.br = add nuw nsw i32 %i.bq, 939524096
  %i.bs = shl nuw nsw i32 %i.bj, 13
  %i.bt = and i32 %i.bs, 8380416
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bm
  br label %Convert_Half_To_Float.exit41

Convert_Half_To_Float.exit41:                     ; preds = %Convert_Half_To_Float.exit38, %bb.i, %bb.j
  %.0.i40 = phi i32 [ %i.bv, %bb.j ], [ %i.bp, %bb.i ], [ %i.bm, %Convert_Half_To_Float.exit38 ]
  %i.bw = bitcast i32 %.0.i to float              ; 5 uses
  %i.bx = fcmp ugt float %i.bw, 0.000000e+00
  br i1 %i.bx, label %bb.k, label %Convert_Float_To_U8.exit

bb.k:                                             ; preds = %Convert_Half_To_Float.exit41
  %i.by = fcmp ugt float %i.bw, 3.130800e-03
  br i1 %i.by, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = fmul nnan float %i.bw, 2.550000e+02
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float 1.292000e+01, float 5.000000e-01)
  %i.cb = fptoui float %i.ca to i8
  br label %Convert_Float_To_U8.exit

bb.m:                                             ; preds = %bb.k
  %i.cc = fcmp olt float %i.bw, 1.000000e+00
  br i1 %i.cc, label %bb.n, label %Convert_Float_To_U8.exit

bb.n:                                             ; preds = %bb.m
  %i.cd = fpext float %i.bw to double
  %i.ce = tail call double @pow(double noundef %i.cd, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.cf = fptrunc double %i.ce to float
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float 1.055000e+00, float -5.500000e-02)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float 2.550000e+02, float 5.000000e-01)
  %i.ci = fptoui float %i.ch to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %Convert_Half_To_Float.exit41, %bb.l, %bb.m, %bb.n
  %.0.i42 = phi i8 [ 0, %Convert_Half_To_Float.exit41 ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ -1, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  store i8 %.0.i42, ptr %i.cj, align 1, !tbaa !18
  %i.ck = bitcast i32 %.0.i34 to float            ; 5 uses
  %i.cl = fcmp ugt float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.o, label %Convert_Float_To_U8.exit44

bb.o:                                             ; preds = %Convert_Float_To_U8.exit
  %i.cm = fcmp ugt float %i.ck, 3.130800e-03
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = fmul nnan float %i.ck, 2.550000e+02
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cn, float 1.292000e+01, float 5.000000e-01)
  %i.cp = fptoui float %i.co to i8
  br label %Convert_Float_To_U8.exit44

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.ck, 1.000000e+00
  br i1 %i.cq, label %bb.r, label %Convert_Float_To_U8.exit44

bb.r:                                             ; preds = %bb.q
  %i.cr = fpext float %i.ck to double
  %i.cs = tail call double @pow(double noundef %i.cr, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.ct = fptrunc double %i.cs to float
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float 1.055000e+00, float -5.500000e-02)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float 2.550000e+02, float 5.000000e-01)
  %i.cw = fptoui float %i.cv to i8
  br label %Convert_Float_To_U8.exit44

Convert_Float_To_U8.exit44:                       ; preds = %Convert_Float_To_U8.exit, %bb.p, %bb.q, %bb.r
  %.0.i43 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.cp, %bb.p ], [ %i.cw, %bb.r ], [ -1, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aa
  store i8 %.0.i43, ptr %i.cx, align 1, !tbaa !18
  %i.cy = bitcast i32 %.0.i37 to float            ; 5 uses
  %i.cz = fcmp ugt float %i.cy, 0.000000e+00
  br i1 %i.cz, label %bb.s, label %Convert_Float_To_U8.exit46

bb.s:                                             ; preds = %Convert_Float_To_U8.exit44
  %i.da = fcmp ugt float %i.cy, 3.130800e-03
  br i1 %i.da, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = fmul nnan float %i.cy, 2.550000e+02
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float 1.292000e+01, float 5.000000e-01)
  %i.dd = fptoui float %i.dc to i8
  br label %Convert_Float_To_U8.exit46

bb.u:                                             ; preds = %bb.s
  %i.de = fcmp olt float %i.cy, 1.000000e+00
  br i1 %i.de, label %bb.v, label %Convert_Float_To_U8.exit46

bb.v:                                             ; preds = %bb.u
  %i.df = fpext float %i.cy to double
  %i.dg = tail call double @pow(double noundef %i.df, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.dh = fptrunc double %i.dg to float
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 1.055000e+00, float -5.500000e-02)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float 2.550000e+02, float 5.000000e-01)
  %i.dk = fptoui float %i.dj to i8
  br label %Convert_Float_To_U8.exit46

Convert_Float_To_U8.exit46:                       ; preds = %Convert_Float_To_U8.exit44, %bb.t, %bb.u, %bb.v
  %.0.i45 = phi i8 [ 0, %Convert_Float_To_U8.exit44 ], [ %i.dd, %bb.t ], [ %i.dk, %bb.v ], [ -1, %bb.u ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.aq
  store i8 %.0.i45, ptr %i.dl, align 1, !tbaa !18
  %i.dm = bitcast i32 %.0.i40 to float            ; 3 uses
  %i.dn = fcmp ugt float %i.dm, 0.000000e+00
  br i1 %i.dn, label %bb.w, label %Convert_AlphaFloat_To_U8.exit

bb.w:                                             ; preds = %Convert_Float_To_U8.exit46
  %i.do = fcmp olt float %i.dm, 1.000000e+00
  br i1 %i.do, label %bb.x, label %Convert_AlphaFloat_To_U8.exit

bb.x:                                             ; preds = %bb.w
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dm, float 2.550000e+02, float 5.000000e-01)
  %i.dq = fptoui float %i.dp to i8
  br label %Convert_AlphaFloat_To_U8.exit

Convert_AlphaFloat_To_U8.exit:                    ; preds = %Convert_Float_To_U8.exit46, %bb.w, %bb.x
  %.0.i47 = phi i8 [ 0, %Convert_Float_To_U8.exit46 ], [ %i.dq, %bb.x ], [ -1, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  store i8 %.0.i47, ptr %i.dr, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !195

._crit_edge:                                      ; preds = %Convert_AlphaFloat_To_U8.exit
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %._crit_edge52.split, label %.lr.ph, !llvm.loop !196

._crit_edge52.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @RGB101010_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 4 uses
  %i.e = icmp sgt i32 %i.b, 0
  %i.f = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge31.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count36 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.d, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod39 = trunc i32 %i.d to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv33 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next34, %._crit_edge ] ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv33 to i32
  %i.i = mul i32 %3, %i.h
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %i.j ; 6 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21   ; 3 uses
  %i.n = lshr i32 %i.m, 22
  %i.o = trunc i32 %i.n to i8
  %i.p = mul nuw nsw i64 %indvars.iv, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.p ; 3 uses
  store i8 %i.o, ptr %i.q, align 1, !tbaa !18
  %i.r = lshr i32 %i.m, 12
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !18
  %i.u = lshr i32 %i.m, 2
  %i.v = trunc i32 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21   ; 3 uses
  %i.z = lshr i32 %i.y, 22
  %i.aa = trunc i32 %i.z to i8
  %i.ab = mul nuw nsw i64 %indvars.iv.next, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ab ; 3 uses
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !18
  %i.ad = lshr i32 %i.y, 12
  %i.ae = trunc i32 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !18
  %i.ag = lshr i32 %i.y, 2
  %i.ah = trunc i32 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !197

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21 ; 3 uses
  %i.al = lshr i32 %i.ak, 22
  %i.am = trunc i32 %i.al to i8
  %i.an = mul nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.an ; 3 uses
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !18
  %i.ap = lshr i32 %i.ak, 12
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !18
  %i.as = lshr i32 %i.ak, 2
  %i.at = trunc i32 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i8 %i.at, ptr %i.au, align 1, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count36
  br i1 %exitcond37.not, label %._crit_edge31.split, label %.lr.ph, !llvm.loop !198

._crit_edge31.split:                              ; preds = %._crit_edge, %bb.a
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define noundef i64 @RGBE_RGB24(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !16   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = zext i32 %3 to i64
  %i.f = load i32, ptr %i.d, align 4, !tbaa !17   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader, label %._crit_edge52

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.ce, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i32 [ %i.cf, %._crit_edge ], [ %i.f, %.preheader.lr.ph ] ; 2 uses
  %.04151 = phi i32 [ %i.ch, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %.04250 = phi ptr [ %i.cg, %._crit_edge ], [ %2, %.preheader.lr.ph ] ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %Convert_Float_To_U8.exit48
  %indvars.iv = phi i64 [ %indvars.iv.next, %Convert_Float_To_U8.exit48 ], [ 0, %.preheader ] ; 4 uses
  %i.k = shl nuw nsw i64 %indvars.iv, 2
  %i.l = getelementptr inbounds nuw i8, ptr %.04250, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 4 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = mul nuw nsw i64 %indvars.iv, 3
  %i.q = getelementptr inbounds nuw i8, ptr %.04250, i64 %i.p ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %i.r, align 1, !tbaa !18
  br label %Convert_Float_To_U8.exit48

bb.c:                                             ; preds = %.lr.ph
  %i.s = zext i8 %i.n to i32
  %i.t = add nsw i32 %i.s, -136                   ; 2 uses
  %i.u = add i8 %i.n, -105
  %or.cond = icmp ult i8 %i.u, 63
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.w = shl nuw i32 1, %i.v
  %i.x = uitofp i32 %i.w to float                 ; 2 uses
  %i.y = icmp ult i8 %i.n, -120
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = fdiv float 1.000000e+00, %i.x
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.aa = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.t) #14
  %i.ab = fptrunc double %i.aa to float
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi float [ %i.z, %bb.e ], [ %i.x, %bb.d ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ac = load i8, ptr %i.l, align 1, !tbaa !18
  %i.ad = uitofp i8 %i.ac to float
  %i.ae = fmul float %.0, %i.ad                   ; 5 uses
  %i.af = fcmp ugt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.h, label %Convert_Float_To_U8.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ugt float %i.ae, 3.130800e-03
  br i1 %i.ag, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = fmul nnan float %i.ae, 2.550000e+02
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 1.292000e+01, float 5.000000e-01)
  %i.aj = fptoui float %i.ai to i8
  br label %Convert_Float_To_U8.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = fcmp olt float %i.ae, 1.000000e+00
  br i1 %i.ak, label %bb.k, label %Convert_Float_To_U8.exit

bb.k:                                             ; preds = %bb.j
  %i.al = fpext float %i.ae to double
  %i.am = tail call double @pow(double noundef %i.al, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.an = fptrunc double %i.am to float
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 1.055000e+00, float -5.500000e-02)
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float 2.550000e+02, float 5.000000e-01)
  %i.aq = fptoui float %i.ap to i8
  br label %Convert_Float_To_U8.exit

Convert_Float_To_U8.exit:                         ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i8 [ 0, %bb.g ], [ %i.aj, %bb.i ], [ %i.aq, %bb.k ], [ -1, %bb.j ]
  %i.ar = mul nuw nsw i64 %indvars.iv, 3
  %i.as = getelementptr inbounds nuw i8, ptr %.04250, i64 %i.ar ; 6 uses
  store i8 %.0.i, ptr %i.as, align 1, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = uitofp i8 %i.au to float
  %i.aw = fmul float %.0, %i.av                   ; 5 uses
  %i.ax = fcmp ugt float %i.aw, 0.000000e+00
  br i1 %i.ax, label %bb.l, label %Convert_Float_To_U8.exit46

bb.l:                                             ; preds = %Convert_Float_To_U8.exit
  %i.ay = fcmp ugt float %i.aw, 3.130800e-03
  br i1 %i.ay, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = fmul nnan float %i.aw, 2.550000e+02
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float 1.292000e+01, float 5.000000e-01)
  %i.bb = fptoui float %i.ba to i8
  br label %Convert_Float_To_U8.exit46

bb.n:                                             ; preds = %bb.l
  %i.bc = fcmp olt float %i.aw, 1.000000e+00
  br i1 %i.bc, label %bb.o, label %Convert_Float_To_U8.exit46

bb.o:                                             ; preds = %bb.n
  %i.bd = fpext float %i.aw to double
  %i.be = tail call double @pow(double noundef %i.bd, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bf = fptrunc double %i.be to float
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 1.055000e+00, float -5.500000e-02)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bg, float 2.550000e+02, float 5.000000e-01)
  %i.bi = fptoui float %i.bh to i8
  br label %Convert_Float_To_U8.exit46

Convert_Float_To_U8.exit46:                       ; preds = %Convert_Float_To_U8.exit, %bb.m, %bb.n, %bb.o
  %.0.i45 = phi i8 [ 0, %Convert_Float_To_U8.exit ], [ %i.bb, %bb.m ], [ %i.bi, %bb.o ], [ -1, %bb.n ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %.0.i45, ptr %i.bj, align 1, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = uitofp i8 %i.bl to float
  %i.bn = fmul float %.0, %i.bm                   ; 5 uses
  %i.bo = fcmp ugt float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.p, label %Convert_Float_To_U8.exit48

bb.p:                                             ; preds = %Convert_Float_To_U8.exit46
  %i.bp = fcmp ugt float %i.bn, 3.130800e-03
  br i1 %i.bp, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = fmul nnan float %i.bn, 2.550000e+02
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float 1.292000e+01, float 5.000000e-01)
  %i.bs = fptoui float %i.br to i8
  br label %Convert_Float_To_U8.exit48

bb.r:                                             ; preds = %bb.p
  %i.bt = fcmp olt float %i.bn, 1.000000e+00
  br i1 %i.bt, label %bb.s, label %Convert_Float_To_U8.exit48

bb.s:                                             ; preds = %bb.r
  %i.bu = fpext float %i.bn to double
  %i.bv = tail call double @pow(double noundef %i.bu, double noundef f0x3FDAAAAAAAAAAAAB) #14
  %i.bw = fptrunc double %i.bv to float
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bw, float 1.055000e+00, float -5.500000e-02)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float 2.550000e+02, float 5.000000e-01)
  %i.bz = fptoui float %i.by to i8
  br label %Convert_Float_To_U8.exit48

Convert_Float_To_U8.exit48:                       ; preds = %bb.s, %bb.r, %bb.q, %Convert_Float_To_U8.exit46, %bb.b
  %.sink64 = phi ptr [ %i.q, %bb.b ], [ %i.as, %Convert_Float_To_U8.exit46 ], [ %i.as, %bb.q ], [ %i.as, %bb.r ], [ %i.as, %bb.s ]
  %.0.i47.sink = phi i8 [ 0, %bb.b ], [ 0, %Convert_Float_To_U8.exit46 ], [ %i.bs, %bb.q ], [ -1, %bb.r ], [ %i.bz, %bb.s ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sink64, i64 2
  store i8 %.0.i47.sink, ptr %i.ca, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !17  ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp slt i64 %indvars.iv.next, %i.cc
  br i1 %i.cd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !199

._crit_edge.loopexit:                             ; preds = %Convert_Float_To_U8.exit48
  %.pre = load i32, ptr %i.a, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ce = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.cf = phi i32 [ %i.cb, %._crit_edge.loopexit ], [ %i.i, %.preheader ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.04250, i64 %i.e
  %i.ch = add nuw nsw i32 %.04151, 1              ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %i.ce
  br i1 %i.ci, label %.preheader, label %._crit_edge52, !llvm.loop !200

._crit_edge52:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i64 0
}

; Function Attrs: nounwind uwtable
define range(i64 -9223372036854775808, 1) i64 @PKFormatConverter_Initialize(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4) local_unnamed_addr #8 {
bb.a:
  %5 = alloca %struct._GUID, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = call i64 %i.b(ptr noundef %1, ptr noundef nonnull %5) #14 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = call i64 @PKFormatConverter_InitializeConvert(ptr noundef %0, i64 %i.e, i64 %i.g, ptr noundef %2, i64 %3, i64 %4) ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.j, align 8, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i64 -106, 1) i64 @PKFormatConverter_InitializeConvert(ptr nofree noundef writeonly captures(none) initializes((80, 96)) %0, i64 %1, i64 %2, ptr noundef %3, i64 %4, i64 %5) local_unnamed_addr #8 {
bb.a:
  %6 = alloca %struct._GUID, align 8              ; 6 uses
  %7 = alloca %struct._GUID, align 8              ; 15 uses
  store i64 %1, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.a, align 8
  store i64 %4, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !43
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %7, align 8
  %i.e = load i128, ptr @GUID_PKPixelFormat24bppRGB, align 4
  %i.f = icmp ne i128 %i.d, %i.e
  %i.g = zext i1 %i.f to i32
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.i = tail call i32 @PKStrnicmp(ptr noundef nonnull %3, ptr noundef nonnull @.str, i64 noundef %i.h) #14
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @GUID_PKPixelFormat24bppBGR, i64 16, i1 false), !tbaa.struct !43
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.l = tail call i32 @PKStrnicmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i64 noundef %i.k) #14
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #15
  %i.o = tail call i32 @PKStrnicmp(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, i64 noundef %i.n) #14
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = load i128, ptr %7, align 8
  %i.r = load i128, ptr @GUID_PKPixelFormat32bppBGRA, align 4
  %i.s = icmp ne i128 %i.q, %i.r
  %i.t = zext i1 %i.s to i32
  %.not36 = icmp eq i32 %i.t, 0
  br i1 %.not36, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @GUID_PKPixelFormat32bppRGBA, i64 16, i1 false), !tbaa.struct !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = load i128, ptr %7, align 8
  %i.v = load i128, ptr @GUID_PKPixelFormat32bppPBGRA, align 4
  %i.w = icmp ne i128 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not38 = icmp eq i32 %i.x, 0
  br i1 %.not38, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @GUID_PKPixelFormat32bppPRGBA, i64 16, i1 false), !tbaa.struct !43
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.i, %bb.j, %bb.f
  %i.y = load i128, ptr %6, align 8
  %i.z = load i128, ptr %7, align 8
  %i.aa = icmp ne i128 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  %.not40 = icmp eq i32 %i.ab, 0
  br i1 %.not40, label %.loopexit, label %.preheader53

.preheader53:                                     ; preds = %.critedge, %bb.l
  %.02754 = phi i64 [ %i.ar, %bb.l ], [ 0, %.critedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr @s_pcInfo, i64 %.02754 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = load i128, ptr %6, align 8
  %i.af = load i128, ptr %i.ad, align 1
  %i.ag = icmp ne i128 %i.ae, %i.af
  %i.ah = zext i1 %i.ag to i32
  %.not46 = icmp eq i32 %i.ah, 0
  br i1 %.not46, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = load i128, ptr %7, align 8
  %i.al = load i128, ptr %i.aj, align 1
  %i.am = icmp ne i128 %i.ak, %i.al
  %i.an = zext i1 %i.am to i32
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %.critedge50, label %bb.l

.critedge50:                                      ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !202
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !48
  br label %.loopexit

bb.l:                                             ; preds = %bb.k, %.preheader53
  %i.ar = add nuw nsw i64 %.02754, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 76
  br i1 %exitcond.not, label %.preheader.preheader, label %.preheader53, !llvm.loop !201

.preheader.preheader:                             ; preds = %bb.l
  %i.as = load i128, ptr %6, align 8
  %i.at = load i128, ptr @GUID_PKPixelFormat128bppRGBFloat, align 4
  %i.au = icmp ne i128 %i.as, %i.at
  %i.av = zext i1 %i.au to i32
  %.not42 = icmp eq i32 %i.av, 0
  br i1 %.not42, label %bb.m, label %.critedge52

bb.m:                                             ; preds = %.preheader.preheader
  %i.aw = load i128, ptr %7, align 8
  %i.ax = load i128, ptr @GUID_PKPixelFormat128bppRGBAFloat, align 4
  %i.ay = icmp ne i128 %i.aw, %i.ax
  %i.az = zext i1 %i.ay to i32
  %.not44 = icmp eq i32 %i.az, 0
  br i1 %.not44, label %.loopexit, label %.critedge52

.critedge52:                                      ; preds = %bb.m, %.preheader.preheader
  %i.ba = load i128, ptr %6, align 8
  %i.bb = load i128, ptr @GUID_PKPixelFormatDontCare, align 4
  %i.bc = icmp ne i128 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %.not42.1 = icmp eq i32 %i.bd, 0
  br i1 %.not42.1, label %bb.n, label %.critedge52.3

bb.n:                                             ; preds = %.critedge52
  %i.be = load i128, ptr %7, align 8
  %i.bf = load i128, ptr @GUID_PKPixelFormat16bppRGB555, align 4
  %i.bg = icmp ne i128 %i.be, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %.not44.1 = icmp eq i32 %i.bh, 0
  br i1 %.not44.1, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = load i128, ptr %7, align 8
  %i.bj = load i128, ptr @GUID_PKPixelFormat16bppRGB565, align 4
  %i.bk = icmp ne i128 %i.bi, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %.not44.2 = icmp eq i32 %i.bl, 0
  br i1 %.not44.2, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i128, ptr %7, align 8
  %i.bn = load i128, ptr @GUID_PKPixelFormat32bppBGRA, align 4
  %i.bo = icmp ne i128 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %.not44.3 = icmp eq i32 %i.bp, 0
  br i1 %.not44.3, label %.loopexit, label %.critedge52.3

.critedge52.3:                                    ; preds = %.critedge52, %bb.p
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %.critedge52.3, %.critedge50, %.critedge
  %.130 = phi i64 [ 0, %.critedge ], [ 0, %.critedge50 ], [ -106, %.critedge52.3 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.o ]
  ret i64 %.130
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @PKStrnicmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -108, 1) i64 @PKFormatConverter_EnumConversions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #7 {
bb.a:
  store ptr @GUID_PKPixelFormatDontCare, ptr %2, align 8, !tbaa !204
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01113 = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]  ; 3 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr @s_pcInfo, i64 %indvars.iv ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load i128, ptr %i.b, align 1
  %i.d = load i128, ptr %0, align 1
  %i.e = icmp ne i128 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %.01113, %1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  store ptr %i.i, ptr %2, align 8, !tbaa !204
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.j = add i32 %.01113, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %.01113, %bb.b ], [ %i.j, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 76
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !203

.loopexit:                                        ; preds = %bb.f, %bb.d
  %.0 = phi i64 [ 0, %bb.d ], [ -108, %bb.f ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @PKFormatConverter_GetPixelFormat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !43
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @PKFormatConverter_GetSourcePixelFormat(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.e = tail call i64 %i.d(ptr noundef %i.b, ptr noundef %1) #14
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define i64 @PKFormatConverter_GetSize(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !205
  %i.e = tail call i64 %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #14
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define i64 @PKFormatConverter_GetResolution(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = tail call i64 %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2) #14
  ret i64 %i.e
}

; Function Attrs: nounwind uwtable
define i64 @PKFormatConverter_Copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = tail call i64 %i.d(ptr noundef %i.b, ptr noundef %1, ptr noundef %2, i32 noundef %3) #14 ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.i = tail call i64 %i.h(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @PKFormatConverter_Convert(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @PKFormatConverter_Release(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i64 @PKFree(ptr noundef %0) #14
  ret i64 %i.a
}

declare i64 @PKFree(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = distinct !{!4, !19}
!5 = distinct !{!5, !19}
!6 = distinct !{!6, !19}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"tagPKRect", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!16 = !{!15, !12, i64 12}
!17 = !{!15, !12, i64 8}
!18 = !{!11, !11, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unswitch.partial.disable"}
!21 = !{!12, !12, i64 0}
!22 = !{!"float", !11, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"short", !11, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"any pointer", !11, i64 0}
!29 = !{!"p1 _ZTS16tagPKImageDecode", !28, i64 0}
!30 = !{!"_GUID", !12, i64 0, !26, i64 4, !26, i64 6, !11, i64 8}
!31 = !{!"tagPKFormatConverter", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !29, i64 72, !30, i64 80}
!32 = !{!31, !29, i64 72}
!33 = !{!"p1 _ZTS9WMPStream", !28, i64 0}
!34 = !{!"long", !11, i64 0}
!35 = !{!"tagWmpDEMisc", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84}
!36 = !{!"tagCWMImageInfo", !34, i64 0, !34, i64 8, !12, i64 16, !12, i64 20, !34, i64 24, !34, i64 32, !12, i64 40, !11, i64 44, !11, i64 45, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !12, i64 80, !34, i64 88, !34, i64 96, !12, i64 104, !11, i64 108, !12, i64 112}
!37 = !{!"tagCWMIStrCodecParam", !12, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7, !11, i64 8, !11, i64 9, !11, i64 10, !11, i64 11, !11, i64 12, !11, i64 13, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !34, i64 32, !11, i64 40, !12, i64 44, !11, i64 48, !33, i64 56, !34, i64 64, !12, i64 72, !11, i64 76, !12, i64 16460, !11, i64 16464, !11, i64 32848, !11, i64 32849, !12, i64 32852, !12, i64 32856, !12, i64 32860, !12, i64 32864, !12, i64 32868, !12, i64 32872}
!38 = !{!"DPKPROPVARIANT", !12, i64 0, !11, i64 8}
!39 = !{!"DESCRIPTIVEMETADATA", !38, i64 0, !38, i64 16, !38, i64 32, !38, i64 48, !38, i64 64, !38, i64 80, !38, i64 96, !38, i64 112, !38, i64 128, !38, i64 144, !38, i64 160, !38, i64 176, !38, i64 192, !38, i64 208}
!40 = !{!"", !35, i64 0, !36, i64 88, !37, i64 208, !28, i64 33088, !36, i64 33096, !37, i64 33216, !28, i64 66096, !12, i64 66104, !34, i64 66112, !34, i64 66120, !34, i64 66128, !34, i64 66136, !12, i64 66144, !34, i64 66152, !34, i64 66160, !34, i64 66168, !34, i64 66176, !34, i64 66184, !12, i64 66192, !12, i64 66196, !12, i64 66200, !39, i64 66208}
!41 = !{!"tagPKImageDecode", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !33, i64 88, !12, i64 96, !34, i64 104, !30, i64 112, !12, i64 128, !12, i64 132, !12, i64 136, !22, i64 140, !22, i64 144, !12, i64 148, !40, i64 152}
!42 = !{!41, !28, i64 8}
!43 = !{i64 0, i64 4, !21, i64 4, i64 2, !27, i64 6, i64 2, !27, i64 8, i64 8, !18}
!44 = !{!"p1 _ZTS5_GUID", !28, i64 0}
!45 = !{!"tagPKPixelConverterInfo", !44, i64 0, !44, i64 8, !28, i64 16}
!46 = !{!45, !44, i64 0}
!47 = !{!45, !44, i64 8}
!48 = !{!31, !28, i64 56}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19, !20}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19, !20}
!53 = distinct !{!53, !19}
!54 = distinct !{!54, !19, !20}
!55 = distinct !{!55, !19, !24, !25}
!56 = distinct !{!56, !19, !25, !24}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19, !24, !25}
!59 = distinct !{!59, !19, !25, !24}
!60 = distinct !{!60, !19}
!61 = distinct !{!61, !19, !24, !25}
!62 = distinct !{!62, !19, !25, !24}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19, !24, !25}
!65 = distinct !{!65, !19, !25, !24}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19, !24, !25}
!68 = distinct !{!68, !19, !25, !24}
!69 = distinct !{!69, !19}
!70 = distinct !{!70, !19}
!71 = distinct !{!71, !19, !24, !25}
!72 = distinct !{!72, !19, !25, !24}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
!75 = distinct !{!75, !19}
!76 = distinct !{!76, !19}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = distinct !{!84, !19}
!85 = distinct !{!85, !19, !24, !25}
!86 = distinct !{!86, !19, !25, !24}
!87 = distinct !{!87, !19}
!88 = distinct !{!88, !19, !24, !25}
!89 = distinct !{!89, !19, !25, !24}
!90 = distinct !{!90, !19}
!91 = distinct !{!91, !19}
!92 = distinct !{!92, !19, !24, !25}
!93 = distinct !{!93, !19, !25, !24}
!94 = distinct !{!94, !19, !24, !25}
!95 = distinct !{!95, !19, !25, !24}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19, !24, !25}
!99 = distinct !{!99, !19, !25, !24}
!100 = distinct !{!100, !19, !24, !25}
!101 = distinct !{!101, !19, !25, !24}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19, !24, !25}
!105 = distinct !{!105, !19, !25, !24}
!106 = distinct !{!106, !19, !24, !25}
!107 = distinct !{!107, !19, !25, !24}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19, !24, !25}
!111 = distinct !{!111, !19, !25, !24}
!112 = distinct !{!112, !19, !24, !25}
!113 = distinct !{!113, !19, !25, !24}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19, !24, !25}
!121 = distinct !{!121, !19, !25, !24}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19, !24, !25}
!130 = distinct !{!130, !19, !25, !24}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19, !24, !25}
!135 = distinct !{!135, !19, !25, !24}
!136 = distinct !{!136, !19}
!137 = distinct !{!137, !19}
!138 = distinct !{!138, !19}
!139 = distinct !{!139, !19}
!140 = distinct !{!140, !19}
!141 = distinct !{!141, !19, !24, !25}
!142 = distinct !{!142, !19, !25, !24}
!143 = distinct !{!143, !19, !24, !25}
!144 = distinct !{!144, !19, !25, !24}
!145 = distinct !{!145, !19}
!146 = distinct !{!146, !19, !24, !25}
!147 = distinct !{!147, !19, !25, !24}
!148 = distinct !{!148, !19}
!149 = distinct !{!149, !19}
!150 = distinct !{!150, !19}
!151 = distinct !{!151, !19, !24, !25}
!152 = distinct !{!152, !19, !25, !24}
!153 = distinct !{!153, !19}
!154 = distinct !{!154, !19}
!155 = distinct !{!155, !19}
!156 = distinct !{!156, !19, !24, !25}
!157 = distinct !{!157, !19, !25, !24}
!158 = !{!41, !12, i64 33212}
!159 = distinct !{!159, !19}
!160 = distinct !{!160, !19, !20}
!161 = distinct !{!161, !19}
!162 = distinct !{!162, !19}
!163 = distinct !{!163, !19}
!164 = distinct !{!164, !19}
!165 = distinct !{!165, !19}
!166 = distinct !{!166, !19}
!167 = distinct !{!167, !19}
!168 = distinct !{!168, !19}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = distinct !{!171, !19}
!172 = distinct !{!172, !19}
!173 = distinct !{!173, !19}
!174 = distinct !{!174, !19}
!175 = distinct !{!175, !19}
!176 = distinct !{!176, !19}
!177 = distinct !{!177, !19}
!178 = distinct !{!178, !19}
!179 = distinct !{!179, !19}
!180 = distinct !{!180, !19}
!181 = distinct !{!181, !19}
!182 = distinct !{!182, !19}
!183 = distinct !{!183, !19}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = distinct !{!186, !19}
!187 = distinct !{!187, !19}
!188 = distinct !{!188, !19}
!189 = distinct !{!189, !19}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19}
!194 = distinct !{!194, !19}
!195 = distinct !{!195, !19}
!196 = distinct !{!196, !19}
!197 = distinct !{!197, !19}
!198 = distinct !{!198, !19}
!199 = distinct !{!199, !19}
!200 = distinct !{!200, !19, !20}
!201 = distinct !{!201, !19}
!202 = !{!45, !28, i64 16}
!203 = distinct !{!203, !19}
!204 = !{!44, !44, i64 0}
!205 = !{!41, !28, i64 16}
!206 = !{!41, !28, i64 24}
!207 = !{!41, !28, i64 56}
end_hunk_0
