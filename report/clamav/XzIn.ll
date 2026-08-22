Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/XzIn?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Xzs_GetNumBlocks:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.08 = phi i64 [ 0, %.lr.ph.new ], [ %i.u, %bb.b ] ; 5 uses
  %.067 = phi i64 [ 0, %.lr.ph.new ], [ %i.t, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = add i64 %i.g, %.067
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = add i64 %i.k, %i.h
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = add i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !10
  %i.t = add i64 %i.s, %i.p                       ; 3 uses
  %i.u = add nuw i64 %.08, 4                      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.08.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.u, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.08.epil = phi i64 [ %.08.epil.init, %.epil.preheader ], [ %i.z, %bb.c ] ; 2 uses
  %.067.epil = phi i64 [ %.067.epil.init, %.epil.preheader ], [ %i.y, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08.epil
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !10
  %i.y = add i64 %i.x, %.067.epil                 ; 2 uses
  %i.z = add nuw i64 %.08.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !25

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %.06.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge.loopexit.unr-lcssa ], [ %i.y, %bb.c ]
  ret i64 %.06.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Xzs_GetUnpackSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20     ; 2 uses
  %.not19 = icmp eq i64 %i.a, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  br label %bb.c

bb.b:                                             ; preds = %Xz_GetUnpackSize.exit
  %i.d = add nuw i64 %.01117, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01117 = phi i64 [ 0, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %.01216 = phi i64 [ 0, %.lr.ph ], [ %i.n, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.01117 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10   ; 2 uses
  %.not20.i = icmp eq i64 %i.g, 0
  br i1 %.not20.i, label %Xz_GetUnpackSize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.j = add nuw i64 %.01117.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.g
  br i1 %exitcond.not.i, label %Xz_GetUnpackSize.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %.01117.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.d ] ; 2 uses
  %.01216.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.01117.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = add i64 %i.l, %.01216.i                  ; 3 uses
  %.not.i = icmp ult i64 %i.m, %.01216.i
  br i1 %.not.i, label %Xz_GetUnpackSize.exit, label %bb.d

Xz_GetUnpackSize.exit:                            ; preds = %bb.d, %bb.e, %bb.c
  %.2.i = phi i64 [ 0, %bb.c ], [ -1, %bb.e ], [ %i.m, %bb.d ]
  %i.n = add i64 %.2.i, %.01216                   ; 3 uses
  %.not = icmp ult i64 %i.n, %.01216
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %Xz_GetUnpackSize.exit, %bb.b, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.b ], [ -1, %Xz_GetUnpackSize.exit ]
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i32 @Xzs_ReadBackward(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 11 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %5 = alloca %struct.CSecToRead, align 8         ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.CXzStream, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = call i32 %i.f(ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef 2) #8 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !27
  store i64 %i.h, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @Xz_Construct(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.i = load i64, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.j = and i64 %i.i, 3
  %.not.i88 = icmp ne i64 %i.j, 0
  %i.k = icmp slt i64 %i.i, 12
  %or.cond149.i89 = or i1 %i.k, %.not.i88
  br i1 %or.cond149.i89, label %.thread74.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not63 = icmp eq ptr %3, null
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ag
  store i64 -12, ptr %2, align 8, !tbaa !27
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.x = call i32 %i.w(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !30 ; 2 uses
  %.not132.i = icmp eq i32 %i.x, 0
  br i1 %.not132.i, label %bb.d, label %.thread74.sink.split

bb.d:                                             ; preds = %bb.c
  %i.y = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 12, i32 noundef 17) #8 ; 2 uses
  %.not133.i = icmp eq i32 %i.y, 0
  br i1 %.not133.i, label %bb.e, label %.thread74.sink.split

bb.e:                                             ; preds = %bb.d
  %i.z = load i16, ptr %i.l, align 1
  %i.aa = load i16, ptr @XZ_FOOTER_SIG, align 1
  %i.ab = icmp ne i16 %i.z, %i.aa
  %i.ac = zext i1 %i.ab to i32
  %.not134.i = icmp eq i32 %i.ac, 0
  br i1 %.not134.i, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.ae = add nsw i64 %i.ad, 12                   ; 2 uses
  store i64 %i.ae, ptr %2, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.af = icmp slt i64 %i.ad, 0
  br i1 %i.af, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.o
  %i.ag = phi i64 [ %i.bb, %bb.o ], [ %i.ae, %bb.f ]
  %.0104178.i = phi i64 [ %i.ah, %bb.o ], [ 0, %bb.f ]
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 1024) ; 4 uses
  %i.ah = add nuw nsw i64 %spec.select.i, %.0104178.i ; 2 uses
  %i.ai = sub nsw i64 0, %spec.select.i
  store i64 %i.ai, ptr %2, align 8, !tbaa !27
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ak = call i32 %i.aj(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !30 ; 2 uses
  %.not135.i = icmp eq i32 %i.ak, 0
  br i1 %.not135.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.al = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %spec.select.i, i32 noundef 17) #8 ; 2 uses
  %.not136.i = icmp eq i32 %i.al, 0
  br i1 %.not136.i, label %7, label %.loopexit.i

7:                                                ; preds = %bb.g
  %8 = trunc nuw nsw i64 %spec.select.i to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %7
  %.0176.i = phi i32 [ %8, %7 ], [ %10, %bb.i ]   ; 5 uses
  %9 = zext nneg i32 %.0176.i to i64              ; 2 uses
  %i.am = getelementptr i8, ptr %i.b, i64 %9
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %.not137.i = icmp eq i8 %i.ao, 0
  br i1 %.not137.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %10 = add nsw i32 %.0176.i, -1
  %i.ap = icmp sgt i32 %.0176.i, 0
  br i1 %i.ap, label %bb.h, label %.loopexit.i

bb.j:                                             ; preds = %bb.h
  %.not138.i = icmp eq i32 %.0176.i, 0
  br i1 %.not138.i, label %bb.o, label %.thread.i

.thread.i:                                        ; preds = %bb.j
  %11 = and i32 %.0176.i, 3
  %.not139.i = icmp eq i32 %11, 0
  br i1 %.not139.i, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %.thread.i
  %i.aq = load i64, ptr %2, align 8, !tbaa !27
  %i.ar = add nsw i64 %i.aq, %9                   ; 3 uses
  store i64 %i.ar, ptr %2, align 8, !tbaa !27
  %i.as = icmp slt i64 %i.ar, 12
  br i1 %i.as, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i64 %i.ar, -12
  store i64 %i.at, ptr %2, align 8, !tbaa !27
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.av = call i32 %i.au(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #8, !inline_history !31 ; 2 uses
  %.not140.i = icmp eq i32 %i.av, 0
  br i1 %.not140.i, label %bb.m, label %.loopexit.i

bb.m:                                             ; preds = %bb.l
  %i.aw = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 12, i32 noundef 17) #8 ; 2 uses
  %.not141.i = icmp eq i32 %i.aw, 0
  br i1 %.not141.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.ax = load i16, ptr %i.l, align 1
  %i.ay = load i16, ptr @XZ_FOOTER_SIG, align 1
  %i.az = icmp ne i16 %i.ax, %i.ay
  %i.ba = zext i1 %i.az to i32
  %.not143.i = icmp eq i32 %i.ba, 0
  br i1 %.not143.i, label %.thread162.i, label %.loopexit.i

bb.o:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bb = load i64, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 12
  %i.bd = icmp samesign ugt i64 %i.ah, 65536
  %or.cond.i = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i

.thread162.i:                                     ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.p

.loopexit.i:                                      ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %.thread.i, %bb.f, %bb.o, %bb.g, %.lr.ph.i, %bb.i
  %.7114.ph.i = phi i32 [ 17, %bb.i ], [ 17, %bb.o ], [ %i.ak, %.lr.ph.i ], [ %i.al, %bb.g ], [ 17, %bb.f ], [ 17, %bb.n ], [ 17, %bb.k ], [ 17, %.thread.i ], [ %i.av, %bb.l ], [ %i.aw, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread74.sink.split

bb.p:                                             ; preds = %.thread162.i, %bb.e
  %i.be = load i8, ptr %i.m, align 4, !tbaa !9
  %i.bf = zext i8 %i.be to i16
  %i.bg = shl nuw i16 %i.bf, 8
  %i.bh = load i8, ptr %i.n, align 1, !tbaa !9
  %i.bi = zext i8 %i.bh to i16
  %i.bj = or disjoint i16 %i.bg, %i.bi            ; 2 uses
  store i16 %i.bj, ptr %6, align 8, !tbaa !32
  %i.bk = icmp ult i16 %i.bj, 16
  br i1 %i.bk, label %bb.q, label %.thread74.sink.split

bb.q:                                             ; preds = %bb.p
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !9
  %i.bm = call i32 @CrcCalc(ptr noundef nonnull %i.o, i64 noundef 6) #8
  %.not144.i = icmp eq i32 %i.bl, %i.bm
  br i1 %.not144.i, label %bb.r, label %.thread74.sink.split

bb.r:                                             ; preds = %bb.q
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !9
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2                    ; 3 uses
  %i.bq = sub nsw i64 -16, %i.bp
  store i64 %i.bq, ptr %2, align 8, !tbaa !27
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.bs = call i32 %i.br(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !30 ; 2 uses
  %.not145.i = icmp eq i32 %i.bs, 0
  br i1 %.not145.i, label %bb.s, label %.thread74.sink.split

bb.s:                                             ; preds = %bb.r
  %i.bt = add nsw i64 %i.bp, 4
  %i.bu = call fastcc i32 @Xz_ReadIndex(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef %i.bt, ptr noundef %4) ; 2 uses
  %.not146.i = icmp eq i32 %i.bu, 0
  br i1 %.not146.i, label %bb.t, label %.thread74.sink.split

bb.t:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !10  ; 2 uses
  %.not20.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not20.i.i, label %Xz_GetPackSize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.t
  %i.bw = load ptr, ptr %i.q, align 8, !tbaa !16
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.bx = add nuw i64 %.01117.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bx, %i.bv
  br i1 %exitcond.not.i.i, label %Xz_GetPackSize.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i
  %.01117.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bx, %bb.u ] ; 2 uses
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cd, %bb.u ] ; 2 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %.01117.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.cb = add i64 %i.ca, 3
  %i.cc = and i64 %i.cb, -4
  %i.cd = add i64 %i.cc, %.01216.i.i              ; 3 uses
  %.not.i.i = icmp ult i64 %i.cd, %.01216.i.i
  br i1 %.not.i.i, label %.thread74.sink.split, label %bb.u

Xz_GetPackSize.exit.i:                            ; preds = %bb.u, %bb.t
  %.2.i.i = phi i64 [ 0, %bb.t ], [ %i.cd, %bb.u ] ; 2 uses
  %i.ce = add nsw i64 %i.bp, 16
  %i.cf = add i64 %i.ce, %.2.i.i                  ; 2 uses
  %i.cg = icmp slt i64 %i.cf, 0
  %i.ch = icmp slt i64 %.2.i.i, 0
  %or.cond16.i = select i1 %i.ch, i1 true, i1 %i.cg
  br i1 %or.cond16.i, label %.thread74.sink.split, label %bb.w

bb.w:                                             ; preds = %Xz_GetPackSize.exit.i
  %i.ci = sub nsw i64 0, %i.cf
  store i64 %i.ci, ptr %2, align 8, !tbaa !27
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.ck = call i32 %i.cj(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !30 ; 2 uses
  %.not147.i = icmp eq i32 %i.ck, 0
  br i1 %.not147.i, label %bb.x, label %.thread74.sink.split

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @SecToRead_CreateVTable(ptr noundef nonnull %5) #8
  store ptr %1, ptr %i.r, align 8, !tbaa !33
  %i.cl = call i32 @Xz_ReadHeader(ptr noundef nonnull %i.c, ptr noundef nonnull %5) ; 2 uses
  %.not148.i = icmp eq i32 %i.cl, 0
  br i1 %.not148.i, label %bb.y, label %Xz_ReadBackward.exit.thread69

bb.y:                                             ; preds = %bb.x
  %i.cm = load i16, ptr %6, align 8, !tbaa !32
  %i.cn = load i16, ptr %i.c, align 2, !tbaa !36
  %i.co = icmp eq i16 %i.cm, %i.cn
  br i1 %i.co, label %bb.z, label %Xz_ReadBackward.exit.thread69

Xz_ReadBackward.exit.thread69:                    ; preds = %bb.y, %bb.x
  %.14.i.ph = phi i32 [ %i.cl, %bb.x ], [ 16, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread74.sink.split

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cp = load i64, ptr %2, align 8, !tbaa !27
  store i64 %i.cp, ptr %i.s, align 8, !tbaa !37
  %i.cq = load i64, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.cr = load i64, ptr %i.t, align 8, !tbaa !38
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !22
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ct = lshr i64 %i.cq, 2
  %i.cu = add i64 %i.cq, 1
  %i.cv = add i64 %i.cu, %i.ct                    ; 2 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !39
  %i.cx = mul i64 %i.cv, 40
  %i.cy = call ptr %i.cw(ptr noundef nonnull %4, i64 noundef %i.cx) #8 ; 4 uses
  %.not61 = icmp eq ptr %i.cy, null
  br i1 %.not61, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.cv, ptr %i.t, align 8, !tbaa !38
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.da = load i64, ptr %0, align 8, !tbaa !20
  %i.db = mul i64 %i.da, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr align 8 %i.cz, i64 %i.db, i1 false)
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !23
  %i.dd = load ptr, ptr %i.u, align 8, !tbaa !22
  call void %i.dc(ptr noundef nonnull %4, ptr noundef %i.dd) #8
  store ptr %i.cy, ptr %i.u, align 8, !tbaa !22
  %.pre113 = load i64, ptr %0, align 8, !tbaa !20
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %i.de = phi i64 [ %i.cq, %._crit_edge ], [ %.pre113, %bb.ab ] ; 2 uses
  %i.df = phi ptr [ %.pre, %._crit_edge ], [ %i.cy, %bb.ab ]
  %i.dg = add i64 %i.de, 1
  store i64 %i.dg, ptr %0, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dh, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !40
  %i.di = load i64, ptr %2, align 8, !tbaa !27
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.dl = call i32 %i.dk(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #8 ; 2 uses
  %.not62 = icmp eq i32 %i.dl, 0
  br i1 %.not62, label %bb.ae, label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not63, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_0
