Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/memtest?download=true
inline.NumInlined: 31
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 42
begin_hunk_0_@memtest_compare:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %.02233.us, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  %i.m = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26   ; 2 uses
  %.not.us.2 = icmp eq i64 %i.m, %i.n
  br i1 %.not.us.2, label %.lr.ph.split.us.3, label %.split.us.loopexit.split.loop.exit106

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %i.o = getelementptr inbounds nuw i8, ptr %.02233.us, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.034.us, i64 24
  %i.q = load i64, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26   ; 2 uses
  %.not.us.3 = icmp eq i64 %i.q, %i.r
  br i1 %.not.us.3, label %bb.d, label %.split.us.loopexit.split.loop.exit

bb.d:                                             ; preds = %.lr.ph.split.us.3
  %i.s = getelementptr inbounds nuw i8, ptr %.02233.us, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.034.us, i64 32
  %i.u = add nuw nsw i64 %.02332.us, 4            ; 2 uses
  %exitcond53.not.3 = icmp eq i64 %i.u, %i.a
  br i1 %exitcond53.not.3, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !6

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.034 = phi ptr [ %i.af, %bb.h ], [ %i.d, %.lr.ph ] ; 3 uses
  %.02233 = phi ptr [ %i.ae, %bb.h ], [ %0, %.lr.ph ] ; 3 uses
  %.02332 = phi i64 [ %i.as, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.v = load i64, ptr %.02233, align 8, !tbaa !26 ; 2 uses
  %i.w = load i64, ptr %.034, align 8, !tbaa !26  ; 2 uses
  %.not = icmp eq i64 %i.v, %i.w
  br i1 %.not, label %bb.f, label %.split.us

.split.us.loopexit.split.loop.exit:               ; preds = %.lr.ph.split.us.3
  %i.x = getelementptr inbounds nuw i8, ptr %.02233.us, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.034.us, i64 24
  br label %.split.us

.split.us.loopexit.split.loop.exit106:            ; preds = %.lr.ph.split.us.2
  %i.z = getelementptr inbounds nuw i8, ptr %.02233.us, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.034.us, i64 16
  br label %.split.us

.split.us.loopexit.split.loop.exit111:            ; preds = %.lr.ph.split.us.1
  %i.ab = getelementptr inbounds nuw i8, ptr %.02233.us, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.034.us, i64 8
  br label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.split.us.loopexit.split.loop.exit, %.split.us.loopexit.split.loop.exit106, %.split.us.loopexit.split.loop.exit111, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.e, %.lr.ph.split.us ], [ %i.i, %.split.us.loopexit.split.loop.exit111 ], [ %i.m, %.split.us.loopexit.split.loop.exit106 ], [ %i.q, %.split.us.loopexit.split.loop.exit ], [ %i.v, %.lr.ph.split ]
  %.us-phi35 = phi i64 [ %i.f, %.lr.ph.split.us ], [ %i.j, %.split.us.loopexit.split.loop.exit111 ], [ %i.n, %.split.us.loopexit.split.loop.exit106 ], [ %i.r, %.split.us.loopexit.split.loop.exit ], [ %i.w, %.lr.ph.split ]
  %.us-phi36 = phi ptr [ %.02233.us, %.lr.ph.split.us ], [ %i.ab, %.split.us.loopexit.split.loop.exit111 ], [ %i.z, %.split.us.loopexit.split.loop.exit106 ], [ %i.x, %.split.us.loopexit.split.loop.exit ], [ %.02233, %.lr.ph.split ]
  %.us-phi37 = phi ptr [ %.034.us, %.lr.ph.split.us ], [ %i.ac, %.split.us.loopexit.split.loop.exit111 ], [ %i.aa, %.split.us.loopexit.split.loop.exit106 ], [ %i.y, %.split.us.loopexit.split.loop.exit ], [ %.034, %.lr.ph.split ]
  br i1 %.not39, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.split.us
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %.us-phi36, ptr noundef nonnull %.us-phi37, i64 noundef %.us-phi, i64 noundef %.us-phi35) ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

bb.f:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.02233, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %i.ag = and i64 %.02332, 65535
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr @progress_full, align 8, !tbaa !26
  %i.aj = mul i64 %i.ai, %.02332
  %i.ak = udiv i64 %i.aj, %i.a                    ; 3 uses
  %i.al = load i64, ptr @progress_printed, align 8, !tbaa !26
  %.not.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not.i, label %memtest_progress_step.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.07.i = phi i64 [ %i.am, %.lr.ph.i ], [ 0, %bb.g ]
  %putchar.i = tail call i32 @putchar(i32 61)     ; 0 uses
  %i.am = add nuw i64 %.07.i, 1                   ; 2 uses
  %i.an = load i64, ptr @progress_printed, align 8, !tbaa !26
  %i.ao = sub i64 %i.ak, %i.an
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %.lr.ph.i, label %memtest_progress_step.exit, !llvm.loop !0

memtest_progress_step.exit:                       ; preds = %.lr.ph.i, %bb.g
  store i64 %i.ak, ptr @progress_printed, align 8, !tbaa !26
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !29
  %i.ar = tail call i32 @fflush(ptr noundef %i.aq) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %memtest_progress_step.exit
  %i.as = add nuw nsw i64 %.02332, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.a
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !6

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c, %.split.us
  %.024 = phi i32 [ 1, %.split.us ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.h ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memtest_compare_times(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  %i.b = lshr i64 %1, 4                           ; 3 uses
  %.not38.i = icmp eq i64 %i.b, 0
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  br i1 %.not, label %.lr.ph.split.us, label %memtest_compare.exit.thread15

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = and i64 %1, 4095
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.split.us.split, label %.split21.us, !prof !32

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  br i1 %.not38.i, label %._crit_edge, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us.split, %memtest_compare.exit.us
  %.019.us = phi i32 [ %i.w, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  %.01018.us = phi i32 [ %i.x, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ]
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %bb.b, %.split.us
  %.034.us.i.us = phi ptr [ %i.c, %.split.us ], [ %i.u, %bb.b ] ; 5 uses
  %.02233.us.i.us = phi ptr [ %0, %.split.us ], [ %i.t, %bb.b ] ; 5 uses
  %.02332.us.i.us = phi i64 [ 0, %.split.us ], [ %i.v, %bb.b ]
  %i.f = load i64, ptr %.02233.us.i.us, align 8, !tbaa !26
  %i.g = load i64, ptr %.034.us.i.us, align 8, !tbaa !26
  %.not.us.i.us = icmp eq i64 %i.f, %i.g
  br i1 %.not.us.i.us, label %.lr.ph.split.us.i.us.1, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.1:                           ; preds = %.lr.ph.split.us.i.us
  %i.h = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 8
  %i.j = load i64, ptr %i.h, align 8, !tbaa !26
  %i.k = load i64, ptr %i.i, align 8, !tbaa !26
  %.not.us.i.us.1 = icmp eq i64 %i.j, %i.k
  br i1 %.not.us.i.us.1, label %.lr.ph.split.us.i.us.2, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.2:                           ; preds = %.lr.ph.split.us.i.us.1
  %i.l = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 16
  %i.n = load i64, ptr %i.l, align 8, !tbaa !26
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %.not.us.i.us.2 = icmp eq i64 %i.n, %i.o
  br i1 %.not.us.i.us.2, label %.lr.ph.split.us.i.us.3, label %memtest_compare.exit.us

.lr.ph.split.us.i.us.3:                           ; preds = %.lr.ph.split.us.i.us.2
  %i.p = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 24
  %i.r = load i64, ptr %i.p, align 8, !tbaa !26
  %i.s = load i64, ptr %i.q, align 8, !tbaa !26
  %.not.us.i.us.3 = icmp eq i64 %i.r, %i.s
  br i1 %.not.us.i.us.3, label %bb.b, label %memtest_compare.exit.us

bb.b:                                             ; preds = %.lr.ph.split.us.i.us.3
  %i.t = getelementptr inbounds nuw i8, ptr %.02233.us.i.us, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.034.us.i.us, i64 32
  %i.v = add nuw nsw i64 %.02332.us.i.us, 4       ; 2 uses
  %exitcond53.not.i.us.3 = icmp eq i64 %i.v, %i.b
  br i1 %exitcond53.not.i.us.3, label %memtest_compare.exit.us, label %.lr.ph.split.us.i.us, !llvm.loop !6

memtest_compare.exit.us:                          ; preds = %bb.b, %.lr.ph.split.us.i.us.3, %.lr.ph.split.us.i.us.2, %.lr.ph.split.us.i.us.1, %.lr.ph.split.us.i.us
  %phi.call.us = phi i32 [ 1, %.lr.ph.split.us.i.us ], [ 0, %bb.b ], [ 1, %.lr.ph.split.us.i.us.1 ], [ 1, %.lr.ph.split.us.i.us.3 ], [ 1, %.lr.ph.split.us.i.us.2 ]
  %i.w = add nuw nsw i32 %phi.call.us, %.019.us   ; 2 uses
  %i.x = add nuw nsw i32 %.01018.us, 1            ; 2 uses
  %exitcond26.not = icmp eq i32 %i.x, %3
  br i1 %exitcond26.not, label %._crit_edge, label %.split.us, !llvm.loop !39

memtest_compare.exit.thread15:                    ; preds = %.lr.ph, %memtest_compare.exit.thread15
  %.019 = phi i32 [ %i.z, %memtest_compare.exit.thread15 ], [ 0, %.lr.ph ]
  %.01018 = phi i32 [ %i.ab, %memtest_compare.exit.thread15 ], [ 0, %.lr.ph ]
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.11, i32 noundef %2)
  %i.y = tail call i32 @memtest_compare(ptr noundef %0, i64 noundef %1, i32 noundef %4)
  %i.z = add nuw nsw i32 %i.y, %.019              ; 2 uses
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.ab = add nuw nsw i32 %.01018, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %3
  br i1 %exitcond.not, label %._crit_edge, label %memtest_compare.exit.thread15, !llvm.loop !39

.split21.us:                                      ; preds = %.lr.ph.split.us
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 178) #16
  tail call void @abort() #17
  unreachable

._crit_edge:                                      ; preds = %memtest_compare.exit.thread15, %memtest_compare.exit.us, %.lr.ph.split.us.split, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %memtest_compare.exit.us ], [ 0, %.lr.ph.split.us.split ], [ %i.z, %memtest_compare.exit.thread15 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memtest_test(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %.not145 = icmp eq i32 %2, 0
  br i1 %.not145, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not68 = icmp eq i32 %3, 0
  %i.a = lshr i64 %1, 3                           ; 7 uses
  %.not49.i = icmp eq i64 %i.a, 0                 ; 2 uses
  %i.b = lshr i64 %1, 4                           ; 14 uses
  %i.c = lshr i64 %1, 13                          ; 8 uses
  %.not.i = icmp eq i64 %i.c, 0                   ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 12 uses
  %.not38.i.i = icmp eq i64 %1, 0
  %i.e = lshr exact i64 %1, 1                     ; 2 uses
  br i1 %.not68, label %.lr.ph.split.us, label %memtest_addressing.exit.thread130

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = and i64 %1, 4095
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.split.us.us.preheader, label %.split.us, !prof !32

.split.us.us.preheader:                           ; preds = %.lr.ph.split.us
  %min.iters.check186 = icmp ult i64 %1, 32
  %i.h = icmp eq i64 %i.c, 1
  %unroll_iter = and i64 %i.c, 2251799813685246
  %i.i = and i64 %1, 8192
  %lcmp.mod.not = icmp eq i64 %i.i, 0
  %lcmp.mod209 = trunc i64 %i.c to i1
  %xtraiter229 = and i64 %i.c, 7                  ; 3 uses
  %i.j = icmp ult i64 %1, 65536
  %unroll_iter232 = and i64 %i.c, 2251799813685240
  %lcmp.mod230.not = icmp eq i64 %xtraiter229, 0
  %lcmp.mod231 = icmp ne i64 %xtraiter229, 0
  %xtraiter253 = and i64 %i.c, 7                  ; 3 uses
  %i.k = icmp ult i64 %1, 65536
  %unroll_iter257 = and i64 %i.c, 2251799813685240
  %lcmp.mod255.not = icmp eq i64 %xtraiter253, 0
  %lcmp.mod256 = icmp ne i64 %xtraiter253, 0
  br label %.split.us.us

.split.us.us:                                     ; preds = %.split.us.us.preheader, %memtest_compare_times.exit128.us.us
  %.0147.us.us = phi i32 [ %i.ly, %memtest_compare_times.exit128.us.us ], [ 0, %.split.us.us.preheader ] ; 2 uses
  %.043146.us.us = phi i32 [ %i.l, %memtest_compare_times.exit128.us.us ], [ 0, %.split.us.us.preheader ]
  %i.l = add nuw nsw i32 %.043146.us.us, 1        ; 2 uses
  br i1 %.not49.i, label %.split46.us.us, label %.lr.ph.split.us.i.us.us.preheader

.lr.ph.split.us.i.us.us.preheader:                ; preds = %.split.us.us
  br i1 %min.iters.check186, label %.lr.ph.split.us.i.us.us, label %vector.body189

vector.body189:                                   ; preds = %.lr.ph.split.us.i.us.us.preheader, %vector.body189
  %index190 = phi i64 [ %index.next194, %vector.body189 ], [ 0, %.lr.ph.split.us.i.us.us.preheader ]
  %pointer.phi191 = phi ptr [ %ptr.ind195, %vector.body189 ], [ %0, %.lr.ph.split.us.i.us.us.preheader ] ; 2 uses
  %vector.gep192 = getelementptr i8, ptr %pointer.phi191, <2 x i64> <i64 0, i64 8> ; 3 uses
  %i.m = extractelement <2 x ptr> %vector.gep192, i64 0 ; 2 uses
  %step.add193201 = getelementptr i8, <2 x ptr> %vector.gep192, i64 16
  %i.n = ptrtoint <2 x ptr> %vector.gep192 to <2 x i64>
  %i.o = ptrtoint <2 x ptr> %step.add193201 to <2 x i64>
  %i.p = getelementptr i8, ptr %i.m, i64 16
  store <2 x i64> %i.n, ptr %i.m, align 8, !tbaa !26
  store <2 x i64> %i.o, ptr %i.p, align 8, !tbaa !26
  %index.next194 = add nuw i64 %index190, 4       ; 2 uses
  %ptr.ind195 = getelementptr i8, ptr %pointer.phi191, i64 32
  %i.q = icmp eq i64 %index.next194, %i.a
  br i1 %i.q, label %.lr.ph47.split.us.i.us.us.preheader, label %vector.body189, !llvm.loop !40

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.split.us.i.us.us.preheader, %.lr.ph.split.us.i.us.us
  %.044.us.i.us.us = phi ptr [ %i.s, %.lr.ph.split.us.i.us.us ], [ %0, %.lr.ph.split.us.i.us.us.preheader ] ; 3 uses
  %.03043.us.i.us.us = phi i64 [ %4, %.lr.ph.split.us.i.us.us ], [ 0, %.lr.ph.split.us.i.us.us.preheader ]
  %i.r = ptrtoint ptr %.044.us.i.us.us to i64
  store i64 %i.r, ptr %.044.us.i.us.us, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %.044.us.i.us.us, i64 8
  %4 = add nuw nsw i64 %.03043.us.i.us.us, 1      ; 2 uses
  %exitcond61.not.i.us.us = icmp eq i64 %4, %i.a
  br i1 %exitcond61.not.i.us.us, label %.lr.ph47.split.us.i.us.us.preheader, label %.lr.ph.split.us.i.us.us, !llvm.loop !41

.lr.ph47.split.us.i.us.us.preheader:              ; preds = %vector.body189, %.lr.ph.split.us.i.us.us
  br label %.lr.ph47.split.us.i.us.us

.lr.ph47.split.us.i.us.us:                        ; preds = %bb.b, %.lr.ph47.split.us.i.us.us.preheader
  %.146.us.i.us.us = phi ptr [ %0, %.lr.ph47.split.us.i.us.us.preheader ], [ %i.ae, %bb.b ] ; 6 uses
  %.13145.us.i.us.us = phi i64 [ 0, %.lr.ph47.split.us.i.us.us.preheader ], [ %i.af, %bb.b ]
  %i.t = load i64, ptr %.146.us.i.us.us, align 8, !tbaa !26
  %i.u = ptrtoint ptr %.146.us.i.us.us to i64
  %.not.us.i.us.us = icmp eq i64 %i.t, %i.u
  br i1 %.not.us.i.us.us, label %.lr.ph47.split.us.i.us.us.1, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.1:                      ; preds = %.lr.ph47.split.us.i.us.us
  %i.v = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26
  %i.x = ptrtoint ptr %i.v to i64
  %.not.us.i.us.us.1 = icmp eq i64 %i.w, %i.x
  br i1 %.not.us.i.us.us.1, label %.lr.ph47.split.us.i.us.us.2, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.2:                      ; preds = %.lr.ph47.split.us.i.us.us.1
  %i.y = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  %i.aa = ptrtoint ptr %i.y to i64
  %.not.us.i.us.us.2 = icmp eq i64 %i.z, %i.aa
  br i1 %.not.us.i.us.us.2, label %.lr.ph47.split.us.i.us.us.3, label %memtest_addressing.exit.us.us

.lr.ph47.split.us.i.us.us.3:                      ; preds = %.lr.ph47.split.us.i.us.us.2
  %i.ab = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  %i.ad = ptrtoint ptr %i.ab to i64
  %.not.us.i.us.us.3 = icmp eq i64 %i.ac, %i.ad
  br i1 %.not.us.i.us.us.3, label %bb.b, label %memtest_addressing.exit.us.us

bb.b:                                             ; preds = %.lr.ph47.split.us.i.us.us.3
  %i.ae = getelementptr inbounds nuw i8, ptr %.146.us.i.us.us, i64 32
  %i.af = add nuw nsw i64 %.13145.us.i.us.us, 4   ; 2 uses
  %exitcond63.not.i.us.us.3 = icmp eq i64 %i.af, %i.a
  br i1 %exitcond63.not.i.us.us.3, label %memtest_addressing.exit.us.us, label %.lr.ph47.split.us.i.us.us, !llvm.loop !1

memtest_addressing.exit.us.us:                    ; preds = %bb.b, %.lr.ph47.split.us.i.us.us.3, %.lr.ph47.split.us.i.us.us.2, %.lr.ph47.split.us.i.us.us.1, %.lr.ph47.split.us.i.us.us
  %phi.call.us.us = phi i32 [ 1, %.lr.ph47.split.us.i.us.us ], [ 0, %bb.b ], [ 1, %.lr.ph47.split.us.i.us.us.1 ], [ 1, %.lr.ph47.split.us.i.us.us.3 ], [ 1, %.lr.ph47.split.us.i.us.us.2 ]
  %i.ag = add nsw i32 %phi.call.us.us, %.0147.us.us
  br label %.split46.us.us

.split46.us.us:                                   ; preds = %memtest_addressing.exit.us.us, %.split.us.us
  %i.ah = phi i32 [ %i.ag, %memtest_addressing.exit.us.us ], [ %.0147.us.us, %.split.us.us ] ; 2 uses
  br i1 %.not.i, label %.split49.us.us, label %.lr.ph.i69.us.us

.lr.ph.i69.us.us:                                 ; preds = %.split46.us.us, %._crit_edge.split.us.i.us.us
  %.044.i.us.us = phi i64 [ %.lcssa, %._crit_edge.split.us.i.us.us ], [ -3372857614747716250, %.split46.us.us ] ; 2 uses
  %.03743.i.us.us = phi i64 [ %i.bj, %._crit_edge.split.us.i.us.us ], [ 0, %.split46.us.us ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03743.i.us.us ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.b ; 2 uses
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i69.us.us.new

.lr.ph.i69.us.us.new:                             ; preds = %.lr.ph.i69.us.us, %.lr.ph.i69.us.us.new
  %.142.us.i.us.us = phi i64 [ %i.ay, %.lr.ph.i69.us.us.new ], [ %.044.i.us.us, %.lr.ph.i69.us.us ] ; 2 uses
  %.03441.us.i.us.us = phi ptr [ %i.bb, %.lr.ph.i69.us.us.new ], [ %i.aj, %.lr.ph.i69.us.us ] ; 3 uses
  %.03540.us.i.us.us = phi ptr [ %i.ba, %.lr.ph.i69.us.us.new ], [ %i.ai, %.lr.ph.i69.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i69.us.us.new ], [ 0, %.lr.ph.i69.us.us ]
  %i.ak = lshr i64 %.142.us.i.us.us, 12
  %i.al = xor i64 %i.ak, %.142.us.i.us.us         ; 2 uses
  %i.am = shl i64 %i.al, 25
  %i.an = xor i64 %i.am, %i.al                    ; 2 uses
  %i.ao = lshr i64 %i.an, 27
  %i.ap = xor i64 %i.ao, %i.an                    ; 3 uses
  %i.aq = mul i64 %i.ap, 2685821657736338717      ; 2 uses
  store i64 %i.aq, ptr %.03441.us.i.us.us, align 8, !tbaa !26
  store i64 %i.aq, ptr %.03540.us.i.us.us, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.03540.us.i.us.us, i64 4096
  %i.as = getelementptr inbounds nuw i8, ptr %.03441.us.i.us.us, i64 4096
  %i.at = lshr i64 %i.ap, 12
  %i.au = xor i64 %i.at, %i.ap                    ; 2 uses
  %i.av = shl i64 %i.au, 25
  %i.aw = xor i64 %i.av, %i.au                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 27
  %i.ay = xor i64 %i.ax, %i.aw                    ; 4 uses
  %i.az = mul i64 %i.ay, 2685821657736338717      ; 2 uses
  store i64 %i.az, ptr %i.as, align 8, !tbaa !26
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.03540.us.i.us.us, i64 8192 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03441.us.i.us.us, i64 8192 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.i.us.us.unr-lcssa, label %.lr.ph.i69.us.us.new, !llvm.loop !2

._crit_edge.split.us.i.us.us.unr-lcssa:           ; preds = %.lr.ph.i69.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.i.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.i.us.us.unr-lcssa, %.lr.ph.i69.us.us
  %.142.us.i.us.us.epil.init = phi i64 [ %.044.i.us.us, %.lr.ph.i69.us.us ], [ %i.ay, %._crit_edge.split.us.i.us.us.unr-lcssa ] ; 2 uses
  %.03441.us.i.us.us.epil.init = phi ptr [ %i.aj, %.lr.ph.i69.us.us ], [ %i.bb, %._crit_edge.split.us.i.us.us.unr-lcssa ]
  %.03540.us.i.us.us.epil.init = phi ptr [ %i.ai, %.lr.ph.i69.us.us ], [ %i.ba, %._crit_edge.split.us.i.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.bc = lshr i64 %.142.us.i.us.us.epil.init, 12
  %i.bd = xor i64 %i.bc, %.142.us.i.us.us.epil.init ; 2 uses
  %i.be = shl i64 %i.bd, 25
  %i.bf = xor i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 27
  %i.bh = xor i64 %i.bg, %i.bf                    ; 2 uses
  %i.bi = mul i64 %i.bh, 2685821657736338717      ; 2 uses
  store i64 %i.bi, ptr %.03441.us.i.us.us.epil.init, align 8, !tbaa !26
  store i64 %i.bi, ptr %.03540.us.i.us.us.epil.init, align 8, !tbaa !26
  br label %._crit_edge.split.us.i.us.us

._crit_edge.split.us.i.us.us:                     ; preds = %._crit_edge.split.us.i.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ay, %._crit_edge.split.us.i.us.us.unr-lcssa ], [ %i.bh, %.epil.preheader ]
  %i.bj = add nuw nsw i64 %.03743.i.us.us, 1      ; 2 uses
  %exitcond59.not.i.us.us = icmp eq i64 %i.bj, 512
  br i1 %exitcond59.not.i.us.us, label %.split49.us.us, label %.lr.ph.i69.us.us, !llvm.loop !3

.split49.us.us:                                   ; preds = %._crit_edge.split.us.i.us.us, %.split46.us.us
  br i1 %.not38.i.i, label %memtest_compare_times.exit128.us.us, label %.lr.ph.split.us.i.us.i.us.us

.lr.ph.split.us.i.us.i.us.us:                     ; preds = %.split49.us.us, %bb.c
  %.034.us.i.us.i.us.us = phi ptr [ %i.bz, %bb.c ], [ %i.d, %.split49.us.us ] ; 5 uses
  %.02233.us.i.us.i.us.us = phi ptr [ %i.by, %bb.c ], [ %0, %.split49.us.us ] ; 5 uses
  %.02332.us.i.us.i.us.us = phi i64 [ %i.ca, %bb.c ], [ 0, %.split49.us.us ]
  %i.bk = load i64, ptr %.02233.us.i.us.i.us.us, align 8, !tbaa !26
  %i.bl = load i64, ptr %.034.us.i.us.i.us.us, align 8, !tbaa !26
  %.not.us.i.us.i.us.us = icmp eq i64 %i.bk, %i.bl
  br i1 %.not.us.i.us.i.us.us, label %.lr.ph.split.us.i.us.i.us.us.1214, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.1214:                ; preds = %.lr.ph.split.us.i.us.i.us.us
  %i.bm = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 8
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.1213 = icmp eq i64 %i.bo, %i.bp
  br i1 %.not.us.i.us.i.us.us.1213, label %.lr.ph.split.us.i.us.i.us.us.2220, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.2220:                ; preds = %.lr.ph.split.us.i.us.i.us.us.1214
  %i.bq = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 16
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !26
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.2219 = icmp eq i64 %i.bs, %i.bt
  br i1 %.not.us.i.us.i.us.us.2219, label %.lr.ph.split.us.i.us.i.us.us.3226, label %memtest_compare.exit.us.i.us.us

.lr.ph.split.us.i.us.i.us.us.3226:                ; preds = %.lr.ph.split.us.i.us.i.us.us.2220
  %i.bu = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 24
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !26
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.3225 = icmp eq i64 %i.bw, %i.bx
  br i1 %.not.us.i.us.i.us.us.3225, label %bb.c, label %memtest_compare.exit.us.i.us.us

bb.c:                                             ; preds = %.lr.ph.split.us.i.us.i.us.us.3226
  %i.by = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us, i64 32
  %i.ca = add nuw nsw i64 %.02332.us.i.us.i.us.us, 4 ; 2 uses
  %exitcond53.not.i.us.i.us.us.3227 = icmp eq i64 %i.ca, %i.b
  br i1 %exitcond53.not.i.us.i.us.us.3227, label %memtest_compare.exit.us.i.us.us, label %.lr.ph.split.us.i.us.i.us.us, !llvm.loop !6

memtest_compare.exit.us.i.us.us:                  ; preds = %bb.c, %.lr.ph.split.us.i.us.i.us.us.3226, %.lr.ph.split.us.i.us.i.us.us.2220, %.lr.ph.split.us.i.us.i.us.us.1214, %.lr.ph.split.us.i.us.i.us.us
  %phi.call.us.i.us.us = phi i32 [ 1, %.lr.ph.split.us.i.us.i.us.us ], [ 0, %bb.c ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1214 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.3226 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.2220 ]
  br label %.lr.ph.split.us.i.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1:                   ; preds = %bb.d, %memtest_compare.exit.us.i.us.us
  %.034.us.i.us.i.us.us.1 = phi ptr [ %i.d, %memtest_compare.exit.us.i.us.us ], [ %i.cq, %bb.d ] ; 5 uses
  %.02233.us.i.us.i.us.us.1 = phi ptr [ %0, %memtest_compare.exit.us.i.us.us ], [ %i.cp, %bb.d ] ; 5 uses
  %.02332.us.i.us.i.us.us.1 = phi i64 [ 0, %memtest_compare.exit.us.i.us.us ], [ %i.cr, %bb.d ]
  %i.cb = load i64, ptr %.02233.us.i.us.i.us.us.1, align 8, !tbaa !26
  %i.cc = load i64, ptr %.034.us.i.us.i.us.us.1, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.1 = icmp eq i64 %i.cb, %i.cc
  br i1 %.not.us.i.us.i.us.us.1, label %.lr.ph.split.us.i.us.i.us.us.1.1, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.1:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1
  %i.cd = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 8
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !26
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.1.1 = icmp eq i64 %i.cf, %i.cg
  br i1 %.not.us.i.us.i.us.us.1.1, label %.lr.ph.split.us.i.us.i.us.us.1.2, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.2:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1.1
  %i.ch = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 16
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.1.2 = icmp eq i64 %i.cj, %i.ck
  br i1 %.not.us.i.us.i.us.us.1.2, label %.lr.ph.split.us.i.us.i.us.us.1.3, label %memtest_compare.exit.us.i.us.us.1

.lr.ph.split.us.i.us.i.us.us.1.3:                 ; preds = %.lr.ph.split.us.i.us.i.us.us.1.2
  %i.cl = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 24
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !26
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !26
  %.not.us.i.us.i.us.us.1.3 = icmp eq i64 %i.cn, %i.co
  br i1 %.not.us.i.us.i.us.us.1.3, label %bb.d, label %memtest_compare.exit.us.i.us.us.1

bb.d:                                             ; preds = %.lr.ph.split.us.i.us.i.us.us.1.3
  %i.cp = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i.us.us.1, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i.us.us.1, i64 32
  %i.cr = add nuw nsw i64 %.02332.us.i.us.i.us.us.1, 4 ; 2 uses
  %exitcond53.not.i.us.i.us.us.1.3 = icmp eq i64 %i.cr, %i.b
  br i1 %exitcond53.not.i.us.i.us.us.1.3, label %memtest_compare.exit.us.i.us.us.1, label %.lr.ph.split.us.i.us.i.us.us.1, !llvm.loop !6

memtest_compare.exit.us.i.us.us.1:                ; preds = %bb.d, %.lr.ph.split.us.i.us.i.us.us.1.3, %.lr.ph.split.us.i.us.i.us.us.1.2, %.lr.ph.split.us.i.us.i.us.us.1.1, %.lr.ph.split.us.i.us.i.us.us.1
  %phi.call.us.i.us.us.1 = phi i32 [ 1, %.lr.ph.split.us.i.us.i.us.us.1 ], [ 0, %bb.d ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.1 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.3 ], [ 1, %.lr.ph.split.us.i.us.i.us.us.1.2 ]
  %i.cs = add nuw nsw i32 %phi.call.us.i.us.us.1, %phi.call.us.i.us.us
  br label %.lr.ph.split.us.i.us.i.us.us.2

.lr.ph.split.us.i.us.i.us.us.2:                   ; preds = %bb.e, %memtest_compare.exit.us.i.us.us.1
  %.034.us.i.us.i.us.us.2 = phi ptr [ %i.d, %memtest_compare.exit.us.i.us.us.1 ], [ %i.di, %bb.e ] ; 5 uses
  %.02233.us.i.us.i.us.us.2 = phi ptr [ %0, %memtest_compare.exit.us.i.us.us.1 ], [ %i.dh, %bb.e ] ; 5 uses
  %.02332.us.i.us.i.us.us.2 = phi i64 [ 0, %memtest_compare.exit.us.i.us.us.1 ], [ %i.dj, %bb.e ]
end_hunk_0
begin_hunk_1_@memtest_test:bb.a

.lr.ph.split.us.i.us.i118.us.us.3:                ; preds = %bb.p, %memtest_compare.exit.us.i123.us.us.2
  %.034.us.i.us.i119.us.us.3 = phi ptr [ %i.d, %memtest_compare.exit.us.i123.us.us.2 ], [ %i.lu, %bb.p ] ; 5 uses
  %.02233.us.i.us.i120.us.us.3 = phi ptr [ %0, %memtest_compare.exit.us.i123.us.us.2 ], [ %i.lt, %bb.p ] ; 5 uses
  %.02332.us.i.us.i121.us.us.3 = phi i64 [ 0, %memtest_compare.exit.us.i123.us.us.2 ], [ %i.lv, %bb.p ]
  %i.lf = load i64, ptr %.02233.us.i.us.i120.us.us.3, align 8, !tbaa !26
  %i.lg = load i64, ptr %.034.us.i.us.i119.us.us.3, align 8, !tbaa !26
  %.not.us.i.us.i122.us.us.3 = icmp eq i64 %i.lf, %i.lg
  br i1 %.not.us.i.us.i122.us.us.3, label %.lr.ph.split.us.i.us.i118.us.us.3.1, label %memtest_compare.exit.us.i123.us.us.3

.lr.ph.split.us.i.us.i118.us.us.3.1:              ; preds = %.lr.ph.split.us.i.us.i118.us.us.3
  %i.lh = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i120.us.us.3, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i119.us.us.3, i64 8
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !26
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !26
  %.not.us.i.us.i122.us.us.3.1 = icmp eq i64 %i.lj, %i.lk
  br i1 %.not.us.i.us.i122.us.us.3.1, label %.lr.ph.split.us.i.us.i118.us.us.3.2, label %memtest_compare.exit.us.i123.us.us.3

.lr.ph.split.us.i.us.i118.us.us.3.2:              ; preds = %.lr.ph.split.us.i.us.i118.us.us.3.1
  %i.ll = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i120.us.us.3, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i119.us.us.3, i64 16
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !26
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !26
  %.not.us.i.us.i122.us.us.3.2 = icmp eq i64 %i.ln, %i.lo
  br i1 %.not.us.i.us.i122.us.us.3.2, label %.lr.ph.split.us.i.us.i118.us.us.3.3, label %memtest_compare.exit.us.i123.us.us.3

.lr.ph.split.us.i.us.i118.us.us.3.3:              ; preds = %.lr.ph.split.us.i.us.i118.us.us.3.2
  %i.lp = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i120.us.us.3, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i119.us.us.3, i64 24
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !26
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !26
  %.not.us.i.us.i122.us.us.3.3 = icmp eq i64 %i.lr, %i.ls
  br i1 %.not.us.i.us.i122.us.us.3.3, label %bb.p, label %memtest_compare.exit.us.i123.us.us.3

bb.p:                                             ; preds = %.lr.ph.split.us.i.us.i118.us.us.3.3
  %i.lt = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i120.us.us.3, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i119.us.us.3, i64 32
  %i.lv = add nuw nsw i64 %.02332.us.i.us.i121.us.us.3, 4 ; 2 uses
  %exitcond53.not.i.us.i127.us.us.3.3 = icmp eq i64 %i.lv, %i.b
  br i1 %exitcond53.not.i.us.i127.us.us.3.3, label %memtest_compare.exit.us.i123.us.us.3, label %.lr.ph.split.us.i.us.i118.us.us.3, !llvm.loop !6

memtest_compare.exit.us.i123.us.us.3:             ; preds = %bb.p, %.lr.ph.split.us.i.us.i118.us.us.3.3, %.lr.ph.split.us.i.us.i118.us.us.3.2, %.lr.ph.split.us.i.us.i118.us.us.3.1, %.lr.ph.split.us.i.us.i118.us.us.3
  %phi.call.us.i124.us.us.3 = phi i32 [ 1, %.lr.ph.split.us.i.us.i118.us.us.3 ], [ 0, %bb.p ], [ 1, %.lr.ph.split.us.i.us.i118.us.us.3.1 ], [ 1, %.lr.ph.split.us.i.us.i118.us.us.3.3 ], [ 1, %.lr.ph.split.us.i.us.i118.us.us.3.2 ]
  %i.lw = add nuw nsw i32 %phi.call.us.i124.us.us.3, %i.le
  br label %memtest_compare_times.exit128.us.us

memtest_compare_times.exit128.us.us:              ; preds = %.split49.us.us, %memtest_compare.exit.us.i123.us.us.3
  %i.lx = phi i32 [ %i.ah, %.split49.us.us ], [ %i.ia, %memtest_compare.exit.us.i123.us.us.3 ]
  %phi.call66.us.us = phi i32 [ 0, %.split49.us.us ], [ %i.lw, %memtest_compare.exit.us.i123.us.us.3 ]
  %i.ly = add nsw i32 %phi.call66.us.us, %i.lx    ; 2 uses
  %.not.us.us = icmp eq i32 %i.l, %2
  br i1 %.not.us.us, label %._crit_edge, label %.split.us.us, !llvm.loop !44

.split.us:                                        ; preds = %.lr.ph.split.us
  br i1 %.not49.i, label %.split149.us, label %.lr.ph.split.us.i.us.preheader

.lr.ph.split.us.i.us.preheader:                   ; preds = %.split.us
  %min.iters.check = icmp ult i64 %1, 32
  br i1 %min.iters.check, label %.lr.ph.split.us.i.us.preheader205, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.us.preheader
  %n.vec = and i64 %i.a, 2305843009213693948      ; 4 uses
  %i.lz = shl nuw i64 %n.vec, 3
  %i.ma = getelementptr i8, ptr %0, i64 %i.lz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %pointer.phi = phi ptr [ %0, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 3 uses
  %i.mb = extractelement <2 x ptr> %vector.gep, i64 0 ; 2 uses
  %step.add200 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.mc = ptrtoint <2 x ptr> %vector.gep to <2 x i64>
  %i.md = ptrtoint <2 x ptr> %step.add200 to <2 x i64>
  %i.me = getelementptr i8, ptr %i.mb, i64 16
  store <2 x i64> %i.mc, ptr %i.mb, align 8, !tbaa !26
  store <2 x i64> %i.md, ptr %i.me, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.mf = icmp eq i64 %index.next, %n.vec
  br i1 %i.mf, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %.split149.us, label %.lr.ph.split.us.i.us.preheader205

.lr.ph.split.us.i.us.preheader205:                ; preds = %.lr.ph.split.us.i.us.preheader, %middle.block
  %.044.us.i.us.ph = phi ptr [ %0, %.lr.ph.split.us.i.us.preheader ], [ %i.ma, %middle.block ]
  %.03043.us.i.us.ph = phi i64 [ 0, %.lr.ph.split.us.i.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us.i.us

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader205, %.lr.ph.split.us.i.us
  %.044.us.i.us = phi ptr [ %i.mh, %.lr.ph.split.us.i.us ], [ %.044.us.i.us.ph, %.lr.ph.split.us.i.us.preheader205 ] ; 3 uses
  %.03043.us.i.us = phi i64 [ %i.mi, %.lr.ph.split.us.i.us ], [ %.03043.us.i.us.ph, %.lr.ph.split.us.i.us.preheader205 ]
  %i.mg = ptrtoint ptr %.044.us.i.us to i64
  store i64 %i.mg, ptr %.044.us.i.us, align 8, !tbaa !26
  %i.mh = getelementptr inbounds nuw i8, ptr %.044.us.i.us, i64 8
  %i.mi = add nuw nsw i64 %.03043.us.i.us, 1      ; 2 uses
  %exitcond61.not.i.us = icmp eq i64 %i.mi, %i.a
  br i1 %exitcond61.not.i.us, label %.split149.us, label %.lr.ph.split.us.i.us, !llvm.loop !46

memtest_addressing.exit.thread130:                ; preds = %.lr.ph, %memtest_addressing.exit.thread130
  %.0147 = phi i32 [ %i.mv, %memtest_addressing.exit.thread130 ], [ 0, %.lr.ph ]
  %.043146 = phi i32 [ %i.mj, %memtest_addressing.exit.thread130 ], [ 0, %.lr.ph ]
  %i.mj = add nuw nsw i32 %.043146, 1             ; 9 uses
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.12, i32 noundef %i.mj)
  %i.mk = tail call i32 @memtest_addressing(ptr noundef %0, i64 noundef %1, i32 noundef %3)
  %i.ml = add nsw i32 %i.mk, %.0147
  %i.mm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.13, i32 noundef %i.mj)
  tail call void @memtest_fill_random(ptr noundef %0, i64 noundef %1, i32 noundef %3)
  %i.mn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.mo = tail call i32 @memtest_compare_times(ptr noundef %0, i64 noundef %1, i32 noundef %i.mj, i32 noundef 4, i32 noundef %3)
  %i.mp = add nsw i32 %i.ml, %i.mo
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.14, i32 noundef %i.mj)
  tail call void @memtest_fill_value(ptr noundef %0, i64 noundef %1, i64 noundef 0, i64 noundef -1, i8 noundef signext 83, i32 noundef %3)
  %i.mq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.mr = tail call i32 @memtest_compare_times(ptr noundef %0, i64 noundef %1, i32 noundef %i.mj, i32 noundef 4, i32 noundef %3)
  %i.ms = add nsw i32 %i.mp, %i.mr
  tail call void @memtest_progress_start(ptr noundef nonnull @.str.15, i32 noundef %i.mj)
  tail call void @memtest_fill_value(ptr noundef %0, i64 noundef %1, i64 noundef -6148914691236517206, i64 noundef 6148914691236517205, i8 noundef signext 67, i32 noundef %3)
  %i.mt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str) ; 0 uses
  %i.mu = tail call i32 @memtest_compare_times(ptr noundef %0, i64 noundef %1, i32 noundef %i.mj, i32 noundef 4, i32 noundef %3)
  %i.mv = add nsw i32 %i.mu, %i.ms                ; 2 uses
  %.not = icmp eq i32 %i.mj, %2
  br i1 %.not, label %._crit_edge, label %memtest_addressing.exit.thread130, !llvm.loop !44

.split149.us:                                     ; preds = %.lr.ph.split.us.i.us, %middle.block, %.split.us
  tail call void @_serverAssert(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 126) #16
  tail call void @abort() #17
  unreachable

._crit_edge:                                      ; preds = %memtest_addressing.exit.thread130, %memtest_compare_times.exit128.us.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.ly, %memtest_compare_times.exit128.us.us ], [ %i.mv, %memtest_addressing.exit.thread130 ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @memtest_preserving_test(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [131072 x i64], align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = and i64 %1, 4095
  %.not = icmp ne i64 %i.b, 0
  %i.c = icmp ult i64 %1, 8192
  %or.cond = or i1 %i.c, %.not
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not72254 = icmp eq i32 %2, 0
  br i1 %.not72254, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.c
  %.066.us = phi ptr [ %i.j, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %.064.us = phi i64 [ %i.h, %bb.c ], [ %1, %.preheader ] ; 2 uses
  switch i64 %.064.us, label %bb.c [
    i64 0, label %.loopexit
    i64 4096, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader.split.us
  %i.d = getelementptr inbounds i8, ptr %.066.us, i64 -4096
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.split.us
  %.167.us = phi ptr [ %i.d, %bb.b ], [ %.066.us, %.preheader.split.us ] ; 2 uses
  %.165.us = phi i64 [ 8192, %bb.b ], [ %.064.us, %.preheader.split.us ] ; 2 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %.165.us, i64 1048576) ; 3 uses
  %i.f = and i64 %i.e, 4096
  %.not71.us = icmp eq i64 %i.f, 0
  %i.g = add nsw i64 %i.e, -4096
  %spec.select.us = select i1 %.not71.us, i64 %i.e, i64 %i.g ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %.167.us, i64 %spec.select.us, i1 false)
  %i.h = sub i64 %.165.us, %spec.select.us
  %i.i = lshr i64 %spec.select.us, 3
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.167.us, i64 %i.i
  br label %.preheader.split.us, !llvm.loop !47

.preheader.split:                                 ; preds = %.preheader, %._crit_edge.split.us
  %.066 = phi ptr [ %i.ml, %._crit_edge.split.us ], [ %0, %.preheader ] ; 2 uses
  %.064 = phi i64 [ %i.mk, %._crit_edge.split.us ], [ %1, %.preheader ] ; 2 uses
  %.063 = phi i32 [ %i.mj, %._crit_edge.split.us ], [ 0, %.preheader ] ; 2 uses
  switch i64 %.064, label %.lr.ph [
    i64 0, label %.loopexit
    i64 4096, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.split
  %i.k = getelementptr inbounds i8, ptr %.066, i64 -4096
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split, %bb.d
  %.167 = phi ptr [ %i.k, %bb.d ], [ %.066, %.preheader.split ] ; 25 uses
  %.165 = phi i64 [ 8192, %bb.d ], [ %.064, %.preheader.split ] ; 2 uses
  %i.l = tail call i64 @llvm.umin.i64(i64 %.165, i64 1048576) ; 3 uses
  %i.m = and i64 %i.l, 4096
  %.not71 = icmp eq i64 %i.m, 0
  %i.n = add nsw i64 %i.l, -4096
  %spec.select = select i1 %.not71, i64 %i.l, i64 %i.n ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 8 %.167, i64 %spec.select, i1 false)
  %i.o = lshr i64 %spec.select, 3                 ; 7 uses
  %.not49.i = icmp eq i64 %i.o, 0                 ; 2 uses
  %i.p = lshr i64 %spec.select, 4                 ; 17 uses
  %i.q = lshr i64 %spec.select, 13                ; 8 uses
  %i.r = and i64 %spec.select, 4095
  %i.s = icmp eq i64 %i.r, 0
  %.not.i = icmp eq i64 %i.q, 0                   ; 3 uses
  %.not38.i.i = icmp eq i64 %i.p, 0               ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.167, i64 %i.p ; 12 uses
  br i1 %i.s, label %.lr.ph.split.us.preheader, label %.lr.ph.split, !prof !32

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %spec.select, 32
  %i.u = icmp eq i64 %i.q, 1
  %unroll_iter = and i64 %i.q, 2251799813685246
  %i.v = and i64 %spec.select, 8192
  %lcmp.mod.not = icmp eq i64 %i.v, 0
  %lcmp.mod324 = trunc i64 %i.q to i1
  %xtraiter344 = and i64 %i.q, 7                  ; 3 uses
  %i.w = icmp ult i64 %spec.select, 65536
  %unroll_iter347 = and i64 %i.q, 2251799813685240
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  %lcmp.mod346 = icmp ne i64 %xtraiter344, 0
  %xtraiter368 = and i64 %i.q, 7                  ; 3 uses
  %i.x = icmp ult i64 %spec.select, 65536
  %unroll_iter372 = and i64 %i.q, 2251799813685240
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  %lcmp.mod371 = icmp ne i64 %xtraiter368, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %memtest_compare_times.exit230.us
  %.062256.us = phi i32 [ %i.y, %memtest_compare_times.exit230.us ], [ 0, %.lr.ph.split.us.preheader ]
  %.1255.us = phi i32 [ %i.mj, %memtest_compare_times.exit230.us ], [ %.063, %.lr.ph.split.us.preheader ]
  %i.y = add nuw nsw i32 %.062256.us, 1           ; 2 uses
  br i1 %.not49.i, label %memtest_addressing.exit.us, label %.lr.ph.split.us.i.us.preheader

.lr.ph.split.us.i.us.preheader:                   ; preds = %.lr.ph.split.us
  br i1 %min.iters.check, label %.lr.ph.split.us.i.us, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.i.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.i.us.preheader ]
  %pointer.phi = phi ptr [ %ptr.ind, %vector.body ], [ %.167, %.lr.ph.split.us.i.us.preheader ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 8> ; 3 uses
  %i.z = extractelement <2 x ptr> %vector.gep, i64 0 ; 2 uses
  %step.add315 = getelementptr i8, <2 x ptr> %vector.gep, i64 16
  %i.aa = ptrtoint <2 x ptr> %vector.gep to <2 x i64>
  %i.ab = ptrtoint <2 x ptr> %step.add315 to <2 x i64>
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !26
  store <2 x i64> %i.ab, ptr %i.ac, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 32
  %i.ad = icmp eq i64 %index.next, %i.o
  br i1 %i.ad, label %.lr.ph47.split.us.i.us.preheader, label %vector.body, !llvm.loop !48

.lr.ph.split.us.i.us:                             ; preds = %.lr.ph.split.us.i.us.preheader, %.lr.ph.split.us.i.us
  %.044.us.i.us = phi ptr [ %i.af, %.lr.ph.split.us.i.us ], [ %.167, %.lr.ph.split.us.i.us.preheader ] ; 3 uses
  %.03043.us.i.us = phi i64 [ %3, %.lr.ph.split.us.i.us ], [ 0, %.lr.ph.split.us.i.us.preheader ]
  %i.ae = ptrtoint ptr %.044.us.i.us to i64
  store i64 %i.ae, ptr %.044.us.i.us, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.044.us.i.us, i64 8
  %3 = add nuw nsw i64 %.03043.us.i.us, 1         ; 2 uses
  %exitcond61.not.i.us = icmp eq i64 %3, %i.o
  br i1 %exitcond61.not.i.us, label %.lr.ph47.split.us.i.us.preheader, label %.lr.ph.split.us.i.us, !llvm.loop !49

.lr.ph47.split.us.i.us.preheader:                 ; preds = %vector.body, %.lr.ph.split.us.i.us
  br label %.lr.ph47.split.us.i.us

.lr.ph47.split.us.i.us:                           ; preds = %bb.e, %.lr.ph47.split.us.i.us.preheader
  %.146.us.i.us = phi ptr [ %.167, %.lr.ph47.split.us.i.us.preheader ], [ %i.ar, %bb.e ] ; 6 uses
  %.13145.us.i.us = phi i64 [ 0, %.lr.ph47.split.us.i.us.preheader ], [ %i.as, %bb.e ]
  %i.ag = load i64, ptr %.146.us.i.us, align 8, !tbaa !26
  %i.ah = ptrtoint ptr %.146.us.i.us to i64
  %.not.us.i.us = icmp eq i64 %i.ag, %i.ah
  br i1 %.not.us.i.us, label %.lr.ph47.split.us.i.us.1, label %memtest_addressing.exit.us

.lr.ph47.split.us.i.us.1:                         ; preds = %.lr.ph47.split.us.i.us
  %i.ai = getelementptr inbounds nuw i8, ptr %.146.us.i.us, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !26
  %i.ak = ptrtoint ptr %i.ai to i64
  %.not.us.i.us.1 = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.us.i.us.1, label %.lr.ph47.split.us.i.us.2, label %memtest_addressing.exit.us

.lr.ph47.split.us.i.us.2:                         ; preds = %.lr.ph47.split.us.i.us.1
  %i.al = getelementptr inbounds nuw i8, ptr %.146.us.i.us, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !26
  %i.an = ptrtoint ptr %i.al to i64
  %.not.us.i.us.2 = icmp eq i64 %i.am, %i.an
  br i1 %.not.us.i.us.2, label %.lr.ph47.split.us.i.us.3, label %memtest_addressing.exit.us

.lr.ph47.split.us.i.us.3:                         ; preds = %.lr.ph47.split.us.i.us.2
  %i.ao = getelementptr inbounds nuw i8, ptr %.146.us.i.us, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = ptrtoint ptr %i.ao to i64
  %.not.us.i.us.3 = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.us.i.us.3, label %bb.e, label %memtest_addressing.exit.us

bb.e:                                             ; preds = %.lr.ph47.split.us.i.us.3
  %i.ar = getelementptr inbounds nuw i8, ptr %.146.us.i.us, i64 32
  %i.as = add nuw nsw i64 %.13145.us.i.us, 4      ; 2 uses
  %exitcond63.not.i.us.3 = icmp eq i64 %i.as, %i.o
  br i1 %exitcond63.not.i.us.3, label %memtest_addressing.exit.us, label %.lr.ph47.split.us.i.us, !llvm.loop !1

memtest_addressing.exit.us:                       ; preds = %.lr.ph47.split.us.i.us, %.lr.ph47.split.us.i.us.1, %.lr.ph47.split.us.i.us.2, %.lr.ph47.split.us.i.us.3, %bb.e, %.lr.ph.split.us
  %.032.i.us = phi i32 [ 0, %.lr.ph.split.us ], [ 1, %.lr.ph47.split.us.i.us ], [ 0, %bb.e ], [ 1, %.lr.ph47.split.us.i.us.1 ], [ 1, %.lr.ph47.split.us.i.us.3 ], [ 1, %.lr.ph47.split.us.i.us.2 ]
  %i.at = add nsw i32 %.032.i.us, %.1255.us
  br i1 %.not.i, label %memtest_fill_random.exit.us, label %.lr.ph.i73.us

.lr.ph.i73.us:                                    ; preds = %memtest_addressing.exit.us, %._crit_edge.split.us.i.us
  %.044.i.us = phi i64 [ %.lcssa, %._crit_edge.split.us.i.us ], [ -3372857614747716250, %memtest_addressing.exit.us ] ; 2 uses
  %.03743.i.us = phi i64 [ %i.bv, %._crit_edge.split.us.i.us ], [ 0, %memtest_addressing.exit.us ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.167, i64 %.03743.i.us ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.p ; 2 uses
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i73.us.new

.lr.ph.i73.us.new:                                ; preds = %.lr.ph.i73.us, %.lr.ph.i73.us.new
  %.142.us.i.us = phi i64 [ %i.bk, %.lr.ph.i73.us.new ], [ %.044.i.us, %.lr.ph.i73.us ] ; 2 uses
  %.03441.us.i.us = phi ptr [ %i.bn, %.lr.ph.i73.us.new ], [ %i.av, %.lr.ph.i73.us ] ; 3 uses
  %.03540.us.i.us = phi ptr [ %i.bm, %.lr.ph.i73.us.new ], [ %i.au, %.lr.ph.i73.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i73.us.new ], [ 0, %.lr.ph.i73.us ]
  %i.aw = lshr i64 %.142.us.i.us, 12
  %i.ax = xor i64 %i.aw, %.142.us.i.us            ; 2 uses
  %i.ay = shl i64 %i.ax, 25
  %i.az = xor i64 %i.ay, %i.ax                    ; 2 uses
  %i.ba = lshr i64 %i.az, 27
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = mul i64 %i.bb, 2685821657736338717      ; 2 uses
  store i64 %i.bc, ptr %.03441.us.i.us, align 8, !tbaa !26
  store i64 %i.bc, ptr %.03540.us.i.us, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %.03540.us.i.us, i64 4096
  %i.be = getelementptr inbounds nuw i8, ptr %.03441.us.i.us, i64 4096
  %i.bf = lshr i64 %i.bb, 12
  %i.bg = xor i64 %i.bf, %i.bb                    ; 2 uses
  %i.bh = shl i64 %i.bg, 25
  %i.bi = xor i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 27
  %i.bk = xor i64 %i.bj, %i.bi                    ; 4 uses
  %i.bl = mul i64 %i.bk, 2685821657736338717      ; 2 uses
  store i64 %i.bl, ptr %i.be, align 8, !tbaa !26
  store i64 %i.bl, ptr %i.bd, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %.03540.us.i.us, i64 8192 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.03441.us.i.us, i64 8192 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.split.us.i.us.unr-lcssa, label %.lr.ph.i73.us.new, !llvm.loop !2

._crit_edge.split.us.i.us.unr-lcssa:              ; preds = %.lr.ph.i73.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.split.us.i.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.split.us.i.us.unr-lcssa, %.lr.ph.i73.us
  %.142.us.i.us.epil.init = phi i64 [ %.044.i.us, %.lr.ph.i73.us ], [ %i.bk, %._crit_edge.split.us.i.us.unr-lcssa ] ; 2 uses
  %.03441.us.i.us.epil.init = phi ptr [ %i.av, %.lr.ph.i73.us ], [ %i.bn, %._crit_edge.split.us.i.us.unr-lcssa ]
  %.03540.us.i.us.epil.init = phi ptr [ %i.au, %.lr.ph.i73.us ], [ %i.bm, %._crit_edge.split.us.i.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %i.bo = lshr i64 %.142.us.i.us.epil.init, 12
  %i.bp = xor i64 %i.bo, %.142.us.i.us.epil.init  ; 2 uses
  %i.bq = shl i64 %i.bp, 25
  %i.br = xor i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = lshr i64 %i.br, 27
  %i.bt = xor i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = mul i64 %i.bt, 2685821657736338717      ; 2 uses
  store i64 %i.bu, ptr %.03441.us.i.us.epil.init, align 8, !tbaa !26
  store i64 %i.bu, ptr %.03540.us.i.us.epil.init, align 8, !tbaa !26
  br label %._crit_edge.split.us.i.us

._crit_edge.split.us.i.us:                        ; preds = %._crit_edge.split.us.i.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bk, %._crit_edge.split.us.i.us.unr-lcssa ], [ %i.bt, %.epil.preheader ]
  %i.bv = add nuw nsw i64 %.03743.i.us, 1         ; 2 uses
  %exitcond59.not.i.us = icmp eq i64 %i.bv, 512
  br i1 %exitcond59.not.i.us, label %memtest_fill_random.exit.us, label %.lr.ph.i73.us, !llvm.loop !3

memtest_fill_random.exit.us:                      ; preds = %._crit_edge.split.us.i.us, %memtest_addressing.exit.us
  br i1 %.not38.i.i, label %.preheader.i106.us, label %.lr.ph.split.us.i.us.i96.us

.lr.ph.split.us.i.us.i96.us:                      ; preds = %memtest_fill_random.exit.us, %bb.f
  %.034.us.i.us.i97.us = phi ptr [ %i.cl, %bb.f ], [ %i.t, %memtest_fill_random.exit.us ] ; 5 uses
  %.02233.us.i.us.i98.us = phi ptr [ %i.ck, %bb.f ], [ %.167, %memtest_fill_random.exit.us ] ; 5 uses
  %.02332.us.i.us.i99.us = phi i64 [ %i.cm, %bb.f ], [ 0, %memtest_fill_random.exit.us ]
  %i.bw = load i64, ptr %.02233.us.i.us.i98.us, align 8, !tbaa !26
  %i.bx = load i64, ptr %.034.us.i.us.i97.us, align 8, !tbaa !26
  %.not.us.i.us.i100.us = icmp eq i64 %i.bw, %i.bx
  br i1 %.not.us.i.us.i100.us, label %.lr.ph.split.us.i.us.i96.us.1329, label %memtest_compare.exit.us.i101.us

.lr.ph.split.us.i.us.i96.us.1329:                 ; preds = %.lr.ph.split.us.i.us.i96.us
  %i.by = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us, i64 8
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !26
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !26
  %.not.us.i.us.i100.us.1328 = icmp eq i64 %i.ca, %i.cb
  br i1 %.not.us.i.us.i100.us.1328, label %.lr.ph.split.us.i.us.i96.us.2335, label %memtest_compare.exit.us.i101.us

.lr.ph.split.us.i.us.i96.us.2335:                 ; preds = %.lr.ph.split.us.i.us.i96.us.1329
  %i.cc = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us, i64 16
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !26
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !26
  %.not.us.i.us.i100.us.2334 = icmp eq i64 %i.ce, %i.cf
  br i1 %.not.us.i.us.i100.us.2334, label %.lr.ph.split.us.i.us.i96.us.3341, label %memtest_compare.exit.us.i101.us

.lr.ph.split.us.i.us.i96.us.3341:                 ; preds = %.lr.ph.split.us.i.us.i96.us.2335
  %i.cg = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us, i64 24
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !26
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !26
  %.not.us.i.us.i100.us.3340 = icmp eq i64 %i.ci, %i.cj
  br i1 %.not.us.i.us.i100.us.3340, label %bb.f, label %memtest_compare.exit.us.i101.us

bb.f:                                             ; preds = %.lr.ph.split.us.i.us.i96.us.3341
  %i.ck = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us, i64 32
  %i.cm = add nuw nsw i64 %.02332.us.i.us.i99.us, 4 ; 2 uses
  %exitcond53.not.i.us.i104.us.3342 = icmp eq i64 %i.cm, %i.p
  br i1 %exitcond53.not.i.us.i104.us.3342, label %memtest_compare.exit.us.i101.us, label %.lr.ph.split.us.i.us.i96.us, !llvm.loop !6

memtest_compare.exit.us.i101.us:                  ; preds = %bb.f, %.lr.ph.split.us.i.us.i96.us.3341, %.lr.ph.split.us.i.us.i96.us.2335, %.lr.ph.split.us.i.us.i96.us.1329, %.lr.ph.split.us.i.us.i96.us
  %phi.call.us.i102.us = phi i32 [ 1, %.lr.ph.split.us.i.us.i96.us ], [ 0, %bb.f ], [ 1, %.lr.ph.split.us.i.us.i96.us.1329 ], [ 1, %.lr.ph.split.us.i.us.i96.us.3341 ], [ 1, %.lr.ph.split.us.i.us.i96.us.2335 ]
  br label %.lr.ph.split.us.i.us.i96.us.1

.lr.ph.split.us.i.us.i96.us.1:                    ; preds = %bb.g, %memtest_compare.exit.us.i101.us
  %.034.us.i.us.i97.us.1 = phi ptr [ %i.t, %memtest_compare.exit.us.i101.us ], [ %i.dc, %bb.g ] ; 5 uses
  %.02233.us.i.us.i98.us.1 = phi ptr [ %.167, %memtest_compare.exit.us.i101.us ], [ %i.db, %bb.g ] ; 5 uses
  %.02332.us.i.us.i99.us.1 = phi i64 [ 0, %memtest_compare.exit.us.i101.us ], [ %i.dd, %bb.g ]
  %i.cn = load i64, ptr %.02233.us.i.us.i98.us.1, align 8, !tbaa !26
  %i.co = load i64, ptr %.034.us.i.us.i97.us.1, align 8, !tbaa !26
  %.not.us.i.us.i100.us.1 = icmp eq i64 %i.cn, %i.co
  br i1 %.not.us.i.us.i100.us.1, label %.lr.ph.split.us.i.us.i96.us.1.1, label %memtest_compare.exit.us.i101.us.1

.lr.ph.split.us.i.us.i96.us.1.1:                  ; preds = %.lr.ph.split.us.i.us.i96.us.1
  %i.cp = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us.1, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us.1, i64 8
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !26
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !26
  %.not.us.i.us.i100.us.1.1 = icmp eq i64 %i.cr, %i.cs
  br i1 %.not.us.i.us.i100.us.1.1, label %.lr.ph.split.us.i.us.i96.us.1.2, label %memtest_compare.exit.us.i101.us.1

.lr.ph.split.us.i.us.i96.us.1.2:                  ; preds = %.lr.ph.split.us.i.us.i96.us.1.1
  %i.ct = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us.1, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us.1, i64 16
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !26
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !26
  %.not.us.i.us.i100.us.1.2 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not.us.i.us.i100.us.1.2, label %.lr.ph.split.us.i.us.i96.us.1.3, label %memtest_compare.exit.us.i101.us.1

.lr.ph.split.us.i.us.i96.us.1.3:                  ; preds = %.lr.ph.split.us.i.us.i96.us.1.2
  %i.cx = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us.1, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us.1, i64 24
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !26
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !26
  %.not.us.i.us.i100.us.1.3 = icmp eq i64 %i.cz, %i.da
  br i1 %.not.us.i.us.i100.us.1.3, label %bb.g, label %memtest_compare.exit.us.i101.us.1

bb.g:                                             ; preds = %.lr.ph.split.us.i.us.i96.us.1.3
  %i.db = getelementptr inbounds nuw i8, ptr %.02233.us.i.us.i98.us.1, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %.034.us.i.us.i97.us.1, i64 32
  %i.dd = add nuw nsw i64 %.02332.us.i.us.i99.us.1, 4 ; 2 uses
  %exitcond53.not.i.us.i104.us.1.3 = icmp eq i64 %i.dd, %i.p
  br i1 %exitcond53.not.i.us.i104.us.1.3, label %memtest_compare.exit.us.i101.us.1, label %.lr.ph.split.us.i.us.i96.us.1, !llvm.loop !6

memtest_compare.exit.us.i101.us.1:                ; preds = %bb.g, %.lr.ph.split.us.i.us.i96.us.1.3, %.lr.ph.split.us.i.us.i96.us.1.2, %.lr.ph.split.us.i.us.i96.us.1.1, %.lr.ph.split.us.i.us.i96.us.1
  %phi.call.us.i102.us.1 = phi i32 [ 1, %.lr.ph.split.us.i.us.i96.us.1 ], [ 0, %bb.g ], [ 1, %.lr.ph.split.us.i.us.i96.us.1.1 ], [ 1, %.lr.ph.split.us.i.us.i96.us.1.3 ], [ 1, %.lr.ph.split.us.i.us.i96.us.1.2 ]
  %i.de = add nuw nsw i32 %phi.call.us.i102.us.1, %phi.call.us.i102.us
  br label %.lr.ph.split.us.i.us.i96.us.2

.lr.ph.split.us.i.us.i96.us.2:                    ; preds = %bb.h, %memtest_compare.exit.us.i101.us.1
  %.034.us.i.us.i97.us.2 = phi ptr [ %i.t, %memtest_compare.exit.us.i101.us.1 ], [ %i.du, %bb.h ] ; 5 uses
  %.02233.us.i.us.i98.us.2 = phi ptr [ %.167, %memtest_compare.exit.us.i101.us.1 ], [ %i.dt, %bb.h ] ; 5 uses
  %.02332.us.i.us.i99.us.2 = phi i64 [ 0, %memtest_compare.exit.us.i101.us.1 ], [ %i.dv, %bb.h ]
  %i.df = load i64, ptr %.02233.us.i.us.i98.us.2, align 8, !tbaa !26
  %i.dg = load i64, ptr %.034.us.i.us.i97.us.2, align 8, !tbaa !26
  %.not.us.i.us.i100.us.2 = icmp eq i64 %i.df, %i.dg
  br i1 %.not.us.i.us.i100.us.2, label %.lr.ph.split.us.i.us.i96.us.2.1, label %memtest_compare.exit.us.i101.us.2
end_hunk_1
