Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaGen?download=true
inline.NumInlined: 491
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@Gia_ManGenCompact:bb.a
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !21
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !42  ; 7 uses
  %i.bk = load i32, ptr %5, align 8, !tbaa !44
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %bb.t, label %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge

Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge:  ; preds = %Vec_IntPush.exit26
  %.pre41 = load ptr, ptr %i.w, align 8, !tbaa !45
  br label %Vec_IntPush.exit34

bb.t:                                             ; preds = %Vec_IntPush.exit26
  %i.bm = icmp slt i32 %i.bj, 16
  br i1 %i.bm, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %i.w, align 8, !tbaa !45  ; 2 uses
  %.not9.i.i32 = icmp eq ptr %i.bn, null
  br i1 %.not9.i.i32, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bn, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i30

bb.w:                                             ; preds = %bb.u
  %i.bp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i30

bb.x:                                             ; preds = %bb.t
  %i.bq = icmp samesign ult i32 %i.bj, 1073741823
  %i.br = shl nuw nsw i32 %i.bj, 1
  %spec.select.i27 = select i1 %i.bq, i32 %i.br, i32 2147483647 ; 4 uses
  %.not.i9.i28 = icmp samesign ult i32 %i.bj, %spec.select.i27
  %.pre42 = load ptr, ptr %i.w, align 8, !tbaa !45 ; 3 uses
  br i1 %.not.i9.i28, label %bb.y, label %Vec_IntPush.exit34

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i29 = icmp eq ptr %.pre42, null
  %i.bs = zext nneg i32 %spec.select.i27 to i64
  %i.bt = shl nuw nsw i64 %i.bs, 2                ; 2 uses
  br i1 %.not9.i10.i29, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bu = call ptr @realloc(ptr noundef nonnull %.pre42, i64 noundef %i.bt) #24
  br label %Vec_IntGrow.exit11.sink.split.i30

bb.aa:                                            ; preds = %bb.y
  %i.bv = call noalias ptr @malloc(i64 noundef %i.bt) #25
  br label %Vec_IntGrow.exit11.sink.split.i30

Vec_IntGrow.exit11.sink.split.i30:                ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %storemerge = phi ptr [ %i.bp, %bb.w ], [ %i.bo, %bb.v ], [ %i.bu, %bb.z ], [ %i.bv, %bb.aa ] ; 2 uses
  %spec.select.sink.i31 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i27, %bb.z ], [ %spec.select.i27, %bb.aa ]
  store ptr %storemerge, ptr %i.w, align 8, !tbaa !45
  store i32 %spec.select.sink.i31, ptr %5, align 8, !tbaa !44
  %.pre43 = load i32, ptr %i.c, align 4, !tbaa !42
  br label %Vec_IntPush.exit34

Vec_IntPush.exit34:                               ; preds = %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge, %bb.x, %Vec_IntGrow.exit11.sink.split.i30
  %i.bw = phi i32 [ %i.bj, %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge ], [ %i.bj, %bb.x ], [ %.pre43, %Vec_IntGrow.exit11.sink.split.i30 ] ; 2 uses
  %i.bx = phi ptr [ %.pre41, %Vec_IntPush.exit26.Vec_IntPush.exit34_crit_edge ], [ %.pre42, %bb.x ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i30 ]
  %i.by = add nsw i32 %i.bw, 1
  store i32 %i.by, ptr %i.c, align 4, !tbaa !42
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz
  store i32 %i.bi, ptr %i.ca, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.cb = sext i32 %.val to i64
  %i.cc = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %bb.k, label %.critedge, !llvm.loop !174

.critedge:                                        ; preds = %Vec_IntPush.exit34, %Vec_IntPush.exit
  %i.cd = load i32, ptr %i.c, align 4, !tbaa !42
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.c, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Gia_ManGenNeuronCreateArgs(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val45 = load i32, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val46 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.c = sext i32 %.val45 to i64
  %i.d = getelementptr [8 x i8], ptr %.val46, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18   ; 3 uses
  %i.g = mul nsw i32 %.val45, %1                  ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 7 uses
  %i.i = add i32 %i.g, -1
  %or.cond.i = icmp ult i32 %i.i, 7
  %spec.store.select.i = select i1 %or.cond.i, i32 8, i32 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store i32 %spec.store.select.i, ptr %i.h, align 8, !tbaa !175
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_WecGrow.exit.i, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.a
  %i.k = sext i32 %spec.store.select.i to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 16) #26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !177
  br label %Vec_WecPushLevel.exit

Vec_WecGrow.exit.i:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %calloc = tail call dereferenceable_or_null(256) ptr @calloc(i64 1, i64 256) ; 2 uses
  store ptr %calloc, ptr %i.n, align 8, !tbaa !177
  store i32 16, ptr %i.h, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i
  %i.o = phi i32 [ %spec.store.select.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ 16, %Vec_WecGrow.exit.i ]
  %i.p = phi ptr [ %i.m, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.n, %Vec_WecGrow.exit.i ] ; 2 uses
  %.val8.i = phi ptr [ %i.l, %.Vec_WecGrow.exit12_crit_edge.i ], [ %calloc, %Vec_WecGrow.exit.i ] ; 6 uses
  store i32 1, ptr %i.j, align 4, !tbaa !178
  %.not.i.i = icmp sgt i32 %2, 0                  ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %Vec_IntFill.exit

bb.b:                                             ; preds = %Vec_WecPushLevel.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !45   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.r, null
  %i.s = zext nneg i32 %2 to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  br i1 %.not9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = tail call ptr @realloc(ptr noundef nonnull %i.r, i64 noundef %i.t) #24
  br label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #25
  br label %.lr.ph

Vec_IntFill.exit:                                 ; preds = %Vec_WecPushLevel.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %2, ptr %i.w, align 4, !tbaa !42
  br label %.preheader

.lr.ph:                                           ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %i.u, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  store ptr %i.x, ptr %i.q, align 8, !tbaa !45
  store i32 %2, ptr %.val8.i, align 8, !tbaa !44
  %i.y = zext nneg i32 %2 to i64
  %i.z = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %i.z, i1 false), !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.val8.i, i64 4
  store i32 %2, ptr %i.aa, align 4, !tbaa !42
  %i.ab = getelementptr i8, ptr %.val8.i, i64 8   ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ac = icmp eq i32 %2, 1
  br i1 %i.ac, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod111 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.ad = shl nuw i64 1, %indvars.iv.epil.init
  %i.ae = and i64 %i.ad, %i.f
  %.not43.epil = icmp eq i64 %i.ae, 0
  br i1 %.not43.epil, label %.preheader, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %.val49.epil = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.val49.epil, i64 %indvars.iv.epil.init
  store i32 1, ptr %i.af, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %Vec_IntFill.exit
  %.val73 = load i32, ptr %i.a, align 4, !tbaa !51
  %i.ag = icmp sgt i32 %.val73, 1
  br i1 %i.ag, label %.lr.ph76, label %.critedge

.lr.ph76:                                         ; preds = %.preheader
  %i.ah = icmp sgt i32 %1, 0
  %i.ai = sext i32 %2 to i64
  %i.aj = shl nsw i64 %i.ai, 2                    ; 2 uses
  %i.ak = zext i32 %2 to i64                      ; 3 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  br i1 %i.ah, label %.lr.ph76.split, label %.critedge

.lr.ph76.split:                                   ; preds = %.lr.ph76
  %wide.trip.count93 = zext nneg i32 %1 to i64
  %xtraiter113 = and i64 %i.ak, 1
  %i.am = icmp eq i32 %2, 1
  %unroll_iter116 = and i64 %i.ak, 2147483646
  %sext = zext nneg i32 %2 to i64
  %sext118 = zext nneg i32 %2 to i64
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  %lcmp.mod115 = trunc i32 %2 to i1
  br label %.lr.ph71

bb.f:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.an = shl nuw i64 1, %indvars.iv
  %i.ao = and i64 %i.an, %i.f
  %.not43 = icmp eq i64 %i.ao, 0
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val49 = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.val49, i64 %indvars.iv
  store i32 1, ptr %i.ap, align 4, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aq = shl nuw i64 2, %indvars.iv
  %i.ar = and i64 %i.aq, %i.f
  %.not43.1 = icmp eq i64 %i.ar, 0
  br i1 %.not43.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val49.1 = load ptr, ptr %i.ab, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val49.1, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 1, ptr %i.at, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.f, !llvm.loop !179

.lr.ph71:                                         ; preds = %.lr.ph76.split, %._crit_edge72
  %.val8.pre.i5298 = phi ptr [ %.val8.i, %.lr.ph76.split ], [ %.val8.pre.i52100, %._crit_edge72 ]
  %i.au = phi i32 [ %i.o, %.lr.ph76.split ], [ %i.bq, %._crit_edge72 ]
  %indvars.iv95 = phi i64 [ 0, %.lr.ph76.split ], [ %indvars.iv.next96, %._crit_edge72 ] ; 2 uses
  %.lcssa78 = phi i64 [ 1, %.lr.ph76.split ], [ %indvars.iv.next87, %._crit_edge72 ]
  %.075 = phi i32 [ 2, %.lr.ph76.split ], [ %i.cs, %._crit_edge72 ]
  %.val47 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %indvars.iv95
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !18 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph71, %._crit_edge
  %i.ax = phi ptr [ %.val8.pre.i5298, %.lr.ph71 ], [ %.val8.pre.i52100, %._crit_edge ] ; 4 uses
  %i.ay = phi i32 [ %i.au, %.lr.ph71 ], [ %i.bq, %._crit_edge ] ; 3 uses
  %indvars.iv88 = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next89, %._crit_edge ] ; 4 uses
  %indvars.iv86 = phi i64 [ %.lcssa78, %.lr.ph71 ], [ %indvars.iv.next87, %._crit_edge ] ; 8 uses
  %.169 = phi i32 [ %.075, %.lr.ph71 ], [ %i.cs, %._crit_edge ] ; 4 uses
  %i.az = trunc nsw i64 %indvars.iv86 to i32
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.l, label %Vec_WecPushLevel.exit59

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp slt i64 %indvars.iv86, 16
  %.not13.i.i56 = icmp eq ptr %i.ax, null         ; 2 uses
  br i1 %i.bb, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br i1 %.not13.i.i56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 256) #24
  br label %Vec_WecGrow.exit.i58

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i58

Vec_WecGrow.exit.i58:                             ; preds = %bb.o, %bb.n
  %i.be = phi ptr [ %i.bc, %bb.n ], [ %i.bd, %bb.o ] ; 3 uses
  store ptr %i.be, ptr %i.p, align 8, !tbaa !177
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %indvars.iv86
  %i.bg = sub nsw i32 16, %i.ay
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bi, i1 false)
  br label %Vec_WecPushLevel.exit59.sink.split

bb.p:                                             ; preds = %bb.l
  %i.bj = shl nuw nsw i64 %indvars.iv86, 5        ; 2 uses
  br i1 %.not13.i.i56, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef %i.bj) #24
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bl = tail call noalias ptr @malloc(i64 noundef %i.bj) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = phi ptr [ %i.bk, %bb.q ], [ %i.bl, %bb.r ] ; 3 uses
  store ptr %i.bm, ptr %i.p, align 8, !tbaa !177
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %indvars.iv86
  %i.bo = shl nsw i64 %indvars.iv86, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bn, i8 0, i64 %i.bo, i1 false)
  %indvars.iv86.tr = trunc i64 %indvars.iv86 to i32
  %i.bp = shl i32 %indvars.iv86.tr, 1
  br label %Vec_WecPushLevel.exit59.sink.split

Vec_WecPushLevel.exit59.sink.split:               ; preds = %bb.s, %Vec_WecGrow.exit.i58
  %.sink = phi i32 [ 16, %Vec_WecGrow.exit.i58 ], [ %i.bp, %bb.s ] ; 2 uses
  %.val8.pre.i52100.ph = phi ptr [ %i.be, %Vec_WecGrow.exit.i58 ], [ %i.bm, %bb.s ]
  store i32 %.sink, ptr %i.h, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit59

Vec_WecPushLevel.exit59:                          ; preds = %Vec_WecPushLevel.exit59.sink.split, %bb.k
  %.val8.pre.i52100 = phi ptr [ %i.ax, %bb.k ], [ %.val8.pre.i52100.ph, %Vec_WecPushLevel.exit59.sink.split ] ; 3 uses
  %i.bq = phi i32 [ %i.ay, %bb.k ], [ %.sink, %Vec_WecPushLevel.exit59.sink.split ] ; 2 uses
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1 ; 4 uses
  %i.br = getelementptr inbounds [16 x i8], ptr %.val8.pre.i52100, i64 %indvars.iv.next87 ; 6 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -16 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !44
  %.not.i.i60 = icmp slt i32 %i.bt, %2
  br i1 %.not.i.i60, label %bb.t, label %Vec_IntGrow.exit.i61

bb.t:                                             ; preds = %Vec_WecPushLevel.exit59
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 -8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i63 = icmp eq ptr %i.bv, null
  br i1 %.not9.i.i63, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = tail call ptr @realloc(ptr noundef nonnull %i.bv, i64 noundef %i.aj) #24
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bx = tail call noalias ptr @malloc(i64 noundef %i.aj) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.by = phi ptr [ %i.bw, %bb.u ], [ %i.bx, %bb.v ]
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !45
  store i32 %2, ptr %i.bs, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.i61

Vec_IntGrow.exit.i61:                             ; preds = %bb.w, %Vec_WecPushLevel.exit59
  br i1 %.not.i.i, label %.lr.ph67, label %Vec_IntFill.exit64

Vec_IntFill.exit64:                               ; preds = %Vec_IntGrow.exit.i61
  %i.bz = getelementptr inbounds i8, ptr %i.br, i64 -12
  store i32 %2, ptr %i.bz, align 4, !tbaa !42
  br label %._crit_edge

.lr.ph67:                                         ; preds = %Vec_IntGrow.exit.i61
  %i.ca = getelementptr inbounds i8, ptr %i.br, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cb, i8 0, i64 %i.al, i1 false), !tbaa !21
  %i.cc = getelementptr inbounds i8, ptr %i.br, i64 -12
  store i32 %2, ptr %i.cc, align 4, !tbaa !42
  %i.cd = getelementptr i8, ptr %i.br, i64 -8     ; 3 uses
  br i1 %i.am, label %.epil.preheader112, label %.lr.ph67.new

.lr.ph67.new:                                     ; preds = %.lr.ph67, %bb.ac
  %indvars.iv81 = phi i64 [ %indvars.iv.next82.1, %bb.ac ], [ 0, %.lr.ph67 ] ; 5 uses
  %niter117 = phi i64 [ %niter117.next.1, %bb.ac ], [ 0, %.lr.ph67 ]
  %i.ce = shl nuw i64 1, %indvars.iv81
  %i.cf = and i64 %i.ce, %i.aw
  %.not = icmp eq i64 %i.cf, 0
  br i1 %.not, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph67.new
  %i.cg = add nuw nsw i64 %indvars.iv81, %indvars.iv88 ; 2 uses
  %3 = icmp samesign ult i64 %i.cg, %sext118
  br i1 %3, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.val48 = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val48, i64 %i.cg
  store i32 %.169, ptr %i.ch, align 4, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph67.new, %bb.x, %bb.y
  %i.ci = shl nuw i64 2, %indvars.iv81
  %i.cj = and i64 %i.ci, %i.aw
  %.not.1 = icmp eq i64 %i.cj, 0
  br i1 %.not.1, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next82 = or disjoint i64 %indvars.iv81, 1
  %i.ck = add nuw nsw i64 %indvars.iv.next82, %indvars.iv88 ; 2 uses
  %4 = icmp samesign ult i64 %i.ck, %sext
  br i1 %4, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.val48.1 = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.val48.1, i64 %i.ck
  store i32 %.169, ptr %i.cl, align 4, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next82.1 = add nuw nsw i64 %indvars.iv81, 2 ; 2 uses
  %niter117.next.1 = add i64 %niter117, 2         ; 2 uses
  %niter117.ncmp.1 = icmp eq i64 %niter117.next.1, %unroll_iter116
  br i1 %niter117.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph67.new, !llvm.loop !180

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ac
  br i1 %lcmp.mod114.not, label %._crit_edge, label %.epil.preheader112

.epil.preheader112:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph67
  %indvars.iv81.epil.init = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next82.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.cm = shl nuw i64 1, %indvars.iv81.epil.init
  %i.cn = and i64 %i.cm, %i.aw
  %.not.epil = icmp eq i64 %i.cn, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %.epil.preheader112
  %i.co = add nuw nsw i64 %indvars.iv81.epil.init, %indvars.iv88 ; 2 uses
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = icmp sgt i32 %2, %i.cp
  br i1 %i.cq, label %bb.ae, label %._crit_edge

bb.ae:                                            ; preds = %bb.ad
  %.val48.epil = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.val48.epil, i64 %i.co
  store i32 %.169, ptr %i.cr, align 4, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.ae, %bb.ad, %.epil.preheader112, %Vec_IntFill.exit64
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.cs = add nsw i32 %.169, 2                    ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count93
  br i1 %exitcond94.not, label %._crit_edge72, label %bb.k, !llvm.loop !181

._crit_edge72:                                    ; preds = %._crit_edge
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !51
  %i.ct = add nsw i32 %.val, -1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next96, %i.cu
  br i1 %i.cv, label %.lr.ph71, label %..critedge_crit_edge, !llvm.loop !182

..critedge_crit_edge:                             ; preds = %._crit_edge72
  %i.cw = trunc nsw i64 %indvars.iv.next87 to i32
  store i32 %i.cw, ptr %i.j, align 4, !tbaa !178
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.lr.ph76, %.preheader
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gia_ManGenNeuronTransformArgs(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 7 uses
  %.val33 = load i32, ptr %i.a, align 4, !tbaa !178 ; 4 uses
  %i.b = add i32 %2, -2
  %i.c = add i32 %i.b, %.val33
  %i.d = sdiv i32 %i.c, %2                        ; 3 uses
  %i.e = mul nsw i32 %i.d, %2                     ; 2 uses
  %.not63 = icmp sgt i32 %.val33, %i.e
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr i8, ptr %1, i64 8 ; 5 uses
  %i.f = sext i32 %3 to i64
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.h = icmp sgt i32 %3, 0
  %i.i = zext nneg i32 %3 to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Vec_IntFill.exit
  %.val3264 = phi i32 [ %.val33, %.lr.ph ], [ %.val32.pr, %Vec_IntFill.exit ] ; 5 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !175
  %i.l = icmp eq i32 %.val3264, %i.k
  br i1 %i.l, label %bb.c, label %.Vec_WecGrow.exit12_crit_edge.i

.Vec_WecGrow.exit12_crit_edge.i:                  ; preds = %bb.b
  %.val8.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  br label %Vec_WecPushLevel.exit

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %.val3264, 16
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.n, null
  br i1 %.not13.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call dereferenceable_or_null(256) ptr @realloc(ptr noundef nonnull %i.n, i64 noundef 256) #24
  %.pre.i.i = load i32, ptr %1, align 8, !tbaa !175
  br label %Vec_WecGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = tail call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #25
  br label %Vec_WecGrow.exit.i

Vec_WecGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre.i.i, %bb.e ], [ %.val3264, %bb.f ] ; 2 uses
  %i.r = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ] ; 3 uses
  store ptr %i.r, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s
  %i.u = sub nsw i32 16, %i.q
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  store i32 16, ptr %1, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

bb.g:                                             ; preds = %bb.c
  %i.x = shl nuw nsw i32 %.val3264, 1             ; 3 uses
  %i.y = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !177 ; 2 uses
  %.not13.i10.i = icmp eq ptr %i.y, null
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw nsw i64 %i.z, 4                 ; 2 uses
  br i1 %.not13.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call ptr @realloc(ptr noundef nonnull %i.y, i64 noundef %i.aa) #24
  %.pre.i11.i = load i32, ptr %1, align 8, !tbaa !175
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.aa) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi i32 [ %.pre.i11.i, %bb.h ], [ %.val3264, %bb.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ab, %bb.h ], [ %i.ac, %bb.i ] ; 3 uses
  store ptr %i.ae, ptr %.phi.trans.insert.i, align 8, !tbaa !177
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.af
  %i.ah = sub nsw i32 %i.x, %i.ad
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.aj, i1 false)
  store i32 %i.x, ptr %1, align 8, !tbaa !175
  br label %Vec_WecPushLevel.exit

Vec_WecPushLevel.exit:                            ; preds = %.Vec_WecGrow.exit12_crit_edge.i, %Vec_WecGrow.exit.i, %bb.j
  %.val8.i = phi ptr [ %.val8.pre.i, %.Vec_WecGrow.exit12_crit_edge.i ], [ %i.ae, %bb.j ], [ %i.r, %Vec_WecGrow.exit.i ]
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !178
  %i.al = add nsw i32 %i.ak, 1                    ; 2 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !178
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %.val8.i, i64 %i.am ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !44
  %.not.i.i = icmp slt i32 %i.ap, %3
  br i1 %.not.i.i, label %bb.k, label %Vec_IntGrow.exit.i

bb.k:                                             ; preds = %Vec_WecPushLevel.exit
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @realloc(ptr noundef nonnull %i.ar, i64 noundef %i.g) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.g) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.au = phi ptr [ %i.as, %bb.l ], [ %i.at, %bb.m ]
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !45
  store i32 %3, ptr %i.ao, align 8, !tbaa !44
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.n, %Vec_WecPushLevel.exit
  br i1 %i.h, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %Vec_IntGrow.exit.i
  %i.av = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !45
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aw, i8 0, i64 %i.j, i1 false), !tbaa !21
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %Vec_IntGrow.exit.i, %.lr.ph.i
  %i.ax = getelementptr inbounds i8, ptr %i.an, i64 -12
  store i32 %3, ptr %i.ax, align 4, !tbaa !42
  %.val32.pr = load i32, ptr %i.a, align 4, !tbaa !178 ; 3 uses
  %.not = icmp sgt i32 %.val32.pr, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !183

._crit_edge:                                      ; preds = %Vec_IntFill.exit, %bb.a
end_hunk_0
begin_hunk_1_@Gia_ManGenBK:bb.a
  br i1 %i.bd, label %bb.d, label %._crit_edge48, !llvm.loop !220

._crit_edge48:                                    ; preds = %bb.d, %bb.c
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count
  br i1 %exitcond65.not, label %._crit_edge52, label %bb.c, !llvm.loop !221

._crit_edge52:                                    ; preds = %._crit_edge48, %._crit_edge44.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenHC(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  %i.b = add i32 %0, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %0, i32 %i.d       ; 4 uses
  %i.e = shl nuw i32 1, %.09.i                    ; 6 uses
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %.preheader29

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !213  ; 5 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.m = icmp ult i64 %i.j, 6
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.l, -4
  br label %bb.c

.preheader29.loopexit.unr-lcssa:                  ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader29, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader29.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.preheader29.loopexit.unr-lcssa ]
  %lcmp.mod49 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod49)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.epil
  %i.o = trunc nuw nsw i64 %indvars.iv.epil to i32
  %i.p = add nsw i32 %i.o, -1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader29, label %bb.b, !llvm.loop !222

.preheader29:                                     ; preds = %.preheader29.loopexit.unr-lcssa, %bb.b, %bb.a
  %.not33 = icmp samesign ult i32 %.09.i, 2
  br i1 %.not33, label %.preheader, label %.lr.ph35.preheader

.lr.ph35.preheader:                               ; preds = %.preheader29
  %i.q = zext nneg i32 %i.e to i64
  %i.r = add nuw nsw i32 %.09.i, 1
  %wide.trip.count = zext nneg i32 %i.r to i64
  br label %.lr.ph35

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.z = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.2
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader29.loopexit.unr-lcssa, label %bb.c, !llvm.loop !223

.preheader:                                       ; preds = %._crit_edge, %.preheader29
  %i.ae = icmp sgt i32 %i.e, 2
  br i1 %i.ae, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %.preheader
  %i.af = zext nneg i32 %.09.i to i64
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !213
  %i.aj = zext nneg i32 %i.e to i64
  br label %bb.e

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ 2, %.lr.ph35.preheader ], [ %indvars.iv.next44, %._crit_edge ] ; 3 uses
  %i.ak = trunc i64 %indvars.iv43 to i32
  %i.al = add i32 %i.ak, -1
  %i.am = shl nuw i32 1, %i.al                    ; 3 uses
  %i.an = add nuw nsw i32 %i.am, 1
  %i.ao = icmp slt i32 %i.an, %i.e
  br i1 %i.ao, label %.lr.ph32, label %._crit_edge

.lr.ph32:                                         ; preds = %.lr.ph35
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !213
  %i.ar = sext i32 %i.am to i64
  %i.as = add nsw i64 %i.ar, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph32, %bb.d
  %indvars.iv40 = phi i64 [ %i.as, %.lr.ph32 ], [ %indvars.iv.next41, %bb.d ] ; 3 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv40
  %i.au = trunc i64 %indvars.iv40 to i32
  %i.av = sub i32 %i.au, %i.am
  store i32 %i.av, ptr %i.at, align 4, !tbaa !21
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, 2 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next41, %i.q
  br i1 %i.aw, label %bb.d, label %._crit_edge, !llvm.loop !224

._crit_edge:                                      ; preds = %bb.d, %.lr.ph35
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph35, !llvm.loop !225

bb.e:                                             ; preds = %.lr.ph37, %bb.e
  %indvars.iv46 = phi i64 [ 2, %.lr.ph37 ], [ %indvars.iv.next47, %bb.e ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv46
  %i.ay = trunc nuw nsw i64 %indvars.iv46 to i32
  %i.az = add nsw i32 %i.ay, -1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !21
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 2 ; 2 uses
  %i.ba = icmp samesign ult i64 %indvars.iv.next47, %i.aj
  br i1 %i.ba, label %bb.e, label %._crit_edge38, !llvm.loop !226

._crit_edge38:                                    ; preds = %bb.e, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Gia_ManGenRca(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp sgt i32 %0, 1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  %i.b = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 3 uses
  %i.c = add nsw i32 %0, -2
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = trunc i64 %indvars.iv to i32
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !213
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.m = trunc i64 %indvars.iv.next to i32
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !213
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.1
  %i.r = trunc i64 %indvars.iv.next.1 to i32
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !21
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next.2
  %i.w = trunc i64 %indvars.iv.next.2 to i32
  %i.x = add nsw i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !227

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !213
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.epil
  %i.ab = trunc i64 %indvars.iv.epil to i32
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !228

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Gia_ManGenPrint(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = add i32 %0, -1                           ; 2 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02125 = phi i32 [ %i.d, %.lr.ph ], [ %i.a, %bb.a ] ; 3 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %.02125) ; 0 uses
  %i.d = add nsw i32 %.02125, -1
  %.not = icmp eq i32 %.02125, 0
  br i1 %.not, label %.preheader.us.us.preheader, label %.lr.ph, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %._crit_edge35

.preheader.us.us.preheader:                       ; preds = %.lr.ph
  %putchar50 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.e = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge33.us.us
  %indvars.iv46 = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvars.iv.next47, %._crit_edge33.us.us ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv46
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ %i.e, %.preheader.us.us ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !213
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !21   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i32 noundef %i.i) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.76) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.m = icmp sgt i64 %indvars.iv, 0
  br i1 %i.m, label %bb.b, label %._crit_edge33.us.us, !llvm.loop !230

._crit_edge33.us.us:                              ; preds = %bb.e
  %putchar24.us.us = tail call i32 @putchar(i32 10) ; 0 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge35, label %.preheader.us.us, !llvm.loop !231

._crit_edge35:                                    ; preds = %._crit_edge33.us.us, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManGenPrefix(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !21
  %i.b = load i32, ptr %1, align 4, !tbaa !21
  %i.c = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.b, i32 noundef %4) #23
  %i.d = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.c) #23
  store i32 %i.d, ptr %2, align 4, !tbaa !21
  %i.e = load i32, ptr %1, align 4, !tbaa !21
  %i.f = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.e, i32 noundef %3) #23
  store i32 %i.f, ptr %1, align 4, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManGenAdder(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 2
  %i.b = add i32 %0, -1                           ; 2 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %0, i32 %i.d       ; 11 uses
  %i.e = icmp ne i32 %4, 0                        ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %0) ; 0 uses
  br label %Gia_ManGenSK.exit

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i32 1, %.09.i                    ; 12 uses
  %i.h = add nuw nsw i32 %i.g, 2                  ; 2 uses
  %i.i = tail call ptr @Extra_ArrayAlloc(i32 noundef %i.h, i32 noundef %i.h, i32 noundef 4) #23 ; 31 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %0) ; 0 uses
  %i.k = icmp sgt i32 %0, -2
  br i1 %i.k, label %.preheader.preheader.i, label %Gia_ManGenPrep.exit

.preheader.preheader.i:                           ; preds = %bb.c
  %i.l = add nsw i32 %0, 2
  %i.m = zext nneg i32 %i.l to i64                ; 3 uses
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 9 uses
  %xtraiter = and i64 %i.m, 7                     ; 3 uses
  %i.o = add i32 %0, 1
  %i.p = icmp ult i32 %i.o, 7
  br i1 %i.p, label %.preheader.i.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter = and i64 %i.m, 2147483640
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvars.iv.next.i.7, %.preheader.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter.next.7, %.preheader.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.u, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aa, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %Gia_ManGenPrep.exit.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !214

Gia_ManGenPrep.exit.loopexit.unr-lcssa:           ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Gia_ManGenPrep.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Gia_ManGenPrep.exit.loopexit.unr-lcssa, %.preheader.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i.7, %Gia_ManGenPrep.exit.loopexit.unr-lcssa ]
  %lcmp.mod354 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod354)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.preheader.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.preheader.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter.next, %.preheader.i.epil ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.epil
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 -1, i64 %i.n, i1 false), !tbaa !21
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
end_hunk_1
begin_hunk_2_@Gia_ManGenAdder:bb.a
  %i.df = zext nneg i32 %i.cz to i64
  %i.dg = sext i32 %i.cv to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph47.i, %bb.n
  %indvars.iv58.i = phi i64 [ %i.dd, %.lr.ph47.i ], [ %indvars.iv.next59.i, %bb.n ] ; 2 uses
  %i.dh = sub nsw i64 %i.co, %indvars.iv58.i
  %i.di = add nsw i64 %i.dh, %i.df                ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.di
  %i.dk = trunc i64 %i.di to i32
  %i.dl = sub i32 %i.dk, %i.cy
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !21
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, %i.de ; 2 uses
  %i.dm = icmp slt i64 %indvars.iv.next59.i, %i.dg
  br i1 %i.dm, label %bb.n, label %._crit_edge48.i, !llvm.loop !234

._crit_edge48.i:                                  ; preds = %bb.n, %bb.m
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count.i205
  br i1 %exitcond65.not.i, label %Gia_ManGenSK.exit, label %bb.m, !llvm.loop !221

bb.o:                                             ; preds = %bb.j
  %.not187 = icmp eq i32 %3, 0
  br i1 %.not187, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = icmp sgt i32 %i.g, 1
  br i1 %i.dn, label %.lr.ph.i217, label %.preheader29.i

.lr.ph.i217:                                      ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !213 ; 5 uses
  %i.dq = zext nneg i32 %i.g to i64
  %i.dr = add nsw i64 %i.dq, -2                   ; 2 uses
  %i.ds = lshr i64 %i.dr, 1
  %i.dt = add nuw i64 %i.ds, 1                    ; 2 uses
  %xtraiter362 = and i64 %i.dt, 3                 ; 3 uses
  %i.du = icmp ult i64 %i.dr, 6
  br i1 %i.du, label %.epil.preheader361, label %.lr.ph.i217.new

.lr.ph.i217.new:                                  ; preds = %.lr.ph.i217
  %unroll_iter366 = and i64 %i.dt, -4
  br label %bb.r

.preheader29.i.loopexit.unr-lcssa:                ; preds = %bb.r
  %lcmp.mod364.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod364.not, label %.preheader29.i, label %.epil.preheader361

.epil.preheader361:                               ; preds = %.preheader29.i.loopexit.unr-lcssa, %.lr.ph.i217
  %indvars.iv.i218.epil.init = phi i64 [ 1, %.lr.ph.i217 ], [ %indvars.iv.next.i219.3, %.preheader29.i.loopexit.unr-lcssa ]
  %lcmp.mod365 = icmp ne i64 %xtraiter362, 0
  tail call void @llvm.assume(i1 %lcmp.mod365)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader361
  %indvars.iv.i218.epil = phi i64 [ %indvars.iv.i218.epil.init, %.epil.preheader361 ], [ %indvars.iv.next.i219.epil, %bb.q ] ; 3 uses
  %epil.iter363 = phi i64 [ 0, %.epil.preheader361 ], [ %epil.iter363.next, %bb.q ]
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i218.epil
  %i.dw = trunc nuw nsw i64 %indvars.iv.i218.epil to i32
  %i.dx = add nsw i32 %i.dw, -1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !21
  %indvars.iv.next.i219.epil = add nuw nsw i64 %indvars.iv.i218.epil, 2
  %epil.iter363.next = add i64 %epil.iter363, 1   ; 2 uses
  %epil.iter363.cmp.not = icmp eq i64 %epil.iter363.next, %xtraiter362
  br i1 %epil.iter363.cmp.not, label %.preheader29.i, label %bb.q, !llvm.loop !235

.preheader29.i:                                   ; preds = %.preheader29.i.loopexit.unr-lcssa, %bb.q, %bb.p
  %.not33.i = icmp samesign ult i32 %.09.i, 2
  br i1 %.not33.i, label %.preheader.i216, label %.lr.ph35.preheader.i

.lr.ph35.preheader.i:                             ; preds = %.preheader29.i
  %i.dy = zext nneg i32 %i.g to i64
  %i.dz = add nuw nsw i32 %.09.i, 1
  %wide.trip.count.i213 = zext nneg i32 %i.dz to i64
  br label %.lr.ph35.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i217.new
  %indvars.iv.i218 = phi i64 [ 1, %.lr.ph.i217.new ], [ %indvars.iv.next.i219.3, %bb.r ] ; 6 uses
  %niter367 = phi i64 [ 0, %.lr.ph.i217.new ], [ %niter367.next.3, %bb.r ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i218
  %i.eb = trunc nuw nsw i64 %indvars.iv.i218 to i32
  %i.ec = add nsw i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !21
  %indvars.iv.next.i219 = add nuw nsw i64 %indvars.iv.i218, 2 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219
  %i.ee = trunc nuw nsw i64 %indvars.iv.next.i219 to i32
  %i.ef = add nsw i32 %i.ee, -1
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !21
  %indvars.iv.next.i219.1 = add nuw nsw i64 %indvars.iv.i218, 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219.1
  %i.eh = trunc nuw nsw i64 %indvars.iv.next.i219.1 to i32
  %i.ei = add nsw i32 %i.eh, -1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !21
  %indvars.iv.next.i219.2 = add nuw nsw i64 %indvars.iv.i218, 6 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i219.2
  %i.ek = trunc nuw nsw i64 %indvars.iv.next.i219.2 to i32
  %i.el = add nsw i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !21
  %indvars.iv.next.i219.3 = add nuw nsw i64 %indvars.iv.i218, 8 ; 2 uses
  %niter367.next.3 = add i64 %niter367, 4         ; 2 uses
  %niter367.ncmp.3.not = icmp eq i64 %niter367.next.3, %unroll_iter366
  br i1 %niter367.ncmp.3.not, label %.preheader29.i.loopexit.unr-lcssa, label %bb.r, !llvm.loop !223

.preheader.i216:                                  ; preds = %._crit_edge.i214, %.preheader29.i
  %i.em = icmp sgt i32 %i.g, 2
  br i1 %i.em, label %.lr.ph37.i, label %Gia_ManGenSK.exit

.lr.ph37.i:                                       ; preds = %.preheader.i216
  %i.en = zext nneg i32 %.09.i to i64
  %i.eo = getelementptr [8 x i8], ptr %i.i, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !213
  %i.er = zext nneg i32 %i.g to i64
  br label %bb.t

.lr.ph35.i:                                       ; preds = %._crit_edge.i214, %.lr.ph35.preheader.i
  %indvars.iv43.i = phi i64 [ 2, %.lr.ph35.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i214 ] ; 3 uses
  %i.es = trunc i64 %indvars.iv43.i to i32
  %i.et = add i32 %i.es, -1
  %i.eu = shl nuw i32 1, %i.et                    ; 3 uses
  %i.ev = add nuw nsw i32 %i.eu, 1
  %i.ew = icmp slt i32 %i.ev, %i.g
  br i1 %i.ew, label %.lr.ph32.i, label %._crit_edge.i214

.lr.ph32.i:                                       ; preds = %.lr.ph35.i
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv43.i
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !213
  %i.ez = sext i32 %i.eu to i64
  %i.fa = add nsw i64 %i.ez, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph32.i
  %indvars.iv40.i = phi i64 [ %i.fa, %.lr.ph32.i ], [ %indvars.iv.next41.i, %bb.s ] ; 3 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv40.i
  %i.fc = trunc i64 %indvars.iv40.i to i32
  %i.fd = sub i32 %i.fc, %i.eu
  store i32 %i.fd, ptr %i.fb, align 4, !tbaa !21
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, 2 ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next41.i, %i.dy
  br i1 %i.fe, label %bb.s, label %._crit_edge.i214, !llvm.loop !224

._crit_edge.i214:                                 ; preds = %bb.s, %.lr.ph35.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond.not.i215 = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count.i213
  br i1 %exitcond.not.i215, label %.preheader.i216, label %.lr.ph35.i, !llvm.loop !225

bb.t:                                             ; preds = %bb.t, %.lr.ph37.i
  %indvars.iv46.i = phi i64 [ 2, %.lr.ph37.i ], [ %indvars.iv.next47.i, %bb.t ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv46.i
  %i.fg = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.fh = add nsw i32 %i.fg, -1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !21
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 2 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next47.i, %i.er
  br i1 %i.fi, label %bb.t, label %Gia_ManGenSK.exit, !llvm.loop !226

bb.u:                                             ; preds = %bb.o
  %i.fj = icmp sgt i32 %0, 1
  br i1 %i.fj, label %.lr.ph.preheader.i, label %Gia_ManGenSK.exit

.lr.ph.preheader.i:                               ; preds = %bb.u
  %wide.trip.count.i221 = zext nneg i32 %0 to i64
  %i.fk = add nsw i64 %wide.trip.count.i221, -1   ; 2 uses
  %xtraiter368 = and i64 %i.fk, 3                 ; 3 uses
  %i.fl = add nsw i32 %0, -2
  %i.fm = icmp ult i32 %i.fl, 3
  br i1 %i.fm, label %.lr.ph.i222.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter372 = and i64 %i.fk, -4
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.lr.ph.i222, %.lr.ph.preheader.i.new
  %indvars.iv.i223 = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i224.3, %.lr.ph.i222 ] ; 7 uses
  %niter373 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter373.next.3, %.lr.ph.i222 ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i223
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !213
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i223
  %i.fq = trunc i64 %indvars.iv.i223 to i32
  %i.fr = add nsw i32 %i.fq, -1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !21
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !213
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv.next.i224
  %i.fv = trunc i64 %indvars.iv.next.i224 to i32
  %i.fw = add nsw i32 %i.fv, -1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !21
  %indvars.iv.next.i224.1 = add nuw nsw i64 %indvars.iv.i223, 2 ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224.1
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !213
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.next.i224.1
  %i.ga = trunc i64 %indvars.iv.next.i224.1 to i32
  %i.gb = add nsw i32 %i.ga, -1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !21
  %indvars.iv.next.i224.2 = add nuw nsw i64 %indvars.iv.i223, 3 ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i224.2
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !213
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next.i224.2
  %i.gf = trunc i64 %indvars.iv.next.i224.2 to i32
  %i.gg = add nsw i32 %i.gf, -1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !21
  %indvars.iv.next.i224.3 = add nuw nsw i64 %indvars.iv.i223, 4 ; 2 uses
  %niter373.next.3 = add nuw i64 %niter373, 4     ; 2 uses
  %niter373.ncmp.3 = icmp eq i64 %niter373.next.3, %unroll_iter372
  br i1 %niter373.ncmp.3, label %Gia_ManGenSK.exit.loopexit.unr-lcssa, label %.lr.ph.i222, !llvm.loop !227

Gia_ManGenSK.exit.loopexit.unr-lcssa:             ; preds = %.lr.ph.i222
  %lcmp.mod370.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod370.not, label %Gia_ManGenSK.exit, label %.lr.ph.i222.epil.preheader

.lr.ph.i222.epil.preheader:                       ; preds = %Gia_ManGenSK.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i223.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i224.3, %Gia_ManGenSK.exit.loopexit.unr-lcssa ]
  %lcmp.mod371 = icmp ne i64 %xtraiter368, 0
  tail call void @llvm.assume(i1 %lcmp.mod371)
  br label %.lr.ph.i222.epil

.lr.ph.i222.epil:                                 ; preds = %.lr.ph.i222.epil, %.lr.ph.i222.epil.preheader
  %indvars.iv.i223.epil = phi i64 [ %indvars.iv.i223.epil.init, %.lr.ph.i222.epil.preheader ], [ %indvars.iv.next.i224.epil, %.lr.ph.i222.epil ] ; 4 uses
  %epil.iter369 = phi i64 [ 0, %.lr.ph.i222.epil.preheader ], [ %epil.iter369.next, %.lr.ph.i222.epil ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i223.epil
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !213
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i223.epil
  %i.gk = trunc i64 %indvars.iv.i223.epil to i32
  %i.gl = add i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !21
  %indvars.iv.next.i224.epil = add nuw nsw i64 %indvars.iv.i223.epil, 1
  %epil.iter369.next = add i64 %epil.iter369, 1   ; 2 uses
  %epil.iter369.cmp.not = icmp eq i64 %epil.iter369.next, %xtraiter368
  br i1 %epil.iter369.cmp.not, label %Gia_ManGenSK.exit, label %.lr.ph.i222.epil, !llvm.loop !236

Gia_ManGenSK.exit:                                ; preds = %._crit_edge.i, %._crit_edge48.i, %bb.t, %Gia_ManGenSK.exit.loopexit.unr-lcssa, %.lr.ph.i222.epil, %bb.u, %.preheader.i216, %._crit_edge44.thread.i, %bb.d, %bb.b
  %.str.79.sink = phi ptr [ @.str.78, %bb.b ], [ @.str.80, %._crit_edge44.thread.i ], [ @.str.81, %.preheader.i216 ], [ @.str.79, %bb.d ], [ @.str.80, %._crit_edge48.i ], [ @.str.81, %bb.t ], [ @.str.82, %Gia_ManGenSK.exit.loopexit.unr-lcssa ], [ @.str.82, %bb.u ], [ @.str.82, %.lr.ph.i222.epil ], [ @.str.79, %._crit_edge.i ]
  %i.gm = phi ptr [ null, %bb.b ], [ %i.i, %._crit_edge44.thread.i ], [ %i.i, %.preheader.i216 ], [ %i.i, %bb.d ], [ %i.i, %._crit_edge48.i ], [ %i.i, %bb.t ], [ %i.i, %Gia_ManGenSK.exit.loopexit.unr-lcssa ], [ %i.i, %bb.u ], [ %i.i, %.lr.ph.i222.epil ], [ %i.i, %._crit_edge.i ] ; 4 uses
  %i.gn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.79.sink) ; 0 uses
  %.not188 = icmp eq i32 %5, 0                    ; 4 uses
  %i.go = select i1 %.not188, ptr @.str.85, ptr @.str.84
  %i.gp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %i.go) ; 0 uses
  %i.gq = icmp eq i32 %6, 0
  %or.cond = or i1 %i.e, %i.gq
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %Gia_ManGenSK.exit
  tail call void @Gia_ManGenPrint(i32 noundef %0, ptr noundef %i.gm)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %Gia_ManGenSK.exit
  %i.gr = tail call ptr @Gia_ManStart(i32 noundef 1000) #23 ; 22 uses
  %i.gs = tail call noalias dereferenceable_or_null(6) ptr @malloc(i64 noundef 6) #25 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.gs, ptr noundef nonnull align 1 dereferenceable(6) @.str.86, i64 6, i1 false) #23
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !114
  %i.gt = shl nsw i32 %0, 1
  %i.gu = add nsw i32 %i.gt, 10
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = tail call noalias ptr @calloc(i64 noundef %i.gv, i64 noundef 4) #26 ; 16 uses
  %i.gx = icmp sgt i32 %0, 0                      ; 4 uses
  br i1 %i.gx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.w
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph231.preheader:                              ; preds = %.lr.ph
  %wide.trip.count267 = zext nneg i32 %0 to i64
  br label %.lr.ph231

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gy = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.gr)
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph231.preheader, label %.lr.ph, !llvm.loop !237

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %indvars.iv264 = phi i64 [ 0, %.lr.ph231.preheader ], [ %indvars.iv.next265, %.lr.ph231 ] ; 2 uses
  %i.ha = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.gr)
  %.idx319 = shl nuw nsw i64 %indvars.iv264, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx319
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !21
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %._crit_edge, label %.lr.ph231, !llvm.loop !238

._crit_edge:                                      ; preds = %.lr.ph231, %bb.w
  br i1 %.not188, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.hd = tail call fastcc i32 @Gia_ManAppendCi(ptr noundef nonnull %i.gr)
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %i.he = phi i32 [ %i.hd, %bb.x ], [ 0, %._crit_edge ] ; 3 uses
  tail call void @Gia_ManHashStart(ptr noundef nonnull %i.gr) #23
  br i1 %i.e, label %bb.z, label %.preheader227

.preheader227:                                    ; preds = %bb.y
  br i1 %i.gx, label %.lr.ph233.preheader, label %._crit_edge234

.lr.ph233.preheader:                              ; preds = %.preheader227
  %wide.trip.count272 = zext nneg i32 %0 to i64
  %i.hf = load i32, ptr %i.gw, align 4, !tbaa !21
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !21
  tail call void @Wlc_BlastFullAdder(ptr noundef nonnull %i.gr, i32 noundef %i.hf, i32 noundef %i.hh, i32 noundef %i.he, ptr noundef nonnull %i.hg, ptr noundef nonnull %i.gw) #23
  %exitcond273.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond273.peel.not, label %._crit_edge234, label %.lr.ph233

bb.z:                                             ; preds = %bb.y
  %i.hi = mul nsw i32 %0, %0
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2                ; 4 uses
  %i.hl = tail call noalias ptr @malloc(i64 noundef %i.hk) #25 ; 5 uses
  %i.hm = tail call noalias ptr @malloc(i64 noundef %i.hk) #25 ; 5 uses
  %i.hn = add i32 %0, 1                           ; 2 uses
  %i.ho = sext i32 %i.hn to i64
  %i.hp = shl nsw i64 %i.ho, 2
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.hp) #25 ; 7 uses
  %i.hr = sext i32 %0 to i64
  %i.hs = shl nsw i64 %i.hr, 2
  %i.ht = tail call noalias ptr @malloc(i64 noundef %i.hs) #25 ; 4 uses
  %.not262 = icmp eq i32 %0, 0
  br i1 %.not262, label %._crit_edge253, label %.preheader

.preheader:                                       ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hm, i8 -1, i64 %i.hk, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hl, i8 -1, i64 %i.hk, i1 false), !tbaa !21
  %.not194250 = icmp slt i32 %0, 0
  br i1 %.not194250, label %._crit_edge257.sink.split, label %.lr.ph256.preheader

._crit_edge253:                                   ; preds = %bb.z
  store i32 -1, ptr %i.hq, align 4
  br label %._crit_edge257.sink.split

.lr.ph256.preheader:                              ; preds = %.preheader
  %i.hu = zext i32 %i.hn to i64
  %i.hv = shl nuw nsw i64 %i.hu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hq, i8 -1, i64 %i.hv, i1 false), !tbaa !21
  store i32 %i.he, ptr %i.hq, align 4, !tbaa !21
  %wide.trip.count299 = zext nneg i32 %0 to i64
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %.lr.ph256.preheader, %.lr.ph256
  %indvars.iv296 = phi i64 [ 0, %.lr.ph256.preheader ], [ %indvars.iv.next297, %.lr.ph256 ] ; 3 uses
  %.idx322 = shl nuw nsw i64 %indvars.iv296, 3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx322 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !21
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !21
  %i.ia = tail call i32 @Gia_ManHashXor(ptr noundef nonnull %i.gr, i32 noundef %i.hx, i32 noundef %i.hz) #23
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv296
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !21
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge257, label %.lr.ph256, !llvm.loop !239

._crit_edge257.sink.split:                        ; preds = %.preheader, %._crit_edge253
  store i32 %i.he, ptr %i.hq, align 4, !tbaa !21
  br label %._crit_edge257

._crit_edge257:                                   ; preds = %.lr.ph256, %._crit_edge257.sink.split
  br i1 %.not188, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge257
  %i.ic = tail call fastcc i32 @Gia_ManGenAdderMMCarry(ptr noundef nonnull %i.gr, i32 noundef %0, ptr noundef %i.gw, ptr noundef %i.hl, ptr noundef %i.hm, ptr noundef nonnull %i.hq, i32 noundef %0)
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.gr, i32 noundef %i.ic)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge257
  br i1 %i.gx, label %.lr.ph260.preheader, label %._crit_edge261

.lr.ph260.preheader:                              ; preds = %bb.ab
  %wide.trip.count304 = zext nneg i32 %0 to i64
  br label %.lr.ph260

.lr.ph260:                                        ; preds = %.lr.ph260.preheader, %.lr.ph260
  %indvars.iv301 = phi i64 [ 0, %.lr.ph260.preheader ], [ %indvars.iv.next302, %.lr.ph260 ] ; 3 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv301
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !21
  %i.if = trunc nuw nsw i64 %indvars.iv301 to i32
  %i.ig = tail call fastcc i32 @Gia_ManGenAdderMMCarry(ptr noundef nonnull %i.gr, i32 noundef %0, ptr noundef %i.gw, ptr noundef %i.hl, ptr noundef %i.hm, ptr noundef nonnull %i.hq, i32 noundef %i.if)
  %i.ih = tail call i32 @Gia_ManHashXor(ptr noundef nonnull %i.gr, i32 noundef %i.ie, i32 noundef %i.ig) #23
  tail call fastcc void @Gia_ManAppendCo(ptr noundef nonnull %i.gr, i32 noundef %i.ih)
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %exitcond305.not = icmp eq i64 %indvars.iv.next302, %wide.trip.count304
  br i1 %exitcond305.not, label %._crit_edge261, label %.lr.ph260, !llvm.loop !240

._crit_edge261:                                   ; preds = %.lr.ph260, %bb.ab
  %.not195 = icmp eq ptr %i.hl, null
  br i1 %.not195, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge261
  tail call void @free(ptr noundef nonnull %i.hl) #23
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge261, %bb.ac
  %.not196 = icmp eq ptr %i.hm, null
  br i1 %.not196, label %bb.af, label %bb.ae
end_hunk_2
