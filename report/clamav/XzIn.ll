Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/XzIn?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Xz_GetPackSize:bb.a
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = add nuw i64 %.01117, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01117 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %.01216 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.01117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18
  %i.i = add i64 %i.h, 3
  %i.j = and i64 %i.i, -4
  %i.k = add i64 %i.j, %.01216                    ; 3 uses
  %.not = icmp ult i64 %i.k, %.01216
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %i.k, %bb.b ], [ -1, %bb.c ]
  ret i64 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Xzs_Construct(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #4 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Xzs_Free(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.011
  tail call void @Xz_Free(ptr noundef %i.d, ptr noundef %1) #8
  %i.e = add nuw i64 %.011, 1                     ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !20
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  tail call void %i.i(ptr noundef %1, ptr noundef %i.k) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @Xz_Free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i64 @Xzs_GetNumBlocks(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !20     ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 5 uses
  %xtraiter = and i64 %i.a, 3                     ; 3 uses
  %i.d = icmp ult i64 %i.a, 4
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.a, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.08 = phi i64 [ 0, %.lr.ph.new ], [ %i.u, %bb.b ] ; 5 uses
  %.067 = phi i64 [ 0, %.lr.ph.new ], [ %i.t, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = add i64 %i.g, %.067
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, %i.h
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = add i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.08
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
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
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = add i64 %i.x, %.067.epil                 ; 2 uses
  %i.z = add nuw i64 %.08.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !27

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
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
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %.not20.i = icmp eq i64 %i.g, 0
  br i1 %.not20.i, label %Xz_GetUnpackSize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15
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
  %i.a = alloca [12 x i8], align 4                ; 10 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %5 = alloca %struct.CSecToRead, align 8         ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %struct.CXzStream, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 0, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = call i32 %i.f(ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef 2) #8 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !tbaa !24
  store i64 %i.h, ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @Xz_Construct(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.i = load i64, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.j = and i64 %i.i, 3
  %.not.i88 = icmp ne i64 %i.j, 0
  %i.k = icmp slt i64 %i.i, 12
  %or.cond149.i89 = or i1 %i.k, %.not.i88
  br i1 %or.cond149.i89, label %.thread74.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not63 = icmp eq ptr %3, null
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.ah
  store i64 -12, ptr %2, align 8, !tbaa !24
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.w = call i32 %i.v(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !29 ; 2 uses
  %.not132.i = icmp eq i32 %i.w, 0
  br i1 %.not132.i, label %bb.d, label %.thread74.sink.split

bb.d:                                             ; preds = %bb.c
  %i.x = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 12, i32 noundef 17) #8 ; 2 uses
  %.not133.i = icmp eq i32 %i.x, 0
  br i1 %.not133.i, label %bb.e, label %.thread74.sink.split

bb.e:                                             ; preds = %bb.d
  %i.y = load i16, ptr %i.l, align 1
  %i.z = load i16, ptr @XZ_FOOTER_SIG, align 1
  %i.aa = icmp ne i16 %i.y, %i.z
  %i.ab = zext i1 %i.aa to i32
  %.not134.i = icmp eq i32 %i.ab, 0
  br i1 %.not134.i, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ad = add nsw i64 %i.ac, 12                   ; 2 uses
  store i64 %i.ad, ptr %2, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ae = icmp slt i64 %i.ac, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.p
  %i.af = phi i64 [ %i.be, %bb.p ], [ %i.ad, %bb.f ]
  %.0104178.i = phi i64 [ %i.ag, %bb.p ], [ 0, %bb.f ]
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.af, i64 1024) ; 4 uses
  %i.ag = add nuw nsw i64 %spec.select.i, %.0104178.i ; 2 uses
  %i.ah = sub nsw i64 0, %spec.select.i
  store i64 %i.ah, ptr %2, align 8, !tbaa !24
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.aj = call i32 %i.ai(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !29 ; 2 uses
  %.not135.i = icmp eq i32 %i.aj, 0
  br i1 %.not135.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ak = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %spec.select.i, i32 noundef 17) #8 ; 2 uses
  %.not136.i = icmp eq i32 %i.ak, 0
  br i1 %.not136.i, label %bb.h, label %.loopexit.i

bb.h:                                             ; preds = %bb.g
  %i.al = trunc nuw nsw i64 %spec.select.i to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.0176.i = phi i32 [ %i.al, %bb.h ], [ %i.aq, %bb.j ] ; 5 uses
  %i.am = zext nneg i32 %.0176.i to i64           ; 2 uses
  %i.an = getelementptr i8, ptr %i.b, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %.not137.i = icmp eq i8 %i.ap, 0
  br i1 %.not137.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i32 %.0176.i, -1
  %i.ar = icmp sgt i32 %.0176.i, 0
  br i1 %i.ar, label %bb.i, label %.loopexit.i

bb.k:                                             ; preds = %bb.i
  %.not138.i = icmp eq i32 %.0176.i, 0
  br i1 %.not138.i, label %bb.p, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  %i.as = and i32 %.0176.i, 3
  %.not139.i = icmp eq i32 %i.as, 0
  br i1 %.not139.i, label %bb.l, label %.loopexit.i

bb.l:                                             ; preds = %.thread.i
  %i.at = load i64, ptr %2, align 8, !tbaa !24
  %i.au = add nsw i64 %i.at, %i.am                ; 3 uses
  store i64 %i.au, ptr %2, align 8, !tbaa !24
  %i.av = icmp slt i64 %i.au, 12
  br i1 %i.av, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = add nsw i64 %i.au, -12
  store i64 %i.aw, ptr %2, align 8, !tbaa !24
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ay = call i32 %i.ax(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #8, !inline_history !30 ; 2 uses
  %.not140.i = icmp eq i32 %i.ay, 0
  br i1 %.not140.i, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.az = call i32 @LookInStream_Read2(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef 12, i32 noundef 17) #8 ; 2 uses
  %.not141.i = icmp eq i32 %i.az, 0
  br i1 %.not141.i, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.ba = load i16, ptr %i.l, align 1
  %i.bb = load i16, ptr @XZ_FOOTER_SIG, align 1
  %i.bc = icmp ne i16 %i.ba, %i.bb
  %i.bd = zext i1 %i.bc to i32
  %.not143.i = icmp eq i32 %i.bd, 0
  br i1 %.not143.i, label %.thread162.i, label %.loopexit.i

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.be = load i64, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.bf = icmp slt i64 %i.be, 12
  %i.bg = icmp samesign ugt i64 %i.ag, 65536
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i

.thread162.i:                                     ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.q

.loopexit.i:                                      ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %.thread.i, %bb.f, %bb.p, %bb.g, %.lr.ph.i, %bb.j
  %.7114.ph.i = phi i32 [ 17, %bb.j ], [ 17, %bb.p ], [ %i.aj, %.lr.ph.i ], [ %i.ak, %bb.g ], [ 17, %bb.f ], [ 17, %bb.o ], [ 17, %bb.l ], [ 17, %.thread.i ], [ %i.ay, %bb.m ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %.thread74.sink.split

bb.q:                                             ; preds = %.thread162.i, %bb.e
  %7 = load i16, ptr %i.m, align 4
  %8 = call i16 @llvm.bswap.i16(i16 %7)           ; 2 uses
  store i16 %8, ptr %6, align 8, !tbaa !33
  %i.bh = icmp ult i16 %8, 16
  br i1 %i.bh, label %bb.r, label %.thread74.sink.split

bb.r:                                             ; preds = %bb.q
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !8
  %i.bj = call i32 @CrcCalc(ptr noundef nonnull %i.n, i64 noundef 6) #8
  %.not144.i = icmp eq i32 %i.bi, %i.bj
  br i1 %.not144.i, label %bb.s, label %.thread74.sink.split

bb.s:                                             ; preds = %bb.r
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !8
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 2                    ; 3 uses
  %i.bn = sub nsw i64 -16, %i.bm
  store i64 %i.bn, ptr %2, align 8, !tbaa !24
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.bp = call i32 %i.bo(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !29 ; 2 uses
  %.not145.i = icmp eq i32 %i.bp, 0
  br i1 %.not145.i, label %bb.t, label %.thread74.sink.split

bb.t:                                             ; preds = %bb.s
  %i.bq = add nsw i64 %i.bm, 4
  %i.br = call fastcc i32 @Xz_ReadIndex(ptr noundef nonnull %6, ptr noundef nonnull %1, i64 noundef %i.bq, ptr noundef %4) ; 2 uses
  %.not146.i = icmp eq i32 %i.br, 0
  br i1 %.not146.i, label %bb.u, label %.thread74.sink.split

bb.u:                                             ; preds = %bb.t
  %i.bs = load i64, ptr %i.o, align 8, !tbaa !14  ; 2 uses
  %.not20.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not20.i.i, label %Xz_GetPackSize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !15
  br label %bb.w

bb.v:                                             ; preds = %bb.w
  %i.bu = add nuw i64 %.01117.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %i.bs
  br i1 %exitcond.not.i.i, label %Xz_GetPackSize.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %.01117.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bu, %bb.v ] ; 2 uses
  %.01216.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ca, %bb.v ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.01117.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !18
  %i.by = add i64 %i.bx, 3
  %i.bz = and i64 %i.by, -4
  %i.ca = add i64 %i.bz, %.01216.i.i              ; 3 uses
  %.not.i.i = icmp ult i64 %i.ca, %.01216.i.i
  br i1 %.not.i.i, label %.thread74.sink.split, label %bb.v

Xz_GetPackSize.exit.i:                            ; preds = %bb.v, %bb.u
  %.2.i.i = phi i64 [ 0, %bb.u ], [ %i.ca, %bb.v ] ; 2 uses
  %i.cb = add nsw i64 %i.bm, 16
  %i.cc = add i64 %i.cb, %.2.i.i                  ; 2 uses
  %i.cd = icmp slt i64 %i.cc, 0
  %i.ce = icmp slt i64 %.2.i.i, 0
  %or.cond16.i = select i1 %i.ce, i1 true, i1 %i.cd
  br i1 %or.cond16.i, label %.thread74.sink.split, label %bb.x

bb.x:                                             ; preds = %Xz_GetPackSize.exit.i
  %i.cf = sub nsw i64 0, %i.cc
  store i64 %i.cf, ptr %2, align 8, !tbaa !24
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.ch = call i32 %i.cg(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 1) #8, !inline_history !29 ; 2 uses
  %.not147.i = icmp eq i32 %i.ch, 0
  br i1 %.not147.i, label %bb.y, label %.thread74.sink.split

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @SecToRead_CreateVTable(ptr noundef nonnull %5) #8
  store ptr %1, ptr %i.q, align 8, !tbaa !36
  %i.ci = call i32 @Xz_ReadHeader(ptr noundef nonnull %i.c, ptr noundef nonnull %5) ; 2 uses
  %.not148.i = icmp eq i32 %i.ci, 0
  br i1 %.not148.i, label %bb.z, label %Xz_ReadBackward.exit.thread69

bb.z:                                             ; preds = %bb.y
  %i.cj = load i16, ptr %6, align 8, !tbaa !33
  %i.ck = load i16, ptr %i.c, align 2, !tbaa !37
  %i.cl = icmp eq i16 %i.cj, %i.ck
  br i1 %i.cl, label %bb.aa, label %Xz_ReadBackward.exit.thread69

Xz_ReadBackward.exit.thread69:                    ; preds = %bb.z, %bb.y
  %.14.i.ph = phi i32 [ %i.ci, %bb.y ], [ 16, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread74.sink.split

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.cm = load i64, ptr %2, align 8, !tbaa !24
  store i64 %i.cm, ptr %i.r, align 8, !tbaa !38
  %i.cn = load i64, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.co = load i64, ptr %i.s, align 8, !tbaa !39
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !21
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cq = lshr i64 %i.cn, 2
  %i.cr = add i64 %i.cn, 1
  %i.cs = add i64 %i.cr, %i.cq                    ; 2 uses
  %i.ct = load ptr, ptr %4, align 8, !tbaa !25
  %i.cu = mul i64 %i.cs, 40
  %i.cv = call ptr %i.ct(ptr noundef nonnull %4, i64 noundef %i.cu) #8 ; 4 uses
  %.not61 = icmp eq ptr %i.cv, null
  br i1 %.not61, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.cs, ptr %i.s, align 8, !tbaa !39
  %i.cw = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.cx = load i64, ptr %0, align 8, !tbaa !20
  %i.cy = mul i64 %i.cx, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 8 %i.cw, i64 %i.cy, i1 false)
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.da = load ptr, ptr %i.t, align 8, !tbaa !21
  call void %i.cz(ptr noundef nonnull %4, ptr noundef %i.da) #8
  store ptr %i.cv, ptr %i.t, align 8, !tbaa !21
  %.pre113 = load i64, ptr %0, align 8, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.ac
  %i.db = phi i64 [ %i.cn, %._crit_edge ], [ %.pre113, %bb.ac ] ; 2 uses
  %i.dc = phi ptr [ %.pre, %._crit_edge ], [ %i.cv, %bb.ac ]
  %i.dd = add i64 %i.db, 1
  store i64 %i.dd, ptr %0, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !42
  %i.df = load i64, ptr %2, align 8, !tbaa !24
  %i.dg = icmp eq i64 %i.df, 0
  br i1 %i.dg, label %.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.di = call i32 %i.dh(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #8 ; 2 uses
  %.not62 = icmp eq i32 %i.di, 0
  br i1 %.not62, label %bb.af, label %.sink.split

bb.af:                                            ; preds = %bb.ae
  br i1 %.not63, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dj = load ptr, ptr %3, align 8, !tbaa !43
  %i.dk = load i64, ptr %i.d, align 8, !tbaa !24
  %i.dl = load i64, ptr %2, align 8, !tbaa !24
  %i.dm = sub nsw i64 %i.dk, %i.dl
  %i.dn = call i32 %i.dj(ptr noundef nonnull %3, i64 noundef %i.dm, i64 noundef -1) #8
  %.not64 = icmp eq i32 %i.dn, 0
  br i1 %.not64, label %bb.ah, label %.sink.split

.thread74.sink.split:                             ; preds = %bb.c, %bb.q, %bb.x, %bb.t, %bb.s, %bb.ah, %bb.d, %bb.r, %Xz_GetPackSize.exit.i, %bb.w, %.loopexit.i, %bb.b, %Xz_ReadBackward.exit.thread69
  %.6.ph.ph = phi i32 [ %.14.i.ph, %Xz_ReadBackward.exit.thread69 ], [ %.7114.ph.i, %.loopexit.i ], [ 17, %bb.b ], [ 16, %bb.w ], [ %i.ch, %bb.x ], [ %i.br, %bb.t ], [ %i.bp, %bb.s ], [ 17, %bb.ah ], [ %i.x, %bb.d ], [ 16, %bb.r ], [ 16, %Xz_GetPackSize.exit.i ], [ 4, %bb.q ], [ %i.w, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.sink.split

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @Xz_Construct(ptr noundef nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.do = load i64, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.dp = and i64 %i.do, 3
  %.not.i = icmp ne i64 %i.dp, 0
  %i.dq = icmp slt i64 %i.do, 12
  %or.cond149.i = or i1 %i.dq, %.not.i
  br i1 %or.cond149.i, label %.thread74.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.ad, %bb.ab, %bb.ag, %bb.ae, %.thread74.sink.split
  %.7.ph = phi i32 [ %.6.ph.ph, %.thread74.sink.split ], [ %i.di, %bb.ae ], [ 10, %bb.ag ], [ 2, %bb.ab ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.a
  %.7 = phi i32 [ %i.g, %bb.a ], [ %.7.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  ret i32 %.7
}

declare void @Xz_Construct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @LookInStream_Read2(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @CrcCalc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @Xz_ReadIndex(ptr noundef nonnull %0, ptr noundef %1, i64 noundef range(i64 0, -3) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp ugt i64 %2, 2147483648
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !25
  %i.d = tail call ptr %i.c(ptr noundef nonnull %3, i64 noundef %2) #8 ; 13 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @LookInStream_Read2(ptr noundef %1, ptr noundef nonnull %i.d, i64 noundef %2, i32 noundef 4) #8 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %Xz_ReadIndex2.exit

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %2, 5
  br i1 %i.h, label %Xz_ReadIndex2.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.d, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.i, 0
  br i1 %.not.i, label %bb.f, label %Xz_ReadIndex2.exit

bb.f:                                             ; preds = %bb.e
  %i.j = add nsw i64 %2, -4                       ; 6 uses
  %i.k = tail call i32 @CrcCalc(ptr noundef nonnull %i.d, i64 noundef %i.j) #8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.j
  %i.m = load i32, ptr %i.l, align 1, !tbaa !8
  %.not85.i = icmp eq i32 %i.k, %i.m
  br i1 %.not85.i, label %bb.g, label %Xz_ReadIndex2.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.o = add nsw i64 %2, -5
  %i.p = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.n, i64 noundef %i.o, ptr noundef nonnull %i.a) #8 ; 2 uses
  %.not86.i = icmp eq i32 %i.p, 0
  %i.q = zext i32 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  br i1 %.not86.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.t = shl i64 %i.s, 1
  %i.u = icmp ugt i64 %i.t, %i.j
  br i1 %i.u, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @Xz_Free(ptr noundef nonnull %0, ptr noundef nonnull %3) #8
  %.not87.i = icmp eq i64 %i.s, 0
  br i1 %.not87.i, label %.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.w, align 8, !tbaa !45
  %i.x = load ptr, ptr %3, align 8, !tbaa !25
  %i.y = shl i64 %i.s, 4
  %i.z = call ptr %i.x(ptr noundef nonnull %3, i64 noundef %i.y) #8, !inline_history !44 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
  %i.ab = icmp eq ptr %i.z, null
  br i1 %i.ab, label %Xz_ReadIndex2.exit, label %.preheader.i

bb.k:                                             ; preds = %bb.m
  %i.ac = zext i32 %i.ap to i64
  %i.ad = add i64 %i.am, %i.ac                    ; 2 uses
  %i.ae = add nuw i64 %.07398.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.s
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %bb.k
  %.16899.i = phi i64 [ %i.ad, %bb.k ], [ %i.r, %bb.j ] ; 3 uses
  %.07398.i = phi i64 [ %i.ae, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.07398.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 %.16899.i
  %i.ai = sub i64 %i.j, %.16899.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ak = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.ah, i64 noundef %i.ai, ptr noundef nonnull %i.aj) #8 ; 2 uses
  %.not90.i = icmp eq i32 %i.ak, 0
  br i1 %.not90.i, label %Xz_ReadIndex2.exit, label %bb.l

bb.l:                                             ; preds = %.preheader.i
  %i.al = zext i32 %i.ak to i64
  %i.am = add i64 %.16899.i, %i.al                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am
  %i.ao = sub i64 %i.j, %i.am
  %i.ap = call i32 @Xz_ReadVarInt(ptr noundef nonnull %i.an, i64 noundef %i.ao, ptr noundef nonnull %i.ag) #8 ; 2 uses
  %.not91.i = icmp eq i32 %i.ap, 0
  br i1 %.not91.i, label %Xz_ReadIndex2.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = load i64, ptr %i.aj, align 8, !tbaa !18
  %.not94.i = icmp eq i64 %i.aq, 0
  br i1 %.not94.i, label %Xz_ReadIndex2.exit, label %bb.k

.loopexit.i:                                      ; preds = %bb.k, %bb.i
  %.5.i = phi i64 [ %i.r, %bb.i ], [ %i.ad, %bb.k ] ; 6 uses
  %i.ar = add i64 %.5.i, 3
  %i.as = and i64 %i.ar, -4
  %i.at = and i64 %.5.i, 3
  %.not88.i36 = icmp eq i64 %i.at, 0
  br i1 %.not88.i36, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.au = add i64 %.5.i, 1                        ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not88.i = icmp eq i64 %i.av, 0
  br i1 %.not88.i, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.au
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8
  %.not89.i.1 = icmp eq i8 %i.ax, 0
  br i1 %.not89.i.1, label %bb.o, label %Xz_ReadIndex2.exit

bb.o:                                             ; preds = %.lr.ph.1
  %i.ay = add i64 %.5.i, 2                        ; 2 uses
  %i.az = and i64 %i.ay, 3
  %.not88.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not88.i.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %.not89.i.2 = icmp eq i8 %i.bb, 0
  br i1 %.not89.i.2, label %bb.p, label %Xz_ReadIndex2.exit

bb.p:                                             ; preds = %.lr.ph.2
  %i.bc = add i64 %.5.i, 3                        ; 2 uses
  %i.bd = and i64 %i.bc, 3
  %.not88.i.2 = icmp eq i64 %i.bd, 0
  br i1 %.not88.i.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %.not89.i.3 = icmp eq i8 %i.bf, 0
  br i1 %.not89.i.3, label %._crit_edge, label %Xz_ReadIndex2.exit

.lr.ph:                                           ; preds = %.loopexit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 %.5.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %.not89.i = icmp eq i8 %i.bh, 0
  br i1 %.not89.i, label %bb.n, label %Xz_ReadIndex2.exit

._crit_edge:                                      ; preds = %bb.n, %bb.o, %bb.p, %.lr.ph.3, %.loopexit.i
  %i.bi = icmp eq i64 %i.as, %i.j
  %i.bj = select i1 %i.bi, i32 0, i32 16
  br label %Xz_ReadIndex2.exit

.critedge.i:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %Xz_ReadIndex2.exit

Xz_ReadIndex2.exit:                               ; preds = %bb.m, %bb.l, %.preheader.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.critedge.i, %._crit_edge, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.f, %bb.c ], [ 16, %.critedge.i ], [ 16, %bb.d ], [ 16, %bb.f ], [ 2, %bb.j ], [ 16, %.lr.ph ], [ %i.bj, %._crit_edge ], [ 16, %bb.e ], [ 16, %.lr.ph.3 ], [ 16, %.lr.ph.2 ], [ 16, %.lr.ph.1 ], [ 16, %.preheader.i ], [ 16, %bb.l ], [ 16, %bb.m ]
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  call void %i.bl(ptr noundef nonnull %3, ptr noundef nonnull %i.d) #8
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %Xz_ReadIndex2.exit
  %.020 = phi i32 [ 4, %bb.a ], [ %.0, %Xz_ReadIndex2.exit ], [ 2, %bb.b ]
  ret i32 %.020
}

declare void @SecToRead_CreateVTable(ptr noundef) local_unnamed_addr #2

declare i32 @Xz_ReadVarInt(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"short", !4, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"long long", !4, i64 0}
!13 = !{!"", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !12, i64 32}
!14 = !{!13, !10, i64 8}
!15 = !{!13, !11, i64 24}
!16 = !{!"", !12, i64 0, !12, i64 8}
!17 = !{!16, !12, i64 0}
!18 = !{!16, !12, i64 8}
!19 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16}
!20 = !{!19, !10, i64 0}
!21 = !{!19, !11, i64 16}
!22 = !{!"", !11, i64 0, !11, i64 8}
!23 = !{!22, !11, i64 8}
!24 = !{!12, !12, i64 0}
!25 = !{!22, !11, i64 0}
!26 = !{!5, !5, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{null, null}
!30 = distinct !{null}
!31 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!32 = !{!31, !11, i64 24}
!33 = !{!13, !9, i64 0}
!34 = !{!"", !11, i64 0}
!35 = !{!"", !34, i64 0, !11, i64 8}
!36 = !{!35, !11, i64 8}
!37 = !{!9, !9, i64 0}
!38 = !{!13, !12, i64 32}
!39 = !{!19, !10, i64 8}
!40 = !{!10, !10, i64 0}
!41 = !{!11, !11, i64 0}
!42 = !{i64 0, i64 2, !37, i64 8, i64 8, !40, i64 16, i64 8, !40, i64 24, i64 8, !41, i64 32, i64 8, !24}
!43 = !{!34, !11, i64 0}
!44 = distinct !{null}
!45 = !{!13, !10, i64 16}
end_hunk_0
