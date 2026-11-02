Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/clustering_compress?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZL_ContextClustering_identity:bb.a
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.02127.prol = phi ptr [ %i.i, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = load i8, ptr %.02127.prol, align 1, !tbaa !24
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  store i8 1, ptr %i.h, align 1, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %.02127.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !37

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.02127.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = sub i64 %i.d, %i.c
  %i.k = icmp ugt i64 %i.j, -8
  br i1 %i.k, label %.loopexit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02127 = phi ptr [ %i.aq, %.lr.ph ], [ %.02127.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.l = load i8, ptr %.02127, align 1, !tbaa !24
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  store i8 1, ptr %i.n, align 1, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %.02127, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !24
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.q
  store i8 1, ptr %i.r, align 1, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %.02127, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  store i8 1, ptr %i.v, align 1, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %.02127, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  store i8 1, ptr %i.z, align 1, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %.02127, i64 4
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !24
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ac
  store i8 1, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %.02127, i64 5
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !24
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  store i8 1, ptr %i.ah, align 1, !tbaa !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.02127, i64 6
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  store i8 1, ptr %i.al, align 1, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %.02127, i64 7
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 1, ptr %i.ap, align 1, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %.02127, i64 8 ; 2 uses
  %exitcond.not.7 = icmp eq ptr %i.aq, %2
  br i1 %exitcond.not.7, label %.loopexit.preheader, label %.lr.ph, !llvm.loop !0

.loopexit.preheader:                              ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit, %.loopexit.preheader
  %.01929 = phi i64 [ 0, %.loopexit.preheader ], [ %i.bs, %.loopexit ] ; 6 uses
  %.02028 = phi i64 [ 0, %.loopexit.preheader ], [ %i.br, %.loopexit ] ; 2 uses
  %i.ar = trunc i64 %.02028 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.01929
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01929
  %i.au = load i8, ptr %i.at, align 4, !tbaa !24
  %i.av = zext i8 %i.au to i64
  %i.aw = add i64 %.02028, %i.av                  ; 2 uses
  %i.ax = or disjoint i64 %.01929, 1              ; 2 uses
  %i.ay = trunc i64 %i.aw to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !24
  %i.bc = zext i8 %i.bb to i64
  %i.bd = add i64 %i.aw, %i.bc                    ; 2 uses
  %i.be = or disjoint i64 %.01929, 2              ; 2 uses
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !24
  %i.bj = zext i8 %i.bi to i64
  %i.bk = add i64 %i.bd, %i.bj                    ; 2 uses
  %i.bl = or disjoint i64 %.01929, 3              ; 2 uses
  %i.bm = trunc i64 %i.bk to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = zext i8 %i.bp to i64
  %i.br = add i64 %i.bk, %i.bq                    ; 2 uses
  %i.bs = add nuw nsw i64 %.01929, 4              ; 2 uses
  %exitcond30.not.3 = icmp eq i64 %i.bs, 256
  br i1 %exitcond30.not.3, label %.preheader, label %.loopexit, !llvm.loop !1

.preheader:                                       ; preds = %.loopexit, %.preheader
  %.0 = phi i64 [ %i.bx, %.preheader ], [ 255, %.loopexit ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !24
  %.not23 = icmp eq i8 %i.bu, 0
  %i.bv = icmp ne i64 %.0, 0
  %i.bw = and i1 %i.bv, %.not23
  %i.bx = add nsw i64 %.0, -1
  br i1 %i.bw, label %.preheader, label %bb.b, !llvm.loop !2

bb.b:                                             ; preds = %.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.br, ptr %i.by, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %.0, ptr %i.bz, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nounwind uwtable
define void @ZL_ContextClustering_greedy(ptr nofree noundef captures(none) %0, ptr %1, ptr %2, ptr %3, ptr %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 16 uses
  %i.b = icmp ugt i64 %6, 256
  br i1 %i.b, label %bb.b, label %bb.e, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 339, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i64 noundef %6, i64 noundef 256) #16
  %.pr = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.e = icmp sgt i32 %.pr, 0
  br i1 %i.e, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 339, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #16
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  tail call void @abort() #18
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.f = add i32 %5, 1
  %i.g = zext i32 %i.f to i64
  %i.h = mul nuw nsw i64 %i.g, 1040
  %i.i = or disjoint i64 %i.h, 8
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #19 ; 10 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.i, !prof !62

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.thread250

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 342, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #16
  %.pr249 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.m = icmp sgt i32 %.pr249, 0
  br i1 %i.m, label %bb.h, label %.thread250

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 342, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #16
  br label %.thread250

.thread250:                                       ; preds = %bb.f, %bb.g, %bb.h
  tail call void @abort() #18
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 31 uses
  %i.o = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = ptrtoint ptr %4 to i64
  %i.s = ptrtoint ptr %3 to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %.not.i = icmp eq i64 %i.t, %i.q
  br i1 %.not.i, label %.preheader6.i, label %bb.j, !prof !63

.preheader6.i:                                    ; preds = %bb.i
  %i.u = zext i32 %5 to i64                       ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %xtraiter = and i64 %i.v, 7                     ; 3 uses
  %i.w = icmp ult i32 %5, 7
  br i1 %i.w, label %.epil.preheader, label %.preheader6.i.new

.preheader6.i.new:                                ; preds = %.preheader6.i
  %unroll_iter = and i64 %i.v, 8589934584
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.x = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_Histograms_computeO1, i32 noundef 230, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i64 noundef %i.t, i64 noundef %i.q) #16
  %.pr.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.z = icmp sgt i32 %.pr.i, 0
  br i1 %i.z, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_Histograms_computeO1, i32 noundef 230, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  tail call void @abort() #18
  unreachable

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader6.i
  %.0668.i.epil.init = phi i64 [ 0, %.preheader6.i ], [ %i.au, %.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod430)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.0668.i.epil = phi i64 [ %.0668.i.epil.init, %.epil.preheader ], [ %i.ab, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.aa = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.aa, i8 0, i64 1024, i1 false)
  %i.ab = add nuw nsw i64 %.0668.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.m, !llvm.loop !38

.epilog-lcssa:                                    ; preds = %bb.m, %.unr-lcssa
  %i.ac = icmp ult i64 %i.q, 4294967296
  br i1 %i.ac, label %.preheader5.i, label %bb.o, !prof !63

.preheader5.i:                                    ; preds = %.epilog-lcssa
  %.not21.i = icmp eq ptr %2, %1
  br i1 %.not21.i, label %.preheader3.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader5.i
  %xtraiter431 = and i64 %i.q, 1
  %i.ad = add i64 %i.o, -1
  %i.ae = icmp eq i64 %i.ad, %i.p
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter435 = and i64 %i.q, 4294967294
  br label %.lr.ph.i

bb.n:                                             ; preds = %bb.n, %.preheader6.i.new
  %.0668.i = phi i64 [ 0, %.preheader6.i.new ], [ %i.au, %bb.n ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader6.i.new ], [ %niter.next.7, %bb.n ]
  %i.af = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.af, i8 0, i64 1024, i1 false)
  %i.ag = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1040
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ah, i8 0, i64 1024, i1 false)
  %i.ai = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.aj, i8 0, i64 1024, i1 false)
  %i.ak = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 3120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.al, i8 0, i64 1024, i1 false)
  %i.am = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.an, i8 0, i64 1024, i1 false)
  %i.ao = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5200
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ap, i8 0, i64 1024, i1 false)
  %i.aq = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 6240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ar, i8 0, i64 1024, i1 false)
  %i.as = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.0668.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 7280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.at, i8 0, i64 1024, i1 false)
  %i.au = add nuw nsw i64 %.0668.i, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.n, !llvm.loop !39

bb.o:                                             ; preds = %.epilog-lcssa
  %i.av = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.p, label %.thread2.i

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_Histograms_computeO1, i32 noundef 234, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32) #16
  %.pr1.i = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.ax = icmp sgt i32 %.pr1.i, 0
  br i1 %i.ax, label %bb.q, label %.thread2.i

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @ZL_LOG_func_if_nonempty(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZS_Histograms_computeO1, i32 noundef 234, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4) #16
  br label %.thread2.i

.thread2.i:                                       ; preds = %bb.q, %bb.p, %bb.o
  tail call void @abort() #18
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0659.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.bt, %.lr.ph.i ] ; 4 uses
  %niter436 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter436.next.1, %.lr.ph.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 %.0659.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !24
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.0659.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !28
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !28
  %i.bi = or disjoint i64 %.0659.i, 1             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !24
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !28
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !28
  %i.bt = add nuw nsw i64 %.0659.i, 2             ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %.preheader3.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !40

.preheader3.i.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph.i
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %.preheader3.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader3.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0659.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bt, %.preheader3.i.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.0659.i.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.0659.i.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !28
  br label %.preheader3.i.preheader

.preheader3.i.preheader:                          ; preds = %.lr.ph.i.epil.preheader, %.preheader3.i.preheader.loopexit.unr-lcssa, %.preheader5.i
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.i.preheader, %ZS_fillEntropyCost.exit.i
  %.06313.i = phi i64 [ %i.ew, %ZS_fillEntropyCost.exit.i ], [ 0, %.preheader3.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.06313.i ; 14 uses
  br label %bb.r

.preheader.i:                                     ; preds = %ZS_fillEntropyCost.exit.i
  %.not7014.i = icmp eq i32 %5, 0
  br i1 %.not7014.i, label %.critedge2.i, label %.lr.ph16.i

bb.r:                                             ; preds = %bb.w, %.preheader3.i
  %indvars.iv.i = phi i64 [ 255, %.preheader3.i ], [ %indvars.iv.next.i.4, %bb.w ] ; 7 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.s, label %.critedge.split.loop.exit40.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !28
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.t, label %.critedge.split.loop.exit40.i

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i.1
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.u, label %.critedge.split.loop.exit40.i

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i, -3 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i.2
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !28
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %.critedge.split.loop.exit40.i

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.i.3
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !28
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.w, label %.critedge.split.loop.exit40.i

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i.4 = add nsw i64 %indvars.iv.i, -5 ; 2 uses
  %.not72.i.4 = icmp eq i64 %indvars.iv.next.i.4, 0
  br i1 %.not72.i.4, label %.critedge.i, label %bb.r, !llvm.loop !41

.critedge.split.loop.exit40.i:                    ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i, %bb.r ], [ %indvars.iv.next.i, %bb.s ], [ %indvars.iv.next.i.1, %bb.t ], [ %indvars.iv.next.i.2, %bb.u ], [ %indvars.iv.next.i.3, %bb.v ]
  %7 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.w, %.critedge.split.loop.exit40.i
  %.061.lcssa.i = phi i32 [ %7, %.critedge.split.loop.exit40.i ], [ 0, %bb.w ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 1028
  store i32 %.061.lcssa.i, ptr %i.cu, align 4, !tbaa !65
  %i.cv = add i32 %.061.lcssa.i, 1                ; 2 uses
  %wide.trip.count.i = zext i32 %i.cv to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %.061.lcssa.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cy, %vector.body ]
  %vec.phi397 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cz, %vector.body ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !28
  %wide.load398 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !28
  %i.cy = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cz = add <4 x i32> %wide.load398, %vec.phi397 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cz, %i.cy
  %i.db = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit413, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.critedge.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.critedge.i ], [ %n.vec, %middle.block ]
  %.06211.i.ph = phi i32 [ 0, %.critedge.i ], [ %i.db, %middle.block ]
  br label %scalar.ph

.loopexit413:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa395 = phi i32 [ %i.db, %middle.block ], [ %i.ez, %scalar.ph ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ce, i64 1024
  store i32 %.lcssa395, ptr %i.dc, align 8, !tbaa !66
  %i.dd = zext i32 %.lcssa395 to i64              ; 6 uses
  %i.de = zext i32 %.061.lcssa.i to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !28
  %i.dh = icmp eq i32 %.lcssa395, %i.dg
  br i1 %i.dh, label %ZS_fillEntropyCost.exit.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.loopexit413
  %xtraiter438 = and i64 %wide.trip.count.i, 1
  %i.di = icmp eq i32 %.061.lcssa.i, 0
  br i1 %i.di, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter444 = and i64 %wide.trip.count.i, 4294967294
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i ] ; 3 uses
  %.01921.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.eh, %.preheader.i.i.i ]
  %niter445 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter445.next.1, %.preheader.i.i.i ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28 ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = shl nuw nsw i64 %i.dl, 8                ; 2 uses
  %i.dn = udiv i64 %i.dm, %i.dd
  %i.do = icmp ne i32 %i.dk, 0
  %i.dp = icmp samesign ult i64 %i.dm, %i.dd
  %or.cond.i.i.i = select i1 %i.do, i1 %i.dp, i1 false
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i64 1, i64 %i.dn
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !28
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw i64 %i.ds, %i.dl
  %i.du = add i64 %i.dt, %.01921.i.i.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28 ; 2 uses
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dy, 8                ; 2 uses
  %i.ea = udiv i64 %i.dz, %i.dd
  %i.eb = icmp ne i32 %i.dx, 0
  %i.ec = icmp samesign ult i64 %i.dz, %i.dd
  %or.cond.i.i.i.1 = select i1 %i.eb, i1 %i.ec, i1 false
  %spec.store.select.i.i.i.1 = select i1 %or.cond.i.i.i.1, i64 1, i64 %i.ea
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i.1
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !28
  %i.ef = zext i32 %i.ee to i64
  %i.eg = mul nuw i64 %i.ef, %i.dy
  %i.eh = add i64 %i.eg, %i.du                    ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter445.next.1 = add i64 %niter445, 2         ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter444
  br i1 %niter445.ncmp.1, label %.unr-lcssa437, label %.preheader.i.i.i, !llvm.loop !43

.unr-lcssa437:                                    ; preds = %.preheader.i.i.i
  %lcmp.mod440.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod440.not, label %bb.x, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %.unr-lcssa437, %.preheader.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.unr-lcssa437 ]
  %.01921.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.eh, %.unr-lcssa437 ]
  %lcmp.mod443 = trunc i32 %i.cv to i1
  tail call void @llvm.assume(i1 %lcmp.mod443)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.epil.init
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !28 ; 2 uses
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 8                ; 2 uses
  %i.em = udiv i64 %i.el, %i.dd
  %i.en = icmp ne i32 %i.ej, 0
  %i.eo = icmp samesign ult i64 %i.el, %i.dd
  %or.cond.i.i.i.epil = select i1 %i.en, i1 %i.eo, i1 false
  %spec.store.select.i.i.i.epil = select i1 %or.cond.i.i.i.epil, i64 1, i64 %i.em
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i.epil
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !28
  %i.er = zext i32 %i.eq to i64
  %i.es = mul nuw i64 %i.er, %i.ek
  %i.et = add i64 %i.es, %.01921.i.i.i.epil.init
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa437, %.preheader.i.i.i.epil.preheader
  %.lcssa429 = phi i64 [ %i.eh, %.unr-lcssa437 ], [ %i.et, %.preheader.i.i.i.epil.preheader ]
  %i.eu = lshr i64 %.lcssa429, 8
  br label %ZS_fillEntropyCost.exit.i

ZS_fillEntropyCost.exit.i:                        ; preds = %bb.x, %.loopexit413
  %.0.i.i.i = phi i64 [ %i.eu, %bb.x ], [ 0, %.loopexit413 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ce, i64 1032
  store i64 %.0.i.i.i, ptr %i.ev, align 8, !tbaa !67
  %i.ew = add nuw nsw i64 %.06313.i, 1
  %exitcond27.not.i = icmp eq i64 %.06313.i, %i.u
  br i1 %exitcond27.not.i, label %.preheader.i, label %.preheader3.i, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06211.i = phi i32 [ %i.ez, %scalar.ph ], [ %.06211.i.ph, %scalar.ph.preheader ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.a
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !28
  %i.ez = add i32 %i.ey, %.06211.i                ; 2 uses
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond26.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond26.i, label %.loopexit413, label %scalar.ph, !llvm.loop !45

.lr.ph16.i:                                       ; preds = %.preheader.i, %bb.y
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %bb.y ], [ %i.u, %.preheader.i ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %indvars.iv31.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1024
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !66
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.y, label %.critedge2.loopexit.split.loop.exit42.i

bb.y:                                             ; preds = %.lr.ph16.i
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i, -1 ; 2 uses
  %8 = and i64 %indvars.iv.next32.i, 4294967295
  %.not70.i = icmp eq i64 %8, 0
  br i1 %.not70.i, label %.critedge2.i, label %.lr.ph16.i, !llvm.loop !46

.critedge2.loopexit.split.loop.exit42.i:          ; preds = %.lr.ph16.i
  %9 = trunc nuw i64 %indvars.iv31.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.y, %.critedge2.loopexit.split.loop.exit42.i, %.preheader.i
  %i.fe = phi i32 [ 0, %.preheader.i ], [ %9, %.critedge2.loopexit.split.loop.exit42.i ], [ 0, %bb.y ] ; 10 uses
  %i.ff = zext i32 %i.fe to i64                   ; 9 uses
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 4 uses
  %min.iters.check400 = icmp ult i32 %i.fe, 7
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.critedge2.i
  %n.vec402 = and i64 %i.fg, 8589934584           ; 3 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next407, %vector.body403 ] ; 9 uses
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.gr, %vector.body403 ]
  %vec.phi406 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.gs, %vector.body403 ]
  %i.fh = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fi = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fj = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fk = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fl = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fm = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fn = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fo = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 1024
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 2064
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 3104
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 4144
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 5184
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 6224
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 7264
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 8304
  %i.fx = load i32, ptr %i.fp, align 8, !tbaa !66
  %i.fy = load i32, ptr %i.fq, align 8, !tbaa !66
  %i.fz = load i32, ptr %i.fr, align 8, !tbaa !66
  %i.ga = load i32, ptr %i.fs, align 8, !tbaa !66
  %i.gb = insertelement <4 x i32> poison, i32 %i.fx, i64 0
  %i.gc = insertelement <4 x i32> %i.gb, i32 %i.fy, i64 1
  %i.gd = insertelement <4 x i32> %i.gc, i32 %i.fz, i64 2
  %i.ge = insertelement <4 x i32> %i.gd, i32 %i.ga, i64 3
  %i.gf = load i32, ptr %i.ft, align 8, !tbaa !66
  %i.gg = load i32, ptr %i.fu, align 8, !tbaa !66
  %i.gh = load i32, ptr %i.fv, align 8, !tbaa !66
  %i.gi = load i32, ptr %i.fw, align 8, !tbaa !66
  %i.gj = insertelement <4 x i32> poison, i32 %i.gf, i64 0
  %i.gk = insertelement <4 x i32> %i.gj, i32 %i.gg, i64 1
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gh, i64 2
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gi, i64 3
  %i.gn = icmp ne <4 x i32> %i.ge, zeroinitializer
  %i.go = icmp ne <4 x i32> %i.gm, zeroinitializer
  %i.gp = zext <4 x i1> %i.gn to <4 x i32>
  %i.gq = zext <4 x i1> %i.go to <4 x i32>
  %i.gr = add <4 x i32> %vec.phi405, %i.gp        ; 2 uses
  %i.gs = add <4 x i32> %vec.phi406, %i.gq        ; 2 uses
  %index.next407 = add nuw i64 %index404, 8       ; 2 uses
  %i.gt = icmp eq i64 %index.next407, %n.vec402
  br i1 %i.gt, label %middle.block408, label %vector.body403, !llvm.loop !47

middle.block408:                                  ; preds = %vector.body403
  %bin.rdx409 = add <4 x i32> %i.gs, %i.gr
  %i.gu = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx409) ; 2 uses
  %cmp.n410 = icmp eq i64 %i.fg, %n.vec402
  br i1 %cmp.n410, label %ZS_Histograms_computeO1.exit, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.critedge2.i, %middle.block408
  %.020.i.ph = phi i64 [ 0, %.critedge2.i ], [ %n.vec402, %middle.block408 ]
  %.05919.i.ph = phi i32 [ 0, %.critedge2.i ], [ %i.gu, %middle.block408 ]
  br label %scalar.ph399

scalar.ph399:                                     ; preds = %scalar.ph399.preheader, %scalar.ph399
  %.020.i = phi i64 [ %i.hb, %scalar.ph399 ], [ %.020.i.ph, %scalar.ph399.preheader ] ; 3 uses
  %.05919.i = phi i32 [ %i.ha, %scalar.ph399 ], [ %.05919.i.ph, %scalar.ph399.preheader ]
  %i.gv = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.020.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1024
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !66
  %i.gy = icmp ne i32 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = add i32 %.05919.i, %i.gz                ; 2 uses
  %i.hb = add nuw nsw i64 %.020.i, 1
  %exitcond28.not.i = icmp eq i64 %.020.i, %i.ff
  br i1 %exitcond28.not.i, label %ZS_Histograms_computeO1.exit, label %scalar.ph399, !llvm.loop !48

ZS_Histograms_computeO1.exit:                     ; preds = %scalar.ph399, %middle.block408
  %.lcssa394 = phi i32 [ %i.gu, %middle.block408 ], [ %i.ha, %scalar.ph399 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.fe, ptr %i.hc, align 4, !tbaa !28
  store i32 %.lcssa394, ptr %i.j, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hd = shl nuw nsw i64 %i.ff, 2
  %i.he = add nuw nsw i64 %i.hd, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.he, i1 false), !tbaa !28
  %i.hf = add i32 %i.fe, 1                        ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.hf, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter447 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.hg = icmp ult i32 %i.hf, 4
  br i1 %i.hg, label %.epil.preheader446, label %ZS_Histograms_computeO1.exit.new

ZS_Histograms_computeO1.exit.new:                 ; preds = %ZS_Histograms_computeO1.exit
  %unroll_iter452 = and i64 %wide.trip.count, 4294967292
  br label %bb.aa

.preheader270.unr-lcssa:                          ; preds = %bb.aa
  %lcmp.mod449.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod449.not, label %.preheader270, label %.epil.preheader446

.epil.preheader446:                               ; preds = %.preheader270.unr-lcssa, %ZS_Histograms_computeO1.exit
  %indvars.iv.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %indvars.iv.next.3, %.preheader270.unr-lcssa ]
  %.0181286.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %i.ib, %.preheader270.unr-lcssa ]
  %lcmp.mod451 = icmp ne i64 %xtraiter447, 0
  tail call void @llvm.assume(i1 %lcmp.mod451)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader446
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader446 ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %.0181286.epil = phi i64 [ %.0181286.epil.init, %.epil.preheader446 ], [ %i.hk, %bb.z ]
  %epil.iter448 = phi i64 [ 0, %.epil.preheader446 ], [ %epil.iter448.next, %bb.z ]
  %i.hh = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1040
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !67
  %i.hk = add i64 %i.hj, %.0181286.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter448.next = add i64 %epil.iter448, 1   ; 2 uses
  %epil.iter448.cmp.not = icmp eq i64 %epil.iter448.next, %xtraiter447
  br i1 %epil.iter448.cmp.not, label %.preheader270, label %bb.z, !llvm.loop !49

.preheader270:                                    ; preds = %bb.z, %.preheader270.unr-lcssa
  %.lcssa422 = phi i64 [ %i.ib, %.preheader270.unr-lcssa ], [ %i.hk, %bb.z ]
  %i.hl = zext i32 %i.hf to i64                   ; 6 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.aa, %ZS_Histograms_computeO1.exit.new
  %indvars.iv = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %indvars.iv.next.3, %bb.aa ] ; 5 uses
  %.0181286 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %i.ib, %bb.aa ]
  %niter453 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %niter453.next.3, %bb.aa ]
  %i.hm = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1040
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !67
  %i.hp = add i64 %i.ho, %.0181286
  %i.hq = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2080
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !67
  %i.ht = add i64 %i.hs, %i.hp
  %i.hu = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 3120
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !67
  %i.hx = add i64 %i.hw, %i.ht
  %i.hy = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4160
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !67
  %i.ib = add i64 %i.ia, %i.hx                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter453.next.3 = add i64 %niter453, 4         ; 2 uses
  %niter453.ncmp.3 = icmp eq i64 %niter453.next.3, %unroll_iter452
  br i1 %niter453.ncmp.3, label %.preheader270.unr-lcssa, label %bb.aa, !llvm.loop !50

bb.ab:                                            ; preds = %bb.ai
  %i.ic = icmp ugt i64 %.1188, %6
  br i1 %i.ic, label %bb.aj, label %._crit_edge347

bb.ac:                                            ; preds = %.preheader270, %bb.ai
  %.0177291 = phi i32 [ 0, %.preheader270 ], [ %i.ld, %bb.ai ] ; 3 uses
  %.0178290 = phi i32 [ 256, %.preheader270 ], [ %.1179, %bb.ai ] ; 5 uses
  %.1182289 = phi i64 [ %.lcssa422, %.preheader270 ], [ %.2183, %bb.ai ] ; 3 uses
  %.0187288 = phi i64 [ %i.hl, %.preheader270 ], [ %.1188, %bb.ai ] ; 3 uses
  %i.id = zext i32 %.0177291 to i64               ; 2 uses
  %i.ie = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.id ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1024
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !66 ; 2 uses
  %i.ih = icmp ult i32 %i.ig, 300
  br i1 %i.ih, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.ii = icmp eq i32 %.0178290, 256
  br i1 %i.ii, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ij = zext i32 %.0178290 to i64
  %i.ik = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.ij ; 8 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1032 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !67
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 1032
  %i.io = load i64, ptr %i.in, align 8, !tbaa !67
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 1024 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !66
  %i.ir = add i32 %i.iq, %i.ig
  store i32 %i.ir, ptr %i.ip, align 8, !tbaa !66
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 1028 ; 3 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !65
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 1028
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !65
  %..i = tail call i32 @llvm.umax.i32(i32 %i.it, i32 %i.iv)
  store i32 %..i, ptr %i.is, align 4, !tbaa !65
  br label %bb.ah

bb.af:                                            ; preds = %bb.ah
  %i.iw = add i64 %.0187288, -1
  %i.ix = load i32, ptr %i.ip, align 8, !tbaa !66 ; 2 uses
  %i.iy = zext i32 %i.ix to i64                   ; 6 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.kx
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !28
  %i.jb = icmp eq i32 %i.ix, %i.ja
  br i1 %i.jb, label %ZS_Histogram_combine.exit, label %.preheader.preheader.i.i.i
end_hunk_0
begin_hunk_1_@ZL_ContextClustering_greedy:bb.a
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.ua, ptr %i.ub, align 8, !tbaa !27
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.ff, ptr %i.uc, align 8, !tbaa !23
  %i.ud = tail call noalias ptr @fopen(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) ; 6 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %i.ud) ; 0 uses
  %fwrite201 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 26, i64 1, ptr %i.ud) ; 0 uses
  br label %bb.bs

bb.bk:                                            ; preds = %bb.bq, %._crit_edge347.new
  %.0158316 = phi i64 [ 0, %._crit_edge347.new ], [ %i.ux, %bb.bq ] ; 4 uses
  %.0159315 = phi i32 [ 0, %._crit_edge347.new ], [ %.1.1, %bb.bq ] ; 3 uses
  %niter483 = phi i64 [ 0, %._crit_edge347.new ], [ %niter483.next.1, %bb.bq ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0158316
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !28 ; 2 uses
  %i.ug = icmp eq i32 %i.uf, -1
  br i1 %i.ug, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.uh = add i32 %.0159315, 1
  %i.ui = trunc i32 %.0159315 to i8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.uj = sext i32 %i.uf to i64
  %i.uk = getelementptr inbounds i8, ptr %0, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.sink = phi i8 [ %i.ui, %bb.bl ], [ %i.ul, %bb.bm ]
  %.1 = phi i32 [ %i.uh, %bb.bl ], [ %.0159315, %bb.bm ] ; 3 uses
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 %.0158316
  store i8 %.sink, ptr %i.um, align 1, !tbaa !24
  %i.un = or disjoint i64 %.0158316, 1            ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.un
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !28 ; 2 uses
  %i.uq = icmp eq i32 %i.up, -1
  br i1 %i.uq, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ur = sext i32 %i.up to i64
  %i.us = getelementptr inbounds i8, ptr %0, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !24
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.uu = add i32 %.1, 1
  %i.uv = trunc i32 %.1 to i8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink.1 = phi i8 [ %i.uv, %bb.bp ], [ %i.ut, %bb.bo ]
  %.1.1 = phi i32 [ %i.uu, %bb.bp ], [ %.1, %bb.bo ] ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 %i.un
  store i8 %.sink.1, ptr %i.uw, align 1, !tbaa !24
  %i.ux = add nuw nsw i64 %.0158316, 2            ; 2 uses
  %niter483.next.1 = add i64 %niter483, 2         ; 2 uses
  %niter483.ncmp.1 = icmp eq i64 %niter483.next.1, %unroll_iter482
  br i1 %niter483.ncmp.1, label %.unr-lcssa474, label %bb.bk, !llvm.loop !60

bb.br:                                            ; preds = %bb.bv
  %fwrite203 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.ud) ; 0 uses
  %i.uy = tail call i32 @fclose(ptr noundef %i.ud) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.j) #16
  %i.uz = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.va = icmp sgt i32 %i.uz, 255
  br i1 %i.va, label %bb.bw, label %bb.bx

bb.bs:                                            ; preds = %bb.bj, %bb.bv
  %indvars.iv344 = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next345, %bb.bv ] ; 6 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv344
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !28 ; 2 uses
  %i.vd = icmp eq i32 %i.vc, -1
  br i1 %i.vd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ve = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv344
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !24
  %i.vg = zext i8 %i.vf to i32
  %i.vh = trunc nuw i64 %indvars.iv344 to i32
  %i.vi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ud, ptr noundef nonnull @.str.24, i32 noundef %i.vh, i32 noundef %i.vg) #16 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.vj = trunc nuw i64 %indvars.iv344 to i32
  %i.vk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ud, ptr noundef nonnull @.str.25, i32 noundef %i.vj, i32 noundef %i.vc) #16 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %.not202.not = icmp samesign ult i64 %indvars.iv344, %i.ff
  br i1 %.not202.not, label %bb.bs, label %bb.br, !llvm.loop !61

bb.bw:                                            ; preds = %bb.br
  %i.vl = lshr i64 %.4185, 3
  %i.vm = trunc i64 %i.vl to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 487, ptr noundef nonnull @.str.27, i32 noundef %i.vm) #16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @ZL_ContextClustering_prune(ptr nofree noundef writeonly captures(none) %0, ptr %1, ptr %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca [256 x %struct.ContextSize], align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = add i32 %3, 1
  %i.b = zext i32 %3 to i64
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.c, 8589934588               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %interleaved.vec = shufflevector <2 x i32> zeroinitializer, <2 x i32> %vec.ind, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.d, align 16, !tbaa !28
  %interleaved.vec95 = shufflevector <2 x i32> zeroinitializer, <2 x i32> %step.add, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec95, ptr %i.f, align 16, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.h = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = sub i64 %i.i, %i.h
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = trunc nuw i64 %indvars.iv to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !70

.preheader63.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05065.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %.preheader63.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.05065.epil = phi i64 [ %i.v, %.lr.ph.epil ], [ %.05065.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.05065.epil
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !32
  %i.v = add nuw i64 %.05065.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader63, label %.lr.ph.epil, !llvm.loop !71

.preheader63:                                     ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph.epil, %.loopexit
  %.not5666 = icmp eq i32 %3, 0
  br i1 %.not5666, label %.critedge, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader63
  %6 = zext i32 %3 to i64
  br label %.lr.ph68

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05065 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !32
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !32
  %i.ax = add nuw i64 %.05065, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader63.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !72

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.b
  %indvars.iv82 = phi i64 [ %6, %.lr.ph68.preheader ], [ %indvars.iv.next83, %bb.b ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv82
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.b, label %.critedge.loopexit.split.loop.exit98

bb.b:                                             ; preds = %.lr.ph68
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1 ; 2 uses
  %7 = and i64 %indvars.iv.next83, 4294967295
  %.not56 = icmp eq i64 %7, 0
  br i1 %.not56, label %.critedge, label %.lr.ph68, !llvm.loop !73

.critedge.loopexit.split.loop.exit98:             ; preds = %.lr.ph68
  %8 = trunc nuw i64 %indvars.iv82 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit98, %.preheader63
  %.052.lcssa = phi i32 [ 0, %.preheader63 ], [ %8, %.critedge.loopexit.split.loop.exit98 ], [ 0, %bb.b ] ; 4 uses
  %i.bb = zext i32 %.052.lcssa to i64             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !23
  %.not57 = icmp ult i64 %4, %i.bb
  %i.bd = add i32 %.052.lcssa, 1                  ; 3 uses
  br i1 %.not57, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.be = icmp eq i32 %.052.lcssa, 0
  br i1 %i.be, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter102 = and i32 %i.bd, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %i.bf = and i32 %.052.lcssa, 1
  %lcmp.mod99.not.not = icmp eq i32 %i.bf, 0
  br i1 %lcmp.mod99.not.not, label %.preheader.epil.preheader, label %bb.c

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv82.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next83.1, %.unr-lcssa ] ; 2 uses
  %.04672.epil.init = phi i32 [ 256, %.preheader.preheader ], [ %.2.1, %.unr-lcssa ] ; 2 uses
  %.04771.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.249.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv82.epil.init
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !32
  %i.bi = icmp ugt i32 %i.bh, 299                 ; 2 uses
  %i.bj = icmp eq i32 %.04672.epil.init, 256      ; 2 uses
  %i.bk = select i1 %i.bi, i1 true, i1 %i.bj
  %.sink.in.epil = select i1 %i.bk, i32 %.04771.epil.init, i32 %.04672.epil.init
  %narrow.epil = select i1 %i.bi, i1 true, i1 %i.bj
  %.pn.epil = zext i1 %narrow.epil to i32
  %.sink.epil = trunc i32 %.sink.in.epil to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv82.epil.init
  store i8 %.sink.epil, ptr %i.bl, align 1, !tbaa !24
  %.249.epil = add i32 %.04771.epil.init, %.pn.epil
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.249.lcssa = phi i32 [ %.249.1, %.unr-lcssa ], [ %.249.epil, %.preheader.epil.preheader ]
  %i.bm = zext i32 %.249.lcssa to i64
  br label %._crit_edge

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv82.a = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next83.1, %.preheader ] ; 4 uses
  %.04672 = phi i32 [ 256, %.preheader.preheader.new ], [ %.2.1, %.preheader ] ; 3 uses
  %.04771 = phi i32 [ 0, %.preheader.preheader.new ], [ %.249.1, %.preheader ] ; 3 uses
  %niter103 = phi i32 [ 0, %.preheader.preheader.new ], [ %niter103.next.1, %.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv82.a
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !32
  %i.bp = icmp ugt i32 %i.bo, 299                 ; 3 uses
  %i.bq = icmp eq i32 %.04672, 256                ; 2 uses
  %spec.select59 = select i1 %i.bq, i32 %.04771, i32 %.04672 ; 2 uses
  %.sink.in = select i1 %i.bp, i32 %.04771, i32 %spec.select59
  %narrow = select i1 %i.bp, i1 true, i1 %i.bq
  %.pn = zext i1 %narrow to i32
  %.2 = select i1 %i.bp, i32 %.04672, i32 %spec.select59 ; 3 uses
  %.sink = trunc i32 %.sink.in to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv82.a
  store i8 %.sink, ptr %i.br, align 1, !tbaa !24
  %.249 = add i32 %.04771, %.pn                   ; 3 uses
  %indvars.iv.next83.a = or disjoint i64 %indvars.iv82.a, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next83.a
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32
  %i.bu = icmp ugt i32 %i.bt, 299                 ; 3 uses
  %i.bv = icmp eq i32 %.2, 256                    ; 2 uses
  %spec.select59.1 = select i1 %i.bv, i32 %.249, i32 %.2 ; 2 uses
  %.sink.in.1 = select i1 %i.bu, i32 %.249, i32 %spec.select59.1
  %narrow.1 = select i1 %i.bu, i1 true, i1 %i.bv
  %.pn.1 = zext i1 %narrow.1 to i32
  %.2.1 = select i1 %i.bu, i32 %.2, i32 %spec.select59.1 ; 2 uses
  %.sink.1 = trunc i32 %.sink.in.1 to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next83.a
  store i8 %.sink.1, ptr %i.bw, align 1, !tbaa !24
  %.249.1 = add i32 %.249, %.pn.1                 ; 3 uses
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82.a, 2 ; 2 uses
  %niter103.next.1 = add i32 %niter103, 2         ; 2 uses
  %niter103.ncmp.1 = icmp eq i32 %niter103.next.1, %unroll_iter102
  br i1 %niter103.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !74

bb.d:                                             ; preds = %.critedge
  %i.bx = zext i32 %i.bd to i64
  call void @qsort(ptr noundef nonnull %5, i64 noundef %i.bx, i64 noundef 8, ptr noundef nonnull @ContextSize_cmp) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, i8 0, i64 256, i1 false)
  %i.by = add nsw i64 %4, -1                      ; 2 uses
  %.not79 = icmp eq i64 %i.by, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.d, %bb.e
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv87 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !32
  %i.cb = icmp ult i32 %i.ca, 300
  br i1 %i.cb, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph75
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !76
  %i.ce = trunc i64 %indvars.iv87 to i8
  %i.cf = add i8 %i.ce, 1
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !24
  %indvars.iv.next88 = add nuw i64 %indvars.iv87, 1 ; 3 uses
  %i.ci = icmp ugt i64 %i.by, %indvars.iv.next88
  br i1 %i.ci, label %.lr.ph75, label %._crit_edge.loopexit, !llvm.loop !75

._crit_edge.loopexit:                             ; preds = %.lr.ph75, %bb.e
  %.044.lcssa.ph.in = phi i64 [ %indvars.iv.next88, %bb.e ], [ %indvars.iv87, %.lr.ph75 ]
  %i.cj = add i64 %.044.lcssa.ph.in, 1
  %i.ck = and i64 %i.cj, 4294967295
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.loopexit, %bb.c
  %.044.lcssa.sink = phi i64 [ %i.bm, %bb.c ], [ 1, %bb.d ], [ %i.ck, %._crit_edge.loopexit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %.044.lcssa.sink, ptr %i.cl, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ContextSize_cmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  %i.b = load i32, ptr %0, align 4, !tbaa !32
  %i.c = sub nsw i32 %i.a, %i.b
  ret i32 %i.c
}

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_LOG_func_if_nonempty(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4, !5, !6, !7}
end_hunk_1
