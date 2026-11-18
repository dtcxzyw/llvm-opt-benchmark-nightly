Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSatG2?download=true
inline.NumInlined: 1272
inline.NumDeleted: 185
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 46
begin_hunk_0_@computeNetworkValues:bb.a
  %.6 = phi i32 [ -1, %bb.b ], [ 0, %Vec_PtrFree.exit ], [ -1, %.thread289 ], [ 1, %Vec_PtrFree.exit278 ]
  ret i32 %.6
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @saveInputVectors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !50  ; 2 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph25, label %.critedge

.lr.ph25:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val19.val = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr i8, ptr %0, i64 840
  %i.g = getelementptr i8, ptr %0, i64 856
  %wide.trip.count31 = zext nneg i32 %.val to i64
  %scevgep = getelementptr i8, ptr %2, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph25, %._crit_edge
  %indvars.iv28 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next29, %._crit_edge ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val19.val, i64 %indvars.iv28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52   ; 3 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val20 = load i32, ptr %i.f, align 8, !tbaa !137 ; 4 uses
  %.val21 = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.j = getelementptr i8, ptr %.val21, i64 8
  %.val21.val = load ptr, ptr %i.j, align 8, !tbaa !43 ; 2 uses
  %i.k = mul i32 %.val20, %i.i
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.val21.val, i64 %i.l ; 9 uses
  %i.n = icmp sgt i32 %.val20, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.o = sext i32 %i.i to i64                     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %i.o ; 7 uses
  %wide.trip.count = zext nneg i32 %.val20 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.val20, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = add nsw i64 %i.l, %wide.trip.count
  %i.r = shl nsw i64 %i.q, 3
  %i.s = getelementptr i8, ptr %.val21.val, i64 %i.r
  %i.t = getelementptr i8, ptr %scevgep, i64 %i.o
  %bound0 = icmp ult ptr %i.m, %i.t
  %bound1 = icmp ult ptr %i.p, %i.s
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.u = load i8, ptr %i.p, align 1, !tbaa !172, !alias.scope !431
  %broadcast.splatinsert = insertelement <2 x i8> poison, i8 %i.u, i64 0
  %broadcast.splat = shufflevector <2 x i8> %broadcast.splatinsert, <2 x i8> poison, <2 x i32> zeroinitializer
  %i.v = sext <2 x i8> %broadcast.splat to <2 x i64> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.v, ptr %i.w, align 8, !tbaa !46, !alias.scope !432, !noalias !431
  store <2 x i64> %i.v, ptr %i.x, align 8, !tbaa !46, !alias.scope !432, !noalias !431
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !428

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = load i8, ptr %i.p, align 1, !tbaa !172
  %i.aa = sext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.prol
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !46
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !429

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = load i8, ptr %i.p, align 1, !tbaa !172
  %i.af = sext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = load i8, ptr %i.p, align 1, !tbaa !172
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !46
  %i.al = load i8, ptr %i.p, align 1, !tbaa !172
  %i.am = sext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !46
  %i.ap = load i8, ptr %i.p, align 1, !tbaa !172
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !430

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c
  %i.at = load i64, ptr %i.m, align 8, !tbaa !46
  %i.au = shl i64 %i.at, 1
  store i64 %i.au, ptr %i.m, align 8, !tbaa !46
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.critedge, label %bb.b, !llvm.loop !28

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @exportSimValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.34) ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 840        ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 856
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge
  %.01822 = phi i32 [ 0, %.lr.ph24 ], [ %i.v, %._crit_edge ] ; 3 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !108
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val19 = load i32, ptr %i.f, align 8, !tbaa !137
  %.val20 = load ptr, ptr %i.g, align 8, !tbaa !138
  %i.h = getelementptr i8, ptr %.val20, i64 8
  %.val20.val = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.i = mul nsw i32 %.val19, %.01822
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %.val20.val, i64 %i.j
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.56, i32 noundef %.01822) #35 ; 0 uses
  %i.m = load i32, ptr %i.f, align 8, !tbaa !137
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load i64, ptr %i.o, align 8, !tbaa !46
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.57, i32 noundef %i.q, i64 noundef %i.p) #35 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.f, align 8, !tbaa !137
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !433

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %fputc = tail call i32 @fputc(i32 10, ptr %i.a) ; 0 uses
  %i.v = add nuw nsw i32 %.01822, 1               ; 2 uses
  %i.w = load i32, ptr %i.c, align 8, !tbaa !98
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.b, label %.critedge, !llvm.loop !434

.critedge:                                        ; preds = %bb.b, %._crit_edge, %bb.a
  %i.y = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @computeInputVectors(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(none) %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = getelementptr i8, ptr %3, i64 4
  %.val220 = load i32, ptr %i.b, align 4, !tbaa !50 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val234 = load i32, ptr %i.c, align 8, !tbaa !98
  %i.d = sext i32 %.val234 to i64                 ; 3 uses
  %calloc = tail call ptr @calloc(i64 1, i64 %i.d) ; 7 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #34 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 -1, i64 %i.d, i1 false)
  %i.f = icmp slt i32 %.val220, 1
  br i1 %i.f, label %._crit_edge268.thread, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.a
  %notmask = shl nsw i32 -1, %5
  %i.g = xor i32 %notmask, -1                     ; 2 uses
  %i.h = getelementptr i8, ptr %3, i64 8
  %sext = shl i32 %i.g, 24
  %i.i = ashr exact i32 %sext, 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.k = trunc i32 %i.g to i8
  %wide.trip.count = zext nneg i32 %.val220 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph267, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.0180265 = phi i32 [ -1, %.lr.ph267 ], [ %.5, %bb.r ] ; 7 uses
  %.0183264 = phi i32 [ 0, %.lr.ph267 ], [ %.5188, %bb.r ] ; 7 uses
  %.val222 = load ptr, ptr %i.h, align 8, !tbaa !51
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val222, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !52   ; 7 uses
  %i.n = sext i32 %i.m to i64                     ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !172   ; 5 uses
  %i.q = getelementptr inbounds i8, ptr %i.e, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !tbaa !172
  %i.s = sext i8 %i.r to i32
  %i.t = and i32 %i.i, %i.s                       ; 4 uses
  %.not202 = icmp eq i32 %i.t, 0
  br i1 %.not202, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  %i.u = trunc nsw i32 %i.t to i8                 ; 4 uses
  store i8 %i.u, ptr %i.a, align 1, !tbaa !172
  %.val230 = load i32, ptr %i.c, align 8, !tbaa !98
  %i.v = sext i32 %.val230 to i64                 ; 4 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #34 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %calloc, i64 %i.v, i1 false)
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #34 ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.e, i64 %i.v, i1 false)
  %i.y = tail call i32 @Gia_ManLutNum(ptr noundef %0) #35 ; 2 uses
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #34 ; 8 uses
  %i.aa = add i32 %i.y, -1
  %or.cond.i = icmp ult i32 %i.aa, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.y ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.z, align 8, !tbaa !97
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntGrow.exit11.sink.split.i, label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.c
  %i.ac = sext i32 %spec.store.select.i to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !51
  br label %Vec_IntPush.exit

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #34 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !51
  store i32 16, ptr %i.z, align 8, !tbaa !97
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntAlloc.exit, %Vec_IntGrow.exit11.sink.split.i
  %i.ai = phi ptr [ %i.ae, %Vec_IntAlloc.exit ], [ %i.ah, %Vec_IntGrow.exit11.sink.split.i ]
  %i.aj = phi ptr [ %i.af, %Vec_IntAlloc.exit ], [ %i.ag, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  store i32 1, ptr %i.ab, align 4, !tbaa !50
  store i32 %i.m, ptr %i.ai, align 4, !tbaa !52
  %i.ak = sext i8 %i.p to i32                     ; 8 uses
  %i.al = and i8 %i.p, %i.u
  %i.am = getelementptr inbounds i8, ptr %i.w, i64 %i.n ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !172
  %i.ao = or i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !172
  %i.ap = xor i8 %i.u, -1
  %i.aq = getelementptr inbounds i8, ptr %i.x, i64 %i.n ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !172
  %i.as = and i8 %i.ar, %i.ap
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !172
  %i.at = call i32 @computeNetworkValues(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.m, ptr noundef nonnull %i.a, i8 noundef signext %i.p, ptr noundef %i.w, ptr noundef %i.x, ptr noundef nonnull %i.z, ptr noundef %6, ptr noundef %7, i32 noundef %9)
  %.not214 = icmp eq i32 %i.at, -1
  br i1 %.not214, label %bb.d, label %bb.f

bb.d:                                             ; preds = %Vec_IntPush.exit
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %.not.i235 = icmp eq ptr %i.au, null
  br i1 %.not.i235, label %.thread242, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.au) #35
  br label %.thread242

.thread242:                                       ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.z) #35
  tail call void @free(ptr noundef nonnull %i.w) #35
  tail call void @free(ptr noundef nonnull %i.x) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %._crit_edge268.thread

bb.f:                                             ; preds = %Vec_IntPush.exit
  %i.av = load i8, ptr %i.a, align 1, !tbaa !172  ; 3 uses
  %i.aw = sext i8 %i.av to i32                    ; 5 uses
  %i.ax = xor i32 %i.t, %i.aw
  %i.ay = icmp eq i8 %i.av, 0
  br i1 %i.ay, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.j, align 4, !tbaa !199
  %.not213 = icmp eq i32 %i.az, 0
  br i1 %.not213, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %5, i32 noundef %i.m, i32 noundef %i.ak, i32 noundef %i.aw) ; 0 uses
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %.not206 = icmp eq i8 %i.av, %i.u
  br i1 %.not206, label %bb.k, label %.preheader249

.preheader249:                                    ; preds = %bb.i
  %.val = load i32, ptr %i.ab, align 4, !tbaa !50 ; 2 uses
  %i.bb = icmp sgt i32 %.val, 0
  br i1 %i.bb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader249
  %.val221 = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.bc = zext nneg i32 %.val to i64
  %i.bd = getelementptr [4 x i8], ptr %.val221, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !52
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %calloc, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !172
  %i.bj = getelementptr inbounds i8, ptr %i.e, i64 %i.bg
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !172
  store i8 %i.bi, ptr %i.am, align 1, !tbaa !172
  store i8 %i.bk, ptr %i.aq, align 1, !tbaa !172
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.preheader249
  %.val226 = load i32, ptr %i.c, align 8, !tbaa !98
  %i.bl = sext i32 %.val226 to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %calloc, ptr nonnull align 1 %i.w, i64 %i.bl, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.x, i64 %i.bl, i1 false)
  %.not209258 = icmp eq i32 %i.t, %i.aw
  br i1 %.not209258, label %._crit_edge, label %.lr.ph261

.lr.ph261:                                        ; preds = %.critedge, %.lr.ph261
  %.0176260 = phi i32 [ %spec.select, %.lr.ph261 ], [ 0, %.critedge ]
  %.0179259 = phi i32 [ %i.bn, %.lr.ph261 ], [ %i.ax, %.critedge ] ; 2 uses
  %i.bm = and i32 %.0179259, 1
  %spec.select = add nuw nsw i32 %.0176260, %i.bm ; 2 uses
  %i.bn = ashr i32 %.0179259, 1                   ; 2 uses
  %.not209 = icmp eq i32 %i.bn, 0
  br i1 %.not209, label %._crit_edge, label %.lr.ph261, !llvm.loop !435

._crit_edge:                                      ; preds = %.lr.ph261, %.critedge
  %.0176.lcssa = phi i32 [ 0, %.critedge ], [ %spec.select, %.lr.ph261 ]
  %i.bo = sub nsw i32 %5, %.0176.lcssa            ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 1                   ; 2 uses
  %.not210 = icmp ne i32 %.0180265, %i.ak
  %or.cond.not = select i1 %i.bp, i1 %.not210, i1 false
  %i.bq = zext i1 %or.cond.not to i32
  %.1184 = add nsw i32 %.0183264, %i.bq           ; 2 uses
  %.1181 = select i1 %i.bp, i32 %i.ak, i32 %.0180265 ; 2 uses
  %i.br = load i32, ptr %i.j, align 4, !tbaa !199
  %.not211 = icmp eq i32 %i.br, 0
  br i1 %.not211, label %bb.m, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %i.bo, i32 noundef %5, i32 noundef %i.m, i32 noundef %i.ak, i32 noundef %i.aw) ; 0 uses
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not207 = icmp ne i32 %.0180265, %i.ak
  %i.bt = zext i1 %.not207 to i32
  %spec.select215 = add nsw i32 %.0183264, %i.bt  ; 2 uses
  %.val224 = load i32, ptr %i.c, align 8, !tbaa !98
  %i.bu = sext i32 %.val224 to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %calloc, ptr nonnull align 1 %i.w, i64 %i.bu, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.x, i64 %i.bu, i1 false)
  %i.bv = load i32, ptr %i.j, align 4, !tbaa !199
  %.not208 = icmp eq i32 %i.bv, 0
  br i1 %.not208, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %5, i32 noundef %5, i32 noundef %i.m, i32 noundef %i.ak, i32 noundef %i.aw) ; 0 uses
end_hunk_0
