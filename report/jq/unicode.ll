Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/unicode?download=true
inline.NumInlined: 17
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@apply_case_fold1:bb.a

.lr.ph:                                           ; preds = %.preheader, %select.unfold
  %indvars.iv = phi i64 [ %indvars.iv.next, %select.unfold ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22 ; 2 uses
  store i32 %i.at, ptr %i.c, align 4, !tbaa !22
  %i.au = icmp ult i32 %i.at, 128
  br i1 %i.au, label %bb.i, label %select.unfold

bb.i:                                             ; preds = %.lr.ph
  %i.av = load i32, ptr %i.b, align 4, !tbaa !22
  %i.aw = call i32 %3(i32 noundef %i.av, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %4) #9 ; 2 uses
  %.not56 = icmp eq i32 %i.aw, 0
  br i1 %.not56, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !22
  %i.ay = call i32 %3(i32 noundef %i.ax, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %4) #9 ; 2 uses
  %.not57 = icmp eq i32 %i.ay, 0
  br i1 %.not57, label %select.unfold, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %.lr.ph.us.us, %bb.d
  %.us-phi = phi i32 [ %i.y, %bb.d ], [ %i.w, %.lr.ph.us.us ], [ %i.aw, %bb.i ], [ %i.ay, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread64

select.unfold:                                    ; preds = %bb.j, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv93
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !52

.thread64:                                        ; preds = %bb.g, %bb.h, %bb.b, %bb.c, %.thread
  %.4.ph = phi i32 [ %.us-phi, %.thread ], [ %i.s, %bb.c ], [ %i.q, %bb.b ], [ %i.ap, %bb.g ], [ %i.ar, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit72.sink.split

.loopexit:                                        ; preds = %select.unfold, %.preheader, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %._crit_edge.split.loopexit, label %bb.f, !llvm.loop !53

._crit_edge.split.loopexit:                       ; preds = %.loopexit
  %.pre = load i32, ptr %i.ah, align 4, !tbaa !22
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %bb.e
  %i.az = phi i32 [ %.pre, %._crit_edge.split.loopexit ], [ %i.ai, %bb.e ]
  %i.ba = add nsw i32 %.04680, 2
  %i.bb = add i32 %i.ba, %i.az                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.bc = icmp slt i32 %i.bb, %2
  br i1 %i.bc, label %.lr.ph82.split, label %.loopexit72

.loopexit72.sink.split:                           ; preds = %.lr.ph82.split, %.thread64
  %.6.ph = phi i32 [ %.4.ph, %.thread64 ], [ 0, %.lr.ph82.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit72

.loopexit72:                                      ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.loopexit72.sink.split, %bb.a
  %.6 = phi i32 [ %.6.ph, %.loopexit72.sink.split ], [ 0, %._crit_edge.split.us.us ], [ 0, %bb.a ], [ 0, %._crit_edge.split ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @apply_case_fold3(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %.03710 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.f ] ; 2 uses
  %i.c = sext i32 %.03710 to i64
  %i.d = getelementptr [4 x i8], ptr @OnigUnicodeFolds3, i64 %i.c ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 12       ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 3 uses
  %.not4765 = icmp sgt i32 %i.f, 0
  br i1 %.not4765, label %.lr.ph69, label %bb.f

.lr.ph69:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %wide.trip.count85 = zext nneg i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph69, %._crit_edge
  %indvars.iv82 = phi i64 [ 0, %.lr.ph69 ], [ %indvars.iv.next83, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv82
  %i.i = load i32, ptr %i.h, align 4, !tbaa !22   ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !22
  %i.j = call i32 %0(i32 noundef %i.i, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef %1) #9 ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.preheader, label %.thread90

.preheader:                                       ; preds = %bb.c
  %.not71 = icmp eq i64 %indvars.iv82, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv82
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !54

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !22
  store i32 %i.l, ptr %i.b, align 4, !tbaa !22
  %i.m = load i32, ptr %i.a, align 4, !tbaa !22
  %i.n = call i32 %0(i32 noundef %i.m, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef %1) #9 ; 2 uses
  %.not45 = icmp eq i32 %i.n, 0
  br i1 %.not45, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread90

bb.e:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.b, align 4, !tbaa !22
  %i.p = call i32 %0(i32 noundef %i.o, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef %1) #9 ; 2 uses
  %.not46 = icmp eq i32 %i.p, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not46, label %bb.d, label %.thread90

.thread90:                                        ; preds = %bb.c, %bb.e, %.thread
  %.4.ph = phi i32 [ %i.n, %.thread ], [ %i.p, %bb.e ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge70.loopexit, label %bb.c, !llvm.loop !55

._crit_edge70.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %i.e, align 4, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %._crit_edge70.loopexit
  %i.q = phi i32 [ %.pre, %._crit_edge70.loopexit ], [ %i.f, %bb.b ]
  %i.r = add nsw i32 %.03710, 4
  %i.s = add i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 72
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %bb.f, %.thread90
  %.6 = phi i32 [ %.4.ph, %.thread90 ], [ 0, %bb.f ]
  ret i32 %.6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x [4 x i32]], align 16         ; 30 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = tail call i32 %i.e(ptr noundef %2, ptr noundef %3) #9 ; 17 uses
  %i.g = and i32 %1, 1
  %i.h = icmp eq i32 %i.g, 0                      ; 6 uses
  %i.i = icmp ult i32 %i.f, 128
  %or.cond5 = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond5, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = tail call i32 %i.j(ptr noundef %2) #9    ; 19 uses
  store i32 %i.f, ptr %i.c, align 4, !tbaa !22
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l ; 4 uses
  %i.n = tail call ptr @onigenc_unicode_unfold_key(i32 noundef %i.f) #9 ; 6 uses
  %.not = icmp eq ptr %i.n, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.p = load i16, ptr %i.o, align 2, !tbaa !20
  %i.q = icmp eq i16 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i16, ptr %i.r, align 4, !tbaa !21
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.t
  %storemerge.pre = load i32, ptr %i.u, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %storemerge = phi i32 [ %storemerge.pre, %bb.d ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !22
  %i.v = and i32 %1, 1073741824
  %i.w = icmp ne i32 %i.v, 0                      ; 2 uses
  %i.x = icmp ult ptr %i.m, %3
  %or.cond364 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond364, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.z = tail call i32 %i.y(ptr noundef %i.m, ptr noundef nonnull %3) #9 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !22
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = tail call i32 %i.ab(ptr noundef %i.m) #9 ; 2 uses
  %i.ad = add nsw i32 %i.ac, %i.k                 ; 8 uses
  %i.ae = tail call ptr @onigenc_unicode_unfold_key(i32 noundef %i.z) #9 ; 3 uses
  %.not360 = icmp eq ptr %i.ae, null
  br i1 %.not360, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !20
  %i.ah = icmp eq i16 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !21
  %i.ak = sext i16 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.sink = phi i32 [ %i.am, %bb.h ], [ %i.z, %bb.g ], [ %i.z, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sink, ptr %i.an, align 4, !tbaa !22
  %i.ao = sext i32 %i.ac to i64
  %i.ap = getelementptr inbounds i8, ptr %i.m, i64 %i.ao ; 3 uses
  %i.aq = icmp ult ptr %i.ap, %3
  br i1 %i.aq, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.as = tail call i32 %i.ar(ptr noundef %i.ap, ptr noundef nonnull %3) #9 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.as, ptr %i.at, align 4, !tbaa !22
  %i.au = load ptr, ptr %0, align 8, !tbaa !17
  %i.av = tail call i32 %i.au(ptr noundef %i.ap) #9
  %i.aw = add nsw i32 %i.av, %i.ad                ; 6 uses
  %i.ax = tail call ptr @onigenc_unicode_unfold_key(i32 noundef %i.as) #9 ; 3 uses
  %.not361 = icmp eq ptr %i.ax, null
  br i1 %.not361, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !20
  %i.ba = icmp eq i16 %i.az, 1
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !21
  %i.bd = sext i16 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !22
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink743 = phi i32 [ %i.bf, %bb.l ], [ %i.as, %bb.k ], [ %i.as, %bb.j ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink743, ptr %i.bg, align 4, !tbaa !22
  %i.bh = call i32 @onigenc_unicode_fold3_key(ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  br i1 %i.bi, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.bj = zext nneg i32 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds3, i64 %i.bj ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22 ; 6 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph466, label %.preheader371

.lr.ph466:                                        ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %wide.trip.count626 = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter800 = and i64 %wide.trip.count626, 1
  %i.bp = icmp eq i32 %i.bm, 1
  br i1 %i.bp, label %.epil.preheader799, label %.lr.ph466.new

.lr.ph466.new:                                    ; preds = %.lr.ph466
  %unroll_iter803 = and i64 %wide.trip.count626, 2147483646
  br label %bb.o

.preheader371.loopexit.unr-lcssa:                 ; preds = %bb.o
  %lcmp.mod801.not = icmp eq i64 %xtraiter800, 0
  br i1 %lcmp.mod801.not, label %.preheader371, label %.epil.preheader799

.epil.preheader799:                               ; preds = %.preheader371.loopexit.unr-lcssa, %.lr.ph466
  %indvars.iv621.epil.init = phi i64 [ 0, %.lr.ph466 ], [ %indvars.iv.next622.1, %.preheader371.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod802 = trunc i32 %i.bm to i1
  call void @llvm.assume(i1 %lcmp.mod802)
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %4, i64 %indvars.iv621.epil.init ; 3 uses
  store i32 %i.aw, ptr %i.bq, align 4, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 1, ptr %i.br, align 4, !tbaa !75
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv621.epil.init
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !22
  br label %.preheader371

.preheader371:                                    ; preds = %.epil.preheader799, %.preheader371.loopexit.unr-lcssa, %bb.n
  %.0322.lcssa = phi i32 [ 0, %bb.n ], [ %i.bm, %.preheader371.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader799 ] ; 2 uses
  %scevgep628 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bv = load i32, ptr %i.bk, align 4, !tbaa !22
  store i32 %i.bv, ptr %i.a, align 16, !tbaa !22
  %i.bw = call i32 @onigenc_unicode_fold1_key(ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.o, %.lr.ph466.new
  %indvars.iv621 = phi i64 [ 0, %.lr.ph466.new ], [ %indvars.iv.next622.1, %bb.o ] ; 4 uses
  %niter804 = phi i64 [ 0, %.lr.ph466.new ], [ %niter804.next.1, %bb.o ]
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %4, i64 %indvars.iv621 ; 3 uses
  store i32 %i.aw, ptr %i.by, align 4, !tbaa !74
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  store i32 1, ptr %i.bz, align 4, !tbaa !75
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv621
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !22
  %indvars.iv.next622 = or disjoint i64 %indvars.iv621, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [20 x i8], ptr %4, i64 %indvars.iv.next622 ; 3 uses
  store i32 %i.aw, ptr %i.cd, align 4, !tbaa !74
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i32 1, ptr %i.ce, align 4, !tbaa !75
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.next622
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !22
  %indvars.iv.next622.1 = add nuw nsw i64 %indvars.iv621, 2 ; 2 uses
  %niter804.next.1 = add i64 %niter804, 2         ; 2 uses
  %niter804.ncmp.1 = icmp eq i64 %niter804.next.1, %unroll_iter803
  br i1 %niter804.ncmp.1, label %.preheader371.loopexit.unr-lcssa, label %bb.o, !llvm.loop !57

.preheader369.us.us.preheader:                    ; preds = %.preheader370
  %wide.trip.count670 = zext nneg i32 %.sroa.0.0 to i64
  %wide.trip.count646 = zext nneg i32 %.sroa.14.3 to i64
  %wide.trip.count641 = zext nneg i32 %.sroa.26.1 to i64 ; 5 uses
  %wide.trip.count665 = zext nneg i32 %.sroa.14.3 to i64
  %wide.trip.count660 = zext nneg i32 %.sroa.26.1 to i64
  %i.ci = add nsw i64 %wide.trip.count641, -1     ; 2 uses
  %i.cj = insertelement <2 x i32> <i32 poison, i32 3>, i32 %i.aw, i64 0 ; 3 uses
  %xtraiter806 = and i64 %wide.trip.count641, 1
  %i.ck = icmp eq i64 %i.ci, 0
  %unroll_iter810 = and i64 %wide.trip.count641, 2147483646
  %lcmp.mod807.not = icmp eq i64 %xtraiter806, 0
  %lcmp.mod809 = trunc i32 %.sroa.26.1 to i1
  %i.cl = insertelement <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>, i32 %i.aw, i64 0
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.f, i64 2
  %xtraiter813 = and i64 %wide.trip.count641, 1
  %i.cn = icmp eq i64 %i.ci, 0
  %unroll_iter817 = and i64 %wide.trip.count641, 2147483646
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  %lcmp.mod816 = trunc i32 %.sroa.26.1 to i1
  br label %.preheader369.us.us

.preheader369.us.us:                              ; preds = %.preheader369.us.us.preheader, %._crit_edge482.split.us.us.us
  %indvars.iv667 = phi i64 [ 0, %.preheader369.us.us.preheader ], [ %indvars.iv.next668, %._crit_edge482.split.us.us.us ] ; 2 uses
  %.1323496.us.us = phi i32 [ %.0322.lcssa, %.preheader369.us.us.preheader ], [ %.us-phi495.us.us, %._crit_edge482.split.us.us.us ] ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv667
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22 ; 4 uses
  %i.cq = icmp eq i32 %i.cp, %i.f
  br i1 %i.cq, label %.preheader.us.us.us.us, label %.preheader.us.us504.us.preheader

.preheader.us.us504.us.preheader:                 ; preds = %.preheader369.us.us
  %i.cr = sext i32 %.1323496.us.us to i64
  br label %.preheader.us.us504.us

.preheader.us.us504.us:                           ; preds = %.preheader.us.us504.us.preheader, %._crit_edge476.split.us487.us.us
  %indvars.iv643 = phi i64 [ 0, %.preheader.us.us504.us.preheader ], [ %indvars.iv.next644, %._crit_edge476.split.us487.us.us ] ; 2 uses
  %.2324480.us.us506.us = phi i64 [ %i.cr, %.preheader.us.us504.us.preheader ], [ %indvars.iv.next637.lcssa, %._crit_edge476.split.us487.us.us ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv643
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !22 ; 3 uses
  br i1 %i.ck, label %.epil.preheader805, label %.preheader.us.us504.us.new

.preheader.us.us504.us.new:                       ; preds = %.preheader.us.us504.us, %.preheader.us.us504.us.new
  %indvars.iv636 = phi i64 [ %indvars.iv.next637.1, %.preheader.us.us504.us.new ], [ %.2324480.us.us506.us, %.preheader.us.us504.us ] ; 3 uses
  %indvars.iv634 = phi i64 [ %indvars.iv.next635.1, %.preheader.us.us504.us.new ], [ 0, %.preheader.us.us504.us ] ; 3 uses
  %niter811 = phi i64 [ %niter811.next.1, %.preheader.us.us504.us.new ], [ 0, %.preheader.us.us504.us ]
  %i.cu = getelementptr inbounds [20 x i8], ptr %4, i64 %indvars.iv636 ; 4 uses
  store <2 x i32> %i.cj, ptr %i.cu, align 4, !tbaa !22
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.cp, ptr %i.cv, align 4, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !22
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %indvars.iv634
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !22
  %i.da = getelementptr [20 x i8], ptr %4, i64 %indvars.iv636 ; 4 uses
end_hunk_0
begin_hunk_1_@onigenc_unicode_get_case_fold_codes_by_str:bb.a
  %i.hw = getelementptr i8, ptr %i.hu, i64 24
  store i32 2, ptr %i.hw, align 4, !tbaa !75
  %i.hx = getelementptr i8, ptr %i.hu, i64 28
  store i32 %i.hl, ptr %i.hx, align 4, !tbaa !22
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv602
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !22
  %i.ib = getelementptr i8, ptr %i.hu, i64 32
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !22
  %indvars.iv.next605.1 = add nsw i64 %indvars.iv604, 2 ; 3 uses
  %indvars.iv.next603.1 = add nuw nsw i64 %indvars.iv602, 2 ; 2 uses
  %niter798.next.1 = add i64 %niter798, 2         ; 2 uses
  %niter798.ncmp.1 = icmp eq i64 %niter798.next.1, %unroll_iter797
  br i1 %niter798.ncmp.1, label %._crit_edge451.us.loopexit515.unr-lcssa, label %.lr.ph450.split.us457, !llvm.loop !62

.lr.ph450.split.us.us:                            ; preds = %.preheader372.us, %bb.aa
  %indvars.iv611 = phi i64 [ %indvars.iv.next612, %bb.aa ], [ 0, %.preheader372.us ] ; 2 uses
  %.7329448.us.us = phi i32 [ %.8330.us.us, %bb.aa ], [ %.6328454.us, %.preheader372.us ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv611
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !22 ; 2 uses
  %i.ie = icmp eq i32 %i.id, %i.z
  br i1 %i.ie, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph450.split.us.us
  %i.if = sext i32 %.7329448.us.us to i64
  %i.ig = getelementptr inbounds [20 x i8], ptr %4, i64 %i.if ; 3 uses
  store i32 %i.ad, ptr %i.ig, align 4, !tbaa !74
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store <2 x i32> %i.hj, ptr %i.ih, align 4, !tbaa !22
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 %i.id, ptr %i.ii, align 4, !tbaa !22
  %i.ij = add nsw i32 %.7329448.us.us, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph450.split.us.us
  %.8330.us.us = phi i32 [ %.7329448.us.us, %.lr.ph450.split.us.us ], [ %i.ij, %bb.z ] ; 2 uses
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %._crit_edge451.us, label %.lr.ph450.split.us.us, !llvm.loop !62

._crit_edge451.us.loopexit515.unr-lcssa:          ; preds = %.lr.ph450.split.us457
  br i1 %lcmp.mod794.not, label %._crit_edge451.us.loopexit515, label %.lr.ph450.split.us457.epil.preheader

.lr.ph450.split.us457.epil.preheader:             ; preds = %._crit_edge451.us.loopexit515.unr-lcssa, %.lr.ph450.split.us457.preheader
  %indvars.iv604.epil.init = phi i64 [ %i.hn, %.lr.ph450.split.us457.preheader ], [ %indvars.iv.next605.1, %._crit_edge451.us.loopexit515.unr-lcssa ] ; 2 uses
  %indvars.iv602.epil.init = phi i64 [ 0, %.lr.ph450.split.us457.preheader ], [ %indvars.iv.next603.1, %._crit_edge451.us.loopexit515.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod796)
  %i.ik = getelementptr inbounds [20 x i8], ptr %4, i64 %indvars.iv604.epil.init ; 4 uses
  store i32 %i.ad, ptr %i.ik, align 4, !tbaa !74
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  store i32 2, ptr %i.il, align 4, !tbaa !75
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i32 %i.hl, ptr %i.im, align 4, !tbaa !22
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv602.epil.init
  %i.io = load i32, ptr %i.in, align 4, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !22
  %indvars.iv.next605.epil = add nsw i64 %indvars.iv604.epil.init, 1
  br label %._crit_edge451.us.loopexit515

._crit_edge451.us.loopexit515:                    ; preds = %._crit_edge451.us.loopexit515.unr-lcssa, %.lr.ph450.split.us457.epil.preheader
  %indvars.iv.next605.lcssa = phi i64 [ %indvars.iv.next605.1, %._crit_edge451.us.loopexit515.unr-lcssa ], [ %indvars.iv.next605.epil, %.lr.ph450.split.us457.epil.preheader ]
  %i.iq = trunc nsw i64 %indvars.iv.next605.lcssa to i32
  br label %._crit_edge451.us

._crit_edge451.us:                                ; preds = %bb.aa, %._crit_edge451.us.loopexit515
  %.us-phi453.us = phi i32 [ %i.iq, %._crit_edge451.us.loopexit515 ], [ %.8330.us.us, %bb.aa ] ; 2 uses
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %exitcond620.not = icmp eq i64 %indvars.iv.next617, %wide.trip.count619
  br i1 %exitcond620.not, label %.thread, label %.preheader372.us, !llvm.loop !63

bb.ab:                                            ; preds = %.preheader375
  %i.ir = zext nneg i32 %i.gw to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.ir ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 4
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !22 ; 3 uses
  %i.iv = icmp sgt i32 %i.iu, 0
  br i1 %i.iv, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %bb.ab
  %i.iw = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.ix = zext nneg i32 %i.iu to i64
  %i.iy = shl nuw nsw i64 %i.ix, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep597, ptr nonnull align 4 %i.iw, i64 %i.iy, i1 false), !tbaa !22
  br label %._crit_edge446

._crit_edge446:                                   ; preds = %.lr.ph445, %bb.ab
  %i.iz = add nsw i32 %i.iu, 1
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge446, %.preheader375
  %.sroa.0.1 = phi i32 [ %i.iz, %._crit_edge446 ], [ 1, %.preheader375 ] ; 3 uses
  %scevgep597.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !22
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  store i32 %i.jb, ptr %i.jc, align 16, !tbaa !22
  %i.jd = call i32 @onigenc_unicode_fold1_key(ptr noundef nonnull %i.jc) #9 ; 2 uses
  %i.je = icmp sgt i32 %i.jd, -1
  br i1 %i.je, label %bb.ad, label %.preheader373.thread

bb.ad:                                            ; preds = %bb.ac
  %i.jf = zext nneg i32 %i.jd to i64
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !22 ; 4 uses
  %i.jj = icmp sgt i32 %i.ji, 0
  br i1 %i.jj, label %.lr.ph445.1, label %.preheader373

.lr.ph445.1:                                      ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jl = zext nneg i32 %i.ji to i64
  %i.jm = shl nuw nsw i64 %i.jl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep597.1, ptr nonnull align 4 %i.jk, i64 %i.jm, i1 false), !tbaa !22
  br label %.preheader373

.preheader373:                                    ; preds = %bb.ad, %.lr.ph445.1
  %i.jn = add nsw i32 %i.ji, 1
  %i.jo = icmp sgt i32 %.sroa.0.1, 0
  %i.jp = icmp sgt i32 %i.ji, -1
  %or.cond747 = and i1 %i.jo, %i.jp
  br i1 %or.cond747, label %.preheader372.us.preheader, label %.thread

.preheader373.thread:                             ; preds = %bb.ac
  %i.jq = icmp sgt i32 %.sroa.0.1, 0
  br i1 %i.jq, label %.preheader372.us.preheader, label %.thread

bb.ae:                                            ; preds = %bb.w, %bb.e
  br i1 %.not, label %bb.bk, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jr = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !20 ; 2 uses
  %i.jt = icmp eq i16 %i.js, 1
  br i1 %i.jt, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !21
  %.pre681 = sext i16 %.pre to i64                ; 3 uses
  br i1 %i.h, label %._crit_edge680, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds [4 x i8], ptr @OnigUnicodeFolds1, i64 %.pre681
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !22
  %i.jw = icmp ult i32 %i.jv, 128
  br i1 %i.jw, label %._crit_edge680, label %bb.ai

._crit_edge680:                                   ; preds = %bb.ag, %bb.ah
  store i32 %i.k, ptr %4, align 4, !tbaa !74
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.jx, align 4, !tbaa !75
  %i.jy = getelementptr inbounds [4 x i8], ptr @OnigUnicodeFolds1, i64 %.pre681
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !22
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !22
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge680, %bb.ah
  %.11333 = phi i32 [ 1, %._crit_edge680 ], [ 0, %bb.ah ] ; 2 uses
  %i.kb = getelementptr [4 x i8], ptr @OnigUnicodeFolds1, i64 %.pre681 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.kb, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !22 ; 2 uses
  %i.ke = icmp sgt i32 %i.kd, 0
  br i1 %i.ke, label %.lr.ph431, label %.thread

.lr.ph431:                                        ; preds = %bb.ai
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %wide.trip.count583 = zext nneg i32 %i.kd to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph431, %bb.al
  %indvars.iv580 = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next581, %bb.al ] ; 2 uses
  %.12334428 = phi i32 [ %.11333, %.lr.ph431 ], [ %.13335, %bb.al ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv580
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !22 ; 3 uses
  %.not363 = icmp ne i32 %i.kh, %i.f
  %i.ki = icmp ult i32 %i.kh, 128
  %or.cond = or i1 %i.h, %i.ki
  %or.cond365 = and i1 %.not363, %or.cond
  br i1 %or.cond365, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.kj = sext i32 %.12334428 to i64
  %i.kk = getelementptr inbounds [20 x i8], ptr %4, i64 %i.kj ; 3 uses
  store i32 %i.k, ptr %i.kk, align 4, !tbaa !74
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store i32 1, ptr %i.kl, align 4, !tbaa !75
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i32 %i.kh, ptr %i.km, align 4, !tbaa !22
  %i.kn = add nsw i32 %.12334428, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.13335 = phi i32 [ %i.kn, %bb.ak ], [ %.12334428, %bb.aj ] ; 2 uses
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %exitcond584.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count583
  br i1 %exitcond584.not, label %.thread, label %bb.aj, !llvm.loop !64

bb.am:                                            ; preds = %bb.af
  br i1 %i.w, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ko = icmp eq i16 %i.js, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  %i.kq = load i16, ptr %i.kp, align 4, !tbaa !21
  %i.kr = sext i16 %i.kq to i64                   ; 2 uses
  br i1 %i.ko, label %bb.ao, label %bb.ay

bb.ao:                                            ; preds = %bb.an
  %i.ks = getelementptr [4 x i8], ptr @OnigUnicodeFolds2, i64 %i.kr ; 3 uses
  %i.kt = getelementptr i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !22 ; 4 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph412, label %.preheader381

.lr.ph412:                                        ; preds = %bb.ao
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 12 ; 3 uses
  %wide.trip.count559 = zext nneg i32 %i.ku to i64 ; 2 uses
  %xtraiter767 = and i64 %wide.trip.count559, 1
  %i.kx = icmp eq i32 %i.ku, 1
  br i1 %i.kx, label %.epil.preheader766, label %.lr.ph412.new

.lr.ph412.new:                                    ; preds = %.lr.ph412
  %unroll_iter771 = and i64 %wide.trip.count559, 2147483646
  br label %bb.aq

.preheader381.loopexit.unr-lcssa:                 ; preds = %bb.au
  %lcmp.mod768.not = icmp eq i64 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %.preheader381, label %.epil.preheader766

.epil.preheader766:                               ; preds = %.preheader381.loopexit.unr-lcssa, %.lr.ph412
  %indvars.iv556.epil.init = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next557.1, %.preheader381.loopexit.unr-lcssa ]
  %.14409.epil.init = phi i32 [ 0, %.lr.ph412 ], [ %.15.1, %.preheader381.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod770 = trunc i32 %i.ku to i1
  call void @llvm.assume(i1 %lcmp.mod770)
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv556.epil.init
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !22 ; 2 uses
  %i.la = icmp eq i32 %i.kz, %i.f
  br i1 %i.la, label %.preheader381, label %bb.ap

bb.ap:                                            ; preds = %.epil.preheader766
  %i.lb = sext i32 %.14409.epil.init to i64
  %i.lc = getelementptr inbounds [20 x i8], ptr %4, i64 %i.lb ; 3 uses
  store i32 %i.k, ptr %i.lc, align 4, !tbaa !74
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  store i32 1, ptr %i.ld, align 4, !tbaa !75
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i32 %i.kz, ptr %i.le, align 4, !tbaa !22
  %i.lf = add nsw i32 %.14409.epil.init, 1
  br label %.preheader381

.preheader381:                                    ; preds = %.preheader381.loopexit.unr-lcssa, %bb.ap, %.epil.preheader766, %bb.ao
  %.14.lcssa = phi i32 [ 0, %bb.ao ], [ %.15.1, %.preheader381.loopexit.unr-lcssa ], [ %i.lf, %bb.ap ], [ %.14409.epil.init, %.epil.preheader766 ] ; 3 uses
  %scevgep561 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.lg = load i32, ptr %i.ks, align 4, !tbaa !22
  store i32 %i.lg, ptr %i.a, align 16, !tbaa !22
  %i.lh = call i32 @onigenc_unicode_fold1_key(ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, -1
  br i1 %i.li, label %bb.av, label %bb.aw

bb.aq:                                            ; preds = %bb.au, %.lr.ph412.new
  %indvars.iv556 = phi i64 [ 0, %.lr.ph412.new ], [ %indvars.iv.next557.1, %bb.au ] ; 3 uses
  %.14409 = phi i32 [ 0, %.lr.ph412.new ], [ %.15.1, %bb.au ] ; 3 uses
  %niter772 = phi i64 [ 0, %.lr.ph412.new ], [ %niter772.next.1, %bb.au ]
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv556
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !22 ; 2 uses
  %i.ll = icmp eq i32 %i.lk, %i.f
  br i1 %i.ll, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.lm = sext i32 %.14409 to i64
  %i.ln = getelementptr inbounds [20 x i8], ptr %4, i64 %i.lm ; 3 uses
  store i32 %i.k, ptr %i.ln, align 4, !tbaa !74
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i32 1, ptr %i.lo, align 4, !tbaa !75
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store i32 %i.lk, ptr %i.lp, align 4, !tbaa !22
  %i.lq = add nsw i32 %.14409, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %.15 = phi i32 [ %i.lq, %bb.ar ], [ %.14409, %bb.aq ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv556
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !22 ; 2 uses
  %i.lu = icmp eq i32 %i.lt, %i.f
  br i1 %i.lu, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.lv = sext i32 %.15 to i64
  %i.lw = getelementptr inbounds [20 x i8], ptr %4, i64 %i.lv ; 3 uses
  store i32 %i.k, ptr %i.lw, align 4, !tbaa !74
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  store i32 1, ptr %i.lx, align 4, !tbaa !75
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i32 %i.lt, ptr %i.ly, align 4, !tbaa !22
  %i.lz = add nsw i32 %.15, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.15.1 = phi i32 [ %i.lz, %bb.at ], [ %.15, %bb.as ] ; 3 uses
  %indvars.iv.next557.1 = add nuw nsw i64 %indvars.iv556, 2 ; 2 uses
  %niter772.next.1 = add i64 %niter772, 2         ; 2 uses
  %niter772.ncmp.1 = icmp eq i64 %niter772.next.1, %unroll_iter771
  br i1 %niter772.ncmp.1, label %.preheader381.loopexit.unr-lcssa, label %bb.aq, !llvm.loop !65

.preheader378.us.preheader:                       ; preds = %.preheader379, %.preheader379.thread
  %.sroa.14.1734736 = phi i32 [ %i.nx, %.preheader379 ], [ 1, %.preheader379.thread ] ; 3 uses
  %wide.trip.count578 = zext nneg i32 %.sroa.0.2 to i64
  %i.ma = sext i32 %.14.lcssa to i64
  %wide.trip.count573 = zext nneg i32 %.sroa.14.1734736 to i64 ; 2 uses
  %xtraiter774 = and i64 %wide.trip.count573, 1
  %i.mb = icmp eq i32 %.sroa.14.1734736, 1
  %unroll_iter778 = and i64 %wide.trip.count573, 2147483646
  %lcmp.mod775.not = icmp eq i64 %xtraiter774, 0
  %lcmp.mod777 = trunc i32 %.sroa.14.1734736 to i1
  br label %.preheader378.us

.preheader378.us:                                 ; preds = %.preheader378.us.preheader, %._crit_edge422.us
  %indvars.iv575 = phi i64 [ 0, %.preheader378.us.preheader ], [ %indvars.iv.next576, %._crit_edge422.us ] ; 2 uses
  %.16424.us = phi i64 [ %i.ma, %.preheader378.us.preheader ], [ %indvars.iv.next569.lcssa, %._crit_edge422.us ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv575
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !22 ; 3 uses
  br i1 %i.mb, label %.epil.preheader773, label %.preheader378.us.new

.preheader378.us.new:                             ; preds = %.preheader378.us, %.preheader378.us.new
  %indvars.iv568 = phi i64 [ %indvars.iv.next569.1, %.preheader378.us.new ], [ %.16424.us, %.preheader378.us ] ; 3 uses
  %indvars.iv566 = phi i64 [ %indvars.iv.next567.1, %.preheader378.us.new ], [ 0, %.preheader378.us ] ; 3 uses
  %niter779 = phi i64 [ %niter779.next.1, %.preheader378.us.new ], [ 0, %.preheader378.us ]
  %i.me = getelementptr inbounds [20 x i8], ptr %4, i64 %indvars.iv568 ; 4 uses
  store i32 %i.k, ptr %i.me, align 4, !tbaa !74
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  store i32 2, ptr %i.mf, align 4, !tbaa !75
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 %i.md, ptr %i.mg, align 4, !tbaa !22
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv566
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !22
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 12
  store i32 %i.mi, ptr %i.mj, align 4, !tbaa !22
  %i.mk = getelementptr [20 x i8], ptr %4, i64 %indvars.iv568 ; 4 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 20
  store i32 %i.k, ptr %i.ml, align 4, !tbaa !74
  %i.mm = getelementptr i8, ptr %i.mk, i64 24
  store i32 2, ptr %i.mm, align 4, !tbaa !75
  %i.mn = getelementptr i8, ptr %i.mk, i64 28
  store i32 %i.md, ptr %i.mn, align 4, !tbaa !22
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv566
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !22
  %i.mr = getelementptr i8, ptr %i.mk, i64 32
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !22
  %indvars.iv.next569.1 = add nsw i64 %indvars.iv568, 2 ; 3 uses
  %indvars.iv.next567.1 = add nuw nsw i64 %indvars.iv566, 2 ; 2 uses
  %niter779.next.1 = add i64 %niter779, 2         ; 2 uses
  %niter779.ncmp.1 = icmp eq i64 %niter779.next.1, %unroll_iter778
  br i1 %niter779.ncmp.1, label %._crit_edge422.us.unr-lcssa, label %.preheader378.us.new, !llvm.loop !66

._crit_edge422.us.unr-lcssa:                      ; preds = %.preheader378.us.new
  br i1 %lcmp.mod775.not, label %._crit_edge422.us, label %.epil.preheader773

.epil.preheader773:                               ; preds = %._crit_edge422.us.unr-lcssa, %.preheader378.us
  %indvars.iv568.epil.init = phi i64 [ %.16424.us, %.preheader378.us ], [ %indvars.iv.next569.1, %._crit_edge422.us.unr-lcssa ] ; 2 uses
  %indvars.iv566.epil.init = phi i64 [ 0, %.preheader378.us ], [ %indvars.iv.next567.1, %._crit_edge422.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod777)
  %i.ms = getelementptr inbounds [20 x i8], ptr %4, i64 %indvars.iv568.epil.init ; 4 uses
  store i32 %i.k, ptr %i.ms, align 4, !tbaa !74
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 4
  store i32 2, ptr %i.mt, align 4, !tbaa !75
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  store i32 %i.md, ptr %i.mu, align 4, !tbaa !22
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv566.epil.init
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !22
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 12
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !22
  %indvars.iv.next569.epil = add nsw i64 %indvars.iv568.epil.init, 1
  br label %._crit_edge422.us

._crit_edge422.us:                                ; preds = %._crit_edge422.us.unr-lcssa, %.epil.preheader773
  %indvars.iv.next569.lcssa = phi i64 [ %indvars.iv.next569.1, %._crit_edge422.us.unr-lcssa ], [ %indvars.iv.next569.epil, %.epil.preheader773 ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count578
  br i1 %exitcond579.not, label %.thread.loopexit520, label %.preheader378.us, !llvm.loop !67

bb.av:                                            ; preds = %.preheader381
  %i.my = zext nneg i32 %i.lh to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr @OnigUnicodeFolds1, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !22 ; 3 uses
  %i.nc = icmp sgt i32 %i.nb, 0
  br i1 %i.nc, label %.lr.ph416, label %._crit_edge417

.lr.ph416:                                        ; preds = %bb.av
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.ne = zext nneg i32 %i.nb to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep561, ptr nonnull align 4 %i.nd, i64 %i.nf, i1 false), !tbaa !22
  br label %._crit_edge417

._crit_edge417:                                   ; preds = %.lr.ph416, %bb.av
  %i.ng = add nsw i32 %i.nb, 1
end_hunk_1
begin_hunk_2_@onigenc_unicode_is_code_ctype:bb.a
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [16 x i8], ptr @UserDefinedPropertyRanges, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.q = tail call i32 @onig_is_in_code_range(ptr noundef %i.p, i32 noundef %0) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @CodeRanges, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = tail call i32 @onig_is_in_code_range(ptr noundef %i.t, i32 noundef %0) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  %.1 = phi i32 [ %i.h, %bb.b ], [ %i.u, %bb.f ], [ %i.q, %bb.e ], [ -6, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @wb_get_next_main_code(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = tail call i32 %i.a(ptr noundef %1) #9
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %.not23 = icmp ult ptr %i.d, %2
  br i1 %.not23, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.aa, %.backedge ] ; 3 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.h = tail call i32 %i.g(ptr noundef %i.f, ptr noundef nonnull %2) #9 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.016.i = phi i32 [ 1085, %bb.b ], [ %.1.i, %bb.c ] ; 2 uses
  %.01315.i = phi i32 [ 0, %bb.b ], [ %.114.i, %bb.c ] ; 2 uses
  %i.i = add i32 %.01315.i, %.016.i
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr @WB_RANGES, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = icmp ugt i32 %i.h, %i.n                  ; 2 uses
  %i.p = add nuw nsw i32 %i.j, 1
  %.114.i = select i1 %i.o, i32 %i.p, i32 %.01315.i ; 4 uses
  %.1.i = select i1 %i.o, i32 %.016.i, i32 %i.j   ; 2 uses
  %i.q = icmp ult i32 %.114.i, %.1.i
  br i1 %i.q, label %bb.c, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %.114.i, 1085
  br i1 %i.r, label %bb.e, label %wb_get_type.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %.114.i to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr @WB_RANGES, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %.not.i = icmp ult i32 %i.h, %i.u
  br i1 %.not.i, label %wb_get_type.exit.thread, label %wb_get_type.exit

wb_get_type.exit:                                 ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28   ; 2 uses
  switch i32 %i.w, label %wb_get_type.exit.thread [
    i32 18, label %.backedge
    i32 6, label %.backedge
    i32 4, label %.backedge
  ]

.backedge:                                        ; preds = %wb_get_type.exit, %wb_get_type.exit, %wb_get_type.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !17
  %i.y = tail call i32 %i.x(ptr noundef %i.f) #9
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.z ; 2 uses
  %.not = icmp ult ptr %i.aa, %2
  br i1 %.not, label %bb.b, label %.loopexit

wb_get_type.exit.thread:                          ; preds = %bb.d, %bb.e, %wb_get_type.exit
  %i.ab = phi i32 [ %i.w, %wb_get_type.exit ], [ 0, %bb.e ], [ 0, %bb.d ]
  store i32 %i.h, ptr %3, align 4, !tbaa !22
  store i32 %i.ab, ptr %4, align 4, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %bb.a, %wb_get_type.exit.thread
  %.0 = phi i32 [ 1, %wb_get_type.exit.thread ], [ 0, %bb.a ], [ 0, %.backedge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @onigenc_egcb_is_break_position(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, %3
  %i.b = icmp eq ptr %1, %4
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %unicode_egcb_is_break_2code.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @onigenc_get_prev_char_head(ptr noundef %0, ptr noundef %3, ptr noundef %1) #9 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %unicode_egcb_is_break_2code.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.043 = phi ptr [ %i.d, %bb.c ], [ %2, %bb.b ]  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call i32 %i.g(ptr noundef nonnull %.043, ptr noundef %4) #9 ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.j = tail call i32 %i.i(ptr noundef %1, ptr noundef %4) #9 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = and i32 %i.l, 2
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.e, label %.preheader72

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ne i32 %i.h, 13
  %i.o = icmp ne i32 %i.j, 10
  %i.p = select i1 %i.n, i1 true, i1 %i.o
  %i.q = zext i1 %i.p to i32
  br label %unicode_egcb_is_break_2code.exit.thread

.preheader72:                                     ; preds = %bb.d, %.preheader72
  %.016.i.i = phi i32 [ %.1.i.i, %.preheader72 ], [ 1376, %bb.d ] ; 2 uses
  %.01315.i.i = phi i32 [ %.114.i.i, %.preheader72 ], [ 0, %bb.d ] ; 2 uses
  %i.r = add i32 %.01315.i.i, %.016.i.i
  %i.s = lshr i32 %i.r, 1                         ; 3 uses
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = icmp ugt i32 %i.h, %i.w                  ; 2 uses
  %i.y = add nuw nsw i32 %i.s, 1
  %.114.i.i = select i1 %i.x, i32 %i.y, i32 %.01315.i.i ; 4 uses
  %.1.i.i = select i1 %i.x, i32 %.016.i.i, i32 %i.s ; 2 uses
  %i.z = icmp ult i32 %.114.i.i, %.1.i.i
  br i1 %i.z, label %.preheader72, label %bb.f, !llvm.loop !77

bb.f:                                             ; preds = %.preheader72
  %i.aa = icmp ult i32 %.114.i.i, 1376
  br i1 %i.aa, label %bb.g, label %egcb_get_type.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = zext nneg i32 %.114.i.i to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %.not.i.i = icmp ult i32 %i.h, %i.ad
  br i1 %.not.i.i, label %egcb_get_type.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  br label %egcb_get_type.exit.i

egcb_get_type.exit.i:                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ag = phi i32 [ %i.af, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 9 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %egcb_get_type.exit.i
  %.016.i56.i = phi i32 [ 1376, %egcb_get_type.exit.i ], [ %.1.i59.i, %bb.i ] ; 2 uses
  %.01315.i57.i = phi i32 [ 0, %egcb_get_type.exit.i ], [ %.114.i58.i, %bb.i ] ; 2 uses
  %i.ah = add i32 %.01315.i57.i, %.016.i56.i
  %i.ai = lshr i32 %i.ah, 1                       ; 3 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %i.an = icmp ugt i32 %i.j, %i.am                ; 2 uses
  %i.ao = add nuw nsw i32 %i.ai, 1
  %.114.i58.i = select i1 %i.an, i32 %i.ao, i32 %.01315.i57.i ; 4 uses
  %.1.i59.i = select i1 %i.an, i32 %.016.i56.i, i32 %i.ai ; 2 uses
  %i.ap = icmp ult i32 %.114.i58.i, %.1.i59.i
  br i1 %i.ap, label %bb.i, label %bb.j, !llvm.loop !77

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ult i32 %.114.i58.i, 1376
  br i1 %i.aq, label %bb.k, label %egcb_get_type.exit61.i

bb.k:                                             ; preds = %bb.j
  %i.ar = zext nneg i32 %.114.i58.i to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !27
  %.not.i60.i = icmp ult i32 %i.j, %i.at
  br i1 %.not.i60.i, label %egcb_get_type.exit61.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28
  br label %egcb_get_type.exit61.i

egcb_get_type.exit61.i:                           ; preds = %bb.l, %bb.k, %bb.j
  %i.aw = phi i32 [ %i.av, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ] ; 8 uses
  %i.ax = icmp eq i32 %i.ag, 0
  %i.ay = icmp eq i32 %i.aw, 0
  %or.cond.i = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond.i, label %egcb_get_type.exit.thread, label %bb.m

bb.m:                                             ; preds = %egcb_get_type.exit61.i
  %i.az = icmp eq i32 %i.ag, 1
  %i.ba = icmp eq i32 %i.aw, 2
  %or.cond3.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond3.i, label %unicode_egcb_is_break_2code.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = add i32 %i.ag, -1
  %or.cond5.i = icmp ult i32 %i.bb, 3
  %i.bc = add i32 %i.aw, -1
  %or.cond7.i = icmp ult i32 %i.bc, 3
  %or.cond55.i = select i1 %or.cond5.i, i1 true, i1 %or.cond7.i
  br i1 %or.cond55.i, label %egcb_get_type.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = icmp ugt i32 %i.ag, 12
  %i.be = icmp ugt i32 %i.aw, 12
  %or.cond9.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond9.i, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bf = icmp eq i32 %i.ag, 13
  %i.bg = icmp ne i32 %i.aw, 16                   ; 2 uses
  %or.cond11.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond11.i, label %unicode_egcb_is_break_2code.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i32 %i.ag, label %bb.s [
    i32 17, label %bb.r
    i32 14, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.bh = and i32 %i.aw, -2
  %or.cond15.i = icmp eq i32 %i.bh, 16
  br i1 %or.cond15.i, label %unicode_egcb_is_break_2code.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = add i32 %i.ag, -17
  %or.cond17.i = icmp ult i32 %i.bi, -2
  %or.cond54.i = select i1 %i.bg, i1 true, i1 %or.cond17.i
  br i1 %or.cond54.i, label %egcb_get_type.exit.thread, label %unicode_egcb_is_break_2code.exit.thread

bb.t:                                             ; preds = %bb.o
  switch i32 %i.aw, label %bb.u [
    i32 8, label %unicode_egcb_is_break_2code.exit.thread
    i32 4, label %unicode_egcb_is_break_2code.exit.thread
    i32 7, label %unicode_egcb_is_break_2code.exit.thread
  ]

bb.u:                                             ; preds = %bb.t
  switch i32 %i.ag, label %bb.w [
    i32 5, label %unicode_egcb_is_break_2code.exit.thread
    i32 8, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bj = tail call i32 @onig_is_in_code_range(ptr noundef nonnull @CR_Extended_Pictographic, i32 noundef %i.j) #9
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %egcb_get_type.exit.thread, label %unicode_egcb_is_break_2code.exit

bb.w:                                             ; preds = %bb.u
  %i.bk = icmp eq i32 %i.ag, 6
  %i.bl = icmp eq i32 %i.aw, 6
  %or.cond21.i = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %or.cond21.i, label %.critedge.preheader, label %egcb_get_type.exit.thread

.critedge.preheader:                              ; preds = %bb.w
  %i.bm = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %.043) #9 ; 2 uses
  %.not5273 = icmp eq ptr %i.bm, null
  br i1 %.not5273, label %unicode_egcb_is_break_2code.exit.thread, label %.lr.ph

unicode_egcb_is_break_2code.exit:                 ; preds = %bb.v, %egcb_get_type.exit
  %.144 = phi ptr [ %i.bn, %egcb_get_type.exit ], [ %.043, %bb.v ]
  %i.bn = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %.144) #9 ; 3 uses
  %.not55 = icmp eq ptr %i.bn, null
  br i1 %.not55, label %egcb_get_type.exit.thread, label %bb.x

bb.x:                                             ; preds = %unicode_egcb_is_break_2code.exit
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.bp = tail call i32 %i.bo(ptr noundef nonnull %i.bn, ptr noundef %4) #9 ; 3 uses
  %i.bq = tail call i32 @onig_is_in_code_range(ptr noundef nonnull @CR_Extended_Pictographic, i32 noundef %i.bp) #9
  %.not56 = icmp eq i32 %i.bq, 0
  br i1 %.not56, label %.preheader, label %unicode_egcb_is_break_2code.exit.thread

.preheader:                                       ; preds = %bb.x, %.preheader
  %.016.i = phi i32 [ %.1.i, %.preheader ], [ 1376, %bb.x ] ; 2 uses
  %.01315.i = phi i32 [ %.114.i, %.preheader ], [ 0, %bb.x ] ; 2 uses
  %i.br = add i32 %.01315.i, %.016.i
  %i.bs = lshr i32 %i.br, 1                       ; 3 uses
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.bx = icmp ugt i32 %i.bp, %i.bw               ; 2 uses
  %i.by = add nuw nsw i32 %i.bs, 1
  %.114.i = select i1 %i.bx, i32 %i.by, i32 %.01315.i ; 4 uses
  %.1.i = select i1 %i.bx, i32 %.016.i, i32 %i.bs ; 2 uses
  %i.bz = icmp ult i32 %.114.i, %.1.i
  br i1 %i.bz, label %.preheader, label %bb.y, !llvm.loop !77

bb.y:                                             ; preds = %.preheader
  %i.ca = icmp ult i32 %.114.i, 1376
  br i1 %i.ca, label %bb.z, label %egcb_get_type.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.cb = zext nneg i32 %.114.i to i64
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !27
  %.not.i59 = icmp ult i32 %i.bp, %i.cd
  br i1 %.not.i59, label %egcb_get_type.exit.thread, label %egcb_get_type.exit

egcb_get_type.exit:                               ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !28
  %.not57 = icmp eq i32 %i.cf, 4
  br i1 %.not57, label %unicode_egcb_is_break_2code.exit, label %egcb_get_type.exit.thread, !llvm.loop !78

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %i.cg = phi ptr [ %i.cz, %.critedge ], [ %i.bm, %.critedge.preheader ] ; 2 uses
  %.074 = phi i32 [ %i.cy, %.critedge ], [ 0, %.critedge.preheader ] ; 4 uses
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.ci = tail call i32 %i.ch(ptr noundef nonnull %i.cg, ptr noundef %4) #9 ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph
  %.016.i60 = phi i32 [ 1376, %.lr.ph ], [ %.1.i63, %bb.aa ] ; 2 uses
  %.01315.i61 = phi i32 [ 0, %.lr.ph ], [ %.114.i62, %bb.aa ] ; 2 uses
  %i.cj = add i32 %.01315.i61, %.016.i60
  %i.ck = lshr i32 %i.cj, 1                       ; 3 uses
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !26
  %i.cp = icmp ugt i32 %i.ci, %i.co               ; 2 uses
  %i.cq = add nuw nsw i32 %i.ck, 1
  %.114.i62 = select i1 %i.cp, i32 %i.cq, i32 %.01315.i61 ; 4 uses
  %.1.i63 = select i1 %i.cp, i32 %.016.i60, i32 %i.ck ; 2 uses
  %i.cr = icmp ult i32 %.114.i62, %.1.i63
  br i1 %i.cr, label %bb.aa, label %bb.ab, !llvm.loop !77

bb.ab:                                            ; preds = %bb.aa
  %i.cs = icmp ult i32 %.114.i62, 1376
  br i1 %i.cs, label %bb.ac, label %egcb_get_type.exit65.thread

bb.ac:                                            ; preds = %bb.ab
  %i.ct = zext nneg i32 %.114.i62 to i64
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr @EGCB_RANGES, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !27
  %.not.i64 = icmp ult i32 %i.ci, %i.cv
  br i1 %.not.i64, label %egcb_get_type.exit65.thread, label %egcb_get_type.exit65

egcb_get_type.exit65:                             ; preds = %bb.ac
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !28
  %.not53 = icmp eq i32 %i.cx, 6
  br i1 %.not53, label %.critedge, label %egcb_get_type.exit65.thread

.critedge:                                        ; preds = %egcb_get_type.exit65
  %i.cy = add nuw nsw i32 %.074, 1                ; 2 uses
  %i.cz = tail call ptr @onigenc_get_prev_char_head(ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %i.cg) #9 ; 2 uses
  %.not52 = icmp eq ptr %i.cz, null
  br i1 %.not52, label %egcb_get_type.exit65.thread, label %.lr.ph, !llvm.loop !79

egcb_get_type.exit65.thread:                      ; preds = %.critedge, %egcb_get_type.exit65, %bb.ac, %bb.ab
  %.0.lcssa.ph = phi i32 [ %i.cy, %.critedge ], [ %.074, %egcb_get_type.exit65 ], [ %.074, %bb.ac ], [ %.074, %bb.ab ]
  %i.da = and i32 %.0.lcssa.ph, 1
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %unicode_egcb_is_break_2code.exit.thread, label %egcb_get_type.exit.thread

egcb_get_type.exit.thread:                        ; preds = %bb.y, %bb.z, %unicode_egcb_is_break_2code.exit, %egcb_get_type.exit, %bb.n, %bb.w, %bb.v, %bb.s, %egcb_get_type.exit61.i, %egcb_get_type.exit65.thread
  br label %unicode_egcb_is_break_2code.exit.thread

unicode_egcb_is_break_2code.exit.thread:          ; preds = %bb.x, %.critedge.preheader, %bb.u, %bb.t, %bb.t, %bb.t, %bb.s, %bb.r, %bb.p, %bb.m, %bb.c, %bb.a, %egcb_get_type.exit65.thread, %egcb_get_type.exit.thread, %bb.e
  %.1 = phi i32 [ %i.q, %bb.e ], [ 1, %bb.a ], [ 0, %bb.t ], [ 1, %egcb_get_type.exit.thread ], [ 1, %bb.c ], [ 0, %.critedge.preheader ], [ 0, %bb.u ], [ 0, %egcb_get_type.exit65.thread ], [ 0, %bb.m ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.t ], [ 0, %bb.x ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @onig_unicode_define_user_property(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @UserDefinedPropertyNum, align 4, !tbaa !22 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 19
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10 ; 3 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 60
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = shl i64 %i.c, 32
  %sext = add i64 %i.f, 4294967296
  %i.g = ashr exact i64 %sext, 32
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #11 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.j = icmp sgt i32 %i.d, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = and i64 %i.c, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.045 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %bb.g ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !24    ; 3 uses
  %or.cond = icmp slt i8 %i.l, 32
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef %i.h) #9
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph
  switch i8 %i.l, label %bb.f [
    i8 95, label %bb.g
    i8 45, label %bb.g
    i8 32, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = sext i32 %.045 to i64
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !24
  %i.o = add nsw i32 %.045, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.f
  %.1 = phi i32 [ %i.o, %bb.f ], [ %.045, %bb.e ], [ %.045, %bb.e ], [ %.045, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.p = sext i32 %.1 to i64
  br label %._crit_edge
end_hunk_2
