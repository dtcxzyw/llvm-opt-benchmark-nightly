inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@polybench_timer_stop:bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !8
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 2500) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 25000000) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i20 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i20, label %bb.c, label %polybench_alloc_data.exit21

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 25000000) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10   ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i22 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i22, label %bb.d, label %iter.check

bb.d:                                             ; preds = %polybench_alloc_data.exit21
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.u = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

iter.check:                                       ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %iter.check ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.v = trunc <16 x i64> %vec.ind to <16 x i8>
  %i.w = add <16 x i8> %i.v, splat (i8 1)
  %i.x = and <16 x i8> %i.w, splat (i8 3)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  store <16 x i8> %i.x, ptr %i.y, align 1, !tbaa !14
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.z = icmp eq i64 %index.next, 2496
  br i1 %i.z, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !15

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %i.aa, align 1, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.k, i8 0, i64 25000000, i1 false), !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge135.i, %vec.epilog.vector.body
  %indvars.iv146.i = phi i64 [ 2499, %vec.epilog.vector.body ], [ %indvars.iv.next147.i, %._crit_edge135.i ] ; 7 uses
  %indvars.iv.i24 = phi i64 [ 2500, %vec.epilog.vector.body ], [ %indvars.iv.next.i25, %._crit_edge135.i ] ; 5 uses
  %i.ab = add nuw nsw i64 %indvars.iv146.i, 1     ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv146.i, 2499
  br i1 %i.ac, label %.lr.ph134.split.us.preheader.i, label %._crit_edge135.i

.lr.ph134.split.us.preheader.i:                   ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv146.i ; 5 uses
  %i.ae = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv146.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i24
  %indvars.iv.next140.i.prol = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  br label %.lr.ph134.split.us.i

.lr.ph134.split.us.i:                             ; preds = %._crit_edge.us.i, %.lr.ph134.split.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.lr.ph134.split.us.preheader.i ] ; 3 uses
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %._crit_edge.us.i ], [ %indvars.iv.i24, %.lr.ph134.split.us.preheader.i ] ; 8 uses
  %i.ah = add nsw i64 %indvars.iv142.i, -1        ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv142.i ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = call i32 @llvm.smax.i32(i32 %i.aj, i32 %i.al)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv142.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %..us.i = call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  store i32 %..us.i, ptr %i.ai, align 4, !tbaa !4
  %i.ap = icmp samesign ult i64 %indvars.iv146.i, %i.ah
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4  ; 2 uses
  br i1 %i.ap, label %bb.f, label %.critedge.us.i

bb.f:                                             ; preds = %.lr.ph134.split.us.i
  %i.as = load i8, ptr %i.af, align 1, !tbaa !14
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv142.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, %i.at
  %i.ay = icmp eq i32 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %i.ba = add nsw i32 %i.ar, %i.az
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.f, %.lr.ph134.split.us.i
  %.sink.i = phi i32 [ %i.ba, %bb.f ], [ %i.ar, %.lr.ph134.split.us.i ]
  %.127.us.i = call i32 @llvm.smax.i32(i32 %..us.i, i32 %.sink.i) ; 3 uses
  store i32 %.127.us.i, ptr %i.ai, align 4, !tbaa !4
  %invariant.gep.us.i = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv142.i ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ab, %indvars.iv142.i
  br i1 %i.bb, label %.lr.ph.us.i.preheader, label %._crit_edge.us.i

.lr.ph.us.i.preheader:                            ; preds = %.critedge.us.i
  %xtraiter = and i64 %indvar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.i.prol.loopexit, label %.lr.ph.us.i.prol

.lr.ph.us.i.prol:                                 ; preds = %.lr.ph.us.i.preheader
  %i.bc = load i32, ptr %i.ag, align 4, !tbaa !4
  %gep.us.i.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.next140.i.prol
  %i.bd = load i32, ptr %gep.us.i.prol, align 4, !tbaa !4
  %i.be = add nsw i32 %i.bd, %i.bc
  %.129.us.i.prol = call i32 @llvm.smax.i32(i32 %.127.us.i, i32 %i.be) ; 2 uses
  store i32 %.129.us.i.prol, ptr %i.ai, align 4, !tbaa !4
  br label %.lr.ph.us.i.prol.loopexit

.lr.ph.us.i.prol.loopexit:                        ; preds = %.lr.ph.us.i.prol, %.lr.ph.us.i.preheader
  %indvars.iv139.i.unr = phi i64 [ %indvars.iv.i24, %.lr.ph.us.i.preheader ], [ %indvars.iv.next140.i.prol, %.lr.ph.us.i.prol ]
  %.129131.us.i.unr = phi i32 [ %.127.us.i, %.lr.ph.us.i.preheader ], [ %.129.us.i.prol, %.lr.ph.us.i.prol ]
  %i.bf = icmp eq i64 %indvar, 1
  br i1 %i.bf, label %._crit_edge.us.i, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i.1, %.lr.ph.us.i ], [ %indvars.iv139.i.unr, %.lr.ph.us.i.prol.loopexit ] ; 3 uses
  %.129131.us.i = phi i32 [ %.129.us.i.1, %.lr.ph.us.i ], [ %.129131.us.i.unr, %.lr.ph.us.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv139.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %gep.us.i = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.next140.i
  %i.bi = load i32, ptr %gep.us.i, align 4, !tbaa !4
  %i.bj = add nsw i32 %i.bi, %i.bh
  %.129.us.i = call i32 @llvm.smax.i32(i32 %.129131.us.i, i32 %i.bj) ; 2 uses
  store i32 %.129.us.i, ptr %i.ai, align 4, !tbaa !4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next140.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %indvars.iv.next140.i.1 = add nuw nsw i64 %indvars.iv139.i, 2 ; 3 uses
  %gep.us.i.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.next140.i.1
  %i.bm = load i32, ptr %gep.us.i.1, align 4, !tbaa !4
  %i.bn = add nsw i32 %i.bm, %i.bl
  %.129.us.i.1 = call i32 @llvm.smax.i32(i32 %.129.us.i, i32 %i.bn) ; 2 uses
  store i32 %.129.us.i.1, ptr %i.ai, align 4, !tbaa !4
  %exitcond.not.i26.1 = icmp eq i64 %indvars.iv.next140.i.1, %indvars.iv142.i
  br i1 %exitcond.not.i26.1, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !19

._crit_edge.us.i:                                 ; preds = %.lr.ph.us.i.prol.loopexit, %.lr.ph.us.i, %.critedge.us.i
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %exitcond145.not.i = icmp eq i64 %indvars.iv.next143.i, 2500
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond145.not.i, label %._crit_edge135.i, label %.lr.ph134.split.us.i, !llvm.loop !20

._crit_edge135.i:                                 ; preds = %._crit_edge.us.i, %bb.e
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, -1
  %.not.i = icmp eq i64 %indvars.iv146.i, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  br i1 %.not.i, label %vector.body96, label %bb.e, !llvm.loop !21

vector.body96:                                    ; preds = %._crit_edge135.i, %vector.body96
  %index97 = phi i64 [ %index.next99, %vector.body96 ], [ 0, %._crit_edge135.i ] ; 2 uses
  %vec.ind98 = phi <16 x i64> [ %vec.ind.next100, %vector.body96 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %._crit_edge135.i ] ; 2 uses
  %i.bo = trunc <16 x i64> %vec.ind98 to <16 x i8>
  %i.bp = add <16 x i8> %i.bo, splat (i8 1)
  %i.bq = and <16 x i8> %i.bp, splat (i8 3)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 %index97
  store <16 x i8> %i.bq, ptr %i.br, align 1, !tbaa !14
  %index.next99 = add nuw i64 %index97, 16        ; 2 uses
  %vec.ind.next100 = add nuw nsw <16 x i64> %vec.ind98, splat (i64 16)
  %i.bs = icmp eq i64 %index.next99, 2496
  br i1 %i.bs, label %vec.epilog.vector.body110, label %vector.body96, !llvm.loop !22

vec.epilog.vector.body110:                        ; preds = %vector.body96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %i.bt, align 1, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.q, i8 0, i64 25000000, i1 false), !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge135.i33, %vec.epilog.vector.body110
  %indvars.iv146.i31 = phi i64 [ 2499, %vec.epilog.vector.body110 ], [ %indvars.iv.next147.i34, %._crit_edge135.i33 ] ; 7 uses
  %indvars.iv.i32 = phi i64 [ 2500, %vec.epilog.vector.body110 ], [ %indvars.iv.next.i36, %._crit_edge135.i33 ] ; 5 uses
  %i.bu = add nuw nsw i64 %indvars.iv146.i31, 1   ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv146.i31, 2499
  br i1 %i.bv, label %.lr.ph134.split.us.preheader.i37, label %._crit_edge135.i33

.lr.ph134.split.us.preheader.i37:                 ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv146.i31 ; 5 uses
  %i.bx = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %i.bu ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv146.i31
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i32
  %indvars.iv.next140.i51.prol = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  br label %.lr.ph134.split.us.i38

.lr.ph134.split.us.i38:                           ; preds = %._crit_edge.us.i45, %.lr.ph134.split.us.preheader.i37
  %indvar122 = phi i64 [ %indvar.next123, %._crit_edge.us.i45 ], [ 0, %.lr.ph134.split.us.preheader.i37 ] ; 3 uses
  %indvars.iv142.i39 = phi i64 [ %indvars.iv.next143.i46, %._crit_edge.us.i45 ], [ %indvars.iv.i32, %.lr.ph134.split.us.preheader.i37 ] ; 8 uses
  %i.ca = add nsw i64 %indvars.iv142.i39, -1      ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv142.i39 ; 6 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.ce)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv142.i39
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %..us.i40 = call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.ch) ; 2 uses
  store i32 %..us.i40, ptr %i.cb, align 4, !tbaa !4
  %i.ci = icmp samesign ult i64 %indvars.iv146.i31, %i.ca
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4  ; 2 uses
  br i1 %i.ci, label %bb.h, label %.critedge.us.i41

bb.h:                                             ; preds = %.lr.ph134.split.us.i38
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !14
  %i.cm = sext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv142.i39
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !14
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, %i.cm
  %i.cr = icmp eq i32 %i.cq, 3
  %i.cs = zext i1 %i.cr to i32
  %i.ct = add nsw i32 %i.ck, %i.cs
  br label %.critedge.us.i41

.critedge.us.i41:                                 ; preds = %bb.h, %.lr.ph134.split.us.i38
  %.sink.i42 = phi i32 [ %i.ct, %bb.h ], [ %i.ck, %.lr.ph134.split.us.i38 ]
  %.127.us.i43 = call i32 @llvm.smax.i32(i32 %..us.i40, i32 %.sink.i42) ; 3 uses
  store i32 %.127.us.i43, ptr %i.cb, align 4, !tbaa !4
  %invariant.gep.us.i44 = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv142.i39 ; 3 uses
  %i.cu = icmp samesign ult i64 %i.bu, %indvars.iv142.i39
  br i1 %i.cu, label %.lr.ph.us.i48.preheader, label %._crit_edge.us.i45

.lr.ph.us.i48.preheader:                          ; preds = %.critedge.us.i41
  %xtraiter124 = and i64 %indvar122, 1
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.us.i48.prol.loopexit, label %.lr.ph.us.i48.prol

.lr.ph.us.i48.prol:                               ; preds = %.lr.ph.us.i48.preheader
  %i.cv = load i32, ptr %i.bz, align 4, !tbaa !4
  %gep.us.i52.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i44, i64 %indvars.iv.next140.i51.prol
  %i.cw = load i32, ptr %gep.us.i52.prol, align 4, !tbaa !4
  %i.cx = add nsw i32 %i.cw, %i.cv
  %.129.us.i53.prol = call i32 @llvm.smax.i32(i32 %.127.us.i43, i32 %i.cx) ; 2 uses
  store i32 %.129.us.i53.prol, ptr %i.cb, align 4, !tbaa !4
  br label %.lr.ph.us.i48.prol.loopexit

.lr.ph.us.i48.prol.loopexit:                      ; preds = %.lr.ph.us.i48.prol, %.lr.ph.us.i48.preheader
  %indvars.iv139.i49.unr = phi i64 [ %indvars.iv.i32, %.lr.ph.us.i48.preheader ], [ %indvars.iv.next140.i51.prol, %.lr.ph.us.i48.prol ]
  %.129131.us.i50.unr = phi i32 [ %.127.us.i43, %.lr.ph.us.i48.preheader ], [ %.129.us.i53.prol, %.lr.ph.us.i48.prol ]
  %i.cy = icmp eq i64 %indvar122, 1
  br i1 %i.cy, label %._crit_edge.us.i45, label %.lr.ph.us.i48

.lr.ph.us.i48:                                    ; preds = %.lr.ph.us.i48.prol.loopexit, %.lr.ph.us.i48
  %indvars.iv139.i49 = phi i64 [ %indvars.iv.next140.i51.1, %.lr.ph.us.i48 ], [ %indvars.iv139.i49.unr, %.lr.ph.us.i48.prol.loopexit ] ; 3 uses
  %.129131.us.i50 = phi i32 [ %.129.us.i53.1, %.lr.ph.us.i48 ], [ %.129131.us.i50.unr, %.lr.ph.us.i48.prol.loopexit ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv139.i49
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next140.i51 = add nuw nsw i64 %indvars.iv139.i49, 1 ; 2 uses
  %gep.us.i52 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i44, i64 %indvars.iv.next140.i51
  %i.db = load i32, ptr %gep.us.i52, align 4, !tbaa !4
  %i.dc = add nsw i32 %i.db, %i.da
  %.129.us.i53 = call i32 @llvm.smax.i32(i32 %.129131.us.i50, i32 %i.dc) ; 2 uses
  store i32 %.129.us.i53, ptr %i.cb, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next140.i51
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %indvars.iv.next140.i51.1 = add nuw nsw i64 %indvars.iv139.i49, 2 ; 3 uses
  %gep.us.i52.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.us.i44, i64 %indvars.iv.next140.i51.1
  %i.df = load i32, ptr %gep.us.i52.1, align 4, !tbaa !4
  %i.dg = add nsw i32 %i.df, %i.de
  %.129.us.i53.1 = call i32 @llvm.smax.i32(i32 %.129.us.i53, i32 %i.dg) ; 2 uses
  store i32 %.129.us.i53.1, ptr %i.cb, align 4, !tbaa !4
  %exitcond.not.i54.1 = icmp eq i64 %indvars.iv.next140.i51.1, %indvars.iv142.i39
  br i1 %exitcond.not.i54.1, label %._crit_edge.us.i45, label %.lr.ph.us.i48, !llvm.loop !23

._crit_edge.us.i45:                               ; preds = %.lr.ph.us.i48.prol.loopexit, %.lr.ph.us.i48, %.critedge.us.i41
  %indvars.iv.next143.i46 = add nuw nsw i64 %indvars.iv142.i39, 1 ; 2 uses
  %exitcond145.not.i47 = icmp eq i64 %indvars.iv.next143.i46, 2500
  %indvar.next123 = add i64 %indvar122, 1
  br i1 %exitcond145.not.i47, label %._crit_edge135.i33, label %.lr.ph134.split.us.i38, !llvm.loop !24

._crit_edge135.i33:                               ; preds = %._crit_edge.us.i45, %bb.g
  %indvars.iv.next147.i34 = add nsw i64 %indvars.iv146.i31, -1
  %.not.i35 = icmp eq i64 %indvars.iv146.i31, 0
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i32, -1
  br i1 %.not.i35, label %.preheader.i, label %bb.g, !llvm.loop !25

.preheader.i:                                     ; preds = %._crit_edge135.i33, %bb.j
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.j ], [ 0, %._crit_edge135.i33 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv39.i ; 5 uses
  %i.di = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv39.i ; 5 uses
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i.4, %.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i57.4, %.critedge.i.4 ] ; 8 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i55
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4  ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i55
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %.not.i56 = icmp eq i32 %i.dk, %i.dm
  br i1 %.not.i56, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.i
  %indvars.iv.i55.lcssa = phi i64 [ %indvars.iv.i55, %bb.i ], [ %indvars.iv.next.i57, %.critedge.i ], [ %indvars.iv.next.i57.1, %.critedge.i.1 ], [ %indvars.iv.next.i57.2, %.critedge.i.2 ], [ %indvars.iv.next.i57.3, %.critedge.i.3 ]
  %.lcssa118 = phi i32 [ %i.dk, %bb.i ], [ %i.du, %.critedge.i ], [ %i.dy, %.critedge.i.1 ], [ %i.ec, %.critedge.i.2 ], [ %i.eg, %.critedge.i.3 ]
  %.lcssa = phi i32 [ %i.dm, %bb.i ], [ %i.dw, %.critedge.i ], [ %i.ea, %.critedge.i.1 ], [ %i.ee, %.critedge.i.2 ], [ %i.ei, %.critedge.i.3 ]
  %i.dn = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i55.lcssa to i32 ; 2 uses
  %i.dp = sitofp i32 %.lcssa to double
  %i.dq = sitofp i32 %.lcssa118 to double
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.2, i32 noundef %i.dn, i32 noundef %i.do, double noundef %i.dq, i32 noundef %i.dn, i32 noundef %i.do, double noundef %i.dp, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.m

.critedge.i:                                      ; preds = %bb.i
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i55, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4  ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !4  ; 2 uses
  %.not.i56.1 = icmp eq i32 %i.du, %i.dw
  br i1 %.not.i56.1, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i55, 2 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.1
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %.not.i56.2 = icmp eq i32 %i.dy, %i.ea
  br i1 %.not.i56.2, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i57.2 = add nuw nsw i64 %indvars.iv.i55, 3 ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not.i56.3 = icmp eq i32 %i.ec, %i.ee
  br i1 %.not.i56.3, label %.critedge.i.3, label %check_FP.exit.thread

.critedge.i.3:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i57.3 = add nuw nsw i64 %indvars.iv.i55, 4 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.3
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4  ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.3
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4  ; 2 uses
  %.not.i56.4 = icmp eq i32 %i.eg, %i.ei
  br i1 %.not.i56.4, label %.critedge.i.4, label %check_FP.exit.thread

.critedge.i.4:                                    ; preds = %.critedge.i.3
  %indvars.iv.next.i57.4 = add nuw nsw i64 %indvars.iv.i55, 5 ; 2 uses
  %exitcond.not.i58.4 = icmp eq i64 %indvars.iv.next.i57.4, 2500
  br i1 %exitcond.not.i58.4, label %bb.j, label %bb.i, !llvm.loop !26

bb.j:                                             ; preds = %.critedge.i.4
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2500
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i, !llvm.loop !27

check_FP.exit:                                    ; preds = %bb.j
  %i.ej = call noalias dereferenceable_or_null(40001) ptr @malloc(i64 noundef 40001) #17 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40000
  store i8 0, ptr %i.ek, align 1, !tbaa !14
  br label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.l, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.l ] ; 2 uses
  %i.el = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv20.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i59
  %indvars.iv.i60 = phi i64 [ 0, %.preheader.i59 ], [ %indvars.iv.next.i61, %bb.k ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i60
  %i.en = load i32, ptr %i.em, align 4, !tbaa !4
  %i.eo = sitofp i32 %i.en to double
  %i.ep = shl nuw nsw i64 %indvars.iv.i60, 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ep
  %i.er = bitcast double %i.eo to i64             ; 5 uses
  %i.es = lshr i64 %i.er, 56
  %.sroa.0.6.extract.shift.i.i = lshr i64 %i.er, 48
  %.sroa.0.5.extract.shift.i.i = lshr i64 %i.er, 40
  %i.et = trunc nuw i64 %i.es to i8
  %.sroa.0.6.extract.trunc.i.i = trunc i64 %.sroa.0.6.extract.shift.i.i to i8
  %.sroa.0.5.extract.trunc.i.i = trunc i64 %.sroa.0.5.extract.shift.i.i to i8
  %i.eu = insertelement <4 x i64> poison, i64 %i.er, i64 0
  %i.ev = shufflevector <4 x i64> %i.eu, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ew = lshr <4 x i64> %i.ev, <i64 8, i64 16, i64 24, i64 32>
  %i.ex = trunc <4 x i64> %i.ew to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.er to i8
  %i.ey = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.ez = shufflevector <4 x i8> %i.ex, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fa = shufflevector <8 x i8> %i.ey, <8 x i8> %i.ez, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.fb = insertelement <8 x i8> %i.fa, i8 %.sroa.0.5.extract.trunc.i.i, i64 5
  %i.fc = insertelement <8 x i8> %i.fb, i8 %.sroa.0.6.extract.trunc.i.i, i64 6
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.et, i64 7
  %i.fe = and <8 x i8> %i.fd, splat (i8 15)
  %i.ff = or disjoint <8 x i8> %i.fe, splat (i8 48)
  %i.fg = shufflevector <8 x i8> %i.ff, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.fg, ptr %i.eq, align 1, !tbaa !14
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %exitcond.not.i62 = icmp eq i64 %indvars.iv.next.i61, 2500
  br i1 %exitcond.not.i62, label %bb.l, label %bb.k, !llvm.loop !28

bb.l:                                             ; preds = %bb.k
  %i.fh = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fi = call i32 @fputs(ptr noundef nonnull %i.ej, ptr noundef %i.fh) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2500
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i59, !llvm.loop !29

print_array.exit:                                 ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ej) #13
  call void @free(ptr noundef %i.e) #13
  call void @free(ptr noundef %i.k) #13
  call void @free(ptr noundef nonnull %i.q) #13
  br label %bb.m

bb.m:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
end_hunk_0
