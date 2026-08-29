Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcClp?download=true
inline.NumInlined: 556
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Bmc_ComputeSimDiff:bb.a
  %i.cu = shl nuw nsw i64 %i.ct, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = tail call ptr @realloc(ptr noundef nonnull %.pre137, i64 noundef %i.cu) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.cw = tail call noalias ptr @malloc(i64 noundef %i.cu) #17
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.cx = phi ptr [ %i.cq, %bb.k ], [ %i.cp, %bb.j ], [ %i.cv, %bb.n ], [ %i.cw, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.cx, ptr %i.cf, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !45
  %.pre138 = load i32, ptr %i.ce, align 4, !tbaa !30
  %.val106.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %.val106 = phi ptr [ %.val106139, %.Vec_IntPush.exit_crit_edge ], [ %.val106139, %bb.l ], [ %.val106.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cy = phi i32 [ %i.cg, %.Vec_IntPush.exit_crit_edge ], [ %i.cg, %bb.l ], [ %.pre138, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.cz = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre137, %bb.l ], [ %i.cx, %Vec_IntGrow.exit11.sink.split.i ]
  %i.da = add nsw i32 %i.cy, 1
  store i32 %i.da, ptr %i.ce, align 4, !tbaa !30
  %i.db = sext i32 %i.cy to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.db
  store i32 %i.ck, ptr %i.dc, align 4, !tbaa !32
  %i.dd = getelementptr i8, ptr %.val106, i64 4
  %.val106.val = load i32, ptr %i.dd, align 4, !tbaa !30
  %i.de = sext i32 %.val106.val to i64
  %.not72.not = icmp slt i64 %indvars.iv134, %i.de
  br i1 %.not72.not, label %thread-pre-split, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %Vec_IntPush.exit, %.critedge4
  %i.df = trunc i64 %i.cd to i32
  %i.dg = and i32 %i.df, 1
  ret i32 %i.dg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @Bmc_ComputeSimTest(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x [64 x [64 x i32]]], align 16 ; 6 uses
  %i.b = alloca [64 x [2 x [2 x i32]]], align 16  ; 8 uses
  %i.c = alloca [64 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.b, i8 0, i64 1024, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 64         ; 27 uses
  %.val125 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr i8, ptr %.val125, i64 4
  %.val125.val = load i32, ptr %i.e, align 4, !tbaa !30 ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.g = add i32 %.val125.val, -1
  %or.cond.i = icmp ult i32 %i.g, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val125.val ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.f, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 2 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !31
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.n, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit130, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.p = sext i32 %spec.store.select.i to i64
  %i.q = shl nsw i64 %i.p, 2
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #17
  br label %Vec_IntAlloc.exit130

Vec_IntAlloc.exit130:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.s = phi ptr [ %i.r, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 6 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %Vec_WrdFreeP.exit, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit130
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34   ; 2 uses
  %.not.i131 = icmp eq ptr %i.y, null
  br i1 %.not.i131, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.y) #18
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !47   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.aa, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %i.ab = phi ptr [ %i.z, %.thread.i ], [ %i.v, %bb.d ]
  tail call void @free(ptr noundef nonnull %i.ab) #18
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %Vec_IntAlloc.exit130, %bb.e
  %i.ac = getelementptr i8, ptr %0, i64 24
  %.val126 = load i32, ptr %i.ac, align 8, !tbaa !40 ; 4 uses
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.ae = add i32 %.val126, -1
  %or.cond.i.i = icmp ult i32 %i.ae, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val126 ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.ad, align 8, !tbaa !48
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.f

bb.f:                                             ; preds = %Vec_WrdFreeP.exit
  %i.af = sext i32 %spec.store.select.i.i to i64
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #17
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %Vec_WrdFreeP.exit, %bb.f
  %i.ai = phi ptr [ %i.ah, %bb.f ], [ null, %Vec_WrdFreeP.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !34
  store i32 %.val126, ptr %i.aj, align 4, !tbaa !49
  %i.al = sext i32 %.val126 to i64
  %i.am = shl nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.am, i1 false)
  store ptr %i.ad, ptr %i.u, align 8, !tbaa !33
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 256) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %Vec_WrdStart.exit, %.critedge2
  %.val113252 = phi ptr [ %i.l, %Vec_WrdStart.exit ], [ %i.cc, %.critedge2 ] ; 2 uses
  %i.ao = phi ptr [ %i.l, %Vec_WrdStart.exit ], [ %i.cd, %.critedge2 ] ; 2 uses
  %i.ap = phi ptr [ %i.l, %Vec_WrdStart.exit ], [ %i.ce, %.critedge2 ] ; 2 uses
  %i.aq = phi i32 [ %spec.store.select.i, %Vec_WrdStart.exit ], [ %i.cb, %.critedge2 ] ; 2 uses
  %.095151 = phi i32 [ 0, %Vec_WrdStart.exit ], [ %i.dv, %.critedge2 ]
  store i32 0, ptr %i.h, align 4, !tbaa !30
  %.val123138 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ar = getelementptr i8, ptr %.val123138, i64 4
  %.val123.val139 = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.as = icmp sgt i32 %.val123.val139, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g
  %i.at = tail call i32 @Bmc_ComputeSimDiff(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.n)
  br label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.g, %Vec_IntPush.exit
  %.val113254 = phi ptr [ %.val113255, %Vec_IntPush.exit ], [ %.val113252, %bb.g ] ; 2 uses
  %i.au = phi ptr [ %i.bk, %Vec_IntPush.exit ], [ %i.ao, %bb.g ] ; 2 uses
  %i.av = phi ptr [ %i.bk, %Vec_IntPush.exit ], [ %i.ap, %bb.g ] ; 4 uses
  %i.aw = phi i32 [ %i.bl, %Vec_IntPush.exit ], [ %i.aq, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %bb.g ] ; 8 uses
  %i.ax = tail call i32 @rand() #18
  %i.ay = and i32 %i.ax, 1
  %i.az = zext i32 %i.aw to i64
  %i.ba = icmp eq i64 %indvars.iv, %i.az
  br i1 %i.ba, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bb = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.av, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.av, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.bd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.bf = shl nuw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 2147483647 ; 3 uses
  %i.bg = zext i32 %spec.select.i to i64          ; 2 uses
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bg
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %i.av, null
  %i.bh = shl nuw nsw i64 %i.bg, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = tail call ptr @realloc(ptr noundef nonnull %i.av, i64 noundef %i.bh) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bh) #17
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %storemerge = phi ptr [ %i.bd, %bb.k ], [ %i.bc, %bb.j ], [ %i.bi, %bb.n ], [ %i.bj, %bb.o ] ; 3 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !31
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %.val113255 = phi ptr [ %.val113254, %.lr.ph ], [ %.val113254, %bb.l ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 11 uses
  %i.bk = phi ptr [ %i.au, %.lr.ph ], [ %i.au, %bb.l ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ] ; 5 uses
  %i.bl = phi i32 [ %i.aw, %.lr.ph ], [ %i.aw, %bb.l ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %indvars210 = trunc i64 %indvars.iv.next to i32 ; 3 uses
  store i32 %indvars210, ptr %i.h, align 4, !tbaa !30
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  store i32 %i.ay, ptr %i.bm, align 4, !tbaa !32
  %.val123 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.bn = getelementptr i8, ptr %.val123, i64 4
  %.val123.val = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.bo = icmp sgt i32 %.val123.val, %indvars210
  br i1 %i.bo, label %.lr.ph, label %._crit_edge, !llvm.loop !50

._crit_edge:                                      ; preds = %Vec_IntPush.exit
  %i.bp = tail call i32 @Bmc_ComputeSimDiff(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.n) ; 4 uses
  %i.bq = icmp sgt i32 %indvars210, 0
  br i1 %i.bq, label %.lr.ph143, label %.critedge.preheader

.lr.ph143:                                        ; preds = %._crit_edge
  %i.br = zext nneg i32 %i.bp to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br ; 3 uses
  %wide.trip.count = and i64 %indvars.iv.next, 2147483647
  %i.bs = icmp eq i64 %wide.trip.count, 1
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph143.new

.lr.ph143.new:                                    ; preds = %.lr.ph143
  %unroll_iter = and i64 %indvars.iv.next, 2147483646
  br label %bb.p

.critedge.preheader.loopexit.unr-lcssa:           ; preds = %bb.p
  %i.bt = and i64 %indvars.iv, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %.critedge.preheader

.epil.preheader:                                  ; preds = %.critedge.preheader.loopexit.unr-lcssa, %.lr.ph143
  %indvars.iv212.epil.init = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next213.1, %.critedge.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod278 = trunc i64 %indvars.iv.next to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val113255, i64 %indvars.iv212.epil.init
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %gep.epil = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv212.epil.init
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %gep.epil, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !32
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.epil.preheader, %.critedge.preheader.loopexit.unr-lcssa, %._crit_edge.thread, %._crit_edge
  %i.ca = phi i32 [ %i.at, %._crit_edge.thread ], [ %i.bp, %._crit_edge ], [ %i.bp, %.critedge.preheader.loopexit.unr-lcssa ], [ %i.bp, %.epil.preheader ]
  %i.cb = phi i32 [ %i.aq, %._crit_edge.thread ], [ %i.bl, %._crit_edge ], [ %i.bl, %.critedge.preheader.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  %i.cc = phi ptr [ %.val113252, %._crit_edge.thread ], [ %.val113255, %._crit_edge ], [ %.val113255, %.critedge.preheader.loopexit.unr-lcssa ], [ %.val113255, %.epil.preheader ] ; 3 uses
  %i.cd = phi ptr [ %i.ao, %._crit_edge.thread ], [ %i.bk, %._crit_edge ], [ %.val113255, %.critedge.preheader.loopexit.unr-lcssa ], [ %.val113255, %.epil.preheader ]
  %i.ce = phi ptr [ %i.ap, %._crit_edge.thread ], [ %i.bk, %._crit_edge ], [ %.val113255, %.critedge.preheader.loopexit.unr-lcssa ], [ %.val113255, %.epil.preheader ]
  %.val109 = load i32, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.cf = icmp sgt i32 %.val109, 0
  br i1 %i.cf, label %.lr.ph148, label %.critedge2

.lr.ph148:                                        ; preds = %.critedge.preheader
  %.val112 = load ptr, ptr %i.t, align 8, !tbaa !31 ; 4 uses
  %i.cg = zext nneg i32 %i.ca to i64
  %i.ch = getelementptr inbounds nuw [16384 x i8], ptr %i.a, i64 %i.cg
  %i.ci = zext nneg i32 %.val109 to i64
  %wide.trip.count225 = zext nneg i32 %.val109 to i64 ; 4 uses
  %i.cj = add nsw i64 %wide.trip.count225, -2
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph143.new
  %indvars.iv212 = phi i64 [ 0, %.lr.ph143.new ], [ %indvars.iv.next213.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph143.new ], [ %niter.next.1, %bb.p ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.val113255, i64 %indvars.iv212
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv212
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %gep, i64 %i.cm ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !32
  %indvars.iv.next213 = or disjoint i64 %indvars.iv212, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val113255, i64 %indvars.iv.next213
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !32
  %gep.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv.next213
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %gep.1, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !32
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !32
  %indvars.iv.next213.1 = add nuw nsw i64 %indvars.iv212, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.preheader.loopexit.unr-lcssa, label %bb.p, !llvm.loop !51

.critedge.loopexit:                               ; preds = %.lr.ph146.split.prol.loopexit, %bb.v, %bb.r, %.thread
  %indvars.iv.next223268 = phi i64 [ %indvars.iv.next223267, %.thread ], [ %indvars.iv.next223, %bb.r ], [ %indvars.iv.next223267, %bb.v ], [ %indvars.iv.next223267, %.lr.ph146.split.prol.loopexit ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond226.not = icmp eq i64 %indvars.iv.next223268, %wide.trip.count225
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond226.not, label %.critedge2, label %bb.q, !llvm.loop !52

bb.q:                                             ; preds = %.lr.ph148, %.critedge.loopexit
  %indvar = phi i64 [ 0, %.lr.ph148 ], [ %indvar.next, %.critedge.loopexit ] ; 3 uses
  %indvars.iv222 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next223268, %.critedge.loopexit ] ; 5 uses
  %indvars.iv215 = phi i64 [ 1, %.lr.ph148 ], [ %indvars.iv.next216, %.critedge.loopexit ] ; 5 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv222
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  %.not206 = icmp eq i32 %i.cx, 0
  br i1 %.not206, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1
  br label %.critedge.loopexit

.thread:                                          ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv222 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !32
  %indvars.iv.next223267 = add nuw nsw i64 %indvars.iv222, 1 ; 4 uses
  %i.db = icmp samesign ult i64 %indvars.iv.next223267, %i.ci
  br i1 %i.db, label %.lr.ph146.split.preheader, label %.critedge.loopexit

.lr.ph146.split.preheader:                        ; preds = %.thread
  %i.dc = getelementptr inbounds nuw [256 x i8], ptr %i.ch, i64 %indvars.iv222 ; 3 uses
  %i.dd = sub i64 %indvar, %wide.trip.count225
  %i.de = and i64 %i.dd, 1
  %lcmp.mod280.not.not = icmp eq i64 %i.de, 0
  br i1 %lcmp.mod280.not.not, label %.lr.ph146.split.prol, label %.lr.ph146.split.prol.loopexit

.lr.ph146.split.prol:                             ; preds = %.lr.ph146.split.preheader
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv215
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %.not207.prol = icmp eq i32 %i.dg, 0
  br i1 %.not207.prol, label %.lr.ph146.split.prol.loopexit.unr-lcssa, label %bb.s

bb.s:                                             ; preds = %.lr.ph146.split.prol
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv215 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32
  %i.dj = add nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !32
  br label %.lr.ph146.split.prol.loopexit.unr-lcssa

.lr.ph146.split.prol.loopexit.unr-lcssa:          ; preds = %bb.s, %.lr.ph146.split.prol
  %indvars.iv.next218.prol = add nuw nsw i64 %indvars.iv215, 1
  br label %.lr.ph146.split.prol.loopexit

.lr.ph146.split.prol.loopexit:                    ; preds = %.lr.ph146.split.prol.loopexit.unr-lcssa, %.lr.ph146.split.preheader
  %indvars.iv217.unr = phi i64 [ %indvars.iv215, %.lr.ph146.split.preheader ], [ %indvars.iv.next218.prol, %.lr.ph146.split.prol.loopexit.unr-lcssa ]
  %i.dk = icmp eq i64 %i.cj, %indvar
  br i1 %i.dk, label %.critedge.loopexit, label %.lr.ph146.split

.lr.ph146.split:                                  ; preds = %.lr.ph146.split.prol.loopexit, %bb.v
  %indvars.iv217 = phi i64 [ %indvars.iv.next218.1, %bb.v ], [ %indvars.iv217.unr, %.lr.ph146.split.prol.loopexit ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv217
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %.not207 = icmp eq i32 %i.dm, 0
  br i1 %.not207, label %.lr.ph146.split.1, label %bb.t

bb.t:                                             ; preds = %.lr.ph146.split
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv217 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !32
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !32
  br label %.lr.ph146.split.1

.lr.ph146.split.1:                                ; preds = %.lr.ph146.split, %bb.t
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %indvars.iv.next218
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !32
  %.not207.1 = icmp eq i32 %i.dr, 0
  br i1 %.not207.1, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph146.split.1
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next218 ; 2 uses
end_hunk_0
begin_hunk_1_@Bmc_ComputeSimTest:bb.a
  %i.hb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %.val114 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hc = getelementptr i8, ptr %.val114, i64 4
  %.val114.val = load i32, ptr %i.hc, align 4, !tbaa !30
  %i.hd = sext i32 %.val114.val to i64
  %i.he = icmp slt i64 %indvars.iv.next244, %i.hd
  br i1 %i.he, label %bb.ab, label %._crit_edge198, !llvm.loop !62

._crit_edge198:                                   ; preds = %bb.ae, %.lr.ph203
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hf = getelementptr i8, ptr %.val115, i64 4
  %.val115.val = load i32, ptr %i.hf, align 4, !tbaa !30
  %i.hg = sext i32 %.val115.val to i64
  %i.hh = icmp slt i64 %indvars.iv.next247, %i.hg
  br i1 %i.hh, label %.lr.ph203, label %._crit_edge204, !llvm.loop !63

._crit_edge204:                                   ; preds = %._crit_edge198, %._crit_edge192
  %putchar107 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %.val116187.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hj = getelementptr i8, ptr %.val116187.1, i64 4
  %.val116.val188.1 = load i32, ptr %i.hj, align 4, !tbaa !30
  %i.hk = icmp sgt i32 %.val116.val188.1, 0
  br i1 %i.hk, label %.lr.ph191.1, label %._crit_edge192.1

.lr.ph191.1:                                      ; preds = %._crit_edge204, %.lr.ph191.1
  %.9189.1 = phi i32 [ %i.hn, %.lr.ph191.1 ], [ 0, %._crit_edge204 ] ; 2 uses
  %i.hl = add nuw nsw i32 %.9189.1, 97
  %i.hm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.hl) ; 0 uses
  %i.hn = add nuw nsw i32 %.9189.1, 1             ; 2 uses
  %.val116.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ho = getelementptr i8, ptr %.val116.1, i64 4
  %.val116.val.1 = load i32, ptr %i.ho, align 4, !tbaa !30
  %i.hp = icmp slt i32 %i.hn, %.val116.val.1
  br i1 %i.hp, label %.lr.ph191.1, label %._crit_edge192.1, !llvm.loop !61

._crit_edge192.1:                                 ; preds = %.lr.ph191.1, %._crit_edge204
  %putchar106.1 = tail call i32 @putchar(i32 10)  ; 0 uses
  %.val115199.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hq = getelementptr i8, ptr %.val115199.1, i64 4
  %.val115.val200.1 = load i32, ptr %i.hq, align 4, !tbaa !30
  %i.hr = icmp sgt i32 %.val115.val200.1, 0
  br i1 %i.hr, label %.lr.ph203.1, label %._crit_edge204.1

.lr.ph203.1:                                      ; preds = %._crit_edge192.1
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 16384
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge198.1, %.lr.ph203.1
  %indvars.iv246.1 = phi i64 [ 0, %.lr.ph203.1 ], [ %indvars.iv.next247.1, %._crit_edge198.1 ] ; 3 uses
  %i.ht = trunc i64 %indvars.iv246.1 to i32
  %i.hu = add i32 %i.ht, 97
  %i.hv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.hu) ; 0 uses
  %.val114193.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.hw = getelementptr i8, ptr %.val114193.1, i64 4
  %.val114.val194.1 = load i32, ptr %i.hw, align 4, !tbaa !30
  %i.hx = icmp sgt i32 %.val114.val194.1, 0
  br i1 %i.hx, label %.lr.ph197.1, label %._crit_edge198.1

.lr.ph197.1:                                      ; preds = %bb.af
  %i.hy = getelementptr inbounds nuw [256 x i8], ptr %i.hs, i64 %indvars.iv246.1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aj, %.lr.ph197.1
  %indvars.iv243.1 = phi i64 [ 0, %.lr.ph197.1 ], [ %indvars.iv.next244.1, %bb.aj ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv243.1
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !32 ; 2 uses
  %.not.1 = icmp eq i32 %i.ia, 0
  br i1 %.not.1, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ib = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ia) ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ic = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next244.1 = add nuw nsw i64 %indvars.iv243.1, 1 ; 2 uses
  %.val114.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.id = getelementptr i8, ptr %.val114.1, i64 4
  %.val114.val.1 = load i32, ptr %i.id, align 4, !tbaa !30
  %i.ie = sext i32 %.val114.val.1 to i64
  %i.if = icmp slt i64 %indvars.iv.next244.1, %i.ie
  br i1 %i.if, label %bb.ag, label %._crit_edge198.1, !llvm.loop !62

._crit_edge198.1:                                 ; preds = %bb.aj, %bb.af
  %putchar108.1 = tail call i32 @putchar(i32 10)  ; 0 uses
  %indvars.iv.next247.1 = add nuw nsw i64 %indvars.iv246.1, 1 ; 2 uses
  %.val115.1 = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ig = getelementptr i8, ptr %.val115.1, i64 4
  %.val115.val.1 = load i32, ptr %i.ig, align 4, !tbaa !30
  %i.ih = sext i32 %.val115.val.1 to i64
  %i.ii = icmp slt i64 %indvars.iv.next247.1, %i.ih
  br i1 %i.ii, label %bb.af, label %._crit_edge204.1, !llvm.loop !63

._crit_edge204.1:                                 ; preds = %._crit_edge198.1, %._crit_edge192.1
  %putchar107.1 = tail call i32 @putchar(i32 10)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Bmc_CollapseIrredundant(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.b = add i32 %2, -1
  %or.cond.i = icmp ult i32 %i.b, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %2 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.a, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sext i32 %spec.store.select.i to i64
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val88 = load ptr, ptr %i.i, align 8, !tbaa !64 ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.k = add i32 %1, -1
  %or.cond.i103 = icmp ult i32 %i.k, 7
  %spec.store.select.i104 = select i1 %or.cond.i103, i32 8, i32 %1 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !66
  store i32 %spec.store.select.i104, ptr %i.j, align 8, !tbaa !69
  %.not.i105 = icmp eq i32 %spec.store.select.i104, 0
  br i1 %.not.i105, label %Vec_PtrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.m = sext i32 %spec.store.select.i104 to i64
  %i.n = shl nsw i64 %i.m, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #17
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Vec_IntAlloc.exit, %bb.c
  %.promoted119 = phi ptr [ %i.o, %bb.c ], [ null, %Vec_IntAlloc.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store ptr %.promoted119, ptr %i.p, align 8, !tbaa !70
  %i.q = load i8, ptr %.val88, align 1, !tbaa !71
  %.not114 = icmp eq i8 %i.q, 0
  br i1 %.not114, label %bb.m, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.r = sext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge120 = phi ptr [ %.promoted119, %.lr.ph ], [ %storemerge121, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i118 = phi i32 [ %spec.store.select.i104, %.lr.ph ], [ %spec.select.sink.i117, %Vec_PtrPush.exit ] ; 3 uses
  %.073115 = phi ptr [ %.val88, %.lr.ph ], [ %i.ag, %Vec_PtrPush.exit ] ; 2 uses
  %i.s = trunc nsw i64 %indvars.iv to i32
  %i.t = icmp eq i32 %spec.select.sink.i118, %i.s
  br i1 %i.t, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.u = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge120, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge120, i64 noundef 128) #16
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.w = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.x = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.y = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.x, i32 %i.y, i32 2147483647 ; 4 uses
  %i.z = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.z
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i = icmp eq ptr %storemerge120, null
  %i.aa = zext nneg i32 %spec.select.i to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %storemerge120, i64 noundef %i.ab) #16
  br label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ab) #17
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge121 = phi ptr [ %storemerge120, %bb.d ], [ %storemerge120, %bb.i ], [ %i.w, %bb.h ], [ %i.v, %bb.g ], [ %i.ac, %bb.k ], [ %i.ad, %bb.l ] ; 4 uses
  %spec.select.sink.i117 = phi i32 [ %spec.select.sink.i118, %bb.d ], [ %spec.select.sink.i118, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %storemerge121, i64 %indvars.iv
  store ptr %.073115, ptr %i.ae, align 8, !tbaa !72
  %i.af = getelementptr i8, ptr %.073115, i64 %i.r
  %i.ag = getelementptr i8, ptr %i.af, i64 3      ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !71
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !73

._crit_edge:                                      ; preds = %Vec_PtrPush.exit
  %i.ai = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  store i32 %i.ai, ptr %i.l, align 4, !tbaa !66
  store i32 %spec.select.sink.i117, ptr %i.j, align 8
  store ptr %storemerge121, ptr %i.p, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %Vec_PtrAlloc.exit
  %.val92 = phi ptr [ %storemerge121, %._crit_edge ], [ %.promoted119, %Vec_PtrAlloc.exit ] ; 2 uses
  %.val90 = phi i32 [ %i.ai, %._crit_edge ], [ 0, %Vec_PtrAlloc.exit ] ; 6 uses
  %i.aj = tail call ptr @sat_solver_new() #18     ; 6 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.aj, i32 noundef %2) #18
  %.079128 = add i32 %.val90, -1                  ; 2 uses
  %i.ak = icmp sgt i32 %.val90, 0
  br i1 %i.ak, label %.lr.ph133, label %.critedge.thread

.lr.ph133:                                        ; preds = %bb.m
  %i.al = icmp sgt i32 %2, 0
  %.promoted145 = load ptr, ptr %i.h, align 8, !tbaa !31 ; 7 uses
  %i.am = zext nneg i32 %.079128 to i64           ; 2 uses
  br i1 %i.al, label %.lr.ph124.us.preheader, label %.lr.ph133.split

.lr.ph124.us.preheader:                           ; preds = %.lr.ph133
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph124.us

.lr.ph124.us:                                     ; preds = %.lr.ph124.us.preheader, %bb.z
  %indvars.iv200 = phi i64 [ %i.am, %.lr.ph124.us.preheader ], [ %indvars.iv.next201, %bb.z ] ; 5 uses
  %storemerge111150.us = phi ptr [ %.promoted145, %.lr.ph124.us.preheader ], [ %storemerge111148.us, %bb.z ]
  %.074130.us = phi i32 [ 0, %.lr.ph124.us.preheader ], [ %.175.us, %bb.z ] ; 3 uses
  %.079.in129.us = phi i32 [ %.val90, %.lr.ph124.us.preheader ], [ %i.bp, %bb.z ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.val92, i64 %indvars.iv200 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph124.us, %bb.x
  %indvars.iv191 = phi i64 [ 0, %.lr.ph124.us ], [ %indvars.iv.next192, %bb.x ] ; 3 uses
  %storemerge111149.us = phi ptr [ %storemerge111150.us, %.lr.ph124.us ], [ %storemerge111148.us, %bb.x ] ; 7 uses
  %.val97143.us = phi i32 [ 0, %.lr.ph124.us ], [ %.val97142.us, %bb.x ] ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv191
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !71  ; 2 uses
  %.not86.us = icmp eq i8 %i.aq, 45
  br i1 %.not86.us, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = icmp eq i8 %i.aq, 49
  %i.as = zext i1 %i.ar to i32
  %indvars.iv191.tr = trunc nuw i64 %indvars.iv191 to i32
  %i.at = shl nuw i32 %indvars.iv191.tr, 1
  %i.au = or disjoint i32 %i.at, %i.as
  %i.av = load i32, ptr %i.a, align 8, !tbaa !45
  %i.aw = icmp eq i32 %.val97143.us, %i.av
  br i1 %i.aw, label %bb.p, label %Vec_IntPush.exit.us

bb.p:                                             ; preds = %bb.o
  %i.ax = icmp slt i32 %.val97143.us, 16
  br i1 %i.ax, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = icmp samesign ult i32 %.val97143.us, 1073741823
  %i.az = shl nuw nsw i32 %.val97143.us, 1
  %spec.select.i106.us = select i1 %i.ay, i32 %i.az, i32 2147483647 ; 4 uses
  %.not.i9.i.us = icmp samesign ult i32 %.val97143.us, %spec.select.i106.us
  br i1 %.not.i9.i.us, label %bb.r, label %Vec_IntPush.exit.us

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i.us = icmp eq ptr %storemerge111149.us, null
  %i.ba = zext nneg i32 %spec.select.i106.us to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2                ; 2 uses
  br i1 %.not9.i10.i.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = tail call ptr @realloc(ptr noundef nonnull %storemerge111149.us, i64 noundef %i.bb) #16
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.t:                                             ; preds = %bb.r
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bb) #17
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.u:                                             ; preds = %bb.p
  %.not9.i.i108.us = icmp eq ptr %storemerge111149.us, null
  br i1 %.not9.i.i108.us, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge111149.us, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i.us

bb.w:                                             ; preds = %bb.u
  %i.bf = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i.us

Vec_IntGrow.exit11.sink.split.i.us:               ; preds = %bb.w, %bb.v, %bb.t, %bb.s
  %storemerge111.us = phi ptr [ %i.bf, %bb.w ], [ %i.be, %bb.v ], [ %i.bc, %bb.s ], [ %i.bd, %bb.t ]
  %spec.select.sink.i107.us = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i106.us, %bb.s ], [ %spec.select.i106.us, %bb.t ]
  store i32 %spec.select.sink.i107.us, ptr %i.a, align 8, !tbaa !45
  br label %Vec_IntPush.exit.us

Vec_IntPush.exit.us:                              ; preds = %Vec_IntGrow.exit11.sink.split.i.us, %bb.q, %bb.o
  %storemerge111147.us = phi ptr [ %storemerge111149.us, %bb.o ], [ %storemerge111149.us, %bb.q ], [ %storemerge111.us, %Vec_IntGrow.exit11.sink.split.i.us ] ; 2 uses
  %i.bg = add nsw i32 %.val97143.us, 1
  %i.bh = sext i32 %.val97143.us to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %storemerge111147.us, i64 %i.bh
  store i32 %i.au, ptr %i.bi, align 4, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %Vec_IntPush.exit.us, %bb.n
  %storemerge111148.us = phi ptr [ %storemerge111149.us, %bb.n ], [ %storemerge111147.us, %Vec_IntPush.exit.us ] ; 9 uses
  %.val97142.us = phi i32 [ %.val97143.us, %bb.n ], [ %i.bg, %Vec_IntPush.exit.us ] ; 7 uses
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge125.us, label %bb.n, !llvm.loop !74

bb.y:                                             ; preds = %._crit_edge125.us
  store ptr null, ptr %i.an, align 8, !tbaa !72
  %i.bj = add nsw i32 %.074130.us, 1
  br label %bb.z

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader248, %.lr.ph127.us
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.lr.ph127.us ], [ %indvars.iv194.ph, %.lr.ph127.us.preheader248 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %storemerge111148.us, i64 %indvars.iv194 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !32
  %i.bm = xor i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !32
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count198
  br i1 %exitcond199.not, label %.critedge2.us, label %.lr.ph127.us, !llvm.loop !75

.critedge2.us:                                    ; preds = %.lr.ph127.us, %middle.block, %.preheader113.us
  %i.bn = tail call i32 @sat_solver_addclause(ptr noundef %i.aj, ptr noundef %storemerge111148.us, ptr noundef %i.bx) #18 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.critedge2.us, %bb.y
  %.175.us = phi i32 [ %i.bj, %bb.y ], [ %.074130.us, %.critedge2.us ] ; 2 uses
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, -1
  %i.bo = icmp sgt i64 %indvars.iv200, 0
  %i.bp = trunc nuw nsw i64 %indvars.iv200 to i32
  br i1 %i.bo, label %.lr.ph124.us, label %.critedge, !llvm.loop !78

.preheader113.us:                                 ; preds = %._crit_edge125.us
  %i.bq = icmp sgt i32 %.val97142.us, 0
  br i1 %i.bq, label %.lr.ph127.us.preheader, label %.critedge2.us

.lr.ph127.us.preheader:                           ; preds = %.preheader113.us
  %wide.trip.count198 = zext nneg i32 %.val97142.us to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val97142.us, 8
  br i1 %min.iters.check, label %.lr.ph127.us.preheader248, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph127.us.preheader
  %n.vec = and i64 %wide.trip.count198, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %storemerge111148.us, i64 %index ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !32
  %wide.load247 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !32
  %i.bt = xor <4 x i32> %wide.load, splat (i32 1)
  %i.bu = xor <4 x i32> %wide.load247, splat (i32 1)
  store <4 x i32> %i.bt, ptr %i.br, align 4, !tbaa !32
  store <4 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count198
  br i1 %cmp.n, label %.critedge2.us, label %.lr.ph127.us.preheader248

.lr.ph127.us.preheader248:                        ; preds = %.lr.ph127.us.preheader, %middle.block
  %indvars.iv194.ph = phi i64 [ 0, %.lr.ph127.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph127.us

._crit_edge125.us:                                ; preds = %bb.x
  %i.bw = sext i32 %.val97142.us to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %storemerge111148.us, i64 %i.bw ; 2 uses
  %i.by = tail call i32 @sat_solver_solve(ptr noundef %i.aj, ptr noundef %storemerge111148.us, ptr noundef %i.bx, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  switch i32 %i.by, label %.preheader113.us [
    i32 0, label %..critedge_crit_edge
    i32 -1, label %bb.y
  ]

.lr.ph133.split:                                  ; preds = %.lr.ph133, %bb.ab
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %bb.ab ], [ %i.am, %.lr.ph133 ] ; 5 uses
  %.074130 = phi i32 [ %.175, %bb.ab ], [ 0, %.lr.ph133 ] ; 3 uses
  %.079.in129 = phi i32 [ %i.ce, %bb.ab ], [ %.val90, %.lr.ph133 ]
  %i.bz = tail call i32 @sat_solver_solve(ptr noundef %i.aj, ptr noundef %.promoted145, ptr noundef %.promoted145, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.bz, label %.preheader113 [
    i32 0, label %..critedge_crit_edge
    i32 -1, label %bb.aa
  ]

.preheader113:                                    ; preds = %.lr.ph133.split
  %i.ca = tail call i32 @sat_solver_addclause(ptr noundef %i.aj, ptr noundef %.promoted145, ptr noundef %.promoted145) #18 ; 0 uses
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph133.split
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.val92, i64 %indvars.iv188
  store ptr null, ptr %i.cb, align 8, !tbaa !72
  %i.cc = add nsw i32 %.074130, 1
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader113, %bb.aa
  %.175 = phi i32 [ %i.cc, %bb.aa ], [ %.074130, %.preheader113 ] ; 2 uses
  %indvars.iv.next189 = add nsw i64 %indvars.iv188, -1
  %i.cd = icmp sgt i64 %indvars.iv188, 0
  %i.ce = trunc nuw nsw i64 %indvars.iv188 to i32
  br i1 %i.cd, label %.lr.ph133.split, label %.critedge, !llvm.loop !78

..critedge_crit_edge:                             ; preds = %.lr.ph133.split, %._crit_edge125.us
  %.us-phi = phi ptr [ %storemerge111148.us, %._crit_edge125.us ], [ %.promoted145, %.lr.ph133.split ]
  %.us-phi152 = phi i32 [ %.val97142.us, %._crit_edge125.us ], [ %i.bz, %.lr.ph133.split ]
  %.us-phi153 = phi i32 [ %.079.in129.us, %._crit_edge125.us ], [ %.079.in129, %.lr.ph133.split ]
  %.us-phi154 = phi i32 [ %.074130.us, %._crit_edge125.us ], [ %.074130, %.lr.ph133.split ]
  %.us-phi155.in = phi i64 [ %indvars.iv200, %._crit_edge125.us ], [ %indvars.iv188, %.lr.ph133.split ]
  %.us-phi155 = trunc i64 %.us-phi155.in to i32
  %i.cf = icmp eq i32 %.us-phi153, 0
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.z, %..critedge_crit_edge
  %.us-phi157.sink = phi i32 [ %.us-phi152, %..critedge_crit_edge ], [ %.val97142.us, %bb.z ], [ 0, %bb.ab ]
  %.us-phi156.sink = phi ptr [ %.us-phi, %..critedge_crit_edge ], [ %storemerge111148.us, %bb.z ], [ %.promoted145, %bb.ab ]
  %.079.in.lcssa = phi i1 [ %i.cf, %..critedge_crit_edge ], [ true, %bb.z ], [ true, %bb.ab ]
  %.074.lcssa = phi i32 [ %.us-phi154, %..critedge_crit_edge ], [ %.175.us, %bb.z ], [ %.175, %bb.ab ]
  %.079.lcssa = phi i32 [ %.us-phi155, %..critedge_crit_edge ], [ -1, %bb.z ], [ -1, %bb.ab ]
  store i32 %.us-phi157.sink, ptr %i.c, align 4, !tbaa !30
  store ptr %.us-phi156.sink, ptr %i.h, align 8
  %i.cg = icmp sgt i32 %.074.lcssa, 0
  %or.cond = select i1 %.079.in.lcssa, i1 %i.cg, i1 false
  br i1 %or.cond, label %.lr.ph167, label %.critedge.thread

.lr.ph167:                                        ; preds = %.critedge
  %.val91 = load ptr, ptr %i.p, align 8, !tbaa !70
  %i.ch = icmp sgt i32 %2, -3
  br i1 %i.ch, label %.lr.ph167.split.us.preheader, label %.critedge5

.lr.ph167.split.us.preheader:                     ; preds = %.lr.ph167
  %i.ci = add i32 %2, 2                           ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 0)
  %i.cj = add nuw i32 %smax, 1
  %wide.trip.count215 = zext nneg i32 %.val90 to i64
  %wide.trip.count210 = zext i32 %i.cj to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count210, 3      ; 3 uses
  %i.ck = icmp slt i32 %i.ci, 3
  %unroll_iter = and i64 %wide.trip.count210, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod261 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph167.split.us

end_hunk_1
begin_hunk_2_@Bmc_CollapseIrredundant:bb.a
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.3, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.3, %.preheader.us ], [ %i.cn, %.preheader.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us ], [ 0, %.preheader.us.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv205
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !71
  %.val102.us = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.cq = getelementptr inbounds i8, ptr %.val102.us, i64 %indvars.iv203
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv205
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !71
  %.val102.us.1 = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.cu = getelementptr i8, ptr %.val102.us.1, i64 %indvars.iv203
  %i.cv = getelementptr i8, ptr %i.cu, i64 1
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !71
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv205
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !71
  %.val102.us.2 = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.cz = getelementptr i8, ptr %.val102.us.2, i64 %indvars.iv203
  %i.da = getelementptr i8, ptr %i.cz, i64 2
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !71
  %indvars.iv.next204.3 = add nsw i64 %indvars.iv203, 4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv205
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !71
  %.val102.us.3 = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.de = getelementptr i8, ptr %.val102.us.3, i64 %indvars.iv203
  %i.df = getelementptr i8, ptr %i.de, i64 3
  store i8 %i.dd, ptr %i.df, align 1, !tbaa !71
  %indvars.iv.next206.3 = add nuw nsw i64 %indvars.iv205, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !80

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.preheader.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv205.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next206.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ]
  %indvars.iv203.epil.init = phi i64 [ %i.cn, %.preheader.us.preheader ], [ %indvars.iv.next204.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv205.epil = phi i64 [ %indvars.iv205.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next206.epil, %.preheader.us.epil ] ; 2 uses
  %indvars.iv203.epil = phi i64 [ %indvars.iv203.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next204.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %indvars.iv.next204.epil = add nsw i64 %indvars.iv203.epil, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cm, i64 %indvars.iv205.epil
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !71
  %.val102.us.epil = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.di = getelementptr inbounds i8, ptr %.val102.us.epil, i64 %indvars.iv203.epil
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !71
  %indvars.iv.next206.epil = add nuw nsw i64 %indvars.iv205.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.epil, !llvm.loop !81

..loopexit_crit_edge.us.loopexit:                 ; preds = %.preheader.us.epil, %..loopexit_crit_edge.us.loopexit.unr-lcssa
  %indvars.iv.next204.lcssa = phi i64 [ %indvars.iv.next204.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ], [ %indvars.iv.next204.epil, %.preheader.us.epil ]
  %i.dj = trunc nsw i64 %indvars.iv.next204.lcssa to i32
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph167.split.us
  %.2.us = phi i32 [ %.0166.us, %.lr.ph167.split.us ], [ %i.dj, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %.critedge5, label %.lr.ph167.split.us, !llvm.loop !83

.critedge5:                                       ; preds = %..loopexit_crit_edge.us, %.lr.ph167
  %.0.lcssa = phi i32 [ 0, %.lr.ph167 ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.dk = add nsw i32 %.0.lcssa, 1
  %.val101 = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.dl = sext i32 %.0.lcssa to i64
  %i.dm = getelementptr inbounds i8, ptr %.val101, i64 %i.dl
  store i8 0, ptr %i.dm, align 1, !tbaa !71
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.dk, ptr %i.dn, align 4, !tbaa !84
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.m, %.critedge5, %.critedge
  %.281 = phi i32 [ %.val90, %.critedge5 ], [ %.079.lcssa, %.critedge ], [ %.079128, %bb.m ]
  tail call void @sat_solver_delete(ptr noundef %i.aj) #18
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !70  ; 2 uses
  %.not.i109 = icmp eq ptr %i.do, null
  br i1 %.not.i109, label %Vec_PtrFree.exit, label %bb.ac

bb.ac:                                            ; preds = %.critedge.thread
  tail call void @free(ptr noundef nonnull %i.do) #18
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge.thread, %bb.ac
  tail call void @free(ptr noundef nonnull %i.j) #18
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %.not.i110 = icmp eq ptr %i.dp, null
  br i1 %.not.i110, label %Vec_IntFree.exit, label %bb.ad

bb.ad:                                            ; preds = %Vec_PtrFree.exit
  tail call void @free(ptr noundef nonnull %i.dp) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_PtrFree.exit, %bb.ad
  tail call void @free(ptr noundef nonnull %i.a) #18
  %i.dq = icmp eq i32 %.281, -1
  %i.dr = zext i1 %i.dq to i32
  ret i32 %i.dr
}

declare ptr @sat_solver_new() local_unnamed_addr #6

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef i32 @Bmc_CollapseIrredundantFull(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %2, %1                       ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 12 uses
  %i.c = add i32 %i.a, -1
  %or.cond.i = icmp ult i32 %i.c, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.a ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.b, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %spec.store.select.i to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.l = add i32 %1, -1
  %or.cond.i131 = icmp ult i32 %i.l, 7
  %spec.store.select.i132 = select i1 %or.cond.i131, i32 8, i32 %1 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  store i32 0, ptr %i.m, align 4, !tbaa !66
  store i32 %spec.store.select.i132, ptr %i.k, align 8, !tbaa !69
  %.not.i133 = icmp eq i32 %spec.store.select.i132, 0
  br i1 %.not.i133, label %Vec_PtrAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.n = sext i32 %spec.store.select.i132 to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #17
  br label %Vec_PtrAlloc.exit

Vec_PtrAlloc.exit:                                ; preds = %Vec_IntAlloc.exit, %bb.c
  %.promoted166 = phi ptr [ %i.p, %bb.c ], [ null, %Vec_IntAlloc.exit ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  store ptr %.promoted166, ptr %i.q, align 8, !tbaa !70
  %i.r = load i8, ptr %.val, align 1, !tbaa !71
  %.not161.not = icmp eq i8 %i.r, 0               ; 2 uses
  br i1 %.not161.not, label %bb.m, label %.lr.ph

.lr.ph:                                           ; preds = %Vec_PtrAlloc.exit
  %i.s = sext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Vec_PtrPush.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_PtrPush.exit ] ; 7 uses
  %storemerge167 = phi ptr [ %.promoted166, %.lr.ph ], [ %storemerge168, %Vec_PtrPush.exit ] ; 6 uses
  %spec.select.sink.i165 = phi i32 [ %spec.store.select.i132, %.lr.ph ], [ %spec.select.sink.i164, %Vec_PtrPush.exit ] ; 3 uses
  %.095162 = phi ptr [ %.val, %.lr.ph ], [ %i.ah, %Vec_PtrPush.exit ] ; 2 uses
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = icmp eq i32 %spec.select.sink.i165, %i.t
  br i1 %i.u, label %bb.e, label %Vec_PtrPush.exit

bb.e:                                             ; preds = %bb.d
  %i.v = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i = icmp eq ptr %storemerge167, null
  br i1 %.not9.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge167, i64 noundef 128) #16
  br label %Vec_PtrPush.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #17
  br label %Vec_PtrPush.exit

bb.i:                                             ; preds = %bb.e
  %i.y = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.z = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.y, i32 %i.z, i32 2147483647 ; 4 uses
  %i.aa = sext i32 %spec.select.i to i64
  %.not.i10.i = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %.not.i10.i, label %bb.j, label %Vec_PtrPush.exit

bb.j:                                             ; preds = %bb.i
  %.not9.i11.i = icmp eq ptr %storemerge167, null
  %i.ab = zext nneg i32 %spec.select.i to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  br i1 %.not9.i11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %storemerge167, i64 noundef %i.ac) #16
  br label %Vec_PtrPush.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #17
  br label %Vec_PtrPush.exit

Vec_PtrPush.exit:                                 ; preds = %bb.h, %bb.g, %bb.l, %bb.k, %bb.d, %bb.i
  %storemerge168 = phi ptr [ %storemerge167, %bb.d ], [ %storemerge167, %bb.i ], [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.ad, %bb.k ], [ %i.ae, %bb.l ] ; 4 uses
  %spec.select.sink.i164 = phi i32 [ %spec.select.sink.i165, %bb.d ], [ %spec.select.sink.i165, %bb.i ], [ 16, %bb.h ], [ 16, %bb.g ], [ %spec.select.i, %bb.k ], [ %spec.select.i, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %storemerge168, i64 %indvars.iv
  store ptr %.095162, ptr %i.af, align 8, !tbaa !72
  %i.ag = getelementptr i8, ptr %.095162, i64 %i.s
  %i.ah = getelementptr i8, ptr %i.ag, i64 3      ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !71
  %.not = icmp eq i8 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !85

._crit_edge:                                      ; preds = %Vec_PtrPush.exit
  %i.aj = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aj, ptr %i.m, align 4, !tbaa !66
  store i32 %spec.select.sink.i164, ptr %i.k, align 8
  store ptr %storemerge168, ptr %i.q, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %Vec_PtrAlloc.exit
  %.val121 = phi ptr [ %storemerge168, %._crit_edge ], [ %.promoted166, %Vec_PtrAlloc.exit ]
  %i.ak = tail call ptr @sat_solver_new() #18     ; 4 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.ak, i32 noundef %i.a) #18
  br i1 %.not161.not, label %.critedge2.thread, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.m
  %i.al = icmp sgt i32 %2, 0
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.n

.critedge.preheader:                              ; preds = %._crit_edge171
  %i.am = icmp sgt i32 %.val117, 0
  br i1 %i.am, label %.lr.ph184, label %.critedge2.thread

.lr.ph184:                                        ; preds = %.critedge.preheader
  %.val120 = load ptr, ptr %i.q, align 8, !tbaa !70 ; 2 uses
  %i.an = icmp sgt i32 %1, 0
  %i.ao = icmp sgt i32 %2, 0
  %.promoted197 = load ptr, ptr %i.i, align 8, !tbaa !31
  %wide.trip.count244 = zext nneg i32 %.val117 to i64
  %wide.trip.count234 = zext nneg i32 %1 to i64
  %wide.trip.count239 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.n:                                             ; preds = %.lr.ph175, %._crit_edge171
  %.val123262 = phi ptr [ %.pre, %.lr.ph175 ], [ %.val123, %._crit_edge171 ] ; 3 uses
  %indvars.iv228 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next229, %._crit_edge171 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %indvars.iv228
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !45
  %.not.i.i = icmp slt i32 %i.ar, 1
  br i1 %.not.i.i, label %bb.o, label %Vec_IntFill.exit

bb.o:                                             ; preds = %bb.n
  %.not9.i.i134 = icmp eq ptr %.val123262, null
  br i1 %.not9.i.i134, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = tail call dereferenceable_or_null(4) ptr @realloc(ptr noundef nonnull %.val123262, i64 noundef 4) #16
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.at = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = phi ptr [ %i.as, %bb.p ], [ %i.at, %bb.q ] ; 2 uses
  store ptr %i.au, ptr %i.i, align 8, !tbaa !31
  store i32 1, ptr %i.b, align 8, !tbaa !45
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %bb.n, %bb.r
  %.val123267 = phi ptr [ %i.au, %bb.r ], [ %.val123262, %bb.n ] ; 5 uses
  %i.av = trunc i64 %indvars.iv228 to i32
  %.tr = add i32 %2, %i.av
  %i.aw = shl i32 %.tr, 1
  %i.ax = or disjoint i32 %i.aw, 1
  store i32 %i.ax, ptr %.val123267, align 4, !tbaa !32
  store i32 1, ptr %i.d, align 4, !tbaa !30
  br i1 %i.al, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %Vec_IntFill.exit, %bb.ab
  %.val123266 = phi ptr [ %.val123265, %bb.ab ], [ %.val123267, %Vec_IntFill.exit ] ; 3 uses
  %i.ay = phi ptr [ %i.bw, %bb.ab ], [ %.val123267, %Vec_IntFill.exit ] ; 3 uses
  %i.az = phi ptr [ %i.bx, %bb.ab ], [ %.val123267, %Vec_IntFill.exit ] ; 5 uses
  %i.ba = phi i32 [ %i.by, %bb.ab ], [ 1, %Vec_IntFill.exit ] ; 8 uses
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.ab ], [ 0, %Vec_IntFill.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv225
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !71  ; 2 uses
  %.not113 = icmp eq i8 %i.bc, 45
  br i1 %.not113, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %.lr.ph170
  %i.bd = icmp eq i8 %i.bc, 48
  %i.be = zext i1 %i.bd to i32
  %indvars.iv225.tr = trunc nuw i64 %indvars.iv225 to i32
  %i.bf = shl nuw i32 %indvars.iv225.tr, 1
  %i.bg = or disjoint i32 %i.bf, %i.be
  %i.bh = load i32, ptr %i.b, align 8, !tbaa !45
  %i.bi = icmp eq i32 %i.ba, %i.bh
  br i1 %i.bi, label %bb.t, label %Vec_IntPush.exit

bb.t:                                             ; preds = %bb.s
  %i.bj = icmp slt i32 %i.ba, 16
  br i1 %i.bj, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not9.i.i137 = icmp eq ptr %i.az, null
  br i1 %.not9.i.i137, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.az, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.w:                                             ; preds = %bb.u
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i

bb.x:                                             ; preds = %bb.t
  %i.bm = icmp samesign ult i32 %i.ba, 1073741823
  %i.bn = shl nuw nsw i32 %i.ba, 1
  %spec.select.i135 = select i1 %i.bm, i32 %i.bn, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ba, %spec.select.i135
  br i1 %.not.i9.i, label %bb.y, label %Vec_IntPush.exit

bb.y:                                             ; preds = %bb.x
  %.not9.i10.i = icmp eq ptr %i.az, null
  %i.bo = zext nneg i32 %spec.select.i135 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %i.az, i64 noundef %i.bp) #16
  br label %Vec_IntGrow.exit11.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #17
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.z, %bb.aa, %bb.v, %bb.w
  %storemerge158 = phi ptr [ %i.bl, %bb.w ], [ %i.bk, %bb.v ], [ %i.bq, %bb.z ], [ %i.br, %bb.aa ] ; 3 uses
  %spec.select.sink.i136 = phi i32 [ 16, %bb.w ], [ 16, %bb.v ], [ %spec.select.i135, %bb.z ], [ %spec.select.i135, %bb.aa ]
  store ptr %storemerge158, ptr %i.i, align 8, !tbaa !31
  store i32 %spec.select.sink.i136, ptr %i.b, align 8, !tbaa !45
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.s, %bb.x, %Vec_IntGrow.exit11.sink.split.i
  %.val123264 = phi ptr [ %.val123266, %bb.s ], [ %.val123266, %bb.x ], [ %storemerge158, %Vec_IntGrow.exit11.sink.split.i ]
  %i.bs = phi ptr [ %i.ay, %bb.s ], [ %i.ay, %bb.x ], [ %storemerge158, %Vec_IntGrow.exit11.sink.split.i ] ; 3 uses
  %i.bt = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.d, align 4, !tbaa !30
  %i.bu = sext i32 %i.ba to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bu
  store i32 %i.bg, ptr %i.bv, align 4, !tbaa !32
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph170, %Vec_IntPush.exit
  %.val123265 = phi ptr [ %.val123266, %.lr.ph170 ], [ %.val123264, %Vec_IntPush.exit ] ; 2 uses
  %i.bw = phi ptr [ %i.ay, %.lr.ph170 ], [ %i.bs, %Vec_IntPush.exit ]
  %i.bx = phi ptr [ %i.az, %.lr.ph170 ], [ %i.bs, %Vec_IntPush.exit ]
  %i.by = phi i32 [ %i.ba, %.lr.ph170 ], [ %i.bt, %Vec_IntPush.exit ] ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge171.loopexit, label %.lr.ph170, !llvm.loop !86

._crit_edge171.loopexit:                          ; preds = %bb.ab
  %i.bz = sext i32 %i.by to i64
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %._crit_edge171.loopexit, %Vec_IntFill.exit
  %.val126 = phi i64 [ %i.bz, %._crit_edge171.loopexit ], [ 1, %Vec_IntFill.exit ]
  %.val123 = phi ptr [ %.val123265, %._crit_edge171.loopexit ], [ %.val123267, %Vec_IntFill.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %.val123, i64 %.val126
  %i.cb = tail call i32 @sat_solver_addclause(ptr noundef %i.ak, ptr noundef %.val123, ptr noundef %i.ca) #18 ; 0 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %.val117 = load i32, ptr %i.m, align 4, !tbaa !66 ; 5 uses
  %i.cc = sext i32 %.val117 to i64
  %i.cd = icmp slt i64 %indvars.iv.next229, %i.cc
  br i1 %i.cd, label %bb.n, label %.critedge.preheader, !llvm.loop !87

bb.ac:                                            ; preds = %.lr.ph184, %.critedge
  %indvars.iv241 = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next242, %.critedge ] ; 4 uses
  %storemerge157206 = phi ptr [ %.promoted197, %.lr.ph184 ], [ %storemerge157198, %.critedge ] ; 2 uses
  %.096183 = phi i32 [ 0, %.lr.ph184 ], [ %.197, %.critedge ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val120, i64 %indvars.iv241 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72
  br i1 %i.an, label %.lr.ph178, label %.preheader160

.preheader160:                                    ; preds = %bb.an, %bb.ac
  %storemerge157202 = phi ptr [ %storemerge157206, %bb.ac ], [ %storemerge157204, %bb.an ] ; 2 uses
  %.val124193 = phi i32 [ 0, %bb.ac ], [ %.val124194, %bb.an ] ; 2 uses
  br i1 %i.ao, label %.lr.ph180, label %._crit_edge181

.lr.ph178:                                        ; preds = %bb.ac, %bb.an
  %indvars.iv231 = phi i64 [ %indvars.iv.next232, %bb.an ], [ 0, %bb.ac ] ; 4 uses
  %storemerge157205 = phi ptr [ %storemerge157204, %bb.an ], [ %storemerge157206, %bb.ac ] ; 8 uses
  %.val124195 = phi i32 [ %.val124194, %bb.an ], [ 0, %bb.ac ] ; 9 uses
  %.not111 = icmp eq i64 %indvars.iv231, %indvars.iv241
  br i1 %.not111, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph178
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.val120, i64 %indvars.iv231
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !72
  %.not112 = icmp eq ptr %i.ch, null
  br i1 %.not112, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ci = load i32, ptr %i.b, align 8, !tbaa !45
  %i.cj = icmp eq i32 %.val124195, %i.ci
  br i1 %i.cj, label %bb.af, label %Vec_IntPush.exit145

bb.af:                                            ; preds = %bb.ae
  %i.ck = icmp slt i32 %.val124195, 16
  br i1 %i.ck, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not9.i.i143 = icmp eq ptr %storemerge157205, null
  br i1 %.not9.i.i143, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge157205, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i141

bb.ai:                                            ; preds = %bb.ag
  %i.cm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i141

bb.aj:                                            ; preds = %bb.af
  %i.cn = icmp samesign ult i32 %.val124195, 1073741823
  %i.co = shl nuw nsw i32 %.val124195, 1
  %spec.select.i138 = select i1 %i.cn, i32 %i.co, i32 2147483647 ; 4 uses
  %.not.i9.i139 = icmp samesign ult i32 %.val124195, %spec.select.i138
  br i1 %.not.i9.i139, label %bb.ak, label %Vec_IntPush.exit145

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i140 = icmp eq ptr %storemerge157205, null
  %i.cp = zext nneg i32 %spec.select.i138 to i64
  %i.cq = shl nuw nsw i64 %i.cp, 2                ; 2 uses
  br i1 %.not9.i10.i140, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cr = tail call ptr @realloc(ptr noundef nonnull %storemerge157205, i64 noundef %i.cq) #16
  br label %Vec_IntGrow.exit11.sink.split.i141

bb.am:                                            ; preds = %bb.ak
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.cq) #17
  br label %Vec_IntGrow.exit11.sink.split.i141

Vec_IntGrow.exit11.sink.split.i141:               ; preds = %bb.al, %bb.am, %bb.ah, %bb.ai
  %storemerge157 = phi ptr [ %i.cm, %bb.ai ], [ %i.cl, %bb.ah ], [ %i.cr, %bb.al ], [ %i.cs, %bb.am ]
  %spec.select.sink.i142 = phi i32 [ 16, %bb.ai ], [ 16, %bb.ah ], [ %spec.select.i138, %bb.al ], [ %spec.select.i138, %bb.am ]
  store i32 %spec.select.sink.i142, ptr %i.b, align 8, !tbaa !45
  br label %Vec_IntPush.exit145

Vec_IntPush.exit145:                              ; preds = %bb.ae, %bb.aj, %Vec_IntGrow.exit11.sink.split.i141
  %storemerge157203 = phi ptr [ %storemerge157205, %bb.ae ], [ %storemerge157205, %bb.aj ], [ %storemerge157, %Vec_IntGrow.exit11.sink.split.i141 ] ; 2 uses
  %i.ct = add nsw i32 %.val124195, 1
  %i.cu = sext i32 %.val124195 to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %storemerge157203, i64 %i.cu
  %i.cw = trunc i64 %indvars.iv231 to i32
  %.tr278 = add i32 %2, %i.cw
  %i.cx = shl nsw i32 %.tr278, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph178, %bb.ad, %Vec_IntPush.exit145
  %storemerge157204 = phi ptr [ %storemerge157205, %.lr.ph178 ], [ %storemerge157205, %bb.ad ], [ %storemerge157203, %Vec_IntPush.exit145 ] ; 2 uses
  %.val124194 = phi i32 [ %.val124195, %.lr.ph178 ], [ %.val124195, %bb.ad ], [ %i.ct, %Vec_IntPush.exit145 ] ; 2 uses
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %.preheader160, label %.lr.ph178, !llvm.loop !88

.lr.ph180:                                        ; preds = %.preheader160, %bb.ax
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %bb.ax ], [ 0, %.preheader160 ] ; 3 uses
  %storemerge157201 = phi ptr [ %storemerge157200, %bb.ax ], [ %storemerge157202, %.preheader160 ] ; 7 uses
  %.val124192 = phi i32 [ %.val124191, %bb.ax ], [ %.val124193, %.preheader160 ] ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv236
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !71  ; 2 uses
  %.not110 = icmp eq i8 %i.cz, 45
  br i1 %.not110, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph180
  %i.da = icmp eq i8 %i.cz, 49
  %i.db = zext i1 %i.da to i32
  %indvars.iv236.tr = trunc nuw i64 %indvars.iv236 to i32
  %i.dc = shl nuw i32 %indvars.iv236.tr, 1
  %i.dd = or disjoint i32 %i.dc, %i.db
  %i.de = load i32, ptr %i.b, align 8, !tbaa !45
  %i.df = icmp eq i32 %.val124192, %i.de
  br i1 %i.df, label %bb.ap, label %Vec_IntPush.exit153

bb.ap:                                            ; preds = %bb.ao
  %i.dg = icmp slt i32 %.val124192, 16
  br i1 %i.dg, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.not9.i.i151 = icmp eq ptr %storemerge157201, null
  br i1 %.not9.i.i151, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge157201, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i149

bb.as:                                            ; preds = %bb.aq
  %i.di = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i149

bb.at:                                            ; preds = %bb.ap
  %i.dj = icmp samesign ult i32 %.val124192, 1073741823
  %i.dk = shl nuw nsw i32 %.val124192, 1
  %spec.select.i146 = select i1 %i.dj, i32 %i.dk, i32 2147483647 ; 4 uses
  %.not.i9.i147 = icmp samesign ult i32 %.val124192, %spec.select.i146
  br i1 %.not.i9.i147, label %bb.au, label %Vec_IntPush.exit153

bb.au:                                            ; preds = %bb.at
  %.not9.i10.i148 = icmp eq ptr %storemerge157201, null
  %i.dl = zext nneg i32 %spec.select.i146 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2                ; 2 uses
  br i1 %.not9.i10.i148, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dn = tail call ptr @realloc(ptr noundef nonnull %storemerge157201, i64 noundef %i.dm) #16
  br label %Vec_IntGrow.exit11.sink.split.i149

bb.aw:                                            ; preds = %bb.au
  %i.do = tail call noalias ptr @malloc(i64 noundef %i.dm) #17
  br label %Vec_IntGrow.exit11.sink.split.i149

Vec_IntGrow.exit11.sink.split.i149:               ; preds = %bb.av, %bb.aw, %bb.ar, %bb.as
  %storemerge156 = phi ptr [ %i.di, %bb.as ], [ %i.dh, %bb.ar ], [ %i.dn, %bb.av ], [ %i.do, %bb.aw ]
  %spec.select.sink.i150 = phi i32 [ 16, %bb.as ], [ 16, %bb.ar ], [ %spec.select.i146, %bb.av ], [ %spec.select.i146, %bb.aw ]
  store i32 %spec.select.sink.i150, ptr %i.b, align 8, !tbaa !45
  br label %Vec_IntPush.exit153

Vec_IntPush.exit153:                              ; preds = %bb.ao, %bb.at, %Vec_IntGrow.exit11.sink.split.i149
  %storemerge157199 = phi ptr [ %storemerge157201, %bb.ao ], [ %storemerge157201, %bb.at ], [ %storemerge156, %Vec_IntGrow.exit11.sink.split.i149 ] ; 2 uses
  %i.dp = add nsw i32 %.val124192, 1
  %i.dq = sext i32 %.val124192 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %storemerge157199, i64 %i.dq
  store i32 %i.dd, ptr %i.dr, align 4, !tbaa !32
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph180, %Vec_IntPush.exit153
  %storemerge157200 = phi ptr [ %storemerge157201, %.lr.ph180 ], [ %storemerge157199, %Vec_IntPush.exit153 ] ; 2 uses
  %.val124191 = phi i32 [ %.val124192, %.lr.ph180 ], [ %i.dp, %Vec_IntPush.exit153 ] ; 2 uses
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge181, label %.lr.ph180, !llvm.loop !89

._crit_edge181:                                   ; preds = %bb.ax, %.preheader160
  %storemerge157198 = phi ptr [ %storemerge157202, %.preheader160 ], [ %storemerge157200, %bb.ax ] ; 4 uses
  %.val124190 = phi i32 [ %.val124193, %.preheader160 ], [ %.val124191, %bb.ax ] ; 2 uses
  %i.ds = sext i32 %.val124190 to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %storemerge157198, i64 %i.ds
  %i.du = tail call i32 @sat_solver_solve(ptr noundef %i.ak, ptr noundef %storemerge157198, ptr noundef %i.dt, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  switch i32 %i.du, label %.critedge [
    i32 0, label %..critedge2_crit_edge
    i32 -1, label %bb.ay
  ]

bb.ay:                                            ; preds = %._crit_edge181
  store ptr null, ptr %i.ce, align 8, !tbaa !72
  %i.dv = add nsw i32 %.096183, 1
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge181, %bb.ay
  %.197 = phi i32 [ %i.dv, %bb.ay ], [ %.096183, %._crit_edge181 ] ; 2 uses
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %.critedge2, label %bb.ac, !llvm.loop !90

..critedge2_crit_edge:                            ; preds = %._crit_edge181
  %i.dw = trunc nuw nsw i64 %indvars.iv241 to i32
  %i.dx = icmp eq i32 %.val117, %i.dw
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge, %..critedge2_crit_edge
  %.1102.lcssa = phi i1 [ %i.dx, %..critedge2_crit_edge ], [ true, %.critedge ]
  %.096.lcssa = phi i32 [ %.096183, %..critedge2_crit_edge ], [ %.197, %.critedge ]
  store i32 %.val124190, ptr %i.d, align 4, !tbaa !30
  store ptr %storemerge157198, ptr %i.i, align 8
  %i.dy = icmp sgt i32 %.096.lcssa, 0
  %or.cond = select i1 %.1102.lcssa, i1 %i.dy, i1 false
  br i1 %or.cond, label %.lr.ph214, label %.critedge2.thread

.lr.ph214:                                        ; preds = %.critedge2
  %.val118 = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.dz = icmp sgt i32 %2, -3
  br i1 %i.dz, label %.lr.ph214.split.us.preheader, label %.critedge5

.lr.ph214.split.us.preheader:                     ; preds = %.lr.ph214
  %i.ea = add i32 %2, 2                           ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 0)
  %i.eb = add nuw i32 %smax, 1
  %wide.trip.count258 = zext nneg i32 %.val117 to i64
  %wide.trip.count253 = zext i32 %i.eb to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count253, 3      ; 3 uses
  %i.ec = icmp slt i32 %i.ea, 3
  %unroll_iter = and i64 %wide.trip.count253, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod302 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph214.split.us

.lr.ph214.split.us:                               ; preds = %.lr.ph214.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv255 = phi i64 [ 0, %.lr.ph214.split.us.preheader ], [ %indvars.iv.next256, %..loopexit_crit_edge.us ] ; 2 uses
  %.0213.us = phi i32 [ 0, %.lr.ph214.split.us.preheader ], [ %.2.us, %..loopexit_crit_edge.us ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.val118, i64 %indvars.iv255
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72 ; 6 uses
  %.not109.us = icmp eq ptr %i.ee, null
  br i1 %.not109.us, label %..loopexit_crit_edge.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph214.split.us
  %i.ef = sext i32 %.0213.us to i64               ; 2 uses
  br i1 %i.ec, label %.preheader.us.epil.preheader, label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv248 = phi i64 [ %indvars.iv.next249.3, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %indvars.iv246 = phi i64 [ %indvars.iv.next247.3, %.preheader.us ], [ %i.ef, %.preheader.us.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.us ], [ 0, %.preheader.us.preheader ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !71
  %.val130.us = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ei = getelementptr inbounds i8, ptr %.val130.us, i64 %indvars.iv246
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !71
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !71
  %.val130.us.1 = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.em = getelementptr i8, ptr %.val130.us.1, i64 %indvars.iv246
  %i.en = getelementptr i8, ptr %i.em, i64 1
  store i8 %i.el, ptr %i.en, align 1, !tbaa !71
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !71
  %.val130.us.2 = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.er = getelementptr i8, ptr %.val130.us.2, i64 %indvars.iv246
  %i.es = getelementptr i8, ptr %i.er, i64 2
  store i8 %i.eq, ptr %i.es, align 1, !tbaa !71
  %indvars.iv.next247.3 = add nsw i64 %indvars.iv246, 4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 3
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !71
  %.val130.us.3 = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.ew = getelementptr i8, ptr %.val130.us.3, i64 %indvars.iv246
  %i.ex = getelementptr i8, ptr %i.ew, i64 3
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !71
  %indvars.iv.next249.3 = add nuw nsw i64 %indvars.iv248, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.preheader.us, !llvm.loop !91

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %.preheader.us
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv248.epil.init = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next249.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ]
  %indvars.iv246.epil.init = phi i64 [ %i.ef, %.preheader.us.preheader ], [ %indvars.iv.next247.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod302)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv248.epil = phi i64 [ %indvars.iv248.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next249.epil, %.preheader.us.epil ] ; 2 uses
  %indvars.iv246.epil = phi i64 [ %indvars.iv246.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next247.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %indvars.iv.next247.epil = add nsw i64 %indvars.iv246.epil, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv248.epil
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !71
  %.val130.us.epil = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.fa = getelementptr inbounds i8, ptr %.val130.us.epil, i64 %indvars.iv246.epil
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !71
  %indvars.iv.next249.epil = add nuw nsw i64 %indvars.iv248.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.epil, !llvm.loop !92

..loopexit_crit_edge.us.loopexit:                 ; preds = %.preheader.us.epil, %..loopexit_crit_edge.us.loopexit.unr-lcssa
  %indvars.iv.next247.lcssa = phi i64 [ %indvars.iv.next247.3, %..loopexit_crit_edge.us.loopexit.unr-lcssa ], [ %indvars.iv.next247.epil, %.preheader.us.epil ]
  %i.fb = trunc nsw i64 %indvars.iv.next247.lcssa to i32
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph214.split.us
  %.2.us = phi i32 [ %.0213.us, %.lr.ph214.split.us ], [ %i.fb, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1 ; 2 uses
  %exitcond259.not = icmp eq i64 %indvars.iv.next256, %wide.trip.count258
  br i1 %exitcond259.not, label %.critedge5, label %.lr.ph214.split.us, !llvm.loop !93

end_hunk_2
begin_hunk_3_@Bmc_ComputeCanonical2:bb.a
  %i.an = getelementptr inbounds [4 x i8], ptr %.val45, i64 %indvars.iv65 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = or i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !32
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, 1 ; 2 uses
  %.val = load i32, ptr %i.b, align 4, !tbaa !30  ; 2 uses
  %i.aq = sext i32 %.val to i64
  %i.ar = icmp slt i64 %indvars.iv.next66, %i.aq
  br i1 %i.ar, label %.lr.ph57, label %.critedge2, !llvm.loop !123

.critedge2:                                       ; preds = %.lr.ph57, %bb.l, %.critedge._crit_edge
  %.val43 = phi i32 [ %.val43.pre, %.critedge._crit_edge ], [ %.val55, %bb.l ], [ %.val, %.lr.ph57 ]
  %.138 = phi i32 [ %i.af, %.critedge._crit_edge ], [ %.03759, %bb.l ], [ %.03759, %.lr.ph57 ] ; 2 uses
  %i.as = icmp slt i32 %.138, %.val43
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !124

._crit_edge:                                      ; preds = %.critedge, %bb.k, %.critedge2, %bb.a
  %.039 = phi i32 [ 0, %bb.a ], [ %i.ae, %.critedge2 ], [ -1, %bb.k ], [ %i.ae, %.critedge ]
  ret i32 %.039
}

; Function Attrs: nounwind uwtable
define i32 @Bmc_ComputeCanonical(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = sext i32 %3 to i64
  tail call void @sat_solver_set_resource_limits(ptr noundef %0, i64 noundef %i.a, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.c, align 4, !tbaa !30
  %i.d = tail call i32 @sat_solver_solve_lexsat(ptr noundef %0, ptr noundef %.val4, i32 noundef %.val) #18
  ret i32 %i.d
}

declare void @sat_solver_set_resource_limits(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @sat_solver_solve_lexsat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef ptr @Bmc_CollapseOneInt2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca [3 x ptr], align 16               ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 64
  %.val150 = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.d = getelementptr i8, ptr %.val150, i64 4
  %.val150.val = load i32, ptr %i.d, align 4, !tbaa !30 ; 10 uses
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.f = add i32 %.val150.val, -1
  %or.cond.i = icmp ult i32 %i.f, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val150.val ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.e, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 5 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted351 = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %.promoted351, ptr %i.k, align 8, !tbaa !31
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 3 uses
  store i32 0, ptr %i.m, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.l, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit170, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.n = sext i32 %spec.store.select.i to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #17
  br label %Vec_IntAlloc.exit170

Vec_IntAlloc.exit170:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !31
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 6 uses
  store i32 0, ptr %i.t, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.s, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit174, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit170
  %i.u = sext i32 %spec.store.select.i to i64
  %i.v = shl nsw i64 %i.u, 2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17
  br label %Vec_IntAlloc.exit174

Vec_IntAlloc.exit174:                             ; preds = %Vec_IntAlloc.exit170, %bb.d
  %i.x = phi ptr [ %i.w, %bb.d ], [ null, %Vec_IntAlloc.exit170 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 7 uses
  store ptr %i.x, ptr %i.y, align 8, !tbaa !31
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i32 0, ptr %i.aa, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.z, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit178, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit174
  %i.ab = sext i32 %spec.store.select.i to i64
  %i.ac = shl nsw i64 %i.ab, 2
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.ac) #17
  br label %Vec_IntAlloc.exit178

Vec_IntAlloc.exit178:                             ; preds = %Vec_IntAlloc.exit174, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ null, %Vec_IntAlloc.exit174 ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !31
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 3 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ag, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit182, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit178
  %i.ai = sext i32 %spec.store.select.i to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #17
  br label %Vec_IntAlloc.exit182

Vec_IntAlloc.exit182:                             ; preds = %Vec_IntAlloc.exit178, %bb.f
  %i.al = phi ptr [ %i.ak, %bb.f ], [ null, %Vec_IntAlloc.exit178 ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !31
  %i.an = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 32 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 32 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !84
  store i32 100, ptr %i.an, align 8, !tbaa !125
  %i.ap = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 45 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ar = tail call ptr @Mf_ManGenerateCnf(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.as = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.ar, i32 noundef 1, i32 noundef 0) #18 ; 9 uses
  store ptr %i.as, ptr %i.b, align 16, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.ar, i32 noundef 1, i32 noundef 0) #18 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !126
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.not = icmp eq i32 %3, 0                       ; 4 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit182
  %i.aw = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.ar, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntAlloc.exit182, %bb.g
  %i.ax = phi ptr [ %i.aw, %bb.g ], [ %i.as, %Vec_IntAlloc.exit182 ]
  %i.ay = phi ptr [ %i.aw, %bb.g ], [ null, %Vec_IntAlloc.exit182 ] ; 3 uses
  store ptr %i.ay, ptr %i.av, align 16, !tbaa !126
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !128
  %i.bb = sub nsw i32 %i.ba, %.val150.val         ; 2 uses
  %.not135 = icmp eq i32 %4, 0                    ; 2 uses
  %i.bc = icmp sgt i32 %.val150.val, 0            ; 2 uses
  br i1 %.not135, label %.preheader, label %.preheader332

.preheader332:                                    ; preds = %bb.h
  br i1 %i.bc, label %.lr.ph, label %.critedge.preheader

.preheader:                                       ; preds = %bb.h
  br i1 %i.bc, label %.lr.ph345, label %.critedge.preheader

.lr.ph:                                           ; preds = %.preheader332, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader332 ] ; 7 uses
  %storemerge342 = phi ptr [ %storemerge343, %Vec_IntPush.exit ], [ %.promoted351, %.preheader332 ] ; 6 uses
  %spec.select.sink.i340 = phi i32 [ %spec.select.sink.i339, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader332 ] ; 3 uses
  %.0130.in336 = phi i32 [ %.0130, %Vec_IntPush.exit ], [ %.val150.val, %.preheader332 ] ; 2 uses
  %.0130 = add nsw i32 %.0130.in336, -1           ; 2 uses
  %i.bd = add nsw i32 %.0130, %i.bb
  %i.be = trunc nsw i64 %indvars.iv to i32
  %i.bf = icmp eq i32 %spec.select.sink.i340, %i.be
  br i1 %i.bf, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %.lr.ph
  %i.bg = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i = icmp eq ptr %storemerge342, null
  br i1 %.not9.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge342, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.j
  %i.bi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bk = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %i.bl = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bl
  br i1 %.not.i9.i, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %.not9.i10.i = icmp eq ptr %storemerge342, null
  %i.bm = zext nneg i32 %spec.select.i to i64
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = tail call ptr @realloc(ptr noundef nonnull %storemerge342, i64 noundef %i.bn) #16
  br label %Vec_IntPush.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bn) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %.lr.ph, %bb.m
  %storemerge343 = phi ptr [ %storemerge342, %.lr.ph ], [ %storemerge342, %bb.m ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ], [ %i.bo, %bb.o ], [ %i.bp, %bb.p ] ; 3 uses
  %spec.select.sink.i339 = phi i32 [ %spec.select.sink.i340, %.lr.ph ], [ %spec.select.sink.i340, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i, %bb.o ], [ %spec.select.i, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %storemerge343, i64 %indvars.iv
  store i32 %i.bd, ptr %i.bq, align 4, !tbaa !32
  %i.br = icmp samesign ugt i32 %.0130.in336, 1
  br i1 %i.br, label %.lr.ph, label %.loopexit, !llvm.loop !131

.lr.ph345:                                        ; preds = %.preheader, %Vec_IntPush.exit190
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %Vec_IntPush.exit190 ], [ 0, %.preheader ] ; 7 uses
  %storemerge331352 = phi ptr [ %storemerge331353, %Vec_IntPush.exit190 ], [ %.promoted351, %.preheader ] ; 6 uses
  %spec.select.sink.i187350 = phi i32 [ %spec.select.sink.i187349, %Vec_IntPush.exit190 ], [ %spec.store.select.i, %.preheader ] ; 3 uses
  %.1344 = phi i32 [ %i.cg, %Vec_IntPush.exit190 ], [ 0, %.preheader ] ; 2 uses
  %i.bs = add nsw i32 %.1344, %i.bb
  %i.bt = trunc nsw i64 %indvars.iv405 to i32
  %i.bu = icmp eq i32 %spec.select.sink.i187350, %i.bt
  br i1 %i.bu, label %bb.q, label %Vec_IntPush.exit190

bb.q:                                             ; preds = %.lr.ph345
  %i.bv = icmp samesign ult i64 %indvars.iv405, 16
  br i1 %i.bv, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %.not9.i.i188 = icmp eq ptr %storemerge331352, null
  br i1 %.not9.i.i188, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge331352, i64 noundef 64) #16
  br label %Vec_IntPush.exit190

bb.t:                                             ; preds = %bb.r
  %i.bx = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit190

bb.u:                                             ; preds = %bb.q
  %i.by = icmp samesign ult i64 %indvars.iv405, 1073741823
  %indvars.iv405.tr = trunc nsw i64 %indvars.iv405 to i32
  %i.bz = shl nsw i32 %indvars.iv405.tr, 1
  %spec.select.i183 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 4 uses
  %i.ca = sext i32 %spec.select.i183 to i64
  %.not.i9.i184 = icmp samesign ult i64 %indvars.iv405, %i.ca
  br i1 %.not.i9.i184, label %bb.v, label %Vec_IntPush.exit190

bb.v:                                             ; preds = %bb.u
  %.not9.i10.i185 = icmp eq ptr %storemerge331352, null
  %i.cb = zext nneg i32 %spec.select.i183 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  br i1 %.not9.i10.i185, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %storemerge331352, i64 noundef %i.cc) #16
  br label %Vec_IntPush.exit190

bb.x:                                             ; preds = %bb.v
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #17
  br label %Vec_IntPush.exit190

Vec_IntPush.exit190:                              ; preds = %bb.t, %bb.s, %bb.x, %bb.w, %.lr.ph345, %bb.u
  %storemerge331353 = phi ptr [ %storemerge331352, %.lr.ph345 ], [ %storemerge331352, %bb.u ], [ %i.bx, %bb.t ], [ %i.bw, %bb.s ], [ %i.cd, %bb.w ], [ %i.ce, %bb.x ] ; 3 uses
  %spec.select.sink.i187349 = phi i32 [ %spec.select.sink.i187350, %.lr.ph345 ], [ %spec.select.sink.i187350, %bb.u ], [ 16, %bb.t ], [ 16, %bb.s ], [ %spec.select.i183, %bb.w ], [ %spec.select.i183, %bb.x ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %storemerge331353, i64 %indvars.iv405
  store i32 %i.bs, ptr %i.cf, align 4, !tbaa !32
  %i.cg = add nuw nsw i32 %.1344, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %.val150.val
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph345, !llvm.loop !132

.loopexit:                                        ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit190
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next406, %Vec_IntPush.exit190 ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 3 uses
  %spec.select.sink.i339.lcssa.sink = phi i32 [ %spec.select.sink.i187349, %Vec_IntPush.exit190 ], [ %spec.select.sink.i339, %Vec_IntPush.exit ]
  %storemerge343.lcssa.sink = phi ptr [ %storemerge331353, %Vec_IntPush.exit190 ], [ %storemerge343, %Vec_IntPush.exit ] ; 2 uses
  %i.ch = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.ch, ptr %i.g, align 4, !tbaa !30
  store i32 %spec.select.sink.i339.lcssa.sink, ptr %i.e, align 8
  store ptr %storemerge343.lcssa.sink, ptr %i.k, align 8
  %.promoted356 = load i32, ptr %i.t, align 4, !tbaa !30
  %.promoted358 = load i32, ptr %i.s, align 8, !tbaa !45
  %.promoted361 = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.ci = sext i32 %.promoted356 to i64
  %wide.trip.count = and i64 %indvars.iv.next.lcssa.sink, 4294967295
  br label %bb.y

..critedge.preheader_crit_edge:                   ; preds = %Vec_IntPush.exit198
  %i.cj = trunc nsw i64 %indvars.iv.next409 to i32
  store i32 %i.cj, ptr %i.t, align 4, !tbaa !30
  store i32 %spec.select.sink.i195359, ptr %i.s, align 8
  store ptr %storemerge330363, ptr %i.y, align 8
  %i.ck = and i64 %indvars.iv.next.lcssa.sink, 4294967295
  br label %.critedge.preheader

.critedge.preheader:                              ; preds = %.preheader, %.preheader332, %..critedge.preheader_crit_edge
  %i.cl = phi i1 [ false, %.preheader ], [ true, %..critedge.preheader_crit_edge ], [ false, %.preheader332 ] ; 2 uses
  %.val145511 = phi i64 [ 0, %.preheader ], [ %i.ck, %..critedge.preheader_crit_edge ], [ 0, %.preheader332 ] ; 4 uses
  %i.cm = icmp sgt i32 %3, -2
  br i1 %i.cm, label %.lr.ph365, label %.critedge._crit_edge

.lr.ph365:                                        ; preds = %.critedge.preheader
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.co = sext i32 %2 to i64
  %i.cp = add i32 %3, 2
  %wide.trip.count419 = zext i32 %i.cp to i64
  br label %bb.ah

bb.y:                                             ; preds = %.loopexit, %Vec_IntPush.exit198
  %indvars.iv410 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next411, %Vec_IntPush.exit198 ] ; 2 uses
  %indvars.iv408 = phi i64 [ %i.ci, %.loopexit ], [ %indvars.iv.next409, %Vec_IntPush.exit198 ] ; 7 uses
  %storemerge330362 = phi ptr [ %.promoted361, %.loopexit ], [ %storemerge330363, %Vec_IntPush.exit198 ] ; 6 uses
  %spec.select.sink.i195360 = phi i32 [ %.promoted358, %.loopexit ], [ %spec.select.sink.i195359, %Vec_IntPush.exit198 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %storemerge343.lcssa.sink, i64 %indvars.iv410
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !32
  %i.cs = shl nsw i32 %i.cr, 1
  %i.ct = or disjoint i32 %i.cs, 1
  %i.cu = trunc nsw i64 %indvars.iv408 to i32
  %i.cv = icmp eq i32 %spec.select.sink.i195360, %i.cu
  br i1 %i.cv, label %bb.z, label %Vec_IntPush.exit198

bb.z:                                             ; preds = %bb.y
  %i.cw = icmp slt i64 %indvars.iv408, 16
  br i1 %i.cw, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i196 = icmp eq ptr %storemerge330362, null
  br i1 %.not9.i.i196, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge330362, i64 noundef 64) #16
  br label %Vec_IntPush.exit198

bb.ac:                                            ; preds = %bb.aa
  %i.cy = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit198

bb.ad:                                            ; preds = %bb.z
  %i.cz = icmp samesign ult i64 %indvars.iv408, 1073741823
  %indvars.iv408.tr = trunc nsw i64 %indvars.iv408 to i32
  %i.da = shl nsw i32 %indvars.iv408.tr, 1
  %spec.select.i191 = select i1 %i.cz, i32 %i.da, i32 2147483647 ; 4 uses
  %i.db = sext i32 %spec.select.i191 to i64
  %.not.i9.i192 = icmp samesign ult i64 %indvars.iv408, %i.db
  br i1 %.not.i9.i192, label %bb.ae, label %Vec_IntPush.exit198

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i193 = icmp eq ptr %storemerge330362, null
  %i.dc = zext nneg i32 %spec.select.i191 to i64
  %i.dd = shl nuw nsw i64 %i.dc, 2                ; 2 uses
  br i1 %.not9.i10.i193, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.de = tail call ptr @realloc(ptr noundef nonnull %storemerge330362, i64 noundef %i.dd) #16
  br label %Vec_IntPush.exit198

bb.ag:                                            ; preds = %bb.ae
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.dd) #17
  br label %Vec_IntPush.exit198

Vec_IntPush.exit198:                              ; preds = %bb.ac, %bb.ab, %bb.ag, %bb.af, %bb.y, %bb.ad
  %storemerge330363 = phi ptr [ %storemerge330362, %bb.y ], [ %storemerge330362, %bb.ad ], [ %i.cy, %bb.ac ], [ %i.cx, %bb.ab ], [ %i.de, %bb.af ], [ %i.df, %bb.ag ] ; 3 uses
  %spec.select.sink.i195359 = phi i32 [ %spec.select.sink.i195360, %bb.y ], [ %spec.select.sink.i195360, %bb.ad ], [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i191, %bb.af ], [ %spec.select.i191, %bb.ag ] ; 2 uses
  %indvars.iv.next409 = add nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %storemerge330363, i64 %indvars.iv408
  store i32 %i.ct, ptr %i.dg, align 4, !tbaa !32
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %exitcond415.not = icmp eq i64 %indvars.iv.next411, %wide.trip.count
  br i1 %exitcond415.not, label %..critedge.preheader_crit_edge, label %bb.y, !llvm.loop !133

bb.ah:                                            ; preds = %.lr.ph365, %.critedge
  %indvars.iv416 = phi i64 [ 0, %.lr.ph365 ], [ %indvars.iv.next417, %.critedge ] ; 3 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv416 to i32
  %i.di = and i32 %i.dh, 1                        ; 3 uses
  %i.dj = or disjoint i32 %i.di, 2
  store i32 %i.dj, ptr %i.a, align 4, !tbaa !32
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv416
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !126 ; 2 uses
  %i.dm = call i32 @sat_solver_addclause(ptr noundef %i.dl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cn) #18
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i, label %bb.bo

.lr.ph.i:                                         ; preds = %bb.ah
  %.not141 = icmp eq i32 %i.di, %6
  %i.do = load i32, ptr %i.ao, align 4, !tbaa !84 ; 7 uses
  %i.dp = load i32, ptr %i.an, align 8, !tbaa !125
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i

.Vec_StrPush.exit_crit_edge.i:                    ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.aq, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i

bb.ai:                                            ; preds = %.lr.ph.i
  %i.dr = icmp slt i32 %i.do, 16
  br i1 %i.dr, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not9.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ds, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.al:                                            ; preds = %bb.aj
  %i.du = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.am:                                            ; preds = %bb.ai
  %i.dv = icmp samesign ult i32 %i.do, 1073741823
  %i.dw = shl nuw nsw i32 %i.do, 1
  %spec.select.i.i = select i1 %i.dv, i32 %i.dw, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp samesign ult i32 %i.do, %spec.select.i.i
  %.pre8.i = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i, label %bb.an, label %Vec_StrPush.exit.i

bb.an:                                            ; preds = %bb.am
  %.not9.i10.i.i = icmp eq ptr %.pre8.i, null
  %i.dx = zext nneg i32 %spec.select.i.i to i64   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dy = call ptr @realloc(ptr noundef nonnull %.pre8.i, i64 noundef %i.dx) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dz = call noalias ptr @malloc(i64 noundef %i.dx) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.ap, %bb.ao, %bb.al, %bb.ak
  %i.ea = phi ptr [ %i.du, %bb.al ], [ %i.dt, %bb.ak ], [ %i.dy, %bb.ao ], [ %i.dz, %bb.ap ] ; 2 uses
  %spec.select.sink.i.i = phi i32 [ 16, %bb.al ], [ 16, %bb.ak ], [ %spec.select.i.i, %bb.ao ], [ %spec.select.i.i, %bb.ap ]
  store ptr %i.ea, ptr %i.aq, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i, ptr %i.an, align 8, !tbaa !125
  %.pre9.i = load i32, ptr %i.ao, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %Vec_StrGrow.exit11.sink.split.i.i, %bb.am, %.Vec_StrPush.exit_crit_edge.i
  %i.eb = phi i32 [ %i.do, %.Vec_StrPush.exit_crit_edge.i ], [ %i.do, %bb.am ], [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ] ; 2 uses
  %i.ec = phi ptr [ %.pre.i, %.Vec_StrPush.exit_crit_edge.i ], [ %.pre8.i, %bb.am ], [ %i.ea, %Vec_StrGrow.exit11.sink.split.i.i ]
  %i.ed = add nsw i32 %i.eb, 1
  store i32 %i.ed, ptr %i.ao, align 4, !tbaa !84
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ec, i64 %i.ee
  store i8 32, ptr %i.ef, align 1, !tbaa !71
  %i.eg = select i1 %.not141, i8 48, i8 49
  %i.eh = load i32, ptr %i.ao, align 4, !tbaa !84 ; 7 uses
  %i.ei = load i32, ptr %i.an, align 8, !tbaa !125
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.aq, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.aq, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.1

bb.aq:                                            ; preds = %Vec_StrPush.exit.i
  %i.ek = icmp slt i32 %i.eh, 16
  br i1 %i.ek, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.el = icmp samesign ult i32 %i.eh, 1073741823
  %i.em = shl nuw nsw i32 %i.eh, 1
  %spec.select.i.i.1 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.eh, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.as, label %Vec_StrPush.exit.i.1

bb.as:                                            ; preds = %bb.ar
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.en = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eo = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.en) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.au:                                            ; preds = %bb.as
  %i.ep = call noalias ptr @malloc(i64 noundef %i.en) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.av:                                            ; preds = %bb.aq
  %i.eq = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.eq, null
  br i1 %.not9.i.i.i.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.eq, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ax:                                            ; preds = %bb.av
  %i.es = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at
  %i.et = phi ptr [ %i.es, %bb.ax ], [ %i.er, %bb.aw ], [ %i.eo, %bb.at ], [ %i.ep, %bb.au ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.ax ], [ 16, %bb.aw ], [ %spec.select.i.i.1, %bb.at ], [ %spec.select.i.i.1, %bb.au ]
  store ptr %i.et, ptr %i.aq, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i.1, ptr %i.an, align 8, !tbaa !125
  %.pre9.i.1 = load i32, ptr %i.ao, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.ar, %.Vec_StrPush.exit_crit_edge.i.1
  %i.eu = phi i32 [ %i.eh, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.eh, %bb.ar ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.ev = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.ar ], [ %i.et, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.ew = add nsw i32 %i.eu, 1
  store i32 %i.ew, ptr %i.ao, align 4, !tbaa !84
  %i.ex = sext i32 %i.eu to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ev, i64 %i.ex
  store i8 %i.eg, ptr %i.ey, align 1, !tbaa !71
  %i.ez = load i32, ptr %i.ao, align 4, !tbaa !84 ; 7 uses
  %i.fa = load i32, ptr %i.an, align 8, !tbaa !125
  %i.fb = icmp eq i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ay, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.aq, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.2

bb.ay:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.fc = icmp slt i32 %i.ez, 16
  br i1 %i.fc, label %bb.bd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fd = icmp samesign ult i32 %i.ez, 1073741823
  %i.fe = shl nuw nsw i32 %i.ez, 1
  %spec.select.i.i.2 = select i1 %i.fd, i32 %i.fe, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.ez, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ba, label %Vec_StrPush.exit.i.2

bb.ba:                                            ; preds = %bb.az
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.ff = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = call ptr @realloc(ptr noundef nonnull %.pre8.i.2, i64 noundef %i.ff) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

end_hunk_3
begin_hunk_4_@Bmc_CollapseOneInt2:bb.a
  %storemerge323 = phi ptr [ %i.jl, %bb.db ], [ %i.jk, %bb.da ], [ %i.jp, %bb.de ], [ %i.jq, %bb.df ] ; 2 uses
  %spec.select.sink.i234 = phi i32 [ 16, %bb.db ], [ 16, %bb.da ], [ %spec.select.i230, %bb.de ], [ %spec.select.i230, %bb.df ]
  store ptr %storemerge323, ptr %i.aq, align 8, !tbaa !64
  store i32 %spec.select.sink.i234, ptr %i.an, align 8, !tbaa !125
  %.pre449 = load i32, ptr %i.ao, align 4, !tbaa !84
  br label %Vec_StrPush.exit237

Vec_StrPush.exit237:                              ; preds = %.critedge._crit_edge.Vec_StrPush.exit237_crit_edge, %bb.dc, %Vec_StrGrow.exit11.sink.split.i233
  %i.jr = phi i32 [ %i.jf, %.critedge._crit_edge.Vec_StrPush.exit237_crit_edge ], [ %i.jf, %bb.dc ], [ %.pre449, %Vec_StrGrow.exit11.sink.split.i233 ] ; 2 uses
  %i.js = phi ptr [ %.pre447, %.critedge._crit_edge.Vec_StrPush.exit237_crit_edge ], [ %.pre448, %bb.dc ], [ %storemerge323, %Vec_StrGrow.exit11.sink.split.i233 ]
  %i.jt = add nsw i32 %i.jr, 1
  store i32 %i.jt, ptr %i.ao, align 4, !tbaa !84
  %i.ju = sext i32 %i.jr to i64
  %i.jv = getelementptr inbounds i8, ptr %i.js, i64 %i.ju
  store i8 0, ptr %i.jv, align 1, !tbaa !71
  %i.jw = sext i32 %2 to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %i.as, i64 216 ; 5 uses
  %i.jy = icmp sgt i32 %1, 0
  %i.jz = getelementptr i8, ptr %i.as, i64 328
  %.not136 = icmp eq i32 %6, 0
  %i.ka = select i1 %.not136, i8 49, i8 48
  %i.kb = add nsw i64 %.val145511, -1
  %xtraiter = and i64 %.val145511, 3              ; 3 uses
  %i.kc = icmp ult i64 %i.kb, 3
  %unroll_iter = and i64 %.val145511, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod530 = icmp ne i64 %xtraiter, 0
  br label %bb.dg

bb.dg:                                            ; preds = %.backedge, %Vec_StrPush.exit237
  %.0 = phi i32 [ 0, %Vec_StrPush.exit237 ], [ %i.pe, %.backedge ] ; 2 uses
  br i1 %.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @sat_solver_set_resource_limits(ptr noundef %i.as, i64 noundef %i.jw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !31
  %.val.i = load i32, ptr %i.t, align 4, !tbaa !30
  %i.kd = call i32 @sat_solver_solve_lexsat(ptr noundef %i.as, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %.val153 = load ptr, ptr %i.k, align 8, !tbaa !31 ; 5 uses
  br i1 %i.cl, label %.lr.ph.i238.preheader, label %sat_solver_clean_polarity.exit

.lr.ph.i238.preheader:                            ; preds = %bb.di
  br i1 %i.kc, label %.lr.ph.i238.epil.preheader, label %.lr.ph.i238

.lr.ph.i238:                                      ; preds = %.lr.ph.i238.preheader, %.lr.ph.i238
  %indvars.iv.i240 = phi i64 [ %indvars.iv.next.i241.3, %.lr.ph.i238 ], [ 0, %.lr.ph.i238.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i238 ], [ 0, %.lr.ph.i238.preheader ]
  %i.ke = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !32
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds i8, ptr %i.ke, i64 %i.kh
  store i8 0, ptr %i.ki, align 1, !tbaa !71
  %i.kj = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !32
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds i8, ptr %i.kj, i64 %i.kn
  store i8 0, ptr %i.ko, align 1, !tbaa !71
  %i.kp = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !32
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds i8, ptr %i.kp, i64 %i.kt
  store i8 0, ptr %i.ku, align 1, !tbaa !71
  %i.kv = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !32
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds i8, ptr %i.kv, i64 %i.kz
  store i8 0, ptr %i.la, align 1, !tbaa !71
  %indvars.iv.next.i241.3 = add nuw nsw i64 %indvars.iv.i240, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %.lr.ph.i238, !llvm.loop !136

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i238
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.lr.ph.i238.epil.preheader

.lr.ph.i238.epil.preheader:                       ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i238.preheader
  %indvars.iv.i240.epil.init = phi i64 [ 0, %.lr.ph.i238.preheader ], [ %indvars.iv.next.i241.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod530)
  br label %.lr.ph.i238.epil

.lr.ph.i238.epil:                                 ; preds = %.lr.ph.i238.epil, %.lr.ph.i238.epil.preheader
  %indvars.iv.i240.epil = phi i64 [ %indvars.iv.next.i241.epil, %.lr.ph.i238.epil ], [ %indvars.iv.i240.epil.init, %.lr.ph.i238.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i238.epil ], [ 0, %.lr.ph.i238.epil.preheader ]
  %i.lb = load ptr, ptr %i.jx, align 8, !tbaa !135
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.val153, i64 %indvars.iv.i240.epil
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !32
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds i8, ptr %i.lb, i64 %i.le
  store i8 0, ptr %i.lf, align 1, !tbaa !71
  %indvars.iv.next.i241.epil = add nuw nsw i64 %indvars.iv.i240.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %.lr.ph.i238.epil, !llvm.loop !137

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i238.epil, %bb.di
  %i.lg = call i32 @sat_solver_solve(ptr noundef %i.as, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.dj

bb.dj:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.dh
  %.0131 = phi i32 [ %i.kd, %bb.dh ], [ %i.lg, %sat_solver_clean_polarity.exit ]
  switch i32 %.0131, label %bb.dl [
    i32 0, label %bb.dk
    i32 -1, label %Vec_StrFreeP.exit
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.lh = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %.not.i243 = icmp eq ptr %i.lh, null
  br i1 %.not.i243, label %Vec_StrFreeP.exit245, label %.thread.i244

.thread.i244:                                     ; preds = %bb.dk
  call void @free(ptr noundef nonnull %i.lh) #18
  br label %Vec_StrFreeP.exit245

Vec_StrFreeP.exit245:                             ; preds = %bb.dk, %.thread.i244
  call void @free(ptr noundef nonnull %i.an) #18
  br label %Vec_StrFreeP.exit

bb.dl:                                            ; preds = %bb.dj
  %i.li = icmp eq i32 %.0, %1
  %or.cond = select i1 %i.jy, i1 %i.li, i1 false
  br i1 %or.cond, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.lj = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 2 uses
  %.not.i246 = icmp eq ptr %i.lj, null
  br i1 %.not.i246, label %Vec_StrFreeP.exit248, label %.thread.i247

.thread.i247:                                     ; preds = %bb.dm
  call void @free(ptr noundef nonnull %i.lj) #18
  br label %Vec_StrFreeP.exit248

Vec_StrFreeP.exit248:                             ; preds = %bb.dm, %.thread.i247
  call void @free(ptr noundef nonnull %i.an) #18
  br label %Vec_StrFreeP.exit

bb.dn:                                            ; preds = %bb.dl
  store i32 0, ptr %i.m, align 4, !tbaa !30
  store i32 0, ptr %i.t, align 4, !tbaa !30
  br i1 %i.cl, label %.lr.ph367, label %.critedge2

.lr.ph367:                                        ; preds = %bb.dn
  %.val148 = load ptr, ptr %i.k, align 8, !tbaa !31
  %.promoted370 = load i32, ptr %i.l, align 8, !tbaa !45
  %.promoted373 = load ptr, ptr %i.r, align 8, !tbaa !31
  %.promoted378 = load i32, ptr %i.s, align 8, !tbaa !45
  %.promoted381 = load ptr, ptr %i.y, align 8, !tbaa !31
  br label %bb.do

bb.do:                                            ; preds = %.lr.ph367, %Vec_IntPush.exit264
  %indvars.iv425 = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next426, %Vec_IntPush.exit264 ] ; 2 uses
  %indvars.iv423 = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next424, %Vec_IntPush.exit264 ] ; 7 uses
  %indvars.iv421 = phi i64 [ 0, %.lr.ph367 ], [ %indvars.iv.next422, %Vec_IntPush.exit264 ] ; 7 uses
  %storemerge327382 = phi ptr [ %.promoted381, %.lr.ph367 ], [ %storemerge327383, %Vec_IntPush.exit264 ] ; 6 uses
  %spec.select.sink.i261380 = phi i32 [ %.promoted378, %.lr.ph367 ], [ %spec.select.sink.i261379, %Vec_IntPush.exit264 ] ; 3 uses
  %storemerge326374 = phi ptr [ %.promoted373, %.lr.ph367 ], [ %storemerge326375, %Vec_IntPush.exit264 ] ; 6 uses
  %spec.select.sink.i253372 = phi i32 [ %.promoted370, %.lr.ph367 ], [ %spec.select.sink.i253371, %Vec_IntPush.exit264 ] ; 3 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.val148, i64 %indvars.iv425
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !32 ; 2 uses
  %.val164 = load ptr, ptr %i.jz, align 8, !tbaa !138
  %i.lm = sext i32 %i.ll to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %.val164, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !32
  %i.lp = icmp ne i32 %i.lo, 1
  %i.lq = zext i1 %i.lp to i32
  %i.lr = shl nsw i32 %i.ll, 1
  %i.ls = or disjoint i32 %i.lr, %i.lq            ; 2 uses
  store i32 %i.ls, ptr %i.a, align 4, !tbaa !32
  %i.lt = trunc nsw i64 %indvars.iv423 to i32
  %i.lu = icmp eq i32 %spec.select.sink.i253372, %i.lt
  br i1 %i.lu, label %bb.dp, label %Vec_IntPush.exit256

bb.dp:                                            ; preds = %bb.do
  %i.lv = icmp samesign ult i64 %indvars.iv423, 16
  br i1 %i.lv, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %.not9.i.i254 = icmp eq ptr %storemerge326374, null
  br i1 %.not9.i.i254, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lw = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge326374, i64 noundef 64) #16
  br label %Vec_IntPush.exit256

bb.ds:                                            ; preds = %bb.dq
  %i.lx = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit256

bb.dt:                                            ; preds = %bb.dp
  %i.ly = icmp samesign ult i64 %indvars.iv423, 1073741823
  %indvars.iv423.tr = trunc nsw i64 %indvars.iv423 to i32
  %i.lz = shl nsw i32 %indvars.iv423.tr, 1
  %spec.select.i249 = select i1 %i.ly, i32 %i.lz, i32 2147483647 ; 4 uses
  %i.ma = sext i32 %spec.select.i249 to i64
  %.not.i9.i250 = icmp samesign ult i64 %indvars.iv423, %i.ma
  br i1 %.not.i9.i250, label %bb.du, label %Vec_IntPush.exit256

bb.du:                                            ; preds = %bb.dt
  %.not9.i10.i251 = icmp eq ptr %storemerge326374, null
  %i.mb = zext nneg i32 %spec.select.i249 to i64
  %i.mc = shl nuw nsw i64 %i.mb, 2                ; 2 uses
  br i1 %.not9.i10.i251, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.md = call ptr @realloc(ptr noundef nonnull %storemerge326374, i64 noundef %i.mc) #16
  br label %Vec_IntPush.exit256

bb.dw:                                            ; preds = %bb.du
  %i.me = call noalias ptr @malloc(i64 noundef %i.mc) #17
  br label %Vec_IntPush.exit256

Vec_IntPush.exit256:                              ; preds = %bb.ds, %bb.dr, %bb.dw, %bb.dv, %bb.do, %bb.dt
  %storemerge326375 = phi ptr [ %storemerge326374, %bb.do ], [ %storemerge326374, %bb.dt ], [ %i.lx, %bb.ds ], [ %i.lw, %bb.dr ], [ %i.md, %bb.dv ], [ %i.me, %bb.dw ] ; 3 uses
  %spec.select.sink.i253371 = phi i32 [ %spec.select.sink.i253372, %bb.do ], [ %spec.select.sink.i253372, %bb.dt ], [ 16, %bb.ds ], [ 16, %bb.dr ], [ %spec.select.i249, %bb.dv ], [ %spec.select.i249, %bb.dw ] ; 2 uses
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %storemerge326375, i64 %indvars.iv423
  store i32 %i.ls, ptr %i.mf, align 4, !tbaa !32
  %i.mg = load i32, ptr %i.a, align 4, !tbaa !32
  %i.mh = trunc nsw i64 %indvars.iv421 to i32
  %i.mi = icmp eq i32 %spec.select.sink.i261380, %i.mh
  br i1 %i.mi, label %bb.dx, label %Vec_IntPush.exit264

bb.dx:                                            ; preds = %Vec_IntPush.exit256
  %i.mj = icmp samesign ult i64 %indvars.iv421, 16
  br i1 %i.mj, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %.not9.i.i262 = icmp eq ptr %storemerge327382, null
  br i1 %.not9.i.i262, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge327382, i64 noundef 64) #16
  br label %Vec_IntPush.exit264

bb.ea:                                            ; preds = %bb.dy
  %i.ml = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit264

bb.eb:                                            ; preds = %bb.dx
  %i.mm = icmp samesign ult i64 %indvars.iv421, 1073741823
  %indvars.iv421.tr = trunc nsw i64 %indvars.iv421 to i32
  %i.mn = shl nsw i32 %indvars.iv421.tr, 1
  %spec.select.i257 = select i1 %i.mm, i32 %i.mn, i32 2147483647 ; 4 uses
  %i.mo = sext i32 %spec.select.i257 to i64
  %.not.i9.i258 = icmp samesign ult i64 %indvars.iv421, %i.mo
  br i1 %.not.i9.i258, label %bb.ec, label %Vec_IntPush.exit264

bb.ec:                                            ; preds = %bb.eb
  %.not9.i10.i259 = icmp eq ptr %storemerge327382, null
  %i.mp = zext nneg i32 %spec.select.i257 to i64
  %i.mq = shl nuw nsw i64 %i.mp, 2                ; 2 uses
  br i1 %.not9.i10.i259, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mr = call ptr @realloc(ptr noundef nonnull %storemerge327382, i64 noundef %i.mq) #16
  br label %Vec_IntPush.exit264

bb.ee:                                            ; preds = %bb.ec
  %i.ms = call noalias ptr @malloc(i64 noundef %i.mq) #17
  br label %Vec_IntPush.exit264

Vec_IntPush.exit264:                              ; preds = %bb.ea, %bb.dz, %bb.ee, %bb.ed, %Vec_IntPush.exit256, %bb.eb
  %storemerge327383 = phi ptr [ %storemerge327382, %Vec_IntPush.exit256 ], [ %storemerge327382, %bb.eb ], [ %i.ml, %bb.ea ], [ %i.mk, %bb.dz ], [ %i.mr, %bb.ed ], [ %i.ms, %bb.ee ] ; 3 uses
  %spec.select.sink.i261379 = phi i32 [ %spec.select.sink.i261380, %Vec_IntPush.exit256 ], [ %spec.select.sink.i261380, %bb.eb ], [ 16, %bb.ea ], [ 16, %bb.dz ], [ %spec.select.i257, %bb.ed ], [ %spec.select.i257, %bb.ee ] ; 2 uses
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %storemerge327383, i64 %indvars.iv421
  store i32 %i.mg, ptr %i.mt, align 4, !tbaa !32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond433.not = icmp eq i64 %indvars.iv.next426, %.val145511
  br i1 %exitcond433.not, label %..critedge2_crit_edge, label %bb.do, !llvm.loop !139

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit264
  %i.mu = trunc nsw i64 %indvars.iv.next424 to i32
  %i.mv = trunc nsw i64 %indvars.iv.next422 to i32
  store i32 %i.mu, ptr %i.m, align 4, !tbaa !30
  store i32 %spec.select.sink.i253371, ptr %i.l, align 8
  store ptr %storemerge326375, ptr %i.r, align 8
  store i32 %i.mv, ptr %i.t, align 4, !tbaa !30
  store i32 %spec.select.sink.i261379, ptr %i.s, align 8
  store ptr %storemerge327383, ptr %i.y, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.dn
  %i.mw = call i32 @Bmc_CollapseExpand(ptr noundef %i.au, ptr noundef %i.ax, ptr noundef nonnull %i.l, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ag, i32 noundef %2, i32 noundef %3, i32 noundef -1)
  %i.mx = icmp slt i32 %i.mw, 0
  %i.my = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 10 uses
  br i1 %i.mx, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %.critedge2
  %.not.i265 = icmp eq ptr %i.my, null
  br i1 %.not.i265, label %bb.eg, label %.thread.i266

.thread.i266:                                     ; preds = %bb.ef
  call void @free(ptr noundef nonnull %i.my) #18
  br label %bb.eg

bb.eg:                                            ; preds = %.thread.i266, %bb.ef
  call void @free(ptr noundef nonnull %i.an) #18
  br label %Vec_StrFreeP.exit

bb.eh:                                            ; preds = %.critedge2
  %i.mz = load i32, ptr %i.ao, align 4, !tbaa !84 ; 3 uses
  %i.na = add nsw i32 %i.mz, -1                   ; 6 uses
  store i32 %i.na, ptr %i.ao, align 4, !tbaa !84
  %i.nb = add nsw i32 %i.na, %.val150.val         ; 3 uses
  %i.nc = add nsw i32 %i.nb, 4                    ; 9 uses
  %.not.i268.not = icmp slt i32 %i.nc, %i.mz
  br i1 %.not.i268.not, label %Vec_StrFillExtra.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.nd = load i32, ptr %i.an, align 8, !tbaa !125 ; 4 uses
  %i.ne = shl nsw i32 %i.nd, 1                    ; 2 uses
  %i.nf = icmp sgt i32 %i.nc, %i.ne
  %.not.i.i = icmp slt i32 %i.nd, %i.nc           ; 2 uses
  br i1 %i.nf, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not.i.i, label %bb.ek, label %Vec_StrGrow.exit.i269

bb.ek:                                            ; preds = %bb.ej
  %.not9.i.i277 = icmp eq ptr %i.my, null
  %i.ng = sext i32 %i.nc to i64                   ; 2 uses
  br i1 %.not9.i.i277, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.nh = call ptr @realloc(ptr noundef nonnull %i.my, i64 noundef %i.ng) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.em:                                            ; preds = %bb.ek
  %i.ni = call noalias ptr @malloc(i64 noundef %i.ng) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.en:                                            ; preds = %bb.ei
  br i1 %.not.i.i, label %bb.eo, label %Vec_StrGrow.exit.i269

bb.eo:                                            ; preds = %bb.en
  %i.nj = icmp slt i32 %i.nd, 1073741823
  %spec.select.i275 = select i1 %i.nj, i32 %i.ne, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.nd, %spec.select.i275
  br i1 %.not.i22.i, label %bb.ep, label %Vec_StrGrow.exit.i269

bb.ep:                                            ; preds = %bb.eo
  %.not9.i23.i = icmp eq ptr %i.my, null
  %i.nk = sext i32 %spec.select.i275 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.nl = call ptr @realloc(ptr noundef nonnull %i.my, i64 noundef %i.nk) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.er:                                            ; preds = %bb.ep
  %i.nm = call noalias ptr @malloc(i64 noundef %i.nk) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.eq, %bb.er, %bb.el, %bb.em
  %storemerge324 = phi ptr [ %i.ni, %bb.em ], [ %i.nh, %bb.el ], [ %i.nl, %bb.eq ], [ %i.nm, %bb.er ] ; 2 uses
  %spec.select.sink.i276 = phi i32 [ %i.nc, %bb.em ], [ %i.nc, %bb.el ], [ %spec.select.i275, %bb.eq ], [ %spec.select.i275, %bb.er ]
  store ptr %storemerge324, ptr %i.aq, align 8, !tbaa !64
  store i32 %spec.select.sink.i276, ptr %i.an, align 8, !tbaa !125
  %.pre450 = load i32, ptr %i.ao, align 4, !tbaa !84
  br label %Vec_StrGrow.exit.i269

Vec_StrGrow.exit.i269:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.eo, %bb.en, %bb.ej
  %i.nn = phi ptr [ %storemerge324, %Vec_StrGrow.exit.sink.split.i ], [ %i.my, %bb.eo ], [ %i.my, %bb.en ], [ %i.my, %bb.ej ] ; 2 uses
  %i.no = phi i32 [ %.pre450, %Vec_StrGrow.exit.sink.split.i ], [ %i.na, %bb.eo ], [ %i.na, %bb.en ], [ %i.na, %bb.ej ] ; 2 uses
  %i.np = icmp slt i32 %i.no, %i.nc
  br i1 %i.np, label %.lr.ph.i270, label %._crit_edge.i

.lr.ph.i270:                                      ; preds = %Vec_StrGrow.exit.i269
  %i.nq = sext i32 %i.no to i64                   ; 2 uses
  %wide.trip.count.i271 = sext i32 %i.nc to i64
  %scevgep = getelementptr i8, ptr %i.nn, i64 %i.nq
  %i.nr = sub nsw i64 %wide.trip.count.i271, %i.nq
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 45, i64 %i.nr, i1 false), !tbaa !71
  %.val163.pre.pre = load ptr, ptr %i.aq, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i270, %Vec_StrGrow.exit.i269
  %.val163.pre = phi ptr [ %.val163.pre.pre, %.lr.ph.i270 ], [ %i.nn, %Vec_StrGrow.exit.i269 ]
  store i32 %i.nc, ptr %i.ao, align 4, !tbaa !84
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.eh, %._crit_edge.i
  %.val163 = phi ptr [ %i.my, %bb.eh ], [ %.val163.pre, %._crit_edge.i ] ; 2 uses
  %i.ns = sext i32 %i.nb to i64                   ; 2 uses
  %i.nt = getelementptr i8, ptr %.val163, i64 %i.ns ; 2 uses
  store i8 32, ptr %i.nt, align 1, !tbaa !71
  %i.nu = add i32 %i.mz, %.val150.val
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds i8, ptr %.val163, i64 %i.nv
  store i8 %i.ka, ptr %i.nw, align 1, !tbaa !71
  %i.nx = getelementptr i8, ptr %i.nt, i64 2
  store i8 10, ptr %i.nx, align 1, !tbaa !71
  %.val160 = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.ny = getelementptr i8, ptr %.val160, i64 %i.ns
  %i.nz = getelementptr i8, ptr %i.ny, i64 3
  store i8 0, ptr %i.nz, align 1, !tbaa !71
  store i32 0, ptr %i.ah, align 4, !tbaa !30
  %.val = load i32, ptr %i.aa, align 4, !tbaa !30 ; 2 uses
  %i.oa = icmp sgt i32 %.val, 0
  %.val152.pre = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  br i1 %i.oa, label %.lr.ph385, label %.critedge6

.lr.ph385:                                        ; preds = %Vec_StrFillExtra.exit
  %.val147 = load ptr, ptr %i.af, align 8, !tbaa !31
  %.val146 = load ptr, ptr %i.r, align 8, !tbaa !31
  %.promoted388 = load i32, ptr %i.ag, align 8, !tbaa !45
  %wide.trip.count441 = zext nneg i32 %.val to i64
  br label %bb.es

bb.es:                                            ; preds = %.lr.ph385, %Vec_IntPush.exit285
  %indvars.iv436 = phi i64 [ 0, %.lr.ph385 ], [ %indvars.iv.next437, %Vec_IntPush.exit285 ] ; 2 uses
  %indvars.iv434 = phi i64 [ 0, %.lr.ph385 ], [ %indvars.iv.next435, %Vec_IntPush.exit285 ] ; 7 uses
  %storemerge325392 = phi ptr [ %.val152.pre, %.lr.ph385 ], [ %storemerge325393, %Vec_IntPush.exit285 ] ; 6 uses
  %spec.select.sink.i282390 = phi i32 [ %.promoted388, %.lr.ph385 ], [ %spec.select.sink.i282389, %Vec_IntPush.exit285 ] ; 3 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.val147, i64 %indvars.iv436
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !32 ; 3 uses
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [4 x i8], ptr %.val146, i64 %i.od
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !32 ; 2 uses
  store i32 %i.of, ptr %i.a, align 4, !tbaa !32
  %i.og = xor i32 %i.of, 1
  %i.oh = trunc nsw i64 %indvars.iv434 to i32
  %i.oi = icmp eq i32 %spec.select.sink.i282390, %i.oh
  br i1 %i.oi, label %bb.et, label %Vec_IntPush.exit285

bb.et:                                            ; preds = %bb.es
  %i.oj = icmp samesign ult i64 %indvars.iv434, 16
  br i1 %i.oj, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %bb.et
  %.not9.i.i283 = icmp eq ptr %storemerge325392, null
  br i1 %.not9.i.i283, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ok = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge325392, i64 noundef 64) #16
  br label %Vec_IntPush.exit285

bb.ew:                                            ; preds = %bb.eu
  %i.ol = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit285

bb.ex:                                            ; preds = %bb.et
  %i.om = icmp samesign ult i64 %indvars.iv434, 1073741823
  %indvars.iv434.tr = trunc nsw i64 %indvars.iv434 to i32
  %i.on = shl nsw i32 %indvars.iv434.tr, 1
  %spec.select.i278 = select i1 %i.om, i32 %i.on, i32 2147483647 ; 4 uses
  %i.oo = sext i32 %spec.select.i278 to i64
  %.not.i9.i279 = icmp samesign ult i64 %indvars.iv434, %i.oo
  br i1 %.not.i9.i279, label %bb.ey, label %Vec_IntPush.exit285

bb.ey:                                            ; preds = %bb.ex
  %.not9.i10.i280 = icmp eq ptr %storemerge325392, null
  %i.op = zext nneg i32 %spec.select.i278 to i64
  %i.oq = shl nuw nsw i64 %i.op, 2                ; 2 uses
  br i1 %.not9.i10.i280, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.or = call ptr @realloc(ptr noundef nonnull %storemerge325392, i64 noundef %i.oq) #16
  br label %Vec_IntPush.exit285

bb.fa:                                            ; preds = %bb.ey
  %i.os = call noalias ptr @malloc(i64 noundef %i.oq) #17
  br label %Vec_IntPush.exit285

Vec_IntPush.exit285:                              ; preds = %bb.ew, %bb.ev, %bb.fa, %bb.ez, %bb.es, %bb.ex
  %storemerge325393 = phi ptr [ %storemerge325392, %bb.es ], [ %storemerge325392, %bb.ex ], [ %i.ol, %bb.ew ], [ %i.ok, %bb.ev ], [ %i.or, %bb.ez ], [ %i.os, %bb.fa ] ; 4 uses
  %spec.select.sink.i282389 = phi i32 [ %spec.select.sink.i282390, %bb.es ], [ %spec.select.sink.i282390, %bb.ex ], [ 16, %bb.ew ], [ 16, %bb.ev ], [ %spec.select.i278, %bb.ez ], [ %spec.select.i278, %bb.fa ] ; 2 uses
  %indvars.iv.next435 = add nuw nsw i64 %indvars.iv434, 1 ; 3 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %storemerge325393, i64 %indvars.iv434
  store i32 %i.og, ptr %i.ot, align 4, !tbaa !32
  %i.ou = xor i32 %i.oc, -1
  %i.ov = add i32 %i.nb, %i.ou
  %i.ow = add nsw i32 %i.oc, %i.na
  %.sink517 = select i1 %.not135, i32 %i.ow, i32 %i.ov
  %i.ox = load i32, ptr %i.a, align 4, !tbaa !32
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = and i8 %i.oy, 1
  %i.pa = sub nuw nsw i8 49, %i.oz
  %.val159 = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.pb = sext i32 %.sink517 to i64
  %i.pc = getelementptr inbounds i8, ptr %.val159, i64 %i.pb
  store i8 %i.pa, ptr %i.pc, align 1, !tbaa !71
  %indvars.iv.next437 = add nuw nsw i64 %indvars.iv436, 1 ; 2 uses
  %exitcond442.not = icmp eq i64 %indvars.iv.next437, %wide.trip.count441
  br i1 %exitcond442.not, label %..critedge6_crit_edge, label %bb.es, !llvm.loop !140

..critedge6_crit_edge:                            ; preds = %Vec_IntPush.exit285
  %i.pd = trunc nsw i64 %indvars.iv.next435 to i32
  store i32 %i.pd, ptr %i.ah, align 4, !tbaa !30
  store i32 %spec.select.sink.i282389, ptr %i.ag, align 8
  store ptr %storemerge325393, ptr %i.am, align 8
  br label %.critedge6

.critedge6:                                       ; preds = %..critedge6_crit_edge, %Vec_StrFillExtra.exit
  %.val156 = phi i64 [ %indvars.iv.next435, %..critedge6_crit_edge ], [ 0, %Vec_StrFillExtra.exit ]
  %.val152 = phi ptr [ %storemerge325393, %..critedge6_crit_edge ], [ %.val152.pre, %Vec_StrFillExtra.exit ] ; 3 uses
  %i.pe = add nuw nsw i32 %.0, 1
  %i.pf = getelementptr inbounds [4 x i8], ptr %.val152, i64 %.val156 ; 2 uses
  %i.pg = call i32 @sat_solver_addclause(ptr noundef %i.as, ptr noundef %.val152, ptr noundef %i.pf) #18
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %Vec_StrFreeP.exit, label %bb.fb

bb.fb:                                            ; preds = %.critedge6
  br i1 %.not, label %.backedge, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pi = call i32 @sat_solver_addclause(ptr noundef %i.ay, ptr noundef %.val152, ptr noundef %i.pf) #18 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.fc, %bb.fb
  br label %bb.dg

Vec_StrFreeP.exit:                                ; preds = %bb.dj, %.critedge6, %bb.eg, %bb.br, %bb.bp, %Vec_StrFreeP.exit248, %Vec_StrFreeP.exit245, %Vec_StrPush.exit229, %Vec_StrPush.exit
  %.0318 = phi ptr [ %i.an, %Vec_StrPush.exit ], [ null, %bb.bp ], [ %i.an, %Vec_StrPush.exit229 ], [ null, %Vec_StrFreeP.exit248 ], [ null, %bb.br ], [ null, %bb.eg ], [ null, %Vec_StrFreeP.exit245 ], [ %i.an, %.critedge6 ], [ %i.an, %bb.dj ] ; 4 uses
  %i.pj = load ptr, ptr %i.k, align 8, !tbaa !31  ; 2 uses
  %.not.i286 = icmp eq ptr %i.pj, null
  br i1 %.not.i286, label %Vec_IntFree.exit, label %bb.fd

bb.fd:                                            ; preds = %Vec_StrFreeP.exit
  call void @free(ptr noundef nonnull %i.pj) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %Vec_StrFreeP.exit, %bb.fd
  call void @free(ptr noundef nonnull %i.e) #18
  %i.pk = load ptr, ptr %i.r, align 8, !tbaa !31  ; 2 uses
  %.not.i287 = icmp eq ptr %i.pk, null
  br i1 %.not.i287, label %Vec_IntFree.exit288, label %bb.fe

bb.fe:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.pk) #18
  br label %Vec_IntFree.exit288

Vec_IntFree.exit288:                              ; preds = %Vec_IntFree.exit, %bb.fe
  call void @free(ptr noundef nonnull %i.l) #18
  %i.pl = load ptr, ptr %i.y, align 8, !tbaa !31  ; 2 uses
  %.not.i289 = icmp eq ptr %i.pl, null
  br i1 %.not.i289, label %Vec_IntFree.exit290, label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit288
  call void @free(ptr noundef nonnull %i.pl) #18
  br label %Vec_IntFree.exit290

Vec_IntFree.exit290:                              ; preds = %Vec_IntFree.exit288, %bb.ff
  call void @free(ptr noundef nonnull %i.s) #18
  %i.pm = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %.not.i291 = icmp eq ptr %i.pm, null
  br i1 %.not.i291, label %Vec_IntFree.exit292, label %bb.fg

bb.fg:                                            ; preds = %Vec_IntFree.exit290
  call void @free(ptr noundef nonnull %i.pm) #18
  br label %Vec_IntFree.exit292

Vec_IntFree.exit292:                              ; preds = %Vec_IntFree.exit290, %bb.fg
  call void @free(ptr noundef nonnull %i.z) #18
  %i.pn = load ptr, ptr %i.am, align 8, !tbaa !31 ; 2 uses
  %.not.i293 = icmp eq ptr %i.pn, null
  br i1 %.not.i293, label %Vec_IntFree.exit294, label %bb.fh

bb.fh:                                            ; preds = %Vec_IntFree.exit292
  call void @free(ptr noundef nonnull %i.pn) #18
  br label %Vec_IntFree.exit294

Vec_IntFree.exit294:                              ; preds = %Vec_IntFree.exit292, %bb.fh
  call void @free(ptr noundef nonnull %i.ag) #18
  call void @sat_solver_delete(ptr noundef %i.as) #18
  call void @sat_solver_delete(ptr noundef %i.au) #18
  br i1 %.not, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %Vec_IntFree.exit294
  call void @sat_solver_delete(ptr noundef %i.ay) #18
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %Vec_IntFree.exit294
  call void @Cnf_DataFree(ptr noundef %i.ar) #18
  %.not142 = icmp eq ptr %.0318, null
  br i1 %.not142, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.po = getelementptr i8, ptr %.0318, i64 4
  %.val165 = load i32, ptr %i.po, align 4, !tbaa !84
  %i.pp = add nsw i32 %.val150.val, 3
  %i.pq = sdiv i32 %.val165, %i.pp
  %i.pr = call i32 @Bmc_CollapseIrredundant(ptr noundef nonnull %.0318, i32 noundef %i.pq, i32 noundef %.val150.val) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0318
}

declare ptr @Mf_ManGenerateCnf(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare ptr @Cnf_DataWriteIntoSolver(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @Cnf_DataFree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define noundef ptr @Bmc_CollapseOneOld2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Bmc_CollapseOneInt2(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 poison, i32 noundef 0) ; 9 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %Vec_StrCountEntry.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !84   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %Vec_StrCountEntry.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %wide.load = load <4 x i8>, ptr %i.g, align 1, !tbaa !71
  %wide.load64 = load <4 x i8>, ptr %i.h, align 1, !tbaa !71
  %i.i = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.j = icmp eq <4 x i8> %wide.load64, splat (i8 10)
  %i.k = zext <4 x i1> %i.i to <4 x i32>
  %i.l = zext <4 x i1> %i.j to <4 x i32>
  %i.m = add <4 x i32> %vec.phi, %i.k             ; 2 uses
  %i.n = add <4 x i32> %vec.phi63, %i.l           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !141

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.n, %i.m
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_StrCountEntry.exit, label %scalar.ph.preheader

end_hunk_4
begin_hunk_5_@Bmc_CollapseOneOld:bb.a
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %.sroa.0550 = alloca ptr, align 16              ; 4 uses
  %.sroa.5551 = alloca ptr, align 8               ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 10 uses
  %.sroa.0 = alloca ptr, align 16                 ; 4 uses
  %.sroa.5 = alloca ptr, align 8                  ; 4 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca [2 x [2 x i64]], align 16         ; 11 uses
  %i.e = alloca [2 x i32], align 8                ; 9 uses
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val185 = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val185, i64 4
  %.val185.val = load i32, ptr %i.g, align 4, !tbaa !30 ; 13 uses
  %i.h = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0550)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5551)
  %i.i = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.h, i32 noundef 1, i32 noundef 0) #18 ; 4 uses
  store ptr %i.i, ptr %.sroa.0550, align 16, !tbaa !126
  %i.j = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.h, i32 noundef 1, i32 noundef 0) #18 ; 4 uses
  store ptr %i.j, ptr %.sroa.5551, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.k = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.h, i32 noundef 1, i32 noundef 0) #18 ; 3 uses
  store ptr %i.k, ptr %i.a, align 16, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.h, i32 noundef 1, i32 noundef 0) #18 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 4 uses
  store i32 0, ptr %i.o, align 4, !tbaa !84
  store i32 1000, ptr %i.n, align 8, !tbaa !125
  %i.p = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !64
  store ptr %i.n, ptr %i.b, align 16, !tbaa !145
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !84
  store i32 1000, ptr %i.s, align 8, !tbaa !125
  %i.u = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !64
  store ptr %i.s, ptr %i.r, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.x = add i32 %.val185.val, -1
  %or.cond.i = icmp ult i32 %i.x, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %.val185.val ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 4 uses
  store i32 0, ptr %i.y, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.w, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 6 uses
  %indvars.iv433.sroa.gep531 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv433.sroa.gep534 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv433.sroa.gep543 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = sext i32 %spec.store.select.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.ac = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 6 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.w, ptr %.sroa.0, align 16, !tbaa !146
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 4 uses
  store i32 0, ptr %i.af, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ae, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit202, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.ag = sext i32 %spec.store.select.i to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #17
  br label %Vec_IntAlloc.exit202

Vec_IntAlloc.exit202:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.aj = phi ptr [ %i.ai, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !31
  store ptr %i.ae, ptr %.sroa.5, align 8, !tbaa !146
  %i.al = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 5 uses
  store i32 0, ptr %i.am, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.al, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit206, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit202
  %i.an = sext i32 %spec.store.select.i to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = tail call noalias ptr @malloc(i64 noundef %i.ao) #17
  br label %Vec_IntAlloc.exit206

Vec_IntAlloc.exit206:                             ; preds = %Vec_IntAlloc.exit202, %bb.d
  %.promoted355 = phi ptr [ %i.ap, %bb.d ], [ null, %Vec_IntAlloc.exit202 ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 6 uses
  store ptr %.promoted355, ptr %i.aq, align 8, !tbaa !31
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  store i32 0, ptr %i.as, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ar, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit210, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit206
  %i.at = sext i32 %spec.store.select.i to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #17
  br label %Vec_IntAlloc.exit210

Vec_IntAlloc.exit210:                             ; preds = %Vec_IntAlloc.exit206, %bb.e
  %i.aw = phi ptr [ %i.av, %bb.e ], [ null, %Vec_IntAlloc.exit206 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 5 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  store i32 0, ptr %i.az, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ay, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit214, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit210
  %i.ba = sext i32 %spec.store.select.i to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.bb) #17
  br label %Vec_IntAlloc.exit214

Vec_IntAlloc.exit214:                             ; preds = %Vec_IntAlloc.exit210, %bb.f
  %i.bd = phi ptr [ %i.bc, %bb.f ], [ null, %Vec_IntAlloc.exit210 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !31
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 3 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.bf, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit218, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit214
  %i.bh = sext i32 %spec.store.select.i to i64
  %i.bi = shl nsw i64 %i.bh, 2
  %i.bj = tail call noalias ptr @malloc(i64 noundef %i.bi) #17
  br label %Vec_IntAlloc.exit218

Vec_IntAlloc.exit218:                             ; preds = %Vec_IntAlloc.exit214, %bb.g
  %i.bk = phi ptr [ %i.bj, %bb.g ], [ null, %Vec_IntAlloc.exit214 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !128
  %i.bo = sub nsw i32 %i.bn, %.val185.val         ; 2 uses
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  %i.bp = icmp sgt i32 %.val185.val, 0            ; 2 uses
  br i1 %.not, label %.preheader325, label %.preheader327

.preheader327:                                    ; preds = %Vec_IntAlloc.exit218
  br i1 %i.bp, label %.lr.ph, label %.loopexit326

.preheader325:                                    ; preds = %Vec_IntAlloc.exit218
  br i1 %i.bp, label %.lr.ph349, label %.loopexit326

.lr.ph:                                           ; preds = %.preheader327, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader327 ] ; 7 uses
  %storemerge346 = phi ptr [ %storemerge347, %Vec_IntPush.exit ], [ %.promoted355, %.preheader327 ] ; 6 uses
  %spec.select.sink.i344 = phi i32 [ %spec.select.sink.i343, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader327 ] ; 3 uses
  %.0161.in340 = phi i32 [ %.0161, %Vec_IntPush.exit ], [ %.val185.val, %.preheader327 ] ; 2 uses
  %.0161 = add nsw i32 %.0161.in340, -1           ; 2 uses
  %i.bq = add nsw i32 %.0161, %i.bo
  %i.br = trunc nsw i64 %indvars.iv to i32
  %i.bs = icmp eq i32 %spec.select.sink.i344, %i.br
  br i1 %i.bs, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bt = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bt, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge346, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge346, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.bv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.bw = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bx = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bw, i32 %i.bx, i32 2147483647 ; 4 uses
  %i.by = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.by
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge346, null
  %i.bz = zext nneg i32 %spec.select.i to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %storemerge346, i64 noundef %i.ca) #16
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.ca) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %.lr.ph, %bb.l
  %storemerge347 = phi ptr [ %storemerge346, %.lr.ph ], [ %storemerge346, %bb.l ], [ %i.bv, %bb.k ], [ %i.bu, %bb.j ], [ %i.cb, %bb.n ], [ %i.cc, %bb.o ] ; 3 uses
  %spec.select.sink.i343 = phi i32 [ %spec.select.sink.i344, %.lr.ph ], [ %spec.select.sink.i344, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %storemerge347, i64 %indvars.iv
  store i32 %i.bq, ptr %i.cd, align 4, !tbaa !32
  %i.ce = icmp samesign ugt i32 %.0161.in340, 1
  br i1 %i.ce, label %.lr.ph, label %.loopexit326.sink.split, !llvm.loop !147

.lr.ph349:                                        ; preds = %.preheader325, %Vec_IntPush.exit226
  %indvars.iv405 = phi i64 [ %indvars.iv.next406, %Vec_IntPush.exit226 ], [ 0, %.preheader325 ] ; 7 uses
  %storemerge319356 = phi ptr [ %storemerge319357, %Vec_IntPush.exit226 ], [ %.promoted355, %.preheader325 ] ; 6 uses
  %spec.select.sink.i223354 = phi i32 [ %spec.select.sink.i223353, %Vec_IntPush.exit226 ], [ %spec.store.select.i, %.preheader325 ] ; 3 uses
  %.1162348 = phi i32 [ %i.ct, %Vec_IntPush.exit226 ], [ 0, %.preheader325 ] ; 2 uses
  %i.cf = add nsw i32 %.1162348, %i.bo
  %i.cg = trunc nsw i64 %indvars.iv405 to i32
  %i.ch = icmp eq i32 %spec.select.sink.i223354, %i.cg
  br i1 %i.ch, label %bb.p, label %Vec_IntPush.exit226

bb.p:                                             ; preds = %.lr.ph349
  %i.ci = icmp samesign ult i64 %indvars.iv405, 16
  br i1 %i.ci, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i224 = icmp eq ptr %storemerge319356, null
  br i1 %.not9.i.i224, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge319356, i64 noundef 64) #16
  br label %Vec_IntPush.exit226

bb.s:                                             ; preds = %bb.q
  %i.ck = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit226

bb.t:                                             ; preds = %bb.p
  %i.cl = icmp samesign ult i64 %indvars.iv405, 1073741823
  %indvars.iv405.tr = trunc nsw i64 %indvars.iv405 to i32
  %i.cm = shl nsw i32 %indvars.iv405.tr, 1
  %spec.select.i219 = select i1 %i.cl, i32 %i.cm, i32 2147483647 ; 4 uses
  %i.cn = sext i32 %spec.select.i219 to i64
  %.not.i9.i220 = icmp samesign ult i64 %indvars.iv405, %i.cn
  br i1 %.not.i9.i220, label %bb.u, label %Vec_IntPush.exit226

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i221 = icmp eq ptr %storemerge319356, null
  %i.co = zext nneg i32 %spec.select.i219 to i64
  %i.cp = shl nuw nsw i64 %i.co, 2                ; 2 uses
  br i1 %.not9.i10.i221, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = tail call ptr @realloc(ptr noundef nonnull %storemerge319356, i64 noundef %i.cp) #16
  br label %Vec_IntPush.exit226

bb.w:                                             ; preds = %bb.u
  %i.cr = tail call noalias ptr @malloc(i64 noundef %i.cp) #17
  br label %Vec_IntPush.exit226

Vec_IntPush.exit226:                              ; preds = %bb.s, %bb.r, %bb.w, %bb.v, %.lr.ph349, %bb.t
  %storemerge319357 = phi ptr [ %storemerge319356, %.lr.ph349 ], [ %storemerge319356, %bb.t ], [ %i.ck, %bb.s ], [ %i.cj, %bb.r ], [ %i.cq, %bb.v ], [ %i.cr, %bb.w ] ; 3 uses
  %spec.select.sink.i223353 = phi i32 [ %spec.select.sink.i223354, %.lr.ph349 ], [ %spec.select.sink.i223354, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i219, %bb.v ], [ %spec.select.i219, %bb.w ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %storemerge319357, i64 %indvars.iv405
  store i32 %i.cf, ptr %i.cs, align 4, !tbaa !32
  %i.ct = add nuw nsw i32 %.1162348, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ct, %.val185.val
  br i1 %exitcond.not, label %.loopexit326.sink.split, label %.lr.ph349, !llvm.loop !148

.loopexit326.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit226
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next406, %Vec_IntPush.exit226 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i343.lcssa.sink = phi i32 [ %spec.select.sink.i223353, %Vec_IntPush.exit226 ], [ %spec.select.sink.i343, %Vec_IntPush.exit ]
  %storemerge347.lcssa.sink = phi ptr [ %storemerge319357, %Vec_IntPush.exit226 ], [ %storemerge347, %Vec_IntPush.exit ] ; 2 uses
  %i.cu = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32 ; 2 uses
  store i32 %i.cu, ptr %i.am, align 4, !tbaa !30
  store i32 %spec.select.sink.i343.lcssa.sink, ptr %i.al, align 8
  store ptr %storemerge347.lcssa.sink, ptr %i.aq, align 8
  br label %.loopexit326

.loopexit326:                                     ; preds = %.loopexit326.sink.split, %.preheader327, %.preheader325
  %.val184 = phi ptr [ %.promoted355, %.preheader327 ], [ %.promoted355, %.preheader325 ], [ %storemerge347.lcssa.sink, %.loopexit326.sink.split ]
  %.val180 = phi i32 [ 0, %.preheader327 ], [ 0, %.preheader325 ], [ %i.cu, %.loopexit326.sink.split ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  %i.cw = sext i32 %2 to i64                      ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !32
  %i.cx = call i32 @sat_solver_solve(ptr noundef %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cv, i64 noundef %i.cw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.cx, label %.preheader323 [
    i32 0, label %.loopexit320
    i32 -1, label %.lr.ph.i
  ]

.preheader.lr.ph:                                 ; preds = %Vec_StrPush.exit247.1
  %.not170 = icmp eq i32 %5, 0                    ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.not171 = icmp eq i32 %3, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %.preheader

.preheader323:                                    ; preds = %.loopexit326
  %i.dd = icmp sgt i32 %.val180, 0
  br i1 %i.dd, label %.lr.ph359, label %.critedge

.lr.ph359:                                        ; preds = %.preheader323
  %wide.trip.count = zext nneg i32 %.val180 to i64
  br label %bb.az

.lr.ph.i:                                         ; preds = %Vec_StrPush.exit247..lr.ph.i_crit_edge, %.loopexit326
  %i.de = phi ptr [ %i.n, %.loopexit326 ], [ %.pre443, %Vec_StrPush.exit247..lr.ph.i_crit_edge ] ; 8 uses
  %.not176 = phi ptr [ @.str.13, %.loopexit326 ], [ @.str.12, %Vec_StrPush.exit247..lr.ph.i_crit_edge ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 9 uses
  store i32 0, ptr %i.df, align 4, !tbaa !84
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 10 uses
  %i.dh = load i8, ptr %.not176, align 1, !tbaa !71
  %i.di = load i32, ptr %i.de, align 8, !tbaa !125
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !64 ; 3 uses
  br i1 %i.dj, label %bb.x, label %Vec_StrPush.exit.i

bb.x:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not9.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dk, i64 noundef 16) #16
  %.pre9.i.pre = load i32, ptr %i.df, align 4, !tbaa !84
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.z:                                             ; preds = %bb.x
  %i.dm = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.z, %bb.y
  %.pre9.i = phi i32 [ 0, %bb.z ], [ %.pre9.i.pre, %bb.y ]
  %i.dn = phi ptr [ %i.dm, %bb.z ], [ %i.dl, %bb.y ] ; 2 uses
  store ptr %i.dn, ptr %i.dg, align 8, !tbaa !64
  store i32 16, ptr %i.de, align 8, !tbaa !125
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.do = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dp = phi ptr [ %i.dn, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.dk, %.lr.ph.i ]
  %i.dq = add nsw i32 %i.do, 1
  store i32 %i.dq, ptr %i.df, align 4, !tbaa !84
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %i.dr
  store i8 %i.dh, ptr %i.ds, align 1, !tbaa !71
  %i.dt = getelementptr inbounds nuw i8, ptr %.not176, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !71
  %i.dv = load i32, ptr %i.df, align 4, !tbaa !84 ; 7 uses
  %i.dw = load i32, ptr %i.de, align 8, !tbaa !125
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.aa, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.dg, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.1

bb.aa:                                            ; preds = %Vec_StrPush.exit.i
  %i.dy = icmp slt i32 %i.dv, 16
  br i1 %i.dy, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = icmp samesign ult i32 %i.dv, 1073741823
  %i.ea = shl nuw nsw i32 %i.dv, 1
  %spec.select.i.i.1 = select i1 %i.dz, i32 %i.ea, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.dv, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.dg, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.ac, label %Vec_StrPush.exit.i.1

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.eb = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.eb) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ae:                                            ; preds = %bb.ac
  %i.ed = call noalias ptr @malloc(i64 noundef %i.eb) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.af:                                            ; preds = %bb.aa
  %i.ee = load ptr, ptr %i.dg, align 8, !tbaa !64 ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.ee, null
  br i1 %.not9.i.i.i.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ee, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ah:                                            ; preds = %bb.af
  %i.eg = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.eh = phi ptr [ %i.eg, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.ec, %bb.ad ], [ %i.ed, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i.1, %bb.ad ], [ %spec.select.i.i.1, %bb.ae ]
  store ptr %i.eh, ptr %i.dg, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i.1, ptr %i.de, align 8, !tbaa !125
  %.pre9.i.1 = load i32, ptr %i.df, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.ab, %.Vec_StrPush.exit_crit_edge.i.1
  %i.ei = phi i32 [ %i.dv, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.dv, %bb.ab ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.ej = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.ab ], [ %i.eh, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.ek = add nsw i32 %i.ei, 1
  store i32 %i.ek, ptr %i.df, align 4, !tbaa !84
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  store i8 %i.du, ptr %i.em, align 1, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %.not176, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !71
  %i.ep = load i32, ptr %i.df, align 4, !tbaa !84 ; 7 uses
  %i.eq = load i32, ptr %i.de, align 8, !tbaa !125
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.dg, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.2

bb.ai:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.es = icmp slt i32 %i.ep, 16
  br i1 %i.es, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = icmp samesign ult i32 %i.ep, 1073741823
  %i.eu = shl nuw nsw i32 %i.ep, 1
  %spec.select.i.i.2 = select i1 %i.et, i32 %i.eu, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.ep, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.dg, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ak, label %Vec_StrPush.exit.i.2

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.ev = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
end_hunk_5
begin_hunk_6_@Bmc_CollapseOneOld:bb.a
  %i.ka = icmp slt i32 %i.jz, 0
  br i1 %i.ka, label %Abc_Clock.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kb = load i64, ptr %9, align 8, !tbaa !150
  %i.kc = mul nsw i64 %i.kb, 1000000
  %i.kd = load i64, ptr %i.cy, align 8, !tbaa !152
  %i.ke = sdiv i64 %i.kd, 1000
  %i.kf = add nsw i64 %i.ke, %i.kc
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.cj, %bb.ck
  %.0.i = phi i64 [ %i.kf, %bb.ck ], [ -1, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cl

bb.cl:                                            ; preds = %Abc_Clock.exit, %bb.ci
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1382, %bb.ci ] ; 3 uses
  %i.kg = load ptr, ptr %indvars.iv433.sroa.phi547, align 8, !tbaa !126 ; 5 uses
  br i1 %.not171, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.kh = load ptr, ptr %indvars.iv433.sroa.phi538, align 8, !tbaa !146 ; 2 uses
  call void @sat_solver_set_resource_limits(ptr noundef %i.kg, i64 noundef %i.cw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %i.ki = getelementptr i8, ptr %i.kh, i64 8
  %.val4.i = load ptr, ptr %i.ki, align 8, !tbaa !31
  %i.kj = getelementptr i8, ptr %i.kh, i64 4
  %.val.i = load i32, ptr %i.kj, align 4, !tbaa !30
  %i.kk = call i32 @sat_solver_solve_lexsat(ptr noundef %i.kg, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %.val187 = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 5 uses
  %.val179 = load i32, ptr %i.am, align 4, !tbaa !30 ; 3 uses
  %i.kl = icmp sgt i32 %.val179, 0
  br i1 %i.kl, label %.lr.ph.i248, label %sat_solver_clean_polarity.exit

.lr.ph.i248:                                      ; preds = %bb.cn
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 216 ; 5 uses
  %wide.trip.count.i249 = zext nneg i32 %.val179 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i249, 3    ; 3 uses
  %i.kn = icmp ult i32 %.val179, 4
  br i1 %i.kn, label %.epil.preheader, label %.lr.ph.i248.new

.lr.ph.i248.new:                                  ; preds = %.lr.ph.i248
  %unroll_iter = and i64 %wide.trip.count.i249, 2147483644
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i248.new
  %indvars.iv.i250 = phi i64 [ 0, %.lr.ph.i248.new ], [ %indvars.iv.next.i251.3, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i248.new ], [ %niter.next.3, %bb.co ]
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !135
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !32
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.ko, i64 %i.kr
  store i8 0, ptr %i.ks, align 1, !tbaa !71
  %i.kt = load ptr, ptr %i.km, align 8, !tbaa !135
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !32
  %i.kx = sext i32 %i.kw to i64
  %i.ky = getelementptr inbounds i8, ptr %i.kt, i64 %i.kx
  store i8 0, ptr %i.ky, align 1, !tbaa !71
  %i.kz = load ptr, ptr %i.km, align 8, !tbaa !135
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !32
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds i8, ptr %i.kz, i64 %i.ld
  store i8 0, ptr %i.le, align 1, !tbaa !71
  %i.lf = load ptr, ptr %i.km, align 8, !tbaa !135
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !32
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds i8, ptr %i.lf, i64 %i.lj
  store i8 0, ptr %i.lk, align 1, !tbaa !71
  %indvars.iv.next.i251.3 = add nuw nsw i64 %indvars.iv.i250, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.co, !llvm.loop !136

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i248
  %indvars.iv.i250.epil.init = phi i64 [ 0, %.lr.ph.i248 ], [ %indvars.iv.next.i251.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod528 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod528)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader
  %indvars.iv.i250.epil = phi i64 [ %indvars.iv.i250.epil.init, %.epil.preheader ], [ %indvars.iv.next.i251.epil, %bb.cp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cp ]
  %i.ll = load ptr, ptr %i.km, align 8, !tbaa !135
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val187, i64 %indvars.iv.i250.epil
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !32
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds i8, ptr %i.ll, i64 %i.lo
  store i8 0, ptr %i.lp, align 1, !tbaa !71
  %indvars.iv.next.i251.epil = add nuw nsw i64 %indvars.iv.i250.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.cp, !llvm.loop !153

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.cp, %bb.cn
  %i.lq = call i32 @sat_solver_solve(ptr noundef %i.kg, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.cq

bb.cq:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.cm
  %.0158 = phi i32 [ %i.kk, %bb.cm ], [ %i.lq, %sat_solver_clean_polarity.exit ]
  br i1 %.not170, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.lr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %Abc_Clock.exit254, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lt = load i64, ptr %8, align 8, !tbaa !150
  %i.lu = mul nsw i64 %i.lt, 1000000
  %i.lv = load i64, ptr %i.cz, align 8, !tbaa !152
  %i.lw = sdiv i64 %i.lv, 1000
  %i.lx = add nsw i64 %i.lw, %i.lu
  br label %Abc_Clock.exit254

Abc_Clock.exit254:                                ; preds = %bb.cr, %bb.cs
  %.0.i253 = phi i64 [ %i.lx, %bb.cs ], [ -1, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ly = sub i64 %.0.i253, %.2
  %i.lz = load i64, ptr %indvars.iv433.sroa.phi, align 16, !tbaa !37
  %i.ma = add nsw i64 %i.ly, %i.lz
  store i64 %i.ma, ptr %indvars.iv433.sroa.phi, align 16, !tbaa !37
  br label %bb.ct

bb.ct:                                            ; preds = %Abc_Clock.exit254, %bb.cq
  switch i32 %.0158, label %bb.cu [
    i32 0, label %.loopexit320
    i32 -1, label %.loopexit.sink.split
  ]

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.as, align 4, !tbaa !30
  %i.mb = load ptr, ptr %indvars.iv433.sroa.phi538, align 8, !tbaa !146 ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 4 uses
  store i32 0, ptr %i.mc, align 4, !tbaa !30
  %.val178 = load i32, ptr %i.am, align 4, !tbaa !30 ; 2 uses
  %i.md = icmp sgt i32 %.val178, 0
  br i1 %i.md, label %.lr.ph362, label %.critedge2

.lr.ph362:                                        ; preds = %bb.cu
  %.val183 = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.me = getelementptr i8, ptr %i.kg, i64 328
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 8 ; 4 uses
  %.promoted365 = load i32, ptr %i.ar, align 8, !tbaa !45
  %.promoted368 = load ptr, ptr %i.ax, align 8, !tbaa !31
  %wide.trip.count422 = zext nneg i32 %.val178 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph362, %Vec_IntPush.exit270
  %indvars.iv417 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next418, %Vec_IntPush.exit270 ] ; 2 uses
  %indvars.iv415 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next416, %Vec_IntPush.exit270 ] ; 7 uses
  %storemerge318369 = phi ptr [ %.promoted368, %.lr.ph362 ], [ %storemerge318370, %Vec_IntPush.exit270 ] ; 6 uses
  %spec.select.sink.i259367 = phi i32 [ %.promoted365, %.lr.ph362 ], [ %spec.select.sink.i259366, %Vec_IntPush.exit270 ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv417
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !32 ; 2 uses
  %.val196 = load ptr, ptr %i.me, align 8, !tbaa !138
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %.val196, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !32
  %i.ml = icmp ne i32 %i.mk, 1
  %i.mm = zext i1 %i.ml to i32
  %i.mn = shl nsw i32 %i.mh, 1
  %i.mo = or disjoint i32 %i.mn, %i.mm            ; 2 uses
  store i32 %i.mo, ptr %i.c, align 4, !tbaa !32
  %i.mp = trunc nsw i64 %indvars.iv415 to i32
  %i.mq = icmp eq i32 %spec.select.sink.i259367, %i.mp
  br i1 %i.mq, label %bb.cw, label %Vec_IntPush.exit262

bb.cw:                                            ; preds = %bb.cv
  %i.mr = icmp samesign ult i64 %indvars.iv415, 16
  br i1 %i.mr, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %.not9.i.i260 = icmp eq ptr %storemerge318369, null
  br i1 %.not9.i.i260, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ms = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge318369, i64 noundef 64) #16
  br label %Vec_IntPush.exit262

bb.cz:                                            ; preds = %bb.cx
  %i.mt = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit262

bb.da:                                            ; preds = %bb.cw
  %i.mu = icmp samesign ult i64 %indvars.iv415, 1073741823
  %indvars.iv415.tr = trunc nsw i64 %indvars.iv415 to i32
  %i.mv = shl nsw i32 %indvars.iv415.tr, 1
  %spec.select.i255 = select i1 %i.mu, i32 %i.mv, i32 2147483647 ; 4 uses
  %i.mw = sext i32 %spec.select.i255 to i64
  %.not.i9.i256 = icmp samesign ult i64 %indvars.iv415, %i.mw
  br i1 %.not.i9.i256, label %bb.db, label %Vec_IntPush.exit262

bb.db:                                            ; preds = %bb.da
  %.not9.i10.i257 = icmp eq ptr %storemerge318369, null
  %i.mx = zext nneg i32 %spec.select.i255 to i64
  %i.my = shl nuw nsw i64 %i.mx, 2                ; 2 uses
  br i1 %.not9.i10.i257, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mz = call ptr @realloc(ptr noundef nonnull %storemerge318369, i64 noundef %i.my) #16
  br label %Vec_IntPush.exit262

bb.dd:                                            ; preds = %bb.db
  %i.na = call noalias ptr @malloc(i64 noundef %i.my) #17
  br label %Vec_IntPush.exit262

Vec_IntPush.exit262:                              ; preds = %bb.cz, %bb.cy, %bb.dd, %bb.dc, %bb.cv, %bb.da
  %storemerge318370 = phi ptr [ %storemerge318369, %bb.cv ], [ %storemerge318369, %bb.da ], [ %i.mt, %bb.cz ], [ %i.ms, %bb.cy ], [ %i.mz, %bb.dc ], [ %i.na, %bb.dd ] ; 3 uses
  %spec.select.sink.i259366 = phi i32 [ %spec.select.sink.i259367, %bb.cv ], [ %spec.select.sink.i259367, %bb.da ], [ 16, %bb.cz ], [ 16, %bb.cy ], [ %spec.select.i255, %bb.dc ], [ %spec.select.i255, %bb.dd ] ; 2 uses
  %indvars.iv.next416 = add nuw nsw i64 %indvars.iv415, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %storemerge318370, i64 %indvars.iv415
  store i32 %i.mo, ptr %i.nb, align 4, !tbaa !32
  %i.nc = load i32, ptr %i.c, align 4, !tbaa !32
  %i.nd = load i32, ptr %i.mc, align 4, !tbaa !30 ; 7 uses
  %i.ne = load i32, ptr %i.mb, align 8, !tbaa !45
  %i.nf = icmp eq i32 %i.nd, %i.ne
  br i1 %i.nf, label %bb.de, label %Vec_IntPush.exit262.Vec_IntPush.exit270_crit_edge

Vec_IntPush.exit262.Vec_IntPush.exit270_crit_edge: ; preds = %Vec_IntPush.exit262
  %.pre450 = load ptr, ptr %i.mf, align 8, !tbaa !31
  br label %Vec_IntPush.exit270

bb.de:                                            ; preds = %Vec_IntPush.exit262
  %i.ng = icmp slt i32 %i.nd, 16
  br i1 %i.ng, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.nh = load ptr, ptr %i.mf, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i268 = icmp eq ptr %i.nh, null
  br i1 %.not9.i.i268, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ni = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nh, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i266

bb.dh:                                            ; preds = %bb.df
  %i.nj = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i266

bb.di:                                            ; preds = %bb.de
  %i.nk = icmp samesign ult i32 %i.nd, 1073741823
  %i.nl = shl nuw nsw i32 %i.nd, 1
  %spec.select.i263 = select i1 %i.nk, i32 %i.nl, i32 2147483647 ; 4 uses
  %.not.i9.i264 = icmp samesign ult i32 %i.nd, %spec.select.i263
  %.pre451 = load ptr, ptr %i.mf, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i9.i264, label %bb.dj, label %Vec_IntPush.exit270

bb.dj:                                            ; preds = %bb.di
  %.not9.i10.i265 = icmp eq ptr %.pre451, null
  %i.nm = zext nneg i32 %spec.select.i263 to i64
  %i.nn = shl nuw nsw i64 %i.nm, 2                ; 2 uses
  br i1 %.not9.i10.i265, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.no = call ptr @realloc(ptr noundef nonnull %.pre451, i64 noundef %i.nn) #16
  br label %Vec_IntGrow.exit11.sink.split.i266

bb.dl:                                            ; preds = %bb.dj
  %i.np = call noalias ptr @malloc(i64 noundef %i.nn) #17
  br label %Vec_IntGrow.exit11.sink.split.i266

Vec_IntGrow.exit11.sink.split.i266:               ; preds = %bb.dk, %bb.dl, %bb.dg, %bb.dh
  %i.nq = phi ptr [ %i.nj, %bb.dh ], [ %i.ni, %bb.dg ], [ %i.no, %bb.dk ], [ %i.np, %bb.dl ] ; 2 uses
  %spec.select.sink.i267 = phi i32 [ 16, %bb.dh ], [ 16, %bb.dg ], [ %spec.select.i263, %bb.dk ], [ %spec.select.i263, %bb.dl ]
  store ptr %i.nq, ptr %i.mf, align 8, !tbaa !31
  store i32 %spec.select.sink.i267, ptr %i.mb, align 8, !tbaa !45
  %.pre452 = load i32, ptr %i.mc, align 4, !tbaa !30
  br label %Vec_IntPush.exit270

Vec_IntPush.exit270:                              ; preds = %Vec_IntPush.exit262.Vec_IntPush.exit270_crit_edge, %bb.di, %Vec_IntGrow.exit11.sink.split.i266
  %i.nr = phi i32 [ %i.nd, %Vec_IntPush.exit262.Vec_IntPush.exit270_crit_edge ], [ %i.nd, %bb.di ], [ %.pre452, %Vec_IntGrow.exit11.sink.split.i266 ] ; 2 uses
  %i.ns = phi ptr [ %.pre450, %Vec_IntPush.exit262.Vec_IntPush.exit270_crit_edge ], [ %.pre451, %bb.di ], [ %i.nq, %Vec_IntGrow.exit11.sink.split.i266 ]
  %i.nt = add nsw i32 %i.nr, 1
  store i32 %i.nt, ptr %i.mc, align 4, !tbaa !30
  %i.nu = sext i32 %i.nr to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.nu
  store i32 %i.nc, ptr %i.nv, align 4, !tbaa !32
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %exitcond423.not = icmp eq i64 %indvars.iv.next418, %wide.trip.count422
  br i1 %exitcond423.not, label %..critedge2_crit_edge, label %bb.cv, !llvm.loop !154

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit270
  %i.nw = trunc nsw i64 %indvars.iv.next416 to i32
  store i32 %i.nw, ptr %i.as, align 4, !tbaa !30
  store i32 %spec.select.sink.i259366, ptr %i.ar, align 8
  store ptr %storemerge318370, ptr %i.ax, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.cu
  br i1 %.not170, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.nx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #18
  %i.ny = icmp slt i32 %i.nx, 0
  br i1 %i.ny, label %Abc_Clock.exit272, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nz = load i64, ptr %7, align 8, !tbaa !150
  %i.oa = mul nsw i64 %i.nz, 1000000
  %i.ob = load i64, ptr %i.da, align 8, !tbaa !152
  %i.oc = sdiv i64 %i.ob, 1000
  %i.od = add nsw i64 %i.oc, %i.oa
  br label %Abc_Clock.exit272

Abc_Clock.exit272:                                ; preds = %bb.dm, %bb.dn
  %.0.i271 = phi i64 [ %i.od, %bb.dn ], [ -1, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.do

bb.do:                                            ; preds = %Abc_Clock.exit272, %.critedge2
  %.3 = phi i64 [ %.0.i271, %Abc_Clock.exit272 ], [ %.2, %.critedge2 ] ; 4 uses
  %i.oe = xor i64 %indvars.iv433, 1
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.oe
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !126
  %i.oh = load ptr, ptr %indvars.iv433.sroa.phi547, align 8, !tbaa !126 ; 2 uses
  %i.oi = call i32 @Bmc_CollapseExpand(ptr noundef %i.og, ptr noundef %i.oh, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bf, i32 noundef %2, i32 noundef %3, i32 noundef -1)
  br i1 %.not170, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.oj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #18
  %i.ok = icmp slt i32 %i.oj, 0
  br i1 %i.ok, label %Abc_Clock.exit274, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ol = load i64, ptr %6, align 8, !tbaa !150
  %i.om = mul nsw i64 %i.ol, 1000000
  %i.on = load i64, ptr %i.db, align 8, !tbaa !152
  %i.oo = sdiv i64 %i.on, 1000
  %i.op = add nsw i64 %i.oo, %i.om
  br label %Abc_Clock.exit274

Abc_Clock.exit274:                                ; preds = %bb.dp, %bb.dq
  %.0.i273 = phi i64 [ %i.op, %bb.dq ], [ -1, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.oq = sub i64 %.0.i273, %.3
  %i.or = getelementptr inbounds nuw i8, ptr %indvars.iv433.sroa.phi532, i64 8 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !tbaa !37
  %i.ot = add nsw i64 %i.oq, %i.os
  store i64 %i.ot, ptr %i.or, align 8, !tbaa !37
  br label %bb.dr

bb.dr:                                            ; preds = %Abc_Clock.exit274, %bb.do
  %i.ou = icmp slt i32 %i.oi, 0
  br i1 %i.ou, label %.loopexit320, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ov = load ptr, ptr %indvars.iv433.sroa.phi541, align 8, !tbaa !145 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 12 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !64 ; 8 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 4 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !84 ; 3 uses
  %i.pa = add nsw i32 %i.oz, -1                   ; 6 uses
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !84
  %i.pb = add nsw i32 %i.pa, %.val185.val         ; 3 uses
  %i.pc = add nsw i32 %i.pb, 4                    ; 9 uses
  %.not.i275.not = icmp slt i32 %i.pc, %i.oz
  br i1 %.not.i275.not, label %Vec_StrFillExtra.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pd = load i32, ptr %i.ov, align 8, !tbaa !125 ; 4 uses
  %i.pe = shl nsw i32 %i.pd, 1                    ; 2 uses
  %i.pf = icmp sgt i32 %i.pc, %i.pe
  %.not.i.i = icmp slt i32 %i.pd, %i.pc           ; 2 uses
  br i1 %i.pf, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dv, label %Vec_StrGrow.exit.i276

bb.dv:                                            ; preds = %bb.du
  %.not9.i.i284 = icmp eq ptr %i.ox, null
  %i.pg = sext i32 %i.pc to i64                   ; 2 uses
  br i1 %.not9.i.i284, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.ph = call ptr @realloc(ptr noundef nonnull %i.ox, i64 noundef %i.pg) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.dx:                                            ; preds = %bb.dv
  %i.pi = call noalias ptr @malloc(i64 noundef %i.pg) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.dy:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dz, label %Vec_StrGrow.exit.i276

bb.dz:                                            ; preds = %bb.dy
  %i.pj = icmp slt i32 %i.pd, 1073741823
  %spec.select.i282 = select i1 %i.pj, i32 %i.pe, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.pd, %spec.select.i282
  br i1 %.not.i22.i, label %bb.ea, label %Vec_StrGrow.exit.i276

bb.ea:                                            ; preds = %bb.dz
  %.not9.i23.i = icmp eq ptr %i.ox, null
  %i.pk = sext i32 %spec.select.i282 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pl = call ptr @realloc(ptr noundef nonnull %i.ox, i64 noundef %i.pk) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.ec:                                            ; preds = %bb.ea
  %i.pm = call noalias ptr @malloc(i64 noundef %i.pk) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.eb, %bb.ec, %bb.dw, %bb.dx
  %storemerge316 = phi ptr [ %i.pi, %bb.dx ], [ %i.ph, %bb.dw ], [ %i.pl, %bb.eb ], [ %i.pm, %bb.ec ] ; 2 uses
  %spec.select.sink.i283 = phi i32 [ %i.pc, %bb.dx ], [ %i.pc, %bb.dw ], [ %spec.select.i282, %bb.eb ], [ %spec.select.i282, %bb.ec ]
  store ptr %storemerge316, ptr %i.ow, align 8, !tbaa !64
  store i32 %spec.select.sink.i283, ptr %i.ov, align 8, !tbaa !125
  %.pre453 = load i32, ptr %i.oy, align 4, !tbaa !84
  br label %Vec_StrGrow.exit.i276

Vec_StrGrow.exit.i276:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.dz, %bb.dy, %bb.du
  %.val195.pre458 = phi ptr [ %storemerge316, %Vec_StrGrow.exit.sink.split.i ], [ %i.ox, %bb.dz ], [ %i.ox, %bb.dy ], [ %i.ox, %bb.du ]
  %i.pn = phi i32 [ %.pre453, %Vec_StrGrow.exit.sink.split.i ], [ %i.pa, %bb.dz ], [ %i.pa, %bb.dy ], [ %i.pa, %bb.du ] ; 2 uses
  %i.po = icmp slt i32 %i.pn, %i.pc
  br i1 %i.po, label %.lr.ph.i277, label %._crit_edge.i

.lr.ph.i277:                                      ; preds = %Vec_StrGrow.exit.i276
  %i.pp = sext i32 %i.pn to i64                   ; 4 uses
  %wide.trip.count.i278 = sext i32 %i.pc to i64   ; 3 uses
  %i.pq = sub nsw i64 %wide.trip.count.i278, %i.pp
  %xtraiter529 = and i64 %i.pq, 3                 ; 2 uses
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod530.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i277, %.prol.preheader
  %indvars.iv.i279.prol = phi i64 [ %indvars.iv.next.i280.prol, %.prol.preheader ], [ %i.pp, %.lr.ph.i277 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i277 ]
  %i.pr = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 %indvars.iv.i279.prol
  store i8 45, ptr %i.ps, align 1, !tbaa !71
  %indvars.iv.next.i280.prol = add nsw i64 %indvars.iv.i279.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter529
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !155

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i277
  %indvars.iv.i279.unr = phi i64 [ %i.pp, %.lr.ph.i277 ], [ %indvars.iv.next.i280.prol, %.prol.preheader ]
  %i.pt = sub nsw i64 %i.pp, %wide.trip.count.i278
  %i.pu = icmp ugt i64 %i.pt, -4
  br i1 %i.pu, label %._crit_edge.i.loopexit, label %.lr.ph.i277.new

.lr.ph.i277.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i277.new
  %indvars.iv.i279 = phi i64 [ %indvars.iv.next.i280.3, %.lr.ph.i277.new ], [ %indvars.iv.i279.unr, %.prol.loopexit ] ; 5 uses
  %i.pv = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %indvars.iv.i279
  store i8 45, ptr %i.pw, align 1, !tbaa !71
  %i.px = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.py = getelementptr i8, ptr %i.px, i64 %indvars.iv.i279
  %i.pz = getelementptr i8, ptr %i.py, i64 1
  store i8 45, ptr %i.pz, align 1, !tbaa !71
  %i.qa = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.qb = getelementptr i8, ptr %i.qa, i64 %indvars.iv.i279
  %i.qc = getelementptr i8, ptr %i.qb, i64 2
  store i8 45, ptr %i.qc, align 1, !tbaa !71
  %i.qd = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.qe = getelementptr i8, ptr %i.qd, i64 %indvars.iv.i279
  %i.qf = getelementptr i8, ptr %i.qe, i64 3
  store i8 45, ptr %i.qf, align 1, !tbaa !71
  %indvars.iv.next.i280.3 = add nsw i64 %indvars.iv.i279, 4 ; 2 uses
  %exitcond.not.i281.3 = icmp eq i64 %indvars.iv.next.i280.3, %wide.trip.count.i278
  br i1 %exitcond.not.i281.3, label %._crit_edge.i.loopexit, label %.lr.ph.i277.new, !llvm.loop !156

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i277.new, %.prol.loopexit
  %.val195.pre.pre = load ptr, ptr %i.ow, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i276
  %.val195.pre = phi ptr [ %.val195.pre.pre, %._crit_edge.i.loopexit ], [ %.val195.pre458, %Vec_StrGrow.exit.i276 ]
  store i32 %i.pc, ptr %i.oy, align 4, !tbaa !84
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.ds, %._crit_edge.i
  %.val195 = phi ptr [ %i.ox, %bb.ds ], [ %.val195.pre, %._crit_edge.i ]
  %i.qg = sext i32 %i.pb to i64                   ; 3 uses
  %i.qh = getelementptr inbounds i8, ptr %.val195, i64 %i.qg
  store i8 32, ptr %i.qh, align 1, !tbaa !71
  %i.qi = add i32 %i.oz, %.val185.val
  %i.qj = select i1 %.not172, i8 49, i8 48
  %.val194 = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.qk = sext i32 %i.qi to i64
  %i.ql = getelementptr inbounds i8, ptr %.val194, i64 %i.qk
  store i8 %i.qj, ptr %i.ql, align 1, !tbaa !71
  %.val193 = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.qm = getelementptr i8, ptr %.val193, i64 %i.qg
  %i.qn = getelementptr i8, ptr %i.qm, i64 2
  store i8 10, ptr %i.qn, align 1, !tbaa !71
  %.val192 = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.qo = getelementptr i8, ptr %.val192, i64 %i.qg
  %i.qp = getelementptr i8, ptr %i.qo, i64 3
  store i8 0, ptr %i.qp, align 1, !tbaa !71
  store i32 0, ptr %i.bg, align 4, !tbaa !30
  %.val = load i32, ptr %i.az, align 4, !tbaa !30 ; 2 uses
  %i.qq = icmp sgt i32 %.val, 0
  %.val186.pre = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  br i1 %i.qq, label %.lr.ph372, label %.critedge4

.lr.ph372:                                        ; preds = %Vec_StrFillExtra.exit
  %.val182 = load ptr, ptr %i.be, align 8, !tbaa !31
  %.val181 = load ptr, ptr %i.ax, align 8, !tbaa !31
  %.promoted375 = load i32, ptr %i.bf, align 8, !tbaa !45
  %wide.trip.count431 = zext nneg i32 %.val to i64
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph372, %Vec_IntPush.exit292
  %indvars.iv426 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next427, %Vec_IntPush.exit292 ] ; 2 uses
  %indvars.iv424 = phi i64 [ 0, %.lr.ph372 ], [ %indvars.iv.next425, %Vec_IntPush.exit292 ] ; 7 uses
  %storemerge317379 = phi ptr [ %.val186.pre, %.lr.ph372 ], [ %storemerge317380, %Vec_IntPush.exit292 ] ; 6 uses
  %spec.select.sink.i289377 = phi i32 [ %.promoted375, %.lr.ph372 ], [ %spec.select.sink.i289376, %Vec_IntPush.exit292 ] ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.val182, i64 %indvars.iv426
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !32 ; 3 uses
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %.val181, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !32 ; 2 uses
  store i32 %i.qv, ptr %i.c, align 4, !tbaa !32
  %i.qw = xor i32 %i.qv, 1
  %i.qx = trunc nsw i64 %indvars.iv424 to i32
  %i.qy = icmp eq i32 %spec.select.sink.i289377, %i.qx
  br i1 %i.qy, label %bb.ee, label %Vec_IntPush.exit292

bb.ee:                                            ; preds = %bb.ed
  %i.qz = icmp samesign ult i64 %indvars.iv424, 16
  br i1 %i.qz, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %.not9.i.i290 = icmp eq ptr %storemerge317379, null
  br i1 %.not9.i.i290, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ra = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge317379, i64 noundef 64) #16
  br label %Vec_IntPush.exit292

bb.eh:                                            ; preds = %bb.ef
  %i.rb = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit292

bb.ei:                                            ; preds = %bb.ee
  %i.rc = icmp samesign ult i64 %indvars.iv424, 1073741823
  %indvars.iv424.tr = trunc nsw i64 %indvars.iv424 to i32
  %i.rd = shl nsw i32 %indvars.iv424.tr, 1
  %spec.select.i285 = select i1 %i.rc, i32 %i.rd, i32 2147483647 ; 4 uses
  %i.re = sext i32 %spec.select.i285 to i64
  %.not.i9.i286 = icmp samesign ult i64 %indvars.iv424, %i.re
  br i1 %.not.i9.i286, label %bb.ej, label %Vec_IntPush.exit292

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i287 = icmp eq ptr %storemerge317379, null
  %i.rf = zext nneg i32 %spec.select.i285 to i64
  %i.rg = shl nuw nsw i64 %i.rf, 2                ; 2 uses
  br i1 %.not9.i10.i287, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.rh = call ptr @realloc(ptr noundef nonnull %storemerge317379, i64 noundef %i.rg) #16
  br label %Vec_IntPush.exit292

bb.el:                                            ; preds = %bb.ej
  %i.ri = call noalias ptr @malloc(i64 noundef %i.rg) #17
  br label %Vec_IntPush.exit292

Vec_IntPush.exit292:                              ; preds = %bb.eh, %bb.eg, %bb.el, %bb.ek, %bb.ed, %bb.ei
  %storemerge317380 = phi ptr [ %storemerge317379, %bb.ed ], [ %storemerge317379, %bb.ei ], [ %i.rb, %bb.eh ], [ %i.ra, %bb.eg ], [ %i.rh, %bb.ek ], [ %i.ri, %bb.el ] ; 4 uses
  %spec.select.sink.i289376 = phi i32 [ %spec.select.sink.i289377, %bb.ed ], [ %spec.select.sink.i289377, %bb.ei ], [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i285, %bb.ek ], [ %spec.select.i285, %bb.el ] ; 2 uses
  %indvars.iv.next425 = add nuw nsw i64 %indvars.iv424, 1 ; 3 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %storemerge317380, i64 %indvars.iv424
  store i32 %i.qw, ptr %i.rj, align 4, !tbaa !32
  %i.rk = xor i32 %i.qs, -1
  %i.rl = add i32 %i.pb, %i.rk
  %i.rm = add nsw i32 %i.qs, %i.pa
  %.sink515 = select i1 %.not, i32 %i.rm, i32 %i.rl
  %i.rn = load i32, ptr %i.c, align 4, !tbaa !32
  %i.ro = trunc i32 %i.rn to i8
  %i.rp = and i8 %i.ro, 1
  %i.rq = sub nuw nsw i8 49, %i.rp
  %.val191 = load ptr, ptr %i.ow, align 8, !tbaa !64
  %i.rr = sext i32 %.sink515 to i64
  %i.rs = getelementptr inbounds i8, ptr %.val191, i64 %i.rr
  store i8 %i.rq, ptr %i.rs, align 1, !tbaa !71
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond432.not = icmp eq i64 %indvars.iv.next427, %wide.trip.count431
  br i1 %exitcond432.not, label %..critedge4_crit_edge, label %bb.ed, !llvm.loop !157

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit292
  %i.rt = trunc nsw i64 %indvars.iv.next425 to i32
  store i32 %i.rt, ptr %i.bg, align 4, !tbaa !30
  store i32 %spec.select.sink.i289376, ptr %i.bf, align 8
  store ptr %storemerge317380, ptr %i.bl, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %Vec_StrFillExtra.exit
  %.val188 = phi i64 [ %indvars.iv.next425, %..critedge4_crit_edge ], [ 0, %Vec_StrFillExtra.exit ]
  %.val186 = phi ptr [ %storemerge317380, %..critedge4_crit_edge ], [ %.val186.pre, %Vec_StrFillExtra.exit ] ; 2 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val186, i64 %.val188
  %i.rv = call i32 @sat_solver_addclause(ptr noundef %i.oh, ptr noundef %.val186, ptr noundef %i.ru) #18
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %.critedge4
  br i1 %.not172, label %bb.ci, label %.loopexit, !llvm.loop !158

.loopexit.sink.split:                             ; preds = %.critedge4, %bb.ct
  %.4.ph = phi i64 [ %.2, %bb.ct ], [ %.3, %.critedge4 ]
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv433
  store i32 1, ptr %i.rx, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.em, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.em ]
  %i.ry = load i32, ptr %i.e, align 8, !tbaa !32
  %i.rz = icmp ne i32 %i.ry, 0
  %i.sa = load i32, ptr %i.dc, align 4
  %i.sb = icmp ne i32 %i.sa, 0
  %or.cond = select i1 %i.rz, i1 true, i1 %i.sb
  br i1 %or.cond, label %.loopexit320, label %bb.en

bb.en:                                            ; preds = %.loopexit
  %i.sc = add nuw nsw i32 %.0159383, 1            ; 3 uses
  %i.sd = icmp slt i32 %i.sc, %1
  %i.se = select i1 %i.jx, i1 true, i1 %i.sd
  br i1 %i.se, label %.preheader, label %.loopexit320, !llvm.loop !159

.loopexit320:                                     ; preds = %.loopexit, %bb.en, %bb.ct, %bb.dr, %.loopexit326, %Vec_StrPush.exit247, %Vec_StrPush.exit247.1, %Vec_StrPush.exit
  %.1160 = phi i32 [ 0, %Vec_StrPush.exit247.1 ], [ 0, %Vec_StrPush.exit ], [ %.0159383, %bb.ct ], [ %i.hx, %Vec_StrPush.exit247 ], [ %i.cx, %.loopexit326 ], [ %.0159383, %bb.dr ], [ %i.sc, %bb.en ], [ %.0159383, %.loopexit ]
  %i.sf = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not.i293 = icmp eq ptr %i.sf, null
  br i1 %.not.i293, label %Vec_IntFree.exit, label %bb.eo

bb.eo:                                            ; preds = %.loopexit320
  call void @free(ptr noundef nonnull %i.sf) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit320, %bb.eo
  call void @free(ptr noundef nonnull %i.al) #18
  %i.sg = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %.not.i294 = icmp eq ptr %i.sg, null
  br i1 %.not.i294, label %Vec_IntFree.exit295, label %bb.ep

bb.ep:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.sg) #18
  br label %Vec_IntFree.exit295

Vec_IntFree.exit295:                              ; preds = %Vec_IntFree.exit, %bb.ep
  call void @free(ptr noundef nonnull %i.ar) #18
  %i.sh = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %.not.i296 = icmp eq ptr %i.sh, null
  br i1 %.not.i296, label %Vec_IntFree.exit297, label %bb.eq

bb.eq:                                            ; preds = %Vec_IntFree.exit295
  call void @free(ptr noundef nonnull %i.sh) #18
  br label %Vec_IntFree.exit297

Vec_IntFree.exit297:                              ; preds = %Vec_IntFree.exit295, %bb.eq
  call void @free(ptr noundef nonnull %i.w) #18
  %i.si = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 2 uses
  %.not.i298 = icmp eq ptr %i.si, null
  br i1 %.not.i298, label %Vec_IntFree.exit299, label %bb.er

bb.er:                                            ; preds = %Vec_IntFree.exit297
  call void @free(ptr noundef nonnull %i.si) #18
  br label %Vec_IntFree.exit299

Vec_IntFree.exit299:                              ; preds = %Vec_IntFree.exit297, %bb.er
  call void @free(ptr noundef nonnull %i.ae) #18
  %i.sj = load ptr, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %.not.i300 = icmp eq ptr %i.sj, null
  br i1 %.not.i300, label %Vec_IntFree.exit301, label %bb.es

bb.es:                                            ; preds = %Vec_IntFree.exit299
  call void @free(ptr noundef nonnull %i.sj) #18
  br label %Vec_IntFree.exit301

Vec_IntFree.exit301:                              ; preds = %Vec_IntFree.exit299, %bb.es
  call void @free(ptr noundef nonnull %i.ay) #18
  %i.sk = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 2 uses
  %.not.i302 = icmp eq ptr %i.sk, null
  br i1 %.not.i302, label %Vec_IntFree.exit303, label %bb.et

bb.et:                                            ; preds = %Vec_IntFree.exit301
  call void @free(ptr noundef nonnull %i.sk) #18
  br label %Vec_IntFree.exit303

Vec_IntFree.exit303:                              ; preds = %Vec_IntFree.exit301, %bb.et
  call void @free(ptr noundef nonnull %i.bf) #18
  call void @Cnf_DataFree(ptr noundef %i.h) #18
  call void @sat_solver_delete(ptr noundef %i.i) #18
  call void @sat_solver_delete(ptr noundef %i.j) #18
  call void @sat_solver_delete(ptr noundef %i.k) #18
  call void @sat_solver_delete(ptr noundef %i.m) #18
  %i.sl = load i32, ptr %i.e, align 8, !tbaa !32
  %i.sm = icmp ne i32 %i.sl, 0
  %i.sn = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.so = load i32, ptr %i.sn, align 4            ; 2 uses
  %i.sp = icmp ne i32 %i.so, 0
  %or.cond9 = select i1 %i.sm, i1 true, i1 %i.sp
  br i1 %or.cond9, label %bb.eu, label %.thread

bb.eu:                                            ; preds = %Vec_IntFree.exit303
  %i.sq = sext i32 %i.so to i64
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.sq ; 2 uses
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !145 ; 6 uses
  store ptr null, ptr %i.sr, align 8, !tbaa !145
  %i.st = icmp samesign ugt i32 %.1160, 1
  br i1 %i.st, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.su = getelementptr i8, ptr %i.ss, i64 4
  %.val197 = load i32, ptr %i.su, align 4, !tbaa !84
  %i.sv = add nsw i32 %.val185.val, 3
  %i.sw = sdiv i32 %.val197, %i.sv
  %i.sx = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.ss, i32 noundef %i.sw, i32 noundef %.val185.val) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %.not177 = icmp eq i32 %5, 0
  br i1 %.not177, label %bb.fb, label %bb.ex

.thread:                                          ; preds = %Vec_IntFree.exit303
  %.not177309 = icmp eq i32 %5, 0
  br i1 %.not177309, label %bb.fb, label %.thread312

.thread312:                                       ; preds = %.thread
  %i.sy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.val185.val) ; 0 uses
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.sz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %.val185.val) ; 0 uses
  %i.ta = icmp eq ptr %i.ss, null
  br i1 %i.ta, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.thread312, %bb.ex
  %i.tb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %1) ; 0 uses
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.tc = getelementptr i8, ptr %i.ss, i64 4
  %.0168.val = load i32, ptr %i.tc, align 4, !tbaa !84
  %i.td = add nsw i32 %.val185.val, 3
  %i.te = sdiv i32 %.0168.val, %i.td
  %i.tf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.te) ; 0 uses
  br label %bb.fa

end_hunk_6
begin_hunk_7_@Bmc_CollapseOneOld:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0550)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5551)
  ret ptr %.0168311
}

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne_int3(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #2 {
bb.a:
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %.sroa.0548 = alloca ptr, align 16              ; 4 uses
  %.sroa.5549 = alloca ptr, align 8               ; 4 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 10 uses
  %.sroa.0 = alloca ptr, align 16                 ; 4 uses
  %.sroa.5 = alloca ptr, align 8                  ; 4 uses
  %i.c = alloca i32, align 4                      ; 15 uses
  %i.d = alloca [2 x [2 x i64]], align 16         ; 11 uses
  %i.e = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0548)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5549)
  store ptr %0, ptr %.sroa.0548, align 16, !tbaa !126
  store ptr %1, ptr %.sroa.5549, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %2, ptr %i.a, align 16, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.f, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !84
  store i32 1000, ptr %i.g, align 8, !tbaa !125
  %i.i = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  store ptr %i.g, ptr %i.b, align 16, !tbaa !145
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !84
  store i32 1000, ptr %i.l, align 8, !tbaa !125
  %i.n = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !64
  store ptr %i.l, ptr %i.k, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.q = add i32 %4, -1
  %or.cond.i = icmp ult i32 %i.q, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %4 ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 4 uses
  store i32 0, ptr %i.r, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.p, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 6 uses
  %indvars.iv429.sroa.gep529 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv429.sroa.gep532 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv429.sroa.gep541 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %i.v = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 6 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !31
  store ptr %i.p, ptr %.sroa.0, align 16, !tbaa !146
  %i.x = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 4 uses
  store i32 0, ptr %i.y, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.x, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit198, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.z = sext i32 %spec.store.select.i to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.aa) #17
  br label %Vec_IntAlloc.exit198

Vec_IntAlloc.exit198:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.ac = phi ptr [ %i.ab, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 6 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !31
  store ptr %i.x, ptr %.sroa.5, align 8, !tbaa !146
  %i.ae = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 5 uses
  store i32 0, ptr %i.af, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ae, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit202, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit198
  %i.ag = sext i32 %spec.store.select.i to i64
  %i.ah = shl nsw i64 %i.ag, 2
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #17
  br label %Vec_IntAlloc.exit202

Vec_IntAlloc.exit202:                             ; preds = %Vec_IntAlloc.exit198, %bb.d
  %.promoted351 = phi ptr [ %i.ai, %bb.d ], [ null, %Vec_IntAlloc.exit198 ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  store ptr %.promoted351, ptr %i.aj, align 8, !tbaa !31
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 3 uses
  store i32 0, ptr %i.al, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ak, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit206, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit202
  %i.am = sext i32 %spec.store.select.i to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #17
  br label %Vec_IntAlloc.exit206

Vec_IntAlloc.exit206:                             ; preds = %Vec_IntAlloc.exit202, %bb.e
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %Vec_IntAlloc.exit202 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !31
  %i.ar = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  store i32 0, ptr %i.as, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ar, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit210, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit206
  %i.at = sext i32 %spec.store.select.i to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #17
  br label %Vec_IntAlloc.exit210

Vec_IntAlloc.exit210:                             ; preds = %Vec_IntAlloc.exit206, %bb.f
  %i.aw = phi ptr [ %i.av, %bb.f ], [ null, %Vec_IntAlloc.exit206 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !31
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store i32 0, ptr %i.az, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ay, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit214, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit210
  %i.ba = sext i32 %spec.store.select.i to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.bb) #17
  br label %Vec_IntAlloc.exit214

Vec_IntAlloc.exit214:                             ; preds = %Vec_IntAlloc.exit210, %bb.g
  %i.bd = phi ptr [ %i.bc, %bb.g ], [ null, %Vec_IntAlloc.exit210 ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8
  %i.bf = tail call i32 @sat_solver_nvars(ptr noundef %0) #18
  %i.bg = sub nsw i32 %i.bf, %4                   ; 2 uses
  %.not = icmp eq i32 %8, 0                       ; 2 uses
  %i.bh = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %.not, label %.preheader321, label %.preheader323

.preheader323:                                    ; preds = %Vec_IntAlloc.exit214
  br i1 %i.bh, label %.lr.ph, label %.loopexit322

.preheader321:                                    ; preds = %Vec_IntAlloc.exit214
  br i1 %i.bh, label %.lr.ph345, label %.loopexit322

.lr.ph:                                           ; preds = %.preheader323, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader323 ] ; 7 uses
  %storemerge342 = phi ptr [ %storemerge343, %Vec_IntPush.exit ], [ %.promoted351, %.preheader323 ] ; 6 uses
  %spec.select.sink.i340 = phi i32 [ %spec.select.sink.i339, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader323 ] ; 3 uses
  %.0158.in336 = phi i32 [ %.0158, %Vec_IntPush.exit ], [ %4, %.preheader323 ] ; 2 uses
  %.0158 = add nsw i32 %.0158.in336, -1           ; 2 uses
  %i.bi = add nsw i32 %.0158, %i.bg
  %i.bj = trunc nsw i64 %indvars.iv to i32
  %i.bk = icmp eq i32 %spec.select.sink.i340, %i.bj
  br i1 %i.bk, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %.lr.ph
  %i.bl = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.bl, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %storemerge342, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge342, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.i
  %i.bn = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.l:                                             ; preds = %bb.h
  %i.bo = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.bp = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.bo, i32 %i.bp, i32 2147483647 ; 4 uses
  %i.bq = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.bq
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %storemerge342, null
  %i.br = zext nneg i32 %spec.select.i to i64
  %i.bs = shl nuw nsw i64 %i.br, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call ptr @realloc(ptr noundef nonnull %storemerge342, i64 noundef %i.bs) #16
  br label %Vec_IntPush.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bs) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.k, %bb.j, %bb.o, %bb.n, %.lr.ph, %bb.l
  %storemerge343 = phi ptr [ %storemerge342, %.lr.ph ], [ %storemerge342, %bb.l ], [ %i.bn, %bb.k ], [ %i.bm, %bb.j ], [ %i.bt, %bb.n ], [ %i.bu, %bb.o ] ; 3 uses
  %spec.select.sink.i339 = phi i32 [ %spec.select.sink.i340, %.lr.ph ], [ %spec.select.sink.i340, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %storemerge343, i64 %indvars.iv
  store i32 %i.bi, ptr %i.bv, align 4, !tbaa !32
  %i.bw = icmp samesign ugt i32 %.0158.in336, 1
  br i1 %i.bw, label %.lr.ph, label %.loopexit322.sink.split, !llvm.loop !160

.lr.ph345:                                        ; preds = %.preheader321, %Vec_IntPush.exit222
  %indvars.iv401 = phi i64 [ %indvars.iv.next402, %Vec_IntPush.exit222 ], [ 0, %.preheader321 ] ; 7 uses
  %storemerge315352 = phi ptr [ %storemerge315353, %Vec_IntPush.exit222 ], [ %.promoted351, %.preheader321 ] ; 6 uses
  %spec.select.sink.i219350 = phi i32 [ %spec.select.sink.i219349, %Vec_IntPush.exit222 ], [ %spec.store.select.i, %.preheader321 ] ; 3 uses
  %.1159344 = phi i32 [ %i.cl, %Vec_IntPush.exit222 ], [ 0, %.preheader321 ] ; 2 uses
  %i.bx = add nsw i32 %.1159344, %i.bg
  %i.by = trunc nsw i64 %indvars.iv401 to i32
  %i.bz = icmp eq i32 %spec.select.sink.i219350, %i.by
  br i1 %i.bz, label %bb.p, label %Vec_IntPush.exit222

bb.p:                                             ; preds = %.lr.ph345
  %i.ca = icmp samesign ult i64 %indvars.iv401, 16
  br i1 %i.ca, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i220 = icmp eq ptr %storemerge315352, null
  br i1 %.not9.i.i220, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge315352, i64 noundef 64) #16
  br label %Vec_IntPush.exit222

bb.s:                                             ; preds = %bb.q
  %i.cc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit222

bb.t:                                             ; preds = %bb.p
  %i.cd = icmp samesign ult i64 %indvars.iv401, 1073741823
  %indvars.iv401.tr = trunc nsw i64 %indvars.iv401 to i32
  %i.ce = shl nsw i32 %indvars.iv401.tr, 1
  %spec.select.i215 = select i1 %i.cd, i32 %i.ce, i32 2147483647 ; 4 uses
  %i.cf = sext i32 %spec.select.i215 to i64
  %.not.i9.i216 = icmp samesign ult i64 %indvars.iv401, %i.cf
  br i1 %.not.i9.i216, label %bb.u, label %Vec_IntPush.exit222

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i217 = icmp eq ptr %storemerge315352, null
  %i.cg = zext nneg i32 %spec.select.i215 to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i217, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge315352, i64 noundef %i.ch) #16
  br label %Vec_IntPush.exit222

bb.w:                                             ; preds = %bb.u
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #17
  br label %Vec_IntPush.exit222

Vec_IntPush.exit222:                              ; preds = %bb.s, %bb.r, %bb.w, %bb.v, %.lr.ph345, %bb.t
  %storemerge315353 = phi ptr [ %storemerge315352, %.lr.ph345 ], [ %storemerge315352, %bb.t ], [ %i.cc, %bb.s ], [ %i.cb, %bb.r ], [ %i.ci, %bb.v ], [ %i.cj, %bb.w ] ; 3 uses
  %spec.select.sink.i219349 = phi i32 [ %spec.select.sink.i219350, %.lr.ph345 ], [ %spec.select.sink.i219350, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i215, %bb.v ], [ %spec.select.i215, %bb.w ] ; 2 uses
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %storemerge315353, i64 %indvars.iv401
  store i32 %i.bx, ptr %i.ck, align 4, !tbaa !32
  %i.cl = add nuw nsw i32 %.1159344, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %4
  br i1 %exitcond.not, label %.loopexit322.sink.split, label %.lr.ph345, !llvm.loop !161

.loopexit322.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit222
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next402, %Vec_IntPush.exit222 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i339.lcssa.sink = phi i32 [ %spec.select.sink.i219349, %Vec_IntPush.exit222 ], [ %spec.select.sink.i339, %Vec_IntPush.exit ]
  %storemerge343.lcssa.sink = phi ptr [ %storemerge315353, %Vec_IntPush.exit222 ], [ %storemerge343, %Vec_IntPush.exit ] ; 2 uses
  %i.cm = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32 ; 2 uses
  store i32 %i.cm, ptr %i.af, align 4, !tbaa !30
  store i32 %spec.select.sink.i339.lcssa.sink, ptr %i.ae, align 8
  store ptr %storemerge343.lcssa.sink, ptr %i.aj, align 8
  br label %.loopexit322

.loopexit322:                                     ; preds = %.loopexit322.sink.split, %.preheader323, %.preheader321
  %.val181 = phi ptr [ %.promoted351, %.preheader323 ], [ %.promoted351, %.preheader321 ], [ %storemerge343.lcssa.sink, %.loopexit322.sink.split ]
  %.val177 = phi i32 [ 0, %.preheader323 ], [ 0, %.preheader321 ], [ %i.cm, %.loopexit322.sink.split ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 6 uses
  %i.co = sext i32 %6 to i64                      ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !32
  %i.cp = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.cn, i64 noundef %i.co, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.cp, label %.preheader319 [
    i32 0, label %.loopexit316
    i32 -1, label %.lr.ph.i
  ]

.preheader.lr.ph:                                 ; preds = %Vec_StrPush.exit243.1
  %.not167 = icmp eq i32 %9, 0                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.not168 = icmp eq i32 %7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %.preheader

.preheader319:                                    ; preds = %.loopexit322
  %i.cv = icmp sgt i32 %.val177, 0
  br i1 %i.cv, label %.lr.ph355, label %.critedge

.lr.ph355:                                        ; preds = %.preheader319
  %wide.trip.count = zext nneg i32 %.val177 to i64
  br label %bb.az

.lr.ph.i:                                         ; preds = %Vec_StrPush.exit243..lr.ph.i_crit_edge, %.loopexit322
  %i.cw = phi ptr [ %i.g, %.loopexit322 ], [ %.pre439, %Vec_StrPush.exit243..lr.ph.i_crit_edge ] ; 8 uses
  %.not173 = phi ptr [ @.str.13, %.loopexit322 ], [ @.str.12, %Vec_StrPush.exit243..lr.ph.i_crit_edge ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 9 uses
  store i32 0, ptr %i.cx, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 10 uses
  %i.cz = load i8, ptr %.not173, align 1, !tbaa !71
  %i.da = load i32, ptr %i.cw, align 8, !tbaa !125
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !64 ; 3 uses
  br i1 %i.db, label %bb.x, label %Vec_StrPush.exit.i

bb.x:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not9.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dd = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef 16) #16
  %.pre9.i.pre = load i32, ptr %i.cx, align 4, !tbaa !84
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.z:                                             ; preds = %bb.x
  %i.de = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.z, %bb.y
  %.pre9.i = phi i32 [ 0, %bb.z ], [ %.pre9.i.pre, %bb.y ]
  %i.df = phi ptr [ %i.de, %bb.z ], [ %i.dd, %bb.y ] ; 2 uses
  store ptr %i.df, ptr %i.cy, align 8, !tbaa !64
  store i32 16, ptr %i.cw, align 8, !tbaa !125
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.dg = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.dh = phi ptr [ %i.df, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.dc, %.lr.ph.i ]
  %i.di = add nsw i32 %i.dg, 1
  store i32 %i.di, ptr %i.cx, align 4, !tbaa !84
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj
  store i8 %i.cz, ptr %i.dk, align 1, !tbaa !71
  %i.dl = getelementptr inbounds nuw i8, ptr %.not173, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !71
  %i.dn = load i32, ptr %i.cx, align 4, !tbaa !84 ; 7 uses
  %i.do = load i32, ptr %i.cw, align 8, !tbaa !125
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.aa, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.cy, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.1

bb.aa:                                            ; preds = %Vec_StrPush.exit.i
  %i.dq = icmp slt i32 %i.dn, 16
  br i1 %i.dq, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dr = icmp samesign ult i32 %i.dn, 1073741823
  %i.ds = shl nuw nsw i32 %i.dn, 1
  %spec.select.i.i.1 = select i1 %i.dr, i32 %i.ds, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.dn, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.cy, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.ac, label %Vec_StrPush.exit.i.1

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.dt = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.du = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.dt) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ae:                                            ; preds = %bb.ac
  %i.dv = call noalias ptr @malloc(i64 noundef %i.dt) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.af:                                            ; preds = %bb.aa
  %i.dw = load ptr, ptr %i.cy, align 8, !tbaa !64 ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.dw, null
  br i1 %.not9.i.i.i.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dx = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dw, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ah:                                            ; preds = %bb.af
  %i.dy = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ad
  %i.dz = phi ptr [ %i.dy, %bb.ah ], [ %i.dx, %bb.ag ], [ %i.du, %bb.ad ], [ %i.dv, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i.1, %bb.ad ], [ %spec.select.i.i.1, %bb.ae ]
  store ptr %i.dz, ptr %i.cy, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i.1, ptr %i.cw, align 8, !tbaa !125
  %.pre9.i.1 = load i32, ptr %i.cx, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.ab, %.Vec_StrPush.exit_crit_edge.i.1
  %i.ea = phi i32 [ %i.dn, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.dn, %bb.ab ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.eb = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.ab ], [ %i.dz, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.ec = add nsw i32 %i.ea, 1
  store i32 %i.ec, ptr %i.cx, align 4, !tbaa !84
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed
  store i8 %i.dm, ptr %i.ee, align 1, !tbaa !71
  %i.ef = getelementptr inbounds nuw i8, ptr %.not173, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !71
  %i.eh = load i32, ptr %i.cx, align 4, !tbaa !84 ; 7 uses
  %i.ei = load i32, ptr %i.cw, align 8, !tbaa !125
  %i.ej = icmp eq i32 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ai, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.cy, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.2

bb.ai:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.ek = icmp slt i32 %i.eh, 16
  br i1 %i.ek, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = icmp samesign ult i32 %i.eh, 1073741823
  %i.em = shl nuw nsw i32 %i.eh, 1
  %spec.select.i.i.2 = select i1 %i.el, i32 %i.em, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.eh, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.cy, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ak, label %Vec_StrPush.exit.i.2

bb.ak:                                            ; preds = %bb.aj
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.en = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
end_hunk_7
begin_hunk_8_@Bmc_CollapseOne_int3:bb.a
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %Abc_Clock.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jt = load i64, ptr %13, align 8, !tbaa !150
  %i.ju = mul nsw i64 %i.jt, 1000000
  %i.jv = load i64, ptr %i.cq, align 8, !tbaa !152
  %i.jw = sdiv i64 %i.jv, 1000
  %i.jx = add nsw i64 %i.jw, %i.ju
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.cj, %bb.ck
  %.0.i = phi i64 [ %i.jx, %bb.ck ], [ -1, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.cl

bb.cl:                                            ; preds = %Abc_Clock.exit, %bb.ci
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1378, %bb.ci ] ; 3 uses
  %i.jy = load ptr, ptr %indvars.iv429.sroa.phi545, align 8, !tbaa !126 ; 5 uses
  br i1 %.not168, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jz = load ptr, ptr %indvars.iv429.sroa.phi536, align 8, !tbaa !146 ; 2 uses
  call void @sat_solver_set_resource_limits(ptr noundef %i.jy, i64 noundef %i.co, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  %i.ka = getelementptr i8, ptr %i.jz, i64 8
  %.val4.i = load ptr, ptr %i.ka, align 8, !tbaa !31
  %i.kb = getelementptr i8, ptr %i.jz, i64 4
  %.val.i = load i32, ptr %i.kb, align 4, !tbaa !30
  %i.kc = call i32 @sat_solver_solve_lexsat(ptr noundef %i.jy, ptr noundef %.val4.i, i32 noundef %.val.i) #18
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %.val183 = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 5 uses
  %.val176 = load i32, ptr %i.af, align 4, !tbaa !30 ; 3 uses
  %i.kd = icmp sgt i32 %.val176, 0
  br i1 %i.kd, label %.lr.ph.i244, label %sat_solver_clean_polarity.exit

.lr.ph.i244:                                      ; preds = %bb.cn
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 216 ; 5 uses
  %wide.trip.count.i245 = zext nneg i32 %.val176 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i245, 3    ; 3 uses
  %i.kf = icmp ult i32 %.val176, 4
  br i1 %i.kf, label %.epil.preheader, label %.lr.ph.i244.new

.lr.ph.i244.new:                                  ; preds = %.lr.ph.i244
  %unroll_iter = and i64 %wide.trip.count.i245, 2147483644
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i244.new
  %indvars.iv.i246 = phi i64 [ 0, %.lr.ph.i244.new ], [ %indvars.iv.next.i247.3, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i244.new ], [ %niter.next.3, %bb.co ]
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !32
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds i8, ptr %i.kg, i64 %i.kj
  store i8 0, ptr %i.kk, align 1, !tbaa !71
  %i.kl = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !32
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds i8, ptr %i.kl, i64 %i.kp
  store i8 0, ptr %i.kq, align 1, !tbaa !71
  %i.kr = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !32
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds i8, ptr %i.kr, i64 %i.kv
  store i8 0, ptr %i.kw, align 1, !tbaa !71
  %i.kx = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !32
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %i.kx, i64 %i.lb
  store i8 0, ptr %i.lc, align 1, !tbaa !71
  %indvars.iv.next.i247.3 = add nuw nsw i64 %indvars.iv.i246, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.co, !llvm.loop !136

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i244
  %indvars.iv.i246.epil.init = phi i64 [ 0, %.lr.ph.i244 ], [ %indvars.iv.next.i247.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod526)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader
  %indvars.iv.i246.epil = phi i64 [ %indvars.iv.i246.epil.init, %.epil.preheader ], [ %indvars.iv.next.i247.epil, %bb.cp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cp ]
  %i.ld = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.val183, i64 %indvars.iv.i246.epil
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !32
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %i.ld, i64 %i.lg
  store i8 0, ptr %i.lh, align 1, !tbaa !71
  %indvars.iv.next.i247.epil = add nuw nsw i64 %indvars.iv.i246.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.cp, !llvm.loop !163

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.cp, %bb.cn
  %i.li = call i32 @sat_solver_solve(ptr noundef %i.jy, ptr noundef null, ptr noundef null, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br label %bb.cq

bb.cq:                                            ; preds = %sat_solver_clean_polarity.exit, %bb.cm
  %.0155 = phi i32 [ %i.kc, %bb.cm ], [ %i.li, %sat_solver_clean_polarity.exit ]
  br i1 %.not167, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.lj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %12) #18
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %Abc_Clock.exit250, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ll = load i64, ptr %12, align 8, !tbaa !150
  %i.lm = mul nsw i64 %i.ll, 1000000
  %i.ln = load i64, ptr %i.cr, align 8, !tbaa !152
  %i.lo = sdiv i64 %i.ln, 1000
  %i.lp = add nsw i64 %i.lo, %i.lm
  br label %Abc_Clock.exit250

Abc_Clock.exit250:                                ; preds = %bb.cr, %bb.cs
  %.0.i249 = phi i64 [ %i.lp, %bb.cs ], [ -1, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.lq = sub i64 %.0.i249, %.2
  %i.lr = load i64, ptr %indvars.iv429.sroa.phi, align 16, !tbaa !37
  %i.ls = add nsw i64 %i.lq, %i.lr
  store i64 %i.ls, ptr %indvars.iv429.sroa.phi, align 16, !tbaa !37
  br label %bb.ct

bb.ct:                                            ; preds = %Abc_Clock.exit250, %bb.cq
  switch i32 %.0155, label %bb.cu [
    i32 0, label %.loopexit316
    i32 -1, label %.loopexit.sink.split
  ]

bb.cu:                                            ; preds = %bb.ct
  store i32 0, ptr %i.al, align 4, !tbaa !30
  %i.lt = load ptr, ptr %indvars.iv429.sroa.phi536, align 8, !tbaa !146 ; 4 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4 ; 4 uses
  store i32 0, ptr %i.lu, align 4, !tbaa !30
  %.val175 = load i32, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.lv = icmp sgt i32 %.val175, 0
  br i1 %i.lv, label %.lr.ph358, label %.critedge2

.lr.ph358:                                        ; preds = %bb.cu
  %.val180 = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.lw = getelementptr i8, ptr %i.jy, i64 328
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %.promoted361 = load i32, ptr %i.ak, align 8, !tbaa !45
  %.promoted364 = load ptr, ptr %i.aq, align 8, !tbaa !31
  %wide.trip.count418 = zext nneg i32 %.val175 to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph358, %Vec_IntPush.exit266
  %indvars.iv413 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next414, %Vec_IntPush.exit266 ] ; 2 uses
  %indvars.iv411 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next412, %Vec_IntPush.exit266 ] ; 7 uses
  %storemerge314365 = phi ptr [ %.promoted364, %.lr.ph358 ], [ %storemerge314366, %Vec_IntPush.exit266 ] ; 6 uses
  %spec.select.sink.i255363 = phi i32 [ %.promoted361, %.lr.ph358 ], [ %spec.select.sink.i255362, %Vec_IntPush.exit266 ] ; 3 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.val180, i64 %indvars.iv413
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !32 ; 2 uses
  %.val192 = load ptr, ptr %i.lw, align 8, !tbaa !138
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %.val192, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !32
  %i.md = icmp ne i32 %i.mc, 1
  %i.me = zext i1 %i.md to i32
  %i.mf = shl nsw i32 %i.lz, 1
  %i.mg = or disjoint i32 %i.mf, %i.me            ; 2 uses
  store i32 %i.mg, ptr %i.c, align 4, !tbaa !32
  %i.mh = trunc nsw i64 %indvars.iv411 to i32
  %i.mi = icmp eq i32 %spec.select.sink.i255363, %i.mh
  br i1 %i.mi, label %bb.cw, label %Vec_IntPush.exit258

bb.cw:                                            ; preds = %bb.cv
  %i.mj = icmp samesign ult i64 %indvars.iv411, 16
  br i1 %i.mj, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %.not9.i.i256 = icmp eq ptr %storemerge314365, null
  br i1 %.not9.i.i256, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mk = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge314365, i64 noundef 64) #16
  br label %Vec_IntPush.exit258

bb.cz:                                            ; preds = %bb.cx
  %i.ml = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit258

bb.da:                                            ; preds = %bb.cw
  %i.mm = icmp samesign ult i64 %indvars.iv411, 1073741823
  %indvars.iv411.tr = trunc nsw i64 %indvars.iv411 to i32
  %i.mn = shl nsw i32 %indvars.iv411.tr, 1
  %spec.select.i251 = select i1 %i.mm, i32 %i.mn, i32 2147483647 ; 4 uses
  %i.mo = sext i32 %spec.select.i251 to i64
  %.not.i9.i252 = icmp samesign ult i64 %indvars.iv411, %i.mo
  br i1 %.not.i9.i252, label %bb.db, label %Vec_IntPush.exit258

bb.db:                                            ; preds = %bb.da
  %.not9.i10.i253 = icmp eq ptr %storemerge314365, null
  %i.mp = zext nneg i32 %spec.select.i251 to i64
  %i.mq = shl nuw nsw i64 %i.mp, 2                ; 2 uses
  br i1 %.not9.i10.i253, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mr = call ptr @realloc(ptr noundef nonnull %storemerge314365, i64 noundef %i.mq) #16
  br label %Vec_IntPush.exit258

bb.dd:                                            ; preds = %bb.db
  %i.ms = call noalias ptr @malloc(i64 noundef %i.mq) #17
  br label %Vec_IntPush.exit258

Vec_IntPush.exit258:                              ; preds = %bb.cz, %bb.cy, %bb.dd, %bb.dc, %bb.cv, %bb.da
  %storemerge314366 = phi ptr [ %storemerge314365, %bb.cv ], [ %storemerge314365, %bb.da ], [ %i.ml, %bb.cz ], [ %i.mk, %bb.cy ], [ %i.mr, %bb.dc ], [ %i.ms, %bb.dd ] ; 3 uses
  %spec.select.sink.i255362 = phi i32 [ %spec.select.sink.i255363, %bb.cv ], [ %spec.select.sink.i255363, %bb.da ], [ 16, %bb.cz ], [ 16, %bb.cy ], [ %spec.select.i251, %bb.dc ], [ %spec.select.i251, %bb.dd ] ; 2 uses
  %indvars.iv.next412 = add nuw nsw i64 %indvars.iv411, 1 ; 2 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %storemerge314366, i64 %indvars.iv411
  store i32 %i.mg, ptr %i.mt, align 4, !tbaa !32
  %i.mu = load i32, ptr %i.c, align 4, !tbaa !32
  %i.mv = load i32, ptr %i.lu, align 4, !tbaa !30 ; 7 uses
  %i.mw = load i32, ptr %i.lt, align 8, !tbaa !45
  %i.mx = icmp eq i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.de, label %Vec_IntPush.exit258.Vec_IntPush.exit266_crit_edge

Vec_IntPush.exit258.Vec_IntPush.exit266_crit_edge: ; preds = %Vec_IntPush.exit258
  %.pre446 = load ptr, ptr %i.lx, align 8, !tbaa !31
  br label %Vec_IntPush.exit266

bb.de:                                            ; preds = %Vec_IntPush.exit258
  %i.my = icmp slt i32 %i.mv, 16
  br i1 %i.my, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.mz = load ptr, ptr %i.lx, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i264 = icmp eq ptr %i.mz, null
  br i1 %.not9.i.i264, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.na = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mz, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.dh:                                            ; preds = %bb.df
  %i.nb = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.di:                                            ; preds = %bb.de
  %i.nc = icmp samesign ult i32 %i.mv, 1073741823
  %i.nd = shl nuw nsw i32 %i.mv, 1
  %spec.select.i259 = select i1 %i.nc, i32 %i.nd, i32 2147483647 ; 4 uses
  %.not.i9.i260 = icmp samesign ult i32 %i.mv, %spec.select.i259
  %.pre447 = load ptr, ptr %i.lx, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i9.i260, label %bb.dj, label %Vec_IntPush.exit266

bb.dj:                                            ; preds = %bb.di
  %.not9.i10.i261 = icmp eq ptr %.pre447, null
  %i.ne = zext nneg i32 %spec.select.i259 to i64
  %i.nf = shl nuw nsw i64 %i.ne, 2                ; 2 uses
  br i1 %.not9.i10.i261, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ng = call ptr @realloc(ptr noundef nonnull %.pre447, i64 noundef %i.nf) #16
  br label %Vec_IntGrow.exit11.sink.split.i262

bb.dl:                                            ; preds = %bb.dj
  %i.nh = call noalias ptr @malloc(i64 noundef %i.nf) #17
  br label %Vec_IntGrow.exit11.sink.split.i262

Vec_IntGrow.exit11.sink.split.i262:               ; preds = %bb.dk, %bb.dl, %bb.dg, %bb.dh
  %i.ni = phi ptr [ %i.nb, %bb.dh ], [ %i.na, %bb.dg ], [ %i.ng, %bb.dk ], [ %i.nh, %bb.dl ] ; 2 uses
  %spec.select.sink.i263 = phi i32 [ 16, %bb.dh ], [ 16, %bb.dg ], [ %spec.select.i259, %bb.dk ], [ %spec.select.i259, %bb.dl ]
  store ptr %i.ni, ptr %i.lx, align 8, !tbaa !31
  store i32 %spec.select.sink.i263, ptr %i.lt, align 8, !tbaa !45
  %.pre448 = load i32, ptr %i.lu, align 4, !tbaa !30
  br label %Vec_IntPush.exit266

Vec_IntPush.exit266:                              ; preds = %Vec_IntPush.exit258.Vec_IntPush.exit266_crit_edge, %bb.di, %Vec_IntGrow.exit11.sink.split.i262
  %i.nj = phi i32 [ %i.mv, %Vec_IntPush.exit258.Vec_IntPush.exit266_crit_edge ], [ %i.mv, %bb.di ], [ %.pre448, %Vec_IntGrow.exit11.sink.split.i262 ] ; 2 uses
  %i.nk = phi ptr [ %.pre446, %Vec_IntPush.exit258.Vec_IntPush.exit266_crit_edge ], [ %.pre447, %bb.di ], [ %i.ni, %Vec_IntGrow.exit11.sink.split.i262 ]
  %i.nl = add nsw i32 %i.nj, 1
  store i32 %i.nl, ptr %i.lu, align 4, !tbaa !30
  %i.nm = sext i32 %i.nj to i64
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.nk, i64 %i.nm
  store i32 %i.mu, ptr %i.nn, align 4, !tbaa !32
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %exitcond419.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count418
  br i1 %exitcond419.not, label %..critedge2_crit_edge, label %bb.cv, !llvm.loop !164

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit266
  %i.no = trunc nsw i64 %indvars.iv.next412 to i32
  store i32 %i.no, ptr %i.al, align 4, !tbaa !30
  store i32 %spec.select.sink.i255362, ptr %i.ak, align 8
  store ptr %storemerge314366, ptr %i.aq, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.cu
  br i1 %.not167, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.np = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.nq = icmp slt i32 %i.np, 0
  br i1 %i.nq, label %Abc_Clock.exit268, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nr = load i64, ptr %11, align 8, !tbaa !150
  %i.ns = mul nsw i64 %i.nr, 1000000
  %i.nt = load i64, ptr %i.cs, align 8, !tbaa !152
  %i.nu = sdiv i64 %i.nt, 1000
  %i.nv = add nsw i64 %i.nu, %i.ns
  br label %Abc_Clock.exit268

Abc_Clock.exit268:                                ; preds = %bb.dm, %bb.dn
  %.0.i267 = phi i64 [ %i.nv, %bb.dn ], [ -1, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.do

bb.do:                                            ; preds = %Abc_Clock.exit268, %.critedge2
  %.3 = phi i64 [ %.0.i267, %Abc_Clock.exit268 ], [ %.2, %.critedge2 ] ; 4 uses
  %i.nw = xor i64 %indvars.iv429, 1
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.nw
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !126
  %i.nz = load ptr, ptr %indvars.iv429.sroa.phi545, align 8, !tbaa !126 ; 2 uses
  %i.oa = call i32 @Bmc_CollapseExpand(ptr noundef %i.ny, ptr noundef %i.nz, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.ay, i32 noundef %6, i32 noundef %7, i32 noundef -1)
  br i1 %.not167, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.ob = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.oc = icmp slt i32 %i.ob, 0
  br i1 %i.oc, label %Abc_Clock.exit270, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.od = load i64, ptr %10, align 8, !tbaa !150
  %i.oe = mul nsw i64 %i.od, 1000000
  %i.of = load i64, ptr %i.ct, align 8, !tbaa !152
  %i.og = sdiv i64 %i.of, 1000
  %i.oh = add nsw i64 %i.og, %i.oe
  br label %Abc_Clock.exit270

Abc_Clock.exit270:                                ; preds = %bb.dp, %bb.dq
  %.0.i269 = phi i64 [ %i.oh, %bb.dq ], [ -1, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.oi = sub i64 %.0.i269, %.3
  %i.oj = getelementptr inbounds nuw i8, ptr %indvars.iv429.sroa.phi530, i64 8 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !37
  %i.ol = add nsw i64 %i.oi, %i.ok
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !37
  br label %bb.dr

bb.dr:                                            ; preds = %Abc_Clock.exit270, %bb.do
  %i.om = icmp slt i32 %i.oa, 0
  br i1 %i.om, label %.loopexit316, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.on = load ptr, ptr %indvars.iv429.sroa.phi539, align 8, !tbaa !145 ; 4 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 12 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !64 ; 8 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 4 ; 4 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !84 ; 3 uses
  %i.os = add nsw i32 %i.or, -1                   ; 6 uses
  store i32 %i.os, ptr %i.oq, align 4, !tbaa !84
  %i.ot = add nsw i32 %i.os, %4                   ; 3 uses
  %i.ou = add nsw i32 %i.ot, 4                    ; 9 uses
  %.not.i271.not = icmp slt i32 %i.ou, %i.or
  br i1 %.not.i271.not, label %Vec_StrFillExtra.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ov = load i32, ptr %i.on, align 8, !tbaa !125 ; 4 uses
  %i.ow = shl nsw i32 %i.ov, 1                    ; 2 uses
  %i.ox = icmp sgt i32 %i.ou, %i.ow
  %.not.i.i = icmp slt i32 %i.ov, %i.ou           ; 2 uses
  br i1 %i.ox, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dv, label %Vec_StrGrow.exit.i272

bb.dv:                                            ; preds = %bb.du
  %.not9.i.i280 = icmp eq ptr %i.op, null
  %i.oy = sext i32 %i.ou to i64                   ; 2 uses
  br i1 %.not9.i.i280, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.oz = call ptr @realloc(ptr noundef nonnull %i.op, i64 noundef %i.oy) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.dx:                                            ; preds = %bb.dv
  %i.pa = call noalias ptr @malloc(i64 noundef %i.oy) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.dy:                                            ; preds = %bb.dt
  br i1 %.not.i.i, label %bb.dz, label %Vec_StrGrow.exit.i272

bb.dz:                                            ; preds = %bb.dy
  %i.pb = icmp slt i32 %i.ov, 1073741823
  %spec.select.i278 = select i1 %i.pb, i32 %i.ow, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.ov, %spec.select.i278
  br i1 %.not.i22.i, label %bb.ea, label %Vec_StrGrow.exit.i272

bb.ea:                                            ; preds = %bb.dz
  %.not9.i23.i = icmp eq ptr %i.op, null
  %i.pc = sext i32 %spec.select.i278 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.pd = call ptr @realloc(ptr noundef nonnull %i.op, i64 noundef %i.pc) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.ec:                                            ; preds = %bb.ea
  %i.pe = call noalias ptr @malloc(i64 noundef %i.pc) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.eb, %bb.ec, %bb.dw, %bb.dx
  %storemerge312 = phi ptr [ %i.pa, %bb.dx ], [ %i.oz, %bb.dw ], [ %i.pd, %bb.eb ], [ %i.pe, %bb.ec ] ; 2 uses
  %spec.select.sink.i279 = phi i32 [ %i.ou, %bb.dx ], [ %i.ou, %bb.dw ], [ %spec.select.i278, %bb.eb ], [ %spec.select.i278, %bb.ec ]
  store ptr %storemerge312, ptr %i.oo, align 8, !tbaa !64
  store i32 %spec.select.sink.i279, ptr %i.on, align 8, !tbaa !125
  %.pre449 = load i32, ptr %i.oq, align 4, !tbaa !84
  br label %Vec_StrGrow.exit.i272

Vec_StrGrow.exit.i272:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.dz, %bb.dy, %bb.du
  %.val191.pre454 = phi ptr [ %storemerge312, %Vec_StrGrow.exit.sink.split.i ], [ %i.op, %bb.dz ], [ %i.op, %bb.dy ], [ %i.op, %bb.du ]
  %i.pf = phi i32 [ %.pre449, %Vec_StrGrow.exit.sink.split.i ], [ %i.os, %bb.dz ], [ %i.os, %bb.dy ], [ %i.os, %bb.du ] ; 2 uses
  %i.pg = icmp slt i32 %i.pf, %i.ou
  br i1 %i.pg, label %.lr.ph.i273, label %._crit_edge.i

.lr.ph.i273:                                      ; preds = %Vec_StrGrow.exit.i272
  %i.ph = sext i32 %i.pf to i64                   ; 4 uses
  %wide.trip.count.i274 = sext i32 %i.ou to i64   ; 3 uses
  %i.pi = sub nsw i64 %wide.trip.count.i274, %i.ph
  %xtraiter527 = and i64 %i.pi, 3                 ; 2 uses
  %lcmp.mod528.not = icmp eq i64 %xtraiter527, 0
  br i1 %lcmp.mod528.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i273, %.prol.preheader
  %indvars.iv.i275.prol = phi i64 [ %indvars.iv.next.i276.prol, %.prol.preheader ], [ %i.ph, %.lr.ph.i273 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i273 ]
  %i.pj = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 %indvars.iv.i275.prol
  store i8 45, ptr %i.pk, align 1, !tbaa !71
  %indvars.iv.next.i276.prol = add nsw i64 %indvars.iv.i275.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter527
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !165

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i273
  %indvars.iv.i275.unr = phi i64 [ %i.ph, %.lr.ph.i273 ], [ %indvars.iv.next.i276.prol, %.prol.preheader ]
  %i.pl = sub nsw i64 %i.ph, %wide.trip.count.i274
  %i.pm = icmp ugt i64 %i.pl, -4
  br i1 %i.pm, label %._crit_edge.i.loopexit, label %.lr.ph.i273.new

.lr.ph.i273.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i273.new
  %indvars.iv.i275 = phi i64 [ %indvars.iv.next.i276.3, %.lr.ph.i273.new ], [ %indvars.iv.i275.unr, %.prol.loopexit ] ; 5 uses
  %i.pn = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %indvars.iv.i275
  store i8 45, ptr %i.po, align 1, !tbaa !71
  %i.pp = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.pq = getelementptr i8, ptr %i.pp, i64 %indvars.iv.i275
  %i.pr = getelementptr i8, ptr %i.pq, i64 1
  store i8 45, ptr %i.pr, align 1, !tbaa !71
  %i.ps = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.pt = getelementptr i8, ptr %i.ps, i64 %indvars.iv.i275
  %i.pu = getelementptr i8, ptr %i.pt, i64 2
  store i8 45, ptr %i.pu, align 1, !tbaa !71
  %i.pv = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.pw = getelementptr i8, ptr %i.pv, i64 %indvars.iv.i275
  %i.px = getelementptr i8, ptr %i.pw, i64 3
  store i8 45, ptr %i.px, align 1, !tbaa !71
  %indvars.iv.next.i276.3 = add nsw i64 %indvars.iv.i275, 4 ; 2 uses
  %exitcond.not.i277.3 = icmp eq i64 %indvars.iv.next.i276.3, %wide.trip.count.i274
  br i1 %exitcond.not.i277.3, label %._crit_edge.i.loopexit, label %.lr.ph.i273.new, !llvm.loop !156

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i273.new, %.prol.loopexit
  %.val191.pre.pre = load ptr, ptr %i.oo, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i272
  %.val191.pre = phi ptr [ %.val191.pre.pre, %._crit_edge.i.loopexit ], [ %.val191.pre454, %Vec_StrGrow.exit.i272 ]
  store i32 %i.ou, ptr %i.oq, align 4, !tbaa !84
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.ds, %._crit_edge.i
  %.val191 = phi ptr [ %i.op, %bb.ds ], [ %.val191.pre, %._crit_edge.i ]
  %i.py = sext i32 %i.ot to i64                   ; 3 uses
  %i.pz = getelementptr inbounds i8, ptr %.val191, i64 %i.py
  store i8 32, ptr %i.pz, align 1, !tbaa !71
  %i.qa = add i32 %i.or, %4
  %i.qb = select i1 %.not169, i8 49, i8 48
  %.val190 = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.qc = sext i32 %i.qa to i64
  %i.qd = getelementptr inbounds i8, ptr %.val190, i64 %i.qc
  store i8 %i.qb, ptr %i.qd, align 1, !tbaa !71
  %.val189 = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.qe = getelementptr i8, ptr %.val189, i64 %i.py
  %i.qf = getelementptr i8, ptr %i.qe, i64 2
  store i8 10, ptr %i.qf, align 1, !tbaa !71
  %.val188 = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.qg = getelementptr i8, ptr %.val188, i64 %i.py
  %i.qh = getelementptr i8, ptr %i.qg, i64 3
  store i8 0, ptr %i.qh, align 1, !tbaa !71
  store i32 0, ptr %i.az, align 4, !tbaa !30
  %.val = load i32, ptr %i.as, align 4, !tbaa !30 ; 2 uses
  %i.qi = icmp sgt i32 %.val, 0
  %.val182.pre = load ptr, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  br i1 %i.qi, label %.lr.ph368, label %.critedge4

.lr.ph368:                                        ; preds = %Vec_StrFillExtra.exit
  %.val179 = load ptr, ptr %i.ax, align 8, !tbaa !31
  %.val178 = load ptr, ptr %i.aq, align 8, !tbaa !31
  %.promoted371 = load i32, ptr %i.ay, align 8, !tbaa !45
  %wide.trip.count427 = zext nneg i32 %.val to i64
  br label %bb.ed

bb.ed:                                            ; preds = %.lr.ph368, %Vec_IntPush.exit288
  %indvars.iv422 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next423, %Vec_IntPush.exit288 ] ; 2 uses
  %indvars.iv420 = phi i64 [ 0, %.lr.ph368 ], [ %indvars.iv.next421, %Vec_IntPush.exit288 ] ; 7 uses
  %storemerge313375 = phi ptr [ %.val182.pre, %.lr.ph368 ], [ %storemerge313376, %Vec_IntPush.exit288 ] ; 6 uses
  %spec.select.sink.i285373 = phi i32 [ %.promoted371, %.lr.ph368 ], [ %spec.select.sink.i285372, %Vec_IntPush.exit288 ] ; 3 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %.val179, i64 %indvars.iv422
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !32 ; 3 uses
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %.val178, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !32 ; 2 uses
  store i32 %i.qn, ptr %i.c, align 4, !tbaa !32
  %i.qo = xor i32 %i.qn, 1
  %i.qp = trunc nsw i64 %indvars.iv420 to i32
  %i.qq = icmp eq i32 %spec.select.sink.i285373, %i.qp
  br i1 %i.qq, label %bb.ee, label %Vec_IntPush.exit288

bb.ee:                                            ; preds = %bb.ed
  %i.qr = icmp samesign ult i64 %indvars.iv420, 16
  br i1 %i.qr, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %.not9.i.i286 = icmp eq ptr %storemerge313375, null
  br i1 %.not9.i.i286, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.qs = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge313375, i64 noundef 64) #16
  br label %Vec_IntPush.exit288

bb.eh:                                            ; preds = %bb.ef
  %i.qt = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit288

bb.ei:                                            ; preds = %bb.ee
  %i.qu = icmp samesign ult i64 %indvars.iv420, 1073741823
  %indvars.iv420.tr = trunc nsw i64 %indvars.iv420 to i32
  %i.qv = shl nsw i32 %indvars.iv420.tr, 1
  %spec.select.i281 = select i1 %i.qu, i32 %i.qv, i32 2147483647 ; 4 uses
  %i.qw = sext i32 %spec.select.i281 to i64
  %.not.i9.i282 = icmp samesign ult i64 %indvars.iv420, %i.qw
  br i1 %.not.i9.i282, label %bb.ej, label %Vec_IntPush.exit288

bb.ej:                                            ; preds = %bb.ei
  %.not9.i10.i283 = icmp eq ptr %storemerge313375, null
  %i.qx = zext nneg i32 %spec.select.i281 to i64
  %i.qy = shl nuw nsw i64 %i.qx, 2                ; 2 uses
  br i1 %.not9.i10.i283, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qz = call ptr @realloc(ptr noundef nonnull %storemerge313375, i64 noundef %i.qy) #16
  br label %Vec_IntPush.exit288

bb.el:                                            ; preds = %bb.ej
  %i.ra = call noalias ptr @malloc(i64 noundef %i.qy) #17
  br label %Vec_IntPush.exit288

Vec_IntPush.exit288:                              ; preds = %bb.eh, %bb.eg, %bb.el, %bb.ek, %bb.ed, %bb.ei
  %storemerge313376 = phi ptr [ %storemerge313375, %bb.ed ], [ %storemerge313375, %bb.ei ], [ %i.qt, %bb.eh ], [ %i.qs, %bb.eg ], [ %i.qz, %bb.ek ], [ %i.ra, %bb.el ] ; 4 uses
  %spec.select.sink.i285372 = phi i32 [ %spec.select.sink.i285373, %bb.ed ], [ %spec.select.sink.i285373, %bb.ei ], [ 16, %bb.eh ], [ 16, %bb.eg ], [ %spec.select.i281, %bb.ek ], [ %spec.select.i281, %bb.el ] ; 2 uses
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 3 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %storemerge313376, i64 %indvars.iv420
  store i32 %i.qo, ptr %i.rb, align 4, !tbaa !32
  %i.rc = xor i32 %i.qk, -1
  %i.rd = add i32 %i.ot, %i.rc
  %i.re = add nsw i32 %i.qk, %i.os
  %.sink513 = select i1 %.not, i32 %i.re, i32 %i.rd
  %i.rf = load i32, ptr %i.c, align 4, !tbaa !32
  %i.rg = trunc i32 %i.rf to i8
  %i.rh = and i8 %i.rg, 1
  %i.ri = sub nuw nsw i8 49, %i.rh
  %.val187 = load ptr, ptr %i.oo, align 8, !tbaa !64
  %i.rj = sext i32 %.sink513 to i64
  %i.rk = getelementptr inbounds i8, ptr %.val187, i64 %i.rj
  store i8 %i.ri, ptr %i.rk, align 1, !tbaa !71
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond428.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count427
  br i1 %exitcond428.not, label %..critedge4_crit_edge, label %bb.ed, !llvm.loop !166

..critedge4_crit_edge:                            ; preds = %Vec_IntPush.exit288
  %i.rl = trunc nsw i64 %indvars.iv.next421 to i32
  store i32 %i.rl, ptr %i.az, align 4, !tbaa !30
  store i32 %spec.select.sink.i285372, ptr %i.ay, align 8
  store ptr %storemerge313376, ptr %i.be, align 8
  br label %.critedge4

.critedge4:                                       ; preds = %..critedge4_crit_edge, %Vec_StrFillExtra.exit
  %.val184 = phi i64 [ %indvars.iv.next421, %..critedge4_crit_edge ], [ 0, %Vec_StrFillExtra.exit ]
  %.val182 = phi ptr [ %storemerge313376, %..critedge4_crit_edge ], [ %.val182.pre, %Vec_StrFillExtra.exit ] ; 2 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %.val182, i64 %.val184
  %i.rn = call i32 @sat_solver_addclause(ptr noundef %i.nz, ptr noundef %.val182, ptr noundef %i.rm) #18
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %.loopexit.sink.split, label %bb.em

bb.em:                                            ; preds = %.critedge4
  br i1 %.not169, label %bb.ci, label %.loopexit, !llvm.loop !167

.loopexit.sink.split:                             ; preds = %.critedge4, %bb.ct
  %.4.ph = phi i64 [ %.2, %bb.ct ], [ %.3, %.critedge4 ]
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv429
  store i32 1, ptr %i.rp, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.em, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.em ]
  %i.rq = load i32, ptr %i.e, align 8, !tbaa !32
  %i.rr = icmp ne i32 %i.rq, 0
  %i.rs = load i32, ptr %i.cu, align 4
  %i.rt = icmp ne i32 %i.rs, 0
  %or.cond = select i1 %i.rr, i1 true, i1 %i.rt
  br i1 %or.cond, label %.loopexit316, label %bb.en

bb.en:                                            ; preds = %.loopexit
  %i.ru = add nuw nsw i32 %.0156379, 1            ; 3 uses
  %i.rv = icmp slt i32 %i.ru, %5
  %i.rw = select i1 %i.jp, i1 true, i1 %i.rv
  br i1 %i.rw, label %.preheader, label %.loopexit316, !llvm.loop !168

.loopexit316:                                     ; preds = %.loopexit, %bb.en, %bb.ct, %bb.dr, %.loopexit322, %Vec_StrPush.exit243, %Vec_StrPush.exit243.1, %Vec_StrPush.exit
  %.1157 = phi i32 [ 0, %Vec_StrPush.exit243.1 ], [ 0, %Vec_StrPush.exit ], [ %.0156379, %bb.ct ], [ %i.hp, %Vec_StrPush.exit243 ], [ %i.cp, %.loopexit322 ], [ %.0156379, %bb.dr ], [ %i.ru, %bb.en ], [ %.0156379, %.loopexit ]
  %i.rx = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %.not.i289 = icmp eq ptr %i.rx, null
  br i1 %.not.i289, label %Vec_IntFree.exit, label %bb.eo

bb.eo:                                            ; preds = %.loopexit316
  call void @free(ptr noundef nonnull %i.rx) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit316, %bb.eo
  call void @free(ptr noundef nonnull %i.ae) #18
  %i.ry = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not.i290 = icmp eq ptr %i.ry, null
  br i1 %.not.i290, label %Vec_IntFree.exit291, label %bb.ep

bb.ep:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ry) #18
  br label %Vec_IntFree.exit291

Vec_IntFree.exit291:                              ; preds = %Vec_IntFree.exit, %bb.ep
  call void @free(ptr noundef nonnull %i.ak) #18
  %i.rz = load ptr, ptr %i.w, align 8, !tbaa !31  ; 2 uses
  %.not.i292 = icmp eq ptr %i.rz, null
  br i1 %.not.i292, label %Vec_IntFree.exit293, label %bb.eq

bb.eq:                                            ; preds = %Vec_IntFree.exit291
  call void @free(ptr noundef nonnull %i.rz) #18
  br label %Vec_IntFree.exit293

Vec_IntFree.exit293:                              ; preds = %Vec_IntFree.exit291, %bb.eq
  call void @free(ptr noundef nonnull %i.p) #18
  %i.sa = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %.not.i294 = icmp eq ptr %i.sa, null
  br i1 %.not.i294, label %Vec_IntFree.exit295, label %bb.er

bb.er:                                            ; preds = %Vec_IntFree.exit293
  call void @free(ptr noundef nonnull %i.sa) #18
  br label %Vec_IntFree.exit295

Vec_IntFree.exit295:                              ; preds = %Vec_IntFree.exit293, %bb.er
  call void @free(ptr noundef nonnull %i.x) #18
  %i.sb = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %.not.i296 = icmp eq ptr %i.sb, null
  br i1 %.not.i296, label %Vec_IntFree.exit297, label %bb.es

bb.es:                                            ; preds = %Vec_IntFree.exit295
  call void @free(ptr noundef nonnull %i.sb) #18
  br label %Vec_IntFree.exit297

Vec_IntFree.exit297:                              ; preds = %Vec_IntFree.exit295, %bb.es
  call void @free(ptr noundef nonnull %i.ar) #18
  %i.sc = load ptr, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %.not.i298 = icmp eq ptr %i.sc, null
  br i1 %.not.i298, label %Vec_IntFree.exit299, label %bb.et

bb.et:                                            ; preds = %Vec_IntFree.exit297
  call void @free(ptr noundef nonnull %i.sc) #18
  br label %Vec_IntFree.exit299

Vec_IntFree.exit299:                              ; preds = %Vec_IntFree.exit297, %bb.et
  call void @free(ptr noundef nonnull %i.ay) #18
  %i.sd = load i32, ptr %i.e, align 8, !tbaa !32
  %i.se = icmp ne i32 %i.sd, 0
  %i.sf = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.sg = load i32, ptr %i.sf, align 4            ; 2 uses
  %i.sh = icmp ne i32 %i.sg, 0
  %or.cond9 = select i1 %i.se, i1 true, i1 %i.sh
  br i1 %or.cond9, label %bb.eu, label %.thread

bb.eu:                                            ; preds = %Vec_IntFree.exit299
  %i.si = sext i32 %i.sg to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.si ; 2 uses
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !145 ; 6 uses
  store ptr null, ptr %i.sj, align 8, !tbaa !145
  %i.sl = icmp samesign ugt i32 %.1157, 1
  br i1 %i.sl, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.sm = getelementptr i8, ptr %i.sk, i64 4
  %.val193 = load i32, ptr %i.sm, align 4, !tbaa !84
  %i.sn = add nsw i32 %4, 3
  %i.so = sdiv i32 %.val193, %i.sn
  %i.sp = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.sk, i32 noundef %i.so, i32 noundef %4) ; 0 uses
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %.not174 = icmp eq i32 %9, 0
  br i1 %.not174, label %bb.fb, label %bb.ex

.thread:                                          ; preds = %Vec_IntFree.exit299
  %.not174305 = icmp eq i32 %9, 0
  br i1 %.not174305, label %bb.fb, label %.thread308

.thread308:                                       ; preds = %.thread
  %i.sq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %4) ; 0 uses
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.sr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %4) ; 0 uses
  %i.ss = icmp eq ptr %i.sk, null
  br i1 %i.ss, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %.thread308, %bb.ex
  %i.st = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %5) ; 0 uses
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.su = getelementptr i8, ptr %i.sk, i64 4
  %.0165.val = load i32, ptr %i.su, align 4, !tbaa !84
  %i.sv = add nsw i32 %4, 3
  %i.sw = sdiv i32 %.0165.val, %i.sv
  %i.sx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.sw) ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0165306310 = phi ptr [ %i.sk, %bb.ez ], [ null, %bb.ey ]
  %i.sy = load i64, ptr %i.d, align 16, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19)
  %i.sz = sitofp i64 %i.sy to double
end_hunk_8
begin_hunk_9_@Bmc_CollapseOne_int3:bb.a

bb.fe:                                            ; preds = %Vec_StrFreeP.exit
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !64 ; 2 uses
  %.not.i301 = icmp eq ptr %i.tu, null
  br i1 %.not.i301, label %bb.ff, label %.thread.i302

.thread.i302:                                     ; preds = %bb.fe
  call void @free(ptr noundef nonnull %i.tu) #18
  br label %bb.ff

bb.ff:                                            ; preds = %.thread.i302, %bb.fe
  call void @free(ptr noundef nonnull %i.tr) #18
  br label %Vec_StrFreeP.exit303

Vec_StrFreeP.exit303:                             ; preds = %Vec_StrFreeP.exit, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0548)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5549)
  ret ptr %.0165307
}

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne3(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Mf_ManGenerateCnf(ptr noundef %0, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18 ; 5 uses
  %i.b = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.c = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.d = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.e = tail call ptr @Cnf_DataWriteIntoSolver(ptr noundef %i.a, i32 noundef 1, i32 noundef 0) #18 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.g = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !30
  %i.h = tail call ptr @Bmc_CollapseOne_int3(ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %.val.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @sat_solver_delete(ptr noundef %i.b) #18
  tail call void @sat_solver_delete(ptr noundef %i.c) #18
  tail call void @sat_solver_delete(ptr noundef %i.d) #18
  tail call void @sat_solver_delete(ptr noundef %i.e) #18
  tail call void @Cnf_DataFree(ptr noundef %i.a) #18
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne_int2(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %i.b = alloca [2 x ptr], align 16               ; 9 uses
  %i.c = alloca [2 x i32], align 4                ; 11 uses
  %i.d = alloca [2 x [2 x i64]], align 16         ; 11 uses
  %i.e = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %0, ptr %i.a, align 16, !tbaa !126
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.f, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 13 uses
  store i32 0, ptr %i.h, align 4, !tbaa !84
  store i32 1000, ptr %i.g, align 8, !tbaa !125
  %i.i = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 15 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !64
  store ptr %i.g, ptr %i.b, align 16, !tbaa !145
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !84
  store i32 1000, ptr %i.l, align 8, !tbaa !125
  %i.n = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !64
  store ptr %i.l, ptr %i.k, align 8, !tbaa !145
  %i.p = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.q = tail call i32 @llvm.umax.i32(i32 %2, i32 15)
  %spec.store.select.i = add nsw i32 %i.q, 1      ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  store i32 0, ptr %i.r, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.p, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 4 uses
  %indvars.iv377.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv377.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %indvars.iv377.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %indvars.iv377.sroa.gep466 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = sext i32 %spec.store.select.i to i64
  %i.t = shl nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted307 = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr %.promoted307, ptr %i.v, align 8, !tbaa !31
  %i.w = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.w, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit177, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.y = sext i32 %spec.store.select.i to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.z) #17
  br label %Vec_IntAlloc.exit177

Vec_IntAlloc.exit177:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !31
  %i.ad = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ad, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit181, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit177
  %i.af = sext i32 %spec.store.select.i to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ag) #17
  br label %Vec_IntAlloc.exit181

Vec_IntAlloc.exit181:                             ; preds = %Vec_IntAlloc.exit177, %bb.d
  %i.ai = phi ptr [ %i.ah, %bb.d ], [ null, %Vec_IntAlloc.exit177 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !31
  %i.ak = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 4 uses
  store i32 0, ptr %i.al, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ak, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit185, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit181
  %i.am = sext i32 %spec.store.select.i to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #17
  br label %Vec_IntAlloc.exit185

Vec_IntAlloc.exit185:                             ; preds = %Vec_IntAlloc.exit181, %bb.e
  %i.ap = phi ptr [ %i.ao, %bb.e ], [ null, %Vec_IntAlloc.exit181 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8
  %.not = icmp eq i32 %6, 0                       ; 2 uses
  %i.ar = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %.not, label %.preheader279, label %.preheader281

.preheader281:                                    ; preds = %Vec_IntAlloc.exit185
  br i1 %i.ar, label %.lr.ph, label %.loopexit280

.preheader279:                                    ; preds = %Vec_IntAlloc.exit185
  br i1 %i.ar, label %.lr.ph301, label %.loopexit280

.lr.ph:                                           ; preds = %.preheader281, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader281 ] ; 7 uses
  %storemerge298 = phi ptr [ %storemerge299, %Vec_IntPush.exit ], [ %.promoted307, %.preheader281 ] ; 6 uses
  %spec.select.sink.i296 = phi i32 [ %spec.select.sink.i295, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader281 ] ; 3 uses
  %.0140.in293 = phi i32 [ %.0140, %Vec_IntPush.exit ], [ %2, %.preheader281 ] ; 3 uses
  %.0140 = add nsw i32 %.0140.in293, -1
  %i.as = add nuw nsw i32 %.0140.in293, 2
  %i.at = trunc nsw i64 %indvars.iv to i32
  %i.au = icmp eq i32 %spec.select.sink.i296, %i.at
  br i1 %i.au, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph
  %i.av = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.av, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge298, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge298, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.ay = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.az = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.ay, i32 %i.az, i32 2147483647 ; 4 uses
  %i.ba = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ba
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge298, null
  %i.bb = zext nneg i32 %spec.select.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %storemerge298, i64 noundef %i.bc) #16
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bc) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.lr.ph, %bb.j
  %storemerge299 = phi ptr [ %storemerge298, %.lr.ph ], [ %storemerge298, %bb.j ], [ %i.ax, %bb.i ], [ %i.aw, %bb.h ], [ %i.bd, %bb.l ], [ %i.be, %bb.m ] ; 3 uses
  %spec.select.sink.i295 = phi i32 [ %spec.select.sink.i296, %.lr.ph ], [ %spec.select.sink.i296, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %storemerge299, i64 %indvars.iv
  store i32 %i.as, ptr %i.bf, align 4, !tbaa !32
  %i.bg = icmp samesign ugt i32 %.0140.in293, 1
  br i1 %i.bg, label %.lr.ph, label %.loopexit280.sink.split, !llvm.loop !169

.lr.ph301:                                        ; preds = %.preheader279, %Vec_IntPush.exit193
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %Vec_IntPush.exit193 ], [ 0, %.preheader279 ] ; 7 uses
  %storemerge274308 = phi ptr [ %storemerge274309, %Vec_IntPush.exit193 ], [ %.promoted307, %.preheader279 ] ; 6 uses
  %spec.select.sink.i190306 = phi i32 [ %spec.select.sink.i190305, %Vec_IntPush.exit193 ], [ %spec.store.select.i, %.preheader279 ] ; 3 uses
  %.1141300 = phi i32 [ %i.bv, %Vec_IntPush.exit193 ], [ 0, %.preheader279 ] ; 2 uses
  %i.bh = add nuw nsw i32 %.1141300, 3
  %i.bi = trunc nsw i64 %indvars.iv354 to i32
  %i.bj = icmp eq i32 %spec.select.sink.i190306, %i.bi
  br i1 %i.bj, label %bb.n, label %Vec_IntPush.exit193

bb.n:                                             ; preds = %.lr.ph301
  %i.bk = icmp samesign ult i64 %indvars.iv354, 16
  br i1 %i.bk, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i191 = icmp eq ptr %storemerge274308, null
  br i1 %.not9.i.i191, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge274308, i64 noundef 64) #16
  br label %Vec_IntPush.exit193

bb.q:                                             ; preds = %bb.o
  %i.bm = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit193

bb.r:                                             ; preds = %bb.n
  %i.bn = icmp samesign ult i64 %indvars.iv354, 1073741823
  %indvars.iv354.tr = trunc nsw i64 %indvars.iv354 to i32
  %i.bo = shl nsw i32 %indvars.iv354.tr, 1
  %spec.select.i186 = select i1 %i.bn, i32 %i.bo, i32 2147483647 ; 4 uses
  %i.bp = sext i32 %spec.select.i186 to i64
  %.not.i9.i187 = icmp samesign ult i64 %indvars.iv354, %i.bp
  br i1 %.not.i9.i187, label %bb.s, label %Vec_IntPush.exit193

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i188 = icmp eq ptr %storemerge274308, null
  %i.bq = zext nneg i32 %spec.select.i186 to i64
  %i.br = shl nuw nsw i64 %i.bq, 2                ; 2 uses
  br i1 %.not9.i10.i188, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %storemerge274308, i64 noundef %i.br) #16
  br label %Vec_IntPush.exit193

bb.u:                                             ; preds = %bb.s
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #17
  br label %Vec_IntPush.exit193

Vec_IntPush.exit193:                              ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph301, %bb.r
  %storemerge274309 = phi ptr [ %storemerge274308, %.lr.ph301 ], [ %storemerge274308, %bb.r ], [ %i.bm, %bb.q ], [ %i.bl, %bb.p ], [ %i.bs, %bb.t ], [ %i.bt, %bb.u ] ; 3 uses
  %spec.select.sink.i190305 = phi i32 [ %spec.select.sink.i190306, %.lr.ph301 ], [ %spec.select.sink.i190306, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i186, %bb.t ], [ %spec.select.i186, %bb.u ] ; 2 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %storemerge274309, i64 %indvars.iv354
  store i32 %i.bh, ptr %i.bu, align 4, !tbaa !32
  %i.bv = add nuw nsw i32 %.1141300, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bv, %2
  br i1 %exitcond.not, label %.loopexit280.sink.split, label %.lr.ph301, !llvm.loop !170

.loopexit280.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit193
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next355, %Vec_IntPush.exit193 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i295.lcssa.sink = phi i32 [ %spec.select.sink.i190305, %Vec_IntPush.exit193 ], [ %spec.select.sink.i295, %Vec_IntPush.exit ]
  %storemerge299.lcssa.sink = phi ptr [ %storemerge274309, %Vec_IntPush.exit193 ], [ %storemerge299, %Vec_IntPush.exit ]
  %i.bw = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !30
  store i32 %spec.select.sink.i295.lcssa.sink, ptr %i.p, align 8
  store ptr %storemerge299.lcssa.sink, ptr %i.v, align 8
  br label %.loopexit280

.loopexit280:                                     ; preds = %.loopexit280.sink.split, %.preheader281, %.preheader279
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  %i.by = sext i32 %4 to i64                      ; 2 uses
  store i32 4, ptr %i.c, align 4, !tbaa !32
  %i.bz = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.bz, label %bb.ax [
    i32 0, label %.loopexit275
    i32 -1, label %.lr.ph.i
  ]

.preheader.lr.ph:                                 ; preds = %Vec_StrPush.exit206.1
  %.not149 = icmp eq i32 %7, 0                    ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  br label %.preheader

.lr.ph.i:                                         ; preds = %Vec_StrPush.exit206, %.loopexit280
  %.not154 = phi ptr [ @.str.13, %.loopexit280 ], [ @.str.12, %Vec_StrPush.exit206 ] ; 3 uses
  store i32 0, ptr %i.h, align 4, !tbaa !84
  %i.cf = load i8, ptr %.not154, align 1, !tbaa !71
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !125
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !64  ; 3 uses
  br i1 %i.ch, label %bb.v, label %Vec_StrPush.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.ci, i64 noundef 16) #16
  %.pre9.i.pre = load i32, ptr %i.h, align 4, !tbaa !84
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.ck = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.x, %bb.w
  %.pre9.i = phi i32 [ 0, %bb.x ], [ %.pre9.i.pre, %bb.w ]
  %i.cl = phi ptr [ %i.ck, %bb.x ], [ %i.cj, %bb.w ] ; 2 uses
  store ptr %i.cl, ptr %i.j, align 8, !tbaa !64
  store i32 16, ptr %i.g, align 8, !tbaa !125
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.cm = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cn = phi ptr [ %i.cl, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.ci, %.lr.ph.i ]
  %i.co = add nsw i32 %i.cm, 1
  store i32 %i.co, ptr %i.h, align 4, !tbaa !84
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp
  store i8 %i.cf, ptr %i.cq, align 1, !tbaa !71
  %i.cr = getelementptr inbounds nuw i8, ptr %.not154, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !71
  %i.ct = load i32, ptr %i.h, align 4, !tbaa !84  ; 7 uses
  %i.cu = load i32, ptr %i.g, align 8, !tbaa !125
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.y, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.j, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.1

bb.y:                                             ; preds = %Vec_StrPush.exit.i
  %i.cw = icmp slt i32 %i.ct, 16
  br i1 %i.cw, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp samesign ult i32 %i.ct, 1073741823
  %i.cy = shl nuw nsw i32 %i.ct, 1
  %spec.select.i.i.1 = select i1 %i.cx, i32 %i.cy, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.ct, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.j, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.aa, label %Vec_StrPush.exit.i.1

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.cz = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.cz) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ac:                                            ; preds = %bb.aa
  %i.db = call noalias ptr @malloc(i64 noundef %i.cz) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ad:                                            ; preds = %bb.y
  %i.dc = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.dc, null
  br i1 %.not9.i.i.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dc, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.af:                                            ; preds = %bb.ad
  %i.de = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %i.df = phi ptr [ %i.de, %bb.af ], [ %i.dd, %bb.ae ], [ %i.da, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i.1, %bb.ab ], [ %spec.select.i.i.1, %bb.ac ]
  store ptr %i.df, ptr %i.j, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i.1, ptr %i.g, align 8, !tbaa !125
  %.pre9.i.1 = load i32, ptr %i.h, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.z, %.Vec_StrPush.exit_crit_edge.i.1
  %i.dg = phi i32 [ %i.ct, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.ct, %bb.z ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.dh = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.z ], [ %i.df, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.di = add nsw i32 %i.dg, 1
  store i32 %i.di, ptr %i.h, align 4, !tbaa !84
  %i.dj = sext i32 %i.dg to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %i.dj
  store i8 %i.cs, ptr %i.dk, align 1, !tbaa !71
  %i.dl = getelementptr inbounds nuw i8, ptr %.not154, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !71
  %i.dn = load i32, ptr %i.h, align 4, !tbaa !84  ; 7 uses
  %i.do = load i32, ptr %i.g, align 8, !tbaa !125
  %i.dp = icmp eq i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.ag, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.j, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.2

bb.ag:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.dq = icmp slt i32 %i.dn, 16
  br i1 %i.dq, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = icmp samesign ult i32 %i.dn, 1073741823
  %i.ds = shl nuw nsw i32 %i.dn, 1
  %spec.select.i.i.2 = select i1 %i.dr, i32 %i.ds, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.dn, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.j, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ai, label %Vec_StrPush.exit.i.2

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.dt = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.du = call ptr @realloc(ptr noundef nonnull %.pre8.i.2, i64 noundef %i.dt) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.ak:                                            ; preds = %bb.ai
  %i.dv = call noalias ptr @malloc(i64 noundef %i.dt) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.al:                                            ; preds = %bb.ag
  %i.dw = load ptr, ptr %i.j, align 8, !tbaa !64  ; 2 uses
  %.not9.i.i.i.2 = icmp eq ptr %i.dw, null
  br i1 %.not9.i.i.i.2, label %bb.an, label %bb.am
end_hunk_9
begin_hunk_10_@Bmc_CollapseOne_int2:bb.a
  %.0334 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.di ]
  %.0138333 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.oh, %bb.di ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  br i1 %.not150, label %bb.br, label %.loopexit, !llvm.loop !171

bb.br:                                            ; preds = %.preheader, %bb.bq
  %.not150 = phi i1 [ true, %.preheader ], [ false, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep457, %bb.bq ] ; 2 uses
  %indvars.iv377.sroa.phi458 = phi ptr [ %i.d, %.preheader ], [ %indvars.iv377.sroa.gep460, %bb.bq ]
  %indvars.iv377.sroa.phi461 = phi ptr [ %i.b, %.preheader ], [ %indvars.iv377.sroa.gep463, %bb.bq ]
  %indvars.iv377.sroa.phi464 = phi ptr [ %i.a, %.preheader ], [ %indvars.iv377.sroa.gep466, %bb.bq ]
  %indvars.iv377 = phi i64 [ 0, %.preheader ], [ 1, %bb.bq ] ; 3 uses
  %.1332 = phi i64 [ %.0334, %.preheader ], [ %.3, %bb.bq ]
  br i1 %.not149, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.ha = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #18
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hc = load i64, ptr %11, align 8, !tbaa !150
  %i.hd = mul nsw i64 %i.hc, 1000000
  %i.he = load i64, ptr %i.ca, align 8, !tbaa !152
  %i.hf = sdiv i64 %i.he, 1000
  %i.hg = add nsw i64 %i.hf, %i.hd
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hg, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1332, %bb.br ] ; 3 uses
  %i.hh = load ptr, ptr %indvars.iv377.sroa.phi464, align 8, !tbaa !126 ; 4 uses
  %.val162 = load ptr, ptr %i.v, align 8, !tbaa !31 ; 6 uses
  %.val157 = load i32, ptr %i.r, align 4, !tbaa !30 ; 4 uses
  %i.hi = icmp sgt i32 %.val157, 0                ; 2 uses
  br i1 %i.hi, label %.lr.ph.i207, label %sat_solver_clean_polarity.exit

.lr.ph.i207:                                      ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 216 ; 5 uses
  %wide.trip.count.i208 = zext nneg i32 %.val157 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i208, 3    ; 3 uses
  %i.hk = icmp ult i32 %.val157, 4
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph.i207.new

.lr.ph.i207.new:                                  ; preds = %.lr.ph.i207
  %unroll_iter = and i64 %wide.trip.count.i208, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i207.new
  %indvars.iv.i209 = phi i64 [ 0, %.lr.ph.i207.new ], [ %indvars.iv.next.i210.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i207.new ], [ %niter.next.3, %bb.bv ]
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !32
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %i.ho
  store i8 0, ptr %i.hp, align 1, !tbaa !71
  %i.hq = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !32
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 %i.hu
  store i8 0, ptr %i.hv, align 1, !tbaa !71
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !32
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds i8, ptr %i.hw, i64 %i.ia
  store i8 0, ptr %i.ib, align 1, !tbaa !71
  %i.ic = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !32
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds i8, ptr %i.ic, i64 %i.ig
  store i8 0, ptr %i.ih, align 1, !tbaa !71
  %indvars.iv.next.i210.3 = add nuw nsw i64 %indvars.iv.i209, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !136

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i207
  %indvars.iv.i209.epil.init = phi i64 [ 0, %.lr.ph.i207 ], [ %indvars.iv.next.i210.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod454 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod454)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i209.epil = phi i64 [ %indvars.iv.i209.epil.init, %.epil.preheader ], [ %indvars.iv.next.i210.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.ii = load ptr, ptr %i.hj, align 8, !tbaa !135
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv.i209.epil
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !32
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.ii, i64 %i.il
  store i8 0, ptr %i.im, align 1, !tbaa !71
  %indvars.iv.next.i210.epil = add nuw nsw i64 %indvars.iv.i209.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !172

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv377
  %i.io = load i32, ptr %i.in, align 4, !tbaa !32
  %i.ip = shl nsw i32 %i.io, 1                    ; 2 uses
  %i.iq = or disjoint i32 %i.ip, 1
  store i32 %i.iq, ptr %i.c, align 4, !tbaa !32
  %i.ir = call i32 @sat_solver_solve(ptr noundef %i.hh, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not149, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.is = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.it = icmp slt i32 %i.is, 0
  br i1 %i.it, label %Abc_Clock.exit213, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iu = load i64, ptr %10, align 8, !tbaa !150
  %i.iv = mul nsw i64 %i.iu, 1000000
  %i.iw = load i64, ptr %i.cb, align 8, !tbaa !152
  %i.ix = sdiv i64 %i.iw, 1000
  %i.iy = add nsw i64 %i.ix, %i.iv
  br label %Abc_Clock.exit213

Abc_Clock.exit213:                                ; preds = %bb.bx, %bb.by
  %.0.i212 = phi i64 [ %i.iy, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.iz = sub i64 %.0.i212, %.2
  %i.ja = load i64, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !37
  %i.jb = add nsw i64 %i.iz, %i.ja
  store i64 %i.jb, ptr %indvars.iv377.sroa.phi, align 16, !tbaa !37
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit213, %sat_solver_clean_polarity.exit
  switch i32 %i.ir, label %bb.ca [
    i32 0, label %.loopexit275
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.x, align 4, !tbaa !30
  br i1 %i.hi, label %.lr.ph312, label %.critedge

.lr.ph312:                                        ; preds = %bb.ca
  %i.jc = getelementptr i8, ptr %i.hh, i64 328
  %.promoted315 = load i32, ptr %i.w, align 8, !tbaa !45
  %.promoted318 = load ptr, ptr %i.ac, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val157 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph312, %Vec_IntPush.exit221
  %indvars.iv362 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next363, %Vec_IntPush.exit221 ] ; 2 uses
  %indvars.iv360 = phi i64 [ 0, %.lr.ph312 ], [ %indvars.iv.next361, %Vec_IntPush.exit221 ] ; 7 uses
  %storemerge273319 = phi ptr [ %.promoted318, %.lr.ph312 ], [ %storemerge273320, %Vec_IntPush.exit221 ] ; 6 uses
  %spec.select.sink.i218317 = phi i32 [ %.promoted315, %.lr.ph312 ], [ %spec.select.sink.i218316, %Vec_IntPush.exit221 ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.val162, i64 %indvars.iv362
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !32 ; 2 uses
  %.val171 = load ptr, ptr %i.jc, align 8, !tbaa !138
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %.val171, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !32
  %i.ji = icmp ne i32 %i.jh, 1
  %i.jj = zext i1 %i.ji to i32
  %i.jk = shl nsw i32 %i.je, 1
  %i.jl = or disjoint i32 %i.jk, %i.jj
  %i.jm = trunc nsw i64 %indvars.iv360 to i32
  %i.jn = icmp eq i32 %spec.select.sink.i218317, %i.jm
  br i1 %i.jn, label %bb.cc, label %Vec_IntPush.exit221

bb.cc:                                            ; preds = %bb.cb
  %i.jo = icmp samesign ult i64 %indvars.iv360, 16
  br i1 %i.jo, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i219 = icmp eq ptr %storemerge273319, null
  br i1 %.not9.i.i219, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jp = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef 64) #16
  br label %Vec_IntPush.exit221

bb.cf:                                            ; preds = %bb.cd
  %i.jq = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit221

bb.cg:                                            ; preds = %bb.cc
  %i.jr = icmp samesign ult i64 %indvars.iv360, 1073741823
  %indvars.iv360.tr = trunc nsw i64 %indvars.iv360 to i32
  %i.js = shl nsw i32 %indvars.iv360.tr, 1
  %spec.select.i214 = select i1 %i.jr, i32 %i.js, i32 2147483647 ; 4 uses
  %i.jt = sext i32 %spec.select.i214 to i64
  %.not.i9.i215 = icmp samesign ult i64 %indvars.iv360, %i.jt
  br i1 %.not.i9.i215, label %bb.ch, label %Vec_IntPush.exit221

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i216 = icmp eq ptr %storemerge273319, null
  %i.ju = zext nneg i32 %spec.select.i214 to i64
  %i.jv = shl nuw nsw i64 %i.ju, 2                ; 2 uses
  br i1 %.not9.i10.i216, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jw = call ptr @realloc(ptr noundef nonnull %storemerge273319, i64 noundef %i.jv) #16
  br label %Vec_IntPush.exit221

bb.cj:                                            ; preds = %bb.ch
  %i.jx = call noalias ptr @malloc(i64 noundef %i.jv) #17
  br label %Vec_IntPush.exit221

Vec_IntPush.exit221:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge273320 = phi ptr [ %storemerge273319, %bb.cb ], [ %storemerge273319, %bb.cg ], [ %i.jq, %bb.cf ], [ %i.jp, %bb.ce ], [ %i.jw, %bb.ci ], [ %i.jx, %bb.cj ] ; 3 uses
  %spec.select.sink.i218316 = phi i32 [ %spec.select.sink.i218317, %bb.cb ], [ %spec.select.sink.i218317, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i214, %bb.ci ], [ %spec.select.i214, %bb.cj ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %storemerge273320, i64 %indvars.iv360
  store i32 %i.jl, ptr %i.jy, align 4, !tbaa !32
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond367.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count
  br i1 %exitcond367.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !173

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit221
  %i.jz = trunc nsw i64 %indvars.iv.next361 to i32
  store i32 %i.jz, ptr %i.x, align 4, !tbaa !30
  store i32 %spec.select.sink.i218316, ptr %i.w, align 8
  store ptr %storemerge273320, ptr %i.ac, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not149, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ka = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.kb = icmp slt i32 %i.ka, 0
  br i1 %i.kb, label %Abc_Clock.exit223, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kc = load i64, ptr %9, align 8, !tbaa !150
  %i.kd = mul nsw i64 %i.kc, 1000000
  %i.ke = load i64, ptr %i.cc, align 8, !tbaa !152
  %i.kf = sdiv i64 %i.ke, 1000
  %i.kg = add nsw i64 %i.kf, %i.kd
  br label %Abc_Clock.exit223

Abc_Clock.exit223:                                ; preds = %bb.ck, %bb.cl
  %.0.i222 = phi i64 [ %i.kg, %bb.cl ], [ -1, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.cm

bb.cm:                                            ; preds = %Abc_Clock.exit223, %.critedge
  %.3 = phi i64 [ %.0.i222, %Abc_Clock.exit223 ], [ %.2, %.critedge ] ; 4 uses
  %i.kh = xor i64 %indvars.iv377, 1
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !126
  %i.kk = call i32 @Bmc_CollapseExpand(ptr noundef %i.kj, ptr noundef null, ptr noundef nonnull %i.w, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ak, i32 noundef %4, i32 noundef %5, i32 noundef -1)
  br i1 %.not149, label %bb.cp, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.kl = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %Abc_Clock.exit225, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kn = load i64, ptr %8, align 8, !tbaa !150
  %i.ko = mul nsw i64 %i.kn, 1000000
  %i.kp = load i64, ptr %i.cd, align 8, !tbaa !152
  %i.kq = sdiv i64 %i.kp, 1000
  %i.kr = add nsw i64 %i.kq, %i.ko
  br label %Abc_Clock.exit225

Abc_Clock.exit225:                                ; preds = %bb.cn, %bb.co
  %.0.i224 = phi i64 [ %i.kr, %bb.co ], [ -1, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ks = sub i64 %.0.i224, %.3
  %i.kt = getelementptr inbounds nuw i8, ptr %indvars.iv377.sroa.phi458, i64 8 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !37
  %i.kv = add nsw i64 %i.ks, %i.ku
  store i64 %i.kv, ptr %i.kt, align 8, !tbaa !37
  br label %bb.cp

bb.cp:                                            ; preds = %Abc_Clock.exit225, %bb.cm
  %i.kw = icmp slt i32 %i.kk, 0
  br i1 %i.kw, label %.loopexit275, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.kx = load ptr, ptr %indvars.iv377.sroa.phi461, align 8, !tbaa !145 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 12 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !64 ; 8 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 4 ; 4 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !84 ; 3 uses
  %i.lc = add nsw i32 %i.lb, -1                   ; 6 uses
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !84
  %i.ld = add nsw i32 %i.lc, %2                   ; 3 uses
  %i.le = add nsw i32 %i.ld, 4                    ; 9 uses
  %.not.i226.not = icmp slt i32 %i.le, %i.lb
  br i1 %.not.i226.not, label %Vec_StrFillExtra.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lf = load i32, ptr %i.kx, align 8, !tbaa !125 ; 4 uses
  %i.lg = shl nsw i32 %i.lf, 1                    ; 2 uses
  %i.lh = icmp sgt i32 %i.le, %i.lg
  %.not.i.i = icmp slt i32 %i.lf, %i.le           ; 2 uses
  br i1 %i.lh, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  br i1 %.not.i.i, label %bb.ct, label %Vec_StrGrow.exit.i227

bb.ct:                                            ; preds = %bb.cs
  %.not9.i.i235 = icmp eq ptr %i.kz, null
  %i.li = sext i32 %i.le to i64                   ; 2 uses
  br i1 %.not9.i.i235, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lj = call ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef %i.li) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.ct
  %i.lk = call noalias ptr @malloc(i64 noundef %i.li) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cw:                                            ; preds = %bb.cr
  br i1 %.not.i.i, label %bb.cx, label %Vec_StrGrow.exit.i227

bb.cx:                                            ; preds = %bb.cw
  %i.ll = icmp slt i32 %i.lf, 1073741823
  %spec.select.i233 = select i1 %i.ll, i32 %i.lg, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.lf, %spec.select.i233
  br i1 %.not.i22.i, label %bb.cy, label %Vec_StrGrow.exit.i227

bb.cy:                                            ; preds = %bb.cx
  %.not9.i23.i = icmp eq ptr %i.kz, null
  %i.lm = sext i32 %spec.select.i233 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ln = call ptr @realloc(ptr noundef nonnull %i.kz, i64 noundef %i.lm) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.da:                                            ; preds = %bb.cy
  %i.lo = call noalias ptr @malloc(i64 noundef %i.lm) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cz, %bb.da, %bb.cu, %bb.cv
  %storemerge271 = phi ptr [ %i.lk, %bb.cv ], [ %i.lj, %bb.cu ], [ %i.ln, %bb.cz ], [ %i.lo, %bb.da ] ; 2 uses
  %spec.select.sink.i234 = phi i32 [ %i.le, %bb.cv ], [ %i.le, %bb.cu ], [ %spec.select.i233, %bb.cz ], [ %spec.select.i233, %bb.da ]
  store ptr %storemerge271, ptr %i.ky, align 8, !tbaa !64
  store i32 %spec.select.sink.i234, ptr %i.kx, align 8, !tbaa !125
  %.pre385 = load i32, ptr %i.la, align 4, !tbaa !84
  br label %Vec_StrGrow.exit.i227

Vec_StrGrow.exit.i227:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cx, %bb.cw, %bb.cs
  %.val170.pre391 = phi ptr [ %storemerge271, %Vec_StrGrow.exit.sink.split.i ], [ %i.kz, %bb.cx ], [ %i.kz, %bb.cw ], [ %i.kz, %bb.cs ]
  %i.lp = phi i32 [ %.pre385, %Vec_StrGrow.exit.sink.split.i ], [ %i.lc, %bb.cx ], [ %i.lc, %bb.cw ], [ %i.lc, %bb.cs ] ; 2 uses
  %i.lq = icmp slt i32 %i.lp, %i.le
  br i1 %i.lq, label %.lr.ph.i228, label %._crit_edge.i

.lr.ph.i228:                                      ; preds = %Vec_StrGrow.exit.i227
  %i.lr = sext i32 %i.lp to i64                   ; 4 uses
  %wide.trip.count.i229 = sext i32 %i.le to i64   ; 3 uses
  %i.ls = sub nsw i64 %wide.trip.count.i229, %i.lr
  %xtraiter455 = and i64 %i.ls, 3                 ; 2 uses
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod456.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i228, %.prol.preheader
  %indvars.iv.i230.prol = phi i64 [ %indvars.iv.next.i231.prol, %.prol.preheader ], [ %i.lr, %.lr.ph.i228 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i228 ]
  %i.lt = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 %indvars.iv.i230.prol
  store i8 45, ptr %i.lu, align 1, !tbaa !71
  %indvars.iv.next.i231.prol = add nsw i64 %indvars.iv.i230.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter455
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !174

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i228
  %indvars.iv.i230.unr = phi i64 [ %i.lr, %.lr.ph.i228 ], [ %indvars.iv.next.i231.prol, %.prol.preheader ]
  %i.lv = sub nsw i64 %i.lr, %wide.trip.count.i229
  %i.lw = icmp ugt i64 %i.lv, -4
  br i1 %i.lw, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new

.lr.ph.i228.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i228.new
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i231.3, %.lr.ph.i228.new ], [ %indvars.iv.i230.unr, %.prol.loopexit ] ; 5 uses
  %i.lx = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %indvars.iv.i230
  store i8 45, ptr %i.ly, align 1, !tbaa !71
  %i.lz = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.ma = getelementptr i8, ptr %i.lz, i64 %indvars.iv.i230
  %i.mb = getelementptr i8, ptr %i.ma, i64 1
  store i8 45, ptr %i.mb, align 1, !tbaa !71
  %i.mc = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.md = getelementptr i8, ptr %i.mc, i64 %indvars.iv.i230
  %i.me = getelementptr i8, ptr %i.md, i64 2
  store i8 45, ptr %i.me, align 1, !tbaa !71
  %i.mf = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.mg = getelementptr i8, ptr %i.mf, i64 %indvars.iv.i230
  %i.mh = getelementptr i8, ptr %i.mg, i64 3
  store i8 45, ptr %i.mh, align 1, !tbaa !71
  %indvars.iv.next.i231.3 = add nsw i64 %indvars.iv.i230, 4 ; 2 uses
  %exitcond.not.i232.3 = icmp eq i64 %indvars.iv.next.i231.3, %wide.trip.count.i229
  br i1 %exitcond.not.i232.3, label %._crit_edge.i.loopexit, label %.lr.ph.i228.new, !llvm.loop !156

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i228.new, %.prol.loopexit
  %.val170.pre.pre = load ptr, ptr %i.ky, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i227
  %.val170.pre = phi ptr [ %.val170.pre.pre, %._crit_edge.i.loopexit ], [ %.val170.pre391, %Vec_StrGrow.exit.i227 ]
  store i32 %i.le, ptr %i.la, align 4, !tbaa !84
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cq, %._crit_edge.i
  %.val170 = phi ptr [ %i.kz, %bb.cq ], [ %.val170.pre, %._crit_edge.i ]
  %i.mi = sext i32 %i.ld to i64                   ; 3 uses
  %i.mj = getelementptr inbounds i8, ptr %.val170, i64 %i.mi
  store i8 32, ptr %i.mj, align 1, !tbaa !71
  %i.mk = add i32 %i.lb, %2
  %i.ml = select i1 %.not150, i8 49, i8 48
  %.val169 = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.mm = sext i32 %i.mk to i64
  %i.mn = getelementptr inbounds i8, ptr %.val169, i64 %i.mm
  store i8 %i.ml, ptr %i.mn, align 1, !tbaa !71
  %.val168 = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.mo = getelementptr i8, ptr %.val168, i64 %i.mi
  %i.mp = getelementptr i8, ptr %i.mo, i64 2
  store i8 10, ptr %i.mp, align 1, !tbaa !71
  %.val167 = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.mq = getelementptr i8, ptr %.val167, i64 %i.mi
  %i.mr = getelementptr i8, ptr %i.mq, i64 3
  store i8 0, ptr %i.mr, align 1, !tbaa !71
  %i.ms = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.mt = icmp eq i32 %i.ms, 0
  %.pre387 = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  br i1 %i.mt, label %bb.db, label %Vec_IntPush.exit243

bb.db:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i241 = icmp eq ptr %.pre387, null
  br i1 %.not9.i.i241, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.mu = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre387, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i239

bb.dd:                                            ; preds = %bb.db
  %i.mv = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i239

Vec_IntGrow.exit11.sink.split.i239:               ; preds = %bb.dc, %bb.dd
  %i.mw = phi ptr [ %i.mu, %bb.dc ], [ %i.mv, %bb.dd ] ; 2 uses
  store ptr %i.mw, ptr %i.aq, align 8, !tbaa !31
  store i32 16, ptr %i.ak, align 8, !tbaa !45
  br label %Vec_IntPush.exit243

Vec_IntPush.exit243:                              ; preds = %Vec_StrFillExtra.exit, %Vec_IntGrow.exit11.sink.split.i239
  %.promoted328 = phi ptr [ %.pre387, %Vec_StrFillExtra.exit ], [ %i.mw, %Vec_IntGrow.exit11.sink.split.i239 ] ; 3 uses
  store i32 1, ptr %i.al, align 4, !tbaa !30
  store i32 %i.ip, ptr %.promoted328, align 4, !tbaa !32
  %.val = load i32, ptr %i.ae, align 4, !tbaa !30 ; 2 uses
  %i.mx = icmp sgt i32 %.val, 0
  %.val163.pre = load i32, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  br i1 %i.mx, label %.lr.ph322, label %.critedge2

.lr.ph322:                                        ; preds = %Vec_IntPush.exit243
  %.val159 = load ptr, ptr %i.aj, align 8, !tbaa !31
  %.val158 = load ptr, ptr %i.ac, align 8, !tbaa !31
  %.promoted325 = load i32, ptr %i.ak, align 8, !tbaa !45
  %i.my = sext i32 %.val163.pre to i64
  %wide.trip.count375 = zext nneg i32 %.val to i64
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph322, %Vec_IntPush.exit251
  %indvars.iv370 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next371, %Vec_IntPush.exit251 ] ; 2 uses
  %indvars.iv368 = phi i64 [ %i.my, %.lr.ph322 ], [ %indvars.iv.next369, %Vec_IntPush.exit251 ] ; 7 uses
  %storemerge272329 = phi ptr [ %.promoted328, %.lr.ph322 ], [ %storemerge272330, %Vec_IntPush.exit251 ] ; 3 uses
  %spec.select.sink.i248327 = phi i32 [ %.promoted325, %.lr.ph322 ], [ %spec.select.sink.i248326, %Vec_IntPush.exit251 ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.val159, i64 %indvars.iv370
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !32 ; 3 uses
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds [4 x i8], ptr %.val158, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !32 ; 2 uses
  %i.ne = xor i32 %i.nd, 1
  %i.nf = trunc nsw i64 %indvars.iv368 to i32
  %i.ng = icmp eq i32 %spec.select.sink.i248327, %i.nf
  br i1 %i.ng, label %bb.df, label %Vec_IntPush.exit251

bb.df:                                            ; preds = %bb.de
  %i.nh = icmp slt i64 %indvars.iv368, 16
  br i1 %i.nh, label %Vec_IntPush.exit251.sink.split, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ni = icmp samesign ult i64 %indvars.iv368, 1073741823
  %indvars.iv368.tr = trunc nsw i64 %indvars.iv368 to i32
  %i.nj = shl nsw i32 %indvars.iv368.tr, 1
  %spec.select.i244 = select i1 %i.ni, i32 %i.nj, i32 2147483647 ; 3 uses
  %i.nk = sext i32 %spec.select.i244 to i64
  %.not.i9.i245 = icmp samesign ult i64 %indvars.iv368, %i.nk
  br i1 %.not.i9.i245, label %bb.dh, label %Vec_IntPush.exit251

bb.dh:                                            ; preds = %bb.dg
  %i.nl = zext nneg i32 %spec.select.i244 to i64
  %i.nm = shl nuw nsw i64 %i.nl, 2
  br label %Vec_IntPush.exit251.sink.split

Vec_IntPush.exit251.sink.split:                   ; preds = %bb.df, %bb.dh
  %.sink = phi i64 [ %i.nm, %bb.dh ], [ 64, %bb.df ]
  %spec.select.sink.i248326.ph = phi i32 [ %spec.select.i244, %bb.dh ], [ 16, %bb.df ]
  %i.nn = call ptr @realloc(ptr noundef nonnull %storemerge272329, i64 noundef %.sink) #16
  br label %Vec_IntPush.exit251

Vec_IntPush.exit251:                              ; preds = %Vec_IntPush.exit251.sink.split, %bb.de, %bb.dg
  %storemerge272330 = phi ptr [ %storemerge272329, %bb.de ], [ %storemerge272329, %bb.dg ], [ %i.nn, %Vec_IntPush.exit251.sink.split ] ; 4 uses
  %spec.select.sink.i248326 = phi i32 [ %spec.select.sink.i248327, %bb.de ], [ %spec.select.sink.i248327, %bb.dg ], [ %spec.select.sink.i248326.ph, %Vec_IntPush.exit251.sink.split ] ; 2 uses
  %indvars.iv.next369 = add nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %storemerge272330, i64 %indvars.iv368
  store i32 %i.ne, ptr %i.no, align 4, !tbaa !32
  %i.np = add nsw i32 %i.na, %i.lc
  %i.nq = xor i32 %i.na, -1
  %i.nr = add i32 %i.ld, %i.nq
  %.sink440 = select i1 %.not, i32 %i.np, i32 %i.nr
  %i.ns = trunc i32 %i.nd to i8
  %i.nt = and i8 %i.ns, 1
  %i.nu = sub nuw nsw i8 49, %i.nt
  %.val165 = load ptr, ptr %i.ky, align 8, !tbaa !64
  %i.nv = sext i32 %.sink440 to i64
  %i.nw = getelementptr inbounds i8, ptr %.val165, i64 %i.nv
  store i8 %i.nu, ptr %i.nw, align 1, !tbaa !71
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count375
  br i1 %exitcond376.not, label %..critedge2_crit_edge, label %bb.de, !llvm.loop !175

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit251
  %i.nx = trunc nsw i64 %indvars.iv.next369 to i32 ; 2 uses
  store i32 %i.nx, ptr %i.al, align 4, !tbaa !30
  store i32 %spec.select.sink.i248326, ptr %i.ak, align 8
  store ptr %storemerge272330, ptr %i.aq, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %Vec_IntPush.exit243
  %.val163 = phi i32 [ %i.nx, %..critedge2_crit_edge ], [ %.val163.pre, %Vec_IntPush.exit243 ]
  %.val161 = phi ptr [ %storemerge272330, %..critedge2_crit_edge ], [ %.promoted328, %Vec_IntPush.exit243 ] ; 2 uses
  %i.ny = sext i32 %.val163 to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %.val161, i64 %i.ny
  %i.oa = call i32 @sat_solver_addclause(ptr noundef %i.hh, ptr noundef nonnull %.val161, ptr noundef %i.nz) #18
  %i.ob = icmp eq i32 %i.oa, 0
  br i1 %i.ob, label %.loopexit.sink.split, label %bb.bq

.loopexit.sink.split:                             ; preds = %.critedge2, %bb.bz
  %.4.ph = phi i64 [ %.2, %bb.bz ], [ %.3, %.critedge2 ]
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv377
  store i32 1, ptr %i.oc, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3, %bb.bq ]
  %i.od = load i32, ptr %i.e, align 8, !tbaa !32
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = load i32, ptr %i.ce, align 4
  %i.og = icmp ne i32 %i.of, 0
  %or.cond = select i1 %i.oe, i1 true, i1 %i.og
  br i1 %or.cond, label %.loopexit275, label %bb.di

bb.di:                                            ; preds = %.loopexit
  %i.oh = add nuw nsw i32 %.0138333, 1            ; 3 uses
  %i.oi = icmp slt i32 %i.oh, %3
  %i.oj = select i1 %i.gy, i1 true, i1 %i.oi
  br i1 %i.oj, label %.preheader, label %.loopexit275, !llvm.loop !176

.loopexit275:                                     ; preds = %.loopexit, %bb.di, %bb.bz, %bb.cp, %.loopexit280, %Vec_StrPush.exit206, %Vec_StrPush.exit206.1, %Vec_StrPush.exit
  %.1139 = phi i32 [ 0, %Vec_StrPush.exit206.1 ], [ 0, %Vec_StrPush.exit ], [ %.0138333, %bb.bz ], [ %i.fx, %Vec_StrPush.exit206 ], [ %i.bz, %.loopexit280 ], [ %.0138333, %bb.cp ], [ %i.oh, %bb.di ], [ %.0138333, %.loopexit ]
  %i.ok = load ptr, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %.not.i252 = icmp eq ptr %i.ok, null
  br i1 %.not.i252, label %Vec_IntFree.exit, label %bb.dj

bb.dj:                                            ; preds = %.loopexit275
  call void @free(ptr noundef nonnull %i.ok) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit275, %bb.dj
  call void @free(ptr noundef nonnull %i.p) #18
  %i.ol = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %.not.i253 = icmp eq ptr %i.ol, null
  br i1 %.not.i253, label %Vec_IntFree.exit254, label %bb.dk

bb.dk:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.ol) #18
  br label %Vec_IntFree.exit254

Vec_IntFree.exit254:                              ; preds = %Vec_IntFree.exit, %bb.dk
  call void @free(ptr noundef nonnull %i.w) #18
  %i.om = load ptr, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %.not.i255 = icmp eq ptr %i.om, null
  br i1 %.not.i255, label %Vec_IntFree.exit256, label %bb.dl

bb.dl:                                            ; preds = %Vec_IntFree.exit254
  call void @free(ptr noundef nonnull %i.om) #18
  br label %Vec_IntFree.exit256

Vec_IntFree.exit256:                              ; preds = %Vec_IntFree.exit254, %bb.dl
  call void @free(ptr noundef nonnull %i.ad) #18
  %i.on = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 2 uses
  %.not.i257 = icmp eq ptr %i.on, null
  br i1 %.not.i257, label %Vec_IntFree.exit258, label %bb.dm

bb.dm:                                            ; preds = %Vec_IntFree.exit256
  call void @free(ptr noundef nonnull %i.on) #18
  br label %Vec_IntFree.exit258

Vec_IntFree.exit258:                              ; preds = %Vec_IntFree.exit256, %bb.dm
  call void @free(ptr noundef nonnull %i.ak) #18
  %i.oo = load i32, ptr %i.e, align 8, !tbaa !32
  %i.op = icmp ne i32 %i.oo, 0
  %i.oq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.or = load i32, ptr %i.oq, align 4            ; 2 uses
  %i.os = icmp ne i32 %i.or, 0
  %or.cond7 = select i1 %i.op, i1 true, i1 %i.os
  br i1 %or.cond7, label %bb.dn, label %.thread

bb.dn:                                            ; preds = %Vec_IntFree.exit258
  %i.ot = sext i32 %i.or to i64
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ot ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !145 ; 6 uses
  store ptr null, ptr %i.ou, align 8, !tbaa !145
  %i.ow = icmp samesign ugt i32 %.1139, 1
  br i1 %i.ow, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ox = getelementptr i8, ptr %i.ov, i64 4
  %.val172 = load i32, ptr %i.ox, align 4, !tbaa !84
  %i.oy = add nsw i32 %2, 3
  %i.oz = sdiv i32 %.val172, %i.oy
  %i.pa = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.ov, i32 noundef %i.oz, i32 noundef %2) ; 0 uses
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %.not155 = icmp eq i32 %7, 0
  br i1 %.not155, label %bb.du, label %bb.dq

.thread:                                          ; preds = %Vec_IntFree.exit258
  %.not155264 = icmp eq i32 %7, 0
  br i1 %.not155264, label %bb.du, label %.thread267

.thread267:                                       ; preds = %.thread
  %i.pb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.pc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %2) ; 0 uses
  %i.pd = icmp eq ptr %i.ov, null
  br i1 %i.pd, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %.thread267, %bb.dq
  %i.pe = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) ; 0 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.pf = getelementptr i8, ptr %i.ov, i64 4
  %.0146.val = load i32, ptr %i.pf, align 4, !tbaa !84
  %i.pg = add nsw i32 %2, 3
  %i.ph = sdiv i32 %.0146.val, %i.pg
  %i.pi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.ph) ; 0 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0146265269 = phi ptr [ %i.ov, %bb.ds ], [ null, %bb.dr ]
  %i.pj = load i64, ptr %i.d, align 16, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19)
  %i.pk = sitofp i64 %i.pj to double
  %i.pl = fdiv double %i.pk, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pl)
  %i.pm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20)
  %i.po = sitofp i64 %i.pn to double
  %i.pp = fdiv double %i.po, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pp)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.pr = load i64, ptr %i.pq, align 16, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21)
  %i.ps = sitofp i64 %i.pr to double
  %i.pt = fdiv double %i.ps, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pt)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22)
  %i.pw = sitofp i64 %i.pv to double
  %i.px = fdiv double %i.pw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.px)
  br label %bb.du

bb.du:                                            ; preds = %.thread, %bb.dt, %bb.dp
  %.0146266 = phi ptr [ null, %.thread ], [ %.0146265269, %bb.dt ], [ %i.ov, %bb.dp ]
  %i.py = load ptr, ptr %i.b, align 16, !tbaa !145 ; 3 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %Vec_StrFreeP.exit, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !64 ; 2 uses
  %.not.i259 = icmp eq ptr %i.qb, null
  br i1 %.not.i259, label %bb.dw, label %.thread.i

.thread.i:                                        ; preds = %bb.dv
  call void @free(ptr noundef nonnull %i.qb) #18
  br label %bb.dw

bb.dw:                                            ; preds = %.thread.i, %bb.dv
  call void @free(ptr noundef nonnull %i.py) #18
  br label %Vec_StrFreeP.exit

Vec_StrFreeP.exit:                                ; preds = %bb.du, %bb.dw
  %i.qc = load ptr, ptr %i.k, align 8, !tbaa !145 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %Vec_StrFreeP.exit262, label %bb.dx

bb.dx:                                            ; preds = %Vec_StrFreeP.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !64 ; 2 uses
  %.not.i260 = icmp eq ptr %i.qf, null
  br i1 %.not.i260, label %bb.dy, label %.thread.i261

.thread.i261:                                     ; preds = %bb.dx
  call void @free(ptr noundef nonnull %i.qf) #18
  br label %bb.dy

bb.dy:                                            ; preds = %.thread.i261, %bb.dx
  call void @free(ptr noundef nonnull %i.qc) #18
  br label %Vec_StrFreeP.exit262

Vec_StrFreeP.exit262:                             ; preds = %Vec_StrFreeP.exit, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %.0146266
}

; Function Attrs: nounwind uwtable
define ptr @Bmc_CollapseOne_int(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = alloca [2 x i32], align 4                ; 10 uses
  %i.c = alloca [2 x [2 x i64]], align 16         ; 9 uses
  %i.d = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 13 uses
  store i32 0, ptr %i.f, align 4, !tbaa !84
  store i32 1000, ptr %i.e, align 8, !tbaa !125
  %i.g = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 15 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !64
  store ptr %i.e, ptr %i.a, align 16, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.k, align 4, !tbaa !84
  store i32 1000, ptr %i.j, align 8, !tbaa !125
  %i.l = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #17
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !64
  store ptr %i.j, ptr %i.i, align 8, !tbaa !145
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.o = tail call i32 @llvm.umax.i32(i32 %1, i32 15)
  %spec.store.select.i = add nsw i32 %i.o, 1      ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  store i32 0, ptr %i.p, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.n, align 8, !tbaa !45
  %.not.i = icmp eq i32 %spec.store.select.i, 0   ; 4 uses
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = sext i32 %spec.store.select.i to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #17
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.a, %bb.b
  %.promoted308 = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  store ptr %.promoted308, ptr %i.t, align 8, !tbaa !31
  %i.u = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  store i32 0, ptr %i.v, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.u, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit178, label %bb.c

bb.c:                                             ; preds = %Vec_IntAlloc.exit
  %i.w = sext i32 %spec.store.select.i to i64
  %i.x = shl nsw i64 %i.w, 2
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #17
  br label %Vec_IntAlloc.exit178

Vec_IntAlloc.exit178:                             ; preds = %Vec_IntAlloc.exit, %bb.c
  %i.z = phi ptr [ %i.y, %bb.c ], [ null, %Vec_IntAlloc.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !31
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ab, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit182, label %bb.d

bb.d:                                             ; preds = %Vec_IntAlloc.exit178
  %i.ad = sext i32 %spec.store.select.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = tail call noalias ptr @malloc(i64 noundef %i.ae) #17
  br label %Vec_IntAlloc.exit182

Vec_IntAlloc.exit182:                             ; preds = %Vec_IntAlloc.exit178, %bb.d
  %i.ag = phi ptr [ %i.af, %bb.d ], [ null, %Vec_IntAlloc.exit178 ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !31
  %i.ai = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 4 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !30
  store i32 %spec.store.select.i, ptr %i.ai, align 8, !tbaa !45
  br i1 %.not.i, label %Vec_IntAlloc.exit186, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit182
  %i.ak = sext i32 %spec.store.select.i to i64
  %i.al = shl nsw i64 %i.ak, 2
  %i.am = tail call noalias ptr @malloc(i64 noundef %i.al) #17
  br label %Vec_IntAlloc.exit186

Vec_IntAlloc.exit186:                             ; preds = %Vec_IntAlloc.exit182, %bb.e
  %i.an = phi ptr [ %i.am, %bb.e ], [ null, %Vec_IntAlloc.exit182 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i64 0, ptr %i.d, align 8
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.ap = icmp sgt i32 %1, 0                      ; 2 uses
  br i1 %.not, label %.preheader280, label %.preheader282

.preheader282:                                    ; preds = %Vec_IntAlloc.exit186
  br i1 %i.ap, label %.lr.ph, label %.loopexit281

.preheader280:                                    ; preds = %Vec_IntAlloc.exit186
  br i1 %i.ap, label %.lr.ph302, label %.loopexit281

.lr.ph:                                           ; preds = %.preheader282, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %.preheader282 ] ; 7 uses
  %storemerge299 = phi ptr [ %storemerge300, %Vec_IntPush.exit ], [ %.promoted308, %.preheader282 ] ; 6 uses
  %spec.select.sink.i297 = phi i32 [ %spec.select.sink.i296, %Vec_IntPush.exit ], [ %spec.store.select.i, %.preheader282 ] ; 3 uses
  %.0141.in294 = phi i32 [ %.0141, %Vec_IntPush.exit ], [ %1, %.preheader282 ] ; 3 uses
  %.0141 = add nsw i32 %.0141.in294, -1
  %i.aq = add nuw nsw i32 %.0141.in294, 2
  %i.ar = trunc nsw i64 %indvars.iv to i32
  %i.as = icmp eq i32 %spec.select.sink.i297, %i.ar
  br i1 %i.as, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %.lr.ph
  %i.at = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.at, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %storemerge299, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge299, i64 noundef 64) #16
  br label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.g
  %i.av = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit

bb.j:                                             ; preds = %bb.f
  %i.aw = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc nsw i64 %indvars.iv to i32
  %i.ax = shl nsw i32 %indvars.iv.tr, 1
  %spec.select.i = select i1 %i.aw, i32 %i.ax, i32 2147483647 ; 4 uses
  %i.ay = sext i32 %spec.select.i to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.ay
  br i1 %.not.i9.i, label %bb.k, label %Vec_IntPush.exit

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i = icmp eq ptr %storemerge299, null
  %i.az = zext nneg i32 %spec.select.i to i64
  %i.ba = shl nuw nsw i64 %i.az, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call ptr @realloc(ptr noundef nonnull %storemerge299, i64 noundef %i.ba) #16
  br label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.ba) #17
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.i, %bb.h, %bb.m, %bb.l, %.lr.ph, %bb.j
  %storemerge300 = phi ptr [ %storemerge299, %.lr.ph ], [ %storemerge299, %bb.j ], [ %i.av, %bb.i ], [ %i.au, %bb.h ], [ %i.bb, %bb.l ], [ %i.bc, %bb.m ] ; 3 uses
  %spec.select.sink.i296 = phi i32 [ %spec.select.sink.i297, %.lr.ph ], [ %spec.select.sink.i297, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i, %bb.l ], [ %spec.select.i, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %storemerge300, i64 %indvars.iv
  store i32 %i.aq, ptr %i.bd, align 4, !tbaa !32
  %i.be = icmp samesign ugt i32 %.0141.in294, 1
  br i1 %i.be, label %.lr.ph, label %.loopexit281.sink.split, !llvm.loop !177

.lr.ph302:                                        ; preds = %.preheader280, %Vec_IntPush.exit194
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %Vec_IntPush.exit194 ], [ 0, %.preheader280 ] ; 7 uses
  %storemerge275309 = phi ptr [ %storemerge275310, %Vec_IntPush.exit194 ], [ %.promoted308, %.preheader280 ] ; 6 uses
  %spec.select.sink.i191307 = phi i32 [ %spec.select.sink.i191306, %Vec_IntPush.exit194 ], [ %spec.store.select.i, %.preheader280 ] ; 3 uses
  %.1142301 = phi i32 [ %i.bt, %Vec_IntPush.exit194 ], [ 0, %.preheader280 ] ; 2 uses
  %i.bf = add nuw nsw i32 %.1142301, 3
  %i.bg = trunc nsw i64 %indvars.iv355 to i32
  %i.bh = icmp eq i32 %spec.select.sink.i191307, %i.bg
  br i1 %i.bh, label %bb.n, label %Vec_IntPush.exit194

bb.n:                                             ; preds = %.lr.ph302
  %i.bi = icmp samesign ult i64 %indvars.iv355, 16
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not9.i.i192 = icmp eq ptr %storemerge275309, null
  br i1 %.not9.i.i192, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge275309, i64 noundef 64) #16
  br label %Vec_IntPush.exit194

bb.q:                                             ; preds = %bb.o
  %i.bk = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit194

bb.r:                                             ; preds = %bb.n
  %i.bl = icmp samesign ult i64 %indvars.iv355, 1073741823
  %indvars.iv355.tr = trunc nsw i64 %indvars.iv355 to i32
  %i.bm = shl nsw i32 %indvars.iv355.tr, 1
  %spec.select.i187 = select i1 %i.bl, i32 %i.bm, i32 2147483647 ; 4 uses
  %i.bn = sext i32 %spec.select.i187 to i64
  %.not.i9.i188 = icmp samesign ult i64 %indvars.iv355, %i.bn
  br i1 %.not.i9.i188, label %bb.s, label %Vec_IntPush.exit194

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i189 = icmp eq ptr %storemerge275309, null
  %i.bo = zext nneg i32 %spec.select.i187 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2                ; 2 uses
  br i1 %.not9.i10.i189, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call ptr @realloc(ptr noundef nonnull %storemerge275309, i64 noundef %i.bp) #16
  br label %Vec_IntPush.exit194

bb.u:                                             ; preds = %bb.s
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bp) #17
  br label %Vec_IntPush.exit194

Vec_IntPush.exit194:                              ; preds = %bb.q, %bb.p, %bb.u, %bb.t, %.lr.ph302, %bb.r
  %storemerge275310 = phi ptr [ %storemerge275309, %.lr.ph302 ], [ %storemerge275309, %bb.r ], [ %i.bk, %bb.q ], [ %i.bj, %bb.p ], [ %i.bq, %bb.t ], [ %i.br, %bb.u ] ; 3 uses
  %spec.select.sink.i191306 = phi i32 [ %spec.select.sink.i191307, %.lr.ph302 ], [ %spec.select.sink.i191307, %bb.r ], [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i187, %bb.t ], [ %spec.select.i187, %bb.u ] ; 2 uses
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %storemerge275310, i64 %indvars.iv355
  store i32 %i.bf, ptr %i.bs, align 4, !tbaa !32
  %i.bt = add nuw nsw i32 %.1142301, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bt, %1
  br i1 %exitcond.not, label %.loopexit281.sink.split, label %.lr.ph302, !llvm.loop !178

.loopexit281.sink.split:                          ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit194
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next356, %Vec_IntPush.exit194 ], [ %indvars.iv.next, %Vec_IntPush.exit ]
  %spec.select.sink.i296.lcssa.sink = phi i32 [ %spec.select.sink.i191306, %Vec_IntPush.exit194 ], [ %spec.select.sink.i296, %Vec_IntPush.exit ]
  %storemerge300.lcssa.sink = phi ptr [ %storemerge275310, %Vec_IntPush.exit194 ], [ %storemerge300, %Vec_IntPush.exit ]
  %i.bu = trunc nsw i64 %indvars.iv.next.lcssa.sink to i32
  store i32 %i.bu, ptr %i.p, align 4, !tbaa !30
  store i32 %spec.select.sink.i296.lcssa.sink, ptr %i.n, align 8
  store ptr %storemerge300.lcssa.sink, ptr %i.t, align 8
  br label %.loopexit281

.loopexit281:                                     ; preds = %.loopexit281.sink.split, %.preheader282, %.preheader280
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.bw = sext i32 %3 to i64                      ; 2 uses
  store i32 4, ptr %i.b, align 4, !tbaa !32
  %i.bx = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bv, i64 noundef %i.bw, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18 ; 2 uses
  switch i32 %i.bx, label %bb.ax [
    i32 0, label %.loopexit276
    i32 -1, label %.lr.ph.i
  ]

.preheader.lr.ph:                                 ; preds = %Vec_StrPush.exit207.1
  %.not150 = icmp eq i32 %6, 0                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = getelementptr i8, ptr %0, i64 328
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.preheader

.lr.ph.i:                                         ; preds = %Vec_StrPush.exit207, %.loopexit281
  %.not155 = phi ptr [ @.str.13, %.loopexit281 ], [ @.str.12, %Vec_StrPush.exit207 ] ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !84
  %i.cg = load i8, ptr %.not155, align 1, !tbaa !71
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !125
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = load ptr, ptr %i.h, align 8, !tbaa !64  ; 3 uses
  br i1 %i.ci, label %bb.v, label %Vec_StrPush.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  %.not9.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not9.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.cj, i64 noundef 16) #16
  %.pre9.i.pre = load i32, ptr %i.f, align 4, !tbaa !84
  br label %Vec_StrGrow.exit11.sink.split.i.i

bb.x:                                             ; preds = %bb.v
  %i.cl = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i

Vec_StrGrow.exit11.sink.split.i.i:                ; preds = %bb.x, %bb.w
  %.pre9.i = phi i32 [ 0, %bb.x ], [ %.pre9.i.pre, %bb.w ]
  %i.cm = phi ptr [ %i.cl, %bb.x ], [ %i.ck, %bb.w ] ; 2 uses
  store ptr %i.cm, ptr %i.h, align 8, !tbaa !64
  store i32 16, ptr %i.e, align 8, !tbaa !125
  br label %Vec_StrPush.exit.i

Vec_StrPush.exit.i:                               ; preds = %.lr.ph.i, %Vec_StrGrow.exit11.sink.split.i.i
  %i.cn = phi i32 [ %.pre9.i, %Vec_StrGrow.exit11.sink.split.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.co = phi ptr [ %i.cm, %Vec_StrGrow.exit11.sink.split.i.i ], [ %i.cj, %.lr.ph.i ]
  %i.cp = add nsw i32 %i.cn, 1
  store i32 %i.cp, ptr %i.f, align 4, !tbaa !84
  %i.cq = sext i32 %i.cn to i64
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  store i8 %i.cg, ptr %i.cr, align 1, !tbaa !71
  %i.cs = getelementptr inbounds nuw i8, ptr %.not155, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !71
  %i.cu = load i32, ptr %i.f, align 4, !tbaa !84  ; 7 uses
  %i.cv = load i32, ptr %i.e, align 8, !tbaa !125
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.y, label %.Vec_StrPush.exit_crit_edge.i.1

.Vec_StrPush.exit_crit_edge.i.1:                  ; preds = %Vec_StrPush.exit.i
  %.pre.i.1 = load ptr, ptr %i.h, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.1

bb.y:                                             ; preds = %Vec_StrPush.exit.i
  %i.cx = icmp slt i32 %i.cu, 16
  br i1 %i.cx, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = icmp samesign ult i32 %i.cu, 1073741823
  %i.cz = shl nuw nsw i32 %i.cu, 1
  %spec.select.i.i.1 = select i1 %i.cy, i32 %i.cz, i32 2147483647 ; 4 uses
  %.not.i9.i.i.1 = icmp samesign ult i32 %i.cu, %spec.select.i.i.1
  %.pre8.i.1 = load ptr, ptr %i.h, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.1, label %bb.aa, label %Vec_StrPush.exit.i.1

bb.aa:                                            ; preds = %bb.z
  %.not9.i10.i.i.1 = icmp eq ptr %.pre8.i.1, null
  %i.da = zext nneg i32 %spec.select.i.i.1 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.db = call ptr @realloc(ptr noundef nonnull %.pre8.i.1, i64 noundef %i.da) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ac:                                            ; preds = %bb.aa
  %i.dc = call noalias ptr @malloc(i64 noundef %i.da) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.ad:                                            ; preds = %bb.y
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !64  ; 2 uses
  %.not9.i.i.i.1 = icmp eq ptr %i.dd, null
  br i1 %.not9.i.i.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.dd, i64 noundef 16) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

bb.af:                                            ; preds = %bb.ad
  %i.df = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.1

Vec_StrGrow.exit11.sink.split.i.i.1:              ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %i.dg = phi ptr [ %i.df, %bb.af ], [ %i.de, %bb.ae ], [ %i.db, %bb.ab ], [ %i.dc, %bb.ac ] ; 2 uses
  %spec.select.sink.i.i.1 = phi i32 [ 16, %bb.af ], [ 16, %bb.ae ], [ %spec.select.i.i.1, %bb.ab ], [ %spec.select.i.i.1, %bb.ac ]
  store ptr %i.dg, ptr %i.h, align 8, !tbaa !64
  store i32 %spec.select.sink.i.i.1, ptr %i.e, align 8, !tbaa !125
  %.pre9.i.1 = load i32, ptr %i.f, align 4, !tbaa !84
  br label %Vec_StrPush.exit.i.1

Vec_StrPush.exit.i.1:                             ; preds = %Vec_StrGrow.exit11.sink.split.i.i.1, %bb.z, %.Vec_StrPush.exit_crit_edge.i.1
  %i.dh = phi i32 [ %i.cu, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %i.cu, %bb.z ], [ %.pre9.i.1, %Vec_StrGrow.exit11.sink.split.i.i.1 ] ; 2 uses
  %i.di = phi ptr [ %.pre.i.1, %.Vec_StrPush.exit_crit_edge.i.1 ], [ %.pre8.i.1, %bb.z ], [ %i.dg, %Vec_StrGrow.exit11.sink.split.i.i.1 ]
  %i.dj = add nsw i32 %i.dh, 1
  store i32 %i.dj, ptr %i.f, align 4, !tbaa !84
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk
  store i8 %i.ct, ptr %i.dl, align 1, !tbaa !71
  %i.dm = getelementptr inbounds nuw i8, ptr %.not155, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !71
  %i.do = load i32, ptr %i.f, align 4, !tbaa !84  ; 7 uses
  %i.dp = load i32, ptr %i.e, align 8, !tbaa !125
  %i.dq = icmp eq i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.ag, label %.Vec_StrPush.exit_crit_edge.i.2

.Vec_StrPush.exit_crit_edge.i.2:                  ; preds = %Vec_StrPush.exit.i.1
  %.pre.i.2 = load ptr, ptr %i.h, align 8, !tbaa !64
  br label %Vec_StrPush.exit.i.2

bb.ag:                                            ; preds = %Vec_StrPush.exit.i.1
  %i.dr = icmp slt i32 %i.do, 16
  br i1 %i.dr, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ds = icmp samesign ult i32 %i.do, 1073741823
  %i.dt = shl nuw nsw i32 %i.do, 1
  %spec.select.i.i.2 = select i1 %i.ds, i32 %i.dt, i32 2147483647 ; 4 uses
  %.not.i9.i.i.2 = icmp samesign ult i32 %i.do, %spec.select.i.i.2
  %.pre8.i.2 = load ptr, ptr %i.h, align 8, !tbaa !64 ; 3 uses
  br i1 %.not.i9.i.i.2, label %bb.ai, label %Vec_StrPush.exit.i.2

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i.i.2 = icmp eq ptr %.pre8.i.2, null
  %i.du = zext nneg i32 %spec.select.i.i.2 to i64 ; 2 uses
  br i1 %.not9.i10.i.i.2, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dv = call ptr @realloc(ptr noundef nonnull %.pre8.i.2, i64 noundef %i.du) #16
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.ak:                                            ; preds = %bb.ai
  %i.dw = call noalias ptr @malloc(i64 noundef %i.du) #17
  br label %Vec_StrGrow.exit11.sink.split.i.i.2

bb.al:                                            ; preds = %bb.ag
end_hunk_10
begin_hunk_11_@Bmc_CollapseOne_int:bb.a
  br i1 %i.gy, label %.preheader.lr.ph, label %.loopexit276

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.dh
  %.0335 = phi i64 [ 0, %.preheader.lr.ph ], [ %.4, %bb.dh ]
  %.0139334 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ol, %bb.dh ] ; 4 uses
  br label %bb.br

bb.bq:                                            ; preds = %.critedge2
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1
  br i1 %.not151433, label %bb.br, label %.loopexit, !llvm.loop !179

bb.br:                                            ; preds = %.preheader, %bb.bq
  %indvars.iv378 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next379, %bb.bq ] ; 10 uses
  %.1333 = phi i64 [ %.0335, %.preheader ], [ %.3432, %bb.bq ]
  br i1 %.not150, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.gz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %10) #18
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %Abc_Clock.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hb = load i64, ptr %10, align 8, !tbaa !150
  %i.hc = mul nsw i64 %i.hb, 1000000
  %i.hd = load i64, ptr %i.by, align 8, !tbaa !152
  %i.he = sdiv i64 %i.hd, 1000
  %i.hf = add nsw i64 %i.he, %i.hc
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bs, %bb.bt
  %.0.i = phi i64 [ %i.hf, %bb.bt ], [ -1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.bu

bb.bu:                                            ; preds = %Abc_Clock.exit, %bb.br
  %.2 = phi i64 [ %.0.i, %Abc_Clock.exit ], [ %.1333, %bb.br ] ; 3 uses
  %.val163 = load ptr, ptr %i.t, align 8, !tbaa !31 ; 6 uses
  %.val158 = load i32, ptr %i.p, align 4, !tbaa !30 ; 4 uses
  %i.hg = icmp sgt i32 %.val158, 0                ; 2 uses
  br i1 %i.hg, label %.lr.ph.i208, label %sat_solver_clean_polarity.exit

.lr.ph.i208:                                      ; preds = %bb.bu
  %wide.trip.count.i209 = zext nneg i32 %.val158 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i209, 3    ; 3 uses
  %i.hh = icmp ult i32 %.val158, 4
  br i1 %i.hh, label %.epil.preheader, label %.lr.ph.i208.new

.lr.ph.i208.new:                                  ; preds = %.lr.ph.i208
  %unroll_iter = and i64 %wide.trip.count.i209, 2147483644
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph.i208.new
  %indvars.iv.i210 = phi i64 [ 0, %.lr.ph.i208.new ], [ %indvars.iv.next.i211.3, %bb.bv ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i208.new ], [ %niter.next.3, %bb.bv ]
  %i.hi = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !32
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  store i8 0, ptr %i.hm, align 1, !tbaa !71
  %i.hn = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !32
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hn, i64 %i.hr
  store i8 0, ptr %i.hs, align 1, !tbaa !71
  %i.ht = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !32
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr %i.ht, i64 %i.hx
  store i8 0, ptr %i.hy, align 1, !tbaa !71
  %i.hz = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !32
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %i.hz, i64 %i.id
  store i8 0, ptr %i.ie, align 1, !tbaa !71
  %indvars.iv.next.i211.3 = add nuw nsw i64 %indvars.iv.i210, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !136

sat_solver_clean_polarity.exit.loopexit.unr-lcssa: ; preds = %bb.bv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_clean_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %.lr.ph.i208
  %indvars.iv.i210.epil.init = phi i64 [ 0, %.lr.ph.i208 ], [ %indvars.iv.next.i211.3, %sat_solver_clean_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod460 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod460)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %.epil.preheader
  %indvars.iv.i210.epil = phi i64 [ %indvars.iv.i210.epil.init, %.epil.preheader ], [ %indvars.iv.next.i211.epil, %bb.bw ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bw ]
  %i.if = load ptr, ptr %i.bz, align 8, !tbaa !135
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv.i210.epil
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !32
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.if, i64 %i.ii
  store i8 0, ptr %i.ij, align 1, !tbaa !71
  %indvars.iv.next.i211.epil = add nuw nsw i64 %indvars.iv.i210.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_clean_polarity.exit, label %bb.bw, !llvm.loop !180

sat_solver_clean_polarity.exit:                   ; preds = %sat_solver_clean_polarity.exit.loopexit.unr-lcssa, %bb.bw, %bb.bu
  %i.ik = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.il = or i32 %i.ik, 4
  store i32 %i.il, ptr %i.b, align 4, !tbaa !32
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @__const.Bmc_CollapseOne_int.iOOVars, i64 %indvars.iv378
  %i.in = load i32, ptr %i.im, align 4, !tbaa !32
  %i.io = shl nsw i32 %i.in, 1                    ; 2 uses
  %i.ip = or disjoint i32 %i.io, 1
  store i32 %i.ip, ptr %i.bv, align 4, !tbaa !32
  %i.iq = call i32 @sat_solver_solve(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ca, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #18
  br i1 %.not150, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %sat_solver_clean_polarity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.ir = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #18
  %i.is = icmp slt i32 %i.ir, 0
  br i1 %i.is, label %Abc_Clock.exit214, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.it = load i64, ptr %9, align 8, !tbaa !150
  %i.iu = mul nsw i64 %i.it, 1000000
  %i.iv = load i64, ptr %i.cb, align 8, !tbaa !152
  %i.iw = sdiv i64 %i.iv, 1000
  %i.ix = add nsw i64 %i.iw, %i.iu
  br label %Abc_Clock.exit214

Abc_Clock.exit214:                                ; preds = %bb.bx, %bb.by
  %.0.i213 = phi i64 [ %i.ix, %bb.by ], [ -1, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.iy = sub i64 %.0.i213, %.2
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv378 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 16, !tbaa !37
  %i.jb = add nsw i64 %i.iy, %i.ja
  store i64 %i.jb, ptr %i.iz, align 16, !tbaa !37
  br label %bb.bz

bb.bz:                                            ; preds = %Abc_Clock.exit214, %sat_solver_clean_polarity.exit
  switch i32 %i.iq, label %bb.ca [
    i32 0, label %.loopexit276
    i32 -1, label %.loopexit.sink.split
  ]

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.v, align 4, !tbaa !30
  br i1 %i.hg, label %.lr.ph313, label %.critedge

.lr.ph313:                                        ; preds = %bb.ca
  %.promoted316 = load i32, ptr %i.u, align 8, !tbaa !45
  %.promoted319 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %wide.trip.count = zext nneg i32 %.val158 to i64
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph313, %Vec_IntPush.exit222
  %indvars.iv363 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next364, %Vec_IntPush.exit222 ] ; 2 uses
  %indvars.iv361 = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next362, %Vec_IntPush.exit222 ] ; 7 uses
  %storemerge274320 = phi ptr [ %.promoted319, %.lr.ph313 ], [ %storemerge274321, %Vec_IntPush.exit222 ] ; 6 uses
  %spec.select.sink.i219318 = phi i32 [ %.promoted316, %.lr.ph313 ], [ %spec.select.sink.i219317, %Vec_IntPush.exit222 ] ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.val163, i64 %indvars.iv363
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !32 ; 2 uses
  %.val172 = load ptr, ptr %i.cc, align 8, !tbaa !138
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %.val172, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !32
  %i.jh = icmp ne i32 %i.jg, 1
  %i.ji = zext i1 %i.jh to i32
  %i.jj = shl nsw i32 %i.jd, 1
  %i.jk = or disjoint i32 %i.jj, %i.ji
  %i.jl = trunc nsw i64 %indvars.iv361 to i32
  %i.jm = icmp eq i32 %spec.select.sink.i219318, %i.jl
  br i1 %i.jm, label %bb.cc, label %Vec_IntPush.exit222

bb.cc:                                            ; preds = %bb.cb
  %i.jn = icmp samesign ult i64 %indvars.iv361, 16
  br i1 %i.jn, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %.not9.i.i220 = icmp eq ptr %storemerge274320, null
  br i1 %.not9.i.i220, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jo = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef 64) #16
  br label %Vec_IntPush.exit222

bb.cf:                                            ; preds = %bb.cd
  %i.jp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntPush.exit222

bb.cg:                                            ; preds = %bb.cc
  %i.jq = icmp samesign ult i64 %indvars.iv361, 1073741823
  %indvars.iv361.tr = trunc nsw i64 %indvars.iv361 to i32
  %i.jr = shl nsw i32 %indvars.iv361.tr, 1
  %spec.select.i215 = select i1 %i.jq, i32 %i.jr, i32 2147483647 ; 4 uses
  %i.js = sext i32 %spec.select.i215 to i64
  %.not.i9.i216 = icmp samesign ult i64 %indvars.iv361, %i.js
  br i1 %.not.i9.i216, label %bb.ch, label %Vec_IntPush.exit222

bb.ch:                                            ; preds = %bb.cg
  %.not9.i10.i217 = icmp eq ptr %storemerge274320, null
  %i.jt = zext nneg i32 %spec.select.i215 to i64
  %i.ju = shl nuw nsw i64 %i.jt, 2                ; 2 uses
  br i1 %.not9.i10.i217, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jv = call ptr @realloc(ptr noundef nonnull %storemerge274320, i64 noundef %i.ju) #16
  br label %Vec_IntPush.exit222

bb.cj:                                            ; preds = %bb.ch
  %i.jw = call noalias ptr @malloc(i64 noundef %i.ju) #17
  br label %Vec_IntPush.exit222

Vec_IntPush.exit222:                              ; preds = %bb.cf, %bb.ce, %bb.cj, %bb.ci, %bb.cb, %bb.cg
  %storemerge274321 = phi ptr [ %storemerge274320, %bb.cb ], [ %storemerge274320, %bb.cg ], [ %i.jp, %bb.cf ], [ %i.jo, %bb.ce ], [ %i.jv, %bb.ci ], [ %i.jw, %bb.cj ] ; 3 uses
  %spec.select.sink.i219317 = phi i32 [ %spec.select.sink.i219318, %bb.cb ], [ %spec.select.sink.i219318, %bb.cg ], [ 16, %bb.cf ], [ 16, %bb.ce ], [ %spec.select.i215, %bb.ci ], [ %spec.select.i215, %bb.cj ] ; 2 uses
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %storemerge274321, i64 %indvars.iv361
  store i32 %i.jk, ptr %i.jx, align 4, !tbaa !32
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count
  br i1 %exitcond368.not, label %..critedge_crit_edge, label %bb.cb, !llvm.loop !181

..critedge_crit_edge:                             ; preds = %Vec_IntPush.exit222
  %i.jy = trunc nsw i64 %indvars.iv.next362 to i32
  store i32 %i.jy, ptr %i.v, align 4, !tbaa !30
  store i32 %spec.select.sink.i219317, ptr %i.u, align 8
  store ptr %storemerge274321, ptr %i.aa, align 8
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.ca
  br i1 %.not150, label %.thread429, label %bb.ck

.thread429:                                       ; preds = %.critedge
  %i.jz = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.ka = xor i32 %i.jz, 5
  %i.kb = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.ka)
  br label %bb.co

bb.ck:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.kc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #18
  %i.kd = icmp slt i32 %i.kc, 0
  br i1 %i.kd, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ke = load i64, ptr %8, align 8, !tbaa !150
  %i.kf = mul nsw i64 %i.ke, 1000000
  %i.kg = load i64, ptr %i.cd, align 8, !tbaa !152
  %i.kh = sdiv i64 %i.kg, 1000
  %i.ki = add nsw i64 %i.kh, %i.kf
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %.0.i223 = phi i64 [ %i.ki, %bb.cl ], [ -1, %bb.ck ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.kj = trunc nuw nsw i64 %indvars.iv378 to i32
  %i.kk = xor i32 %i.kj, 5
  %i.kl = call i32 @Bmc_CollapseExpand(ptr noundef %0, ptr noundef null, ptr noundef nonnull %i.u, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ai, i32 noundef %3, i32 noundef %4, i32 noundef %i.kk)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.km = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #18
  %i.kn = icmp slt i32 %i.km, 0
  br i1 %i.kn, label %Abc_Clock.exit226, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ko = load i64, ptr %7, align 8, !tbaa !150
  %i.kp = mul nsw i64 %i.ko, 1000000
  %i.kq = load i64, ptr %i.ce, align 8, !tbaa !152
  %i.kr = sdiv i64 %i.kq, 1000
  %i.ks = add nsw i64 %i.kr, %i.kp
  br label %Abc_Clock.exit226

Abc_Clock.exit226:                                ; preds = %bb.cm, %bb.cn
  %.0.i225 = phi i64 [ %i.ks, %bb.cn ], [ -1, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.kt = sub i64 %.0.i225, %.0.i223
  %i.ku = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv378
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !37
  %i.kx = add nsw i64 %i.kt, %i.kw
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !37
  br label %bb.co

bb.co:                                            ; preds = %.thread429, %Abc_Clock.exit226
  %i.ky = phi i32 [ %i.kb, %.thread429 ], [ %i.kl, %Abc_Clock.exit226 ]
  %.3432 = phi i64 [ %.2, %.thread429 ], [ %.0.i223, %Abc_Clock.exit226 ] ; 3 uses
  %.not151433 = icmp eq i64 %indvars.iv378, 0     ; 2 uses
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %.loopexit276, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv378
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !145 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 12 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !64 ; 8 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 4 ; 4 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !84 ; 3 uses
  %i.lg = add nsw i32 %i.lf, -1                   ; 6 uses
  store i32 %i.lg, ptr %i.le, align 4, !tbaa !84
  %i.lh = add nsw i32 %i.lg, %1                   ; 3 uses
  %i.li = add nsw i32 %i.lh, 4                    ; 9 uses
  %.not.i227.not = icmp slt i32 %i.li, %i.lf
  br i1 %.not.i227.not, label %Vec_StrFillExtra.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.lj = load i32, ptr %i.lb, align 8, !tbaa !125 ; 4 uses
  %i.lk = shl nsw i32 %i.lj, 1                    ; 2 uses
  %i.ll = icmp sgt i32 %i.li, %i.lk
  %.not.i.i = icmp slt i32 %i.lj, %i.li           ; 2 uses
  br i1 %i.ll, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cs, label %Vec_StrGrow.exit.i228

bb.cs:                                            ; preds = %bb.cr
  %.not9.i.i236 = icmp eq ptr %i.ld, null
  %i.lm = sext i32 %i.li to i64                   ; 2 uses
  br i1 %.not9.i.i236, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ln = call ptr @realloc(ptr noundef nonnull %i.ld, i64 noundef %i.lm) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cu:                                            ; preds = %bb.cs
  %i.lo = call noalias ptr @malloc(i64 noundef %i.lm) #17
  br label %Vec_StrGrow.exit.sink.split.i

bb.cv:                                            ; preds = %bb.cq
  br i1 %.not.i.i, label %bb.cw, label %Vec_StrGrow.exit.i228

bb.cw:                                            ; preds = %bb.cv
  %i.lp = icmp slt i32 %i.lj, 1073741823
  %spec.select.i234 = select i1 %i.lp, i32 %i.lk, i32 2147483647 ; 4 uses
  %.not.i22.i = icmp slt i32 %i.lj, %spec.select.i234
  br i1 %.not.i22.i, label %bb.cx, label %Vec_StrGrow.exit.i228

bb.cx:                                            ; preds = %bb.cw
  %.not9.i23.i = icmp eq ptr %i.ld, null
  %i.lq = sext i32 %spec.select.i234 to i64       ; 2 uses
  br i1 %.not9.i23.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lr = call ptr @realloc(ptr noundef nonnull %i.ld, i64 noundef %i.lq) #16
  br label %Vec_StrGrow.exit.sink.split.i

bb.cz:                                            ; preds = %bb.cx
  %i.ls = call noalias ptr @malloc(i64 noundef %i.lq) #17
  br label %Vec_StrGrow.exit.sink.split.i

Vec_StrGrow.exit.sink.split.i:                    ; preds = %bb.cy, %bb.cz, %bb.ct, %bb.cu
  %storemerge272 = phi ptr [ %i.lo, %bb.cu ], [ %i.ln, %bb.ct ], [ %i.lr, %bb.cy ], [ %i.ls, %bb.cz ] ; 2 uses
  %spec.select.sink.i235 = phi i32 [ %i.li, %bb.cu ], [ %i.li, %bb.ct ], [ %spec.select.i234, %bb.cy ], [ %spec.select.i234, %bb.cz ]
  store ptr %storemerge272, ptr %i.lc, align 8, !tbaa !64
  store i32 %spec.select.sink.i235, ptr %i.lb, align 8, !tbaa !125
  %.pre386 = load i32, ptr %i.le, align 4, !tbaa !84
  br label %Vec_StrGrow.exit.i228

Vec_StrGrow.exit.i228:                            ; preds = %Vec_StrGrow.exit.sink.split.i, %bb.cw, %bb.cv, %bb.cr
  %.val171.pre392 = phi ptr [ %storemerge272, %Vec_StrGrow.exit.sink.split.i ], [ %i.ld, %bb.cw ], [ %i.ld, %bb.cv ], [ %i.ld, %bb.cr ]
  %i.lt = phi i32 [ %.pre386, %Vec_StrGrow.exit.sink.split.i ], [ %i.lg, %bb.cw ], [ %i.lg, %bb.cv ], [ %i.lg, %bb.cr ] ; 2 uses
  %i.lu = icmp slt i32 %i.lt, %i.li
  br i1 %i.lu, label %.lr.ph.i229, label %._crit_edge.i

.lr.ph.i229:                                      ; preds = %Vec_StrGrow.exit.i228
  %i.lv = sext i32 %i.lt to i64                   ; 4 uses
  %wide.trip.count.i230 = sext i32 %i.li to i64   ; 3 uses
  %i.lw = sub nsw i64 %wide.trip.count.i230, %i.lv
  %xtraiter461 = and i64 %i.lw, 3                 ; 2 uses
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
  br i1 %lcmp.mod462.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i229, %.prol.preheader
  %indvars.iv.i231.prol = phi i64 [ %indvars.iv.next.i232.prol, %.prol.preheader ], [ %i.lv, %.lr.ph.i229 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i229 ]
  %i.lx = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.ly = getelementptr inbounds i8, ptr %i.lx, i64 %indvars.iv.i231.prol
  store i8 45, ptr %i.ly, align 1, !tbaa !71
  %indvars.iv.next.i232.prol = add nsw i64 %indvars.iv.i231.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter461
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !182

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i229
  %indvars.iv.i231.unr = phi i64 [ %i.lv, %.lr.ph.i229 ], [ %indvars.iv.next.i232.prol, %.prol.preheader ]
  %i.lz = sub nsw i64 %i.lv, %wide.trip.count.i230
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new

.lr.ph.i229.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i229.new
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i232.3, %.lr.ph.i229.new ], [ %indvars.iv.i231.unr, %.prol.loopexit ] ; 5 uses
  %i.mb = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 %indvars.iv.i231
  store i8 45, ptr %i.mc, align 1, !tbaa !71
  %i.md = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.me = getelementptr i8, ptr %i.md, i64 %indvars.iv.i231
  %i.mf = getelementptr i8, ptr %i.me, i64 1
  store i8 45, ptr %i.mf, align 1, !tbaa !71
  %i.mg = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.mh = getelementptr i8, ptr %i.mg, i64 %indvars.iv.i231
  %i.mi = getelementptr i8, ptr %i.mh, i64 2
  store i8 45, ptr %i.mi, align 1, !tbaa !71
  %i.mj = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.mk = getelementptr i8, ptr %i.mj, i64 %indvars.iv.i231
  %i.ml = getelementptr i8, ptr %i.mk, i64 3
  store i8 45, ptr %i.ml, align 1, !tbaa !71
  %indvars.iv.next.i232.3 = add nsw i64 %indvars.iv.i231, 4 ; 2 uses
  %exitcond.not.i233.3 = icmp eq i64 %indvars.iv.next.i232.3, %wide.trip.count.i230
  br i1 %exitcond.not.i233.3, label %._crit_edge.i.loopexit, label %.lr.ph.i229.new, !llvm.loop !156

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i229.new, %.prol.loopexit
  %.val171.pre.pre = load ptr, ptr %i.lc, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %Vec_StrGrow.exit.i228
  %.val171.pre = phi ptr [ %.val171.pre.pre, %._crit_edge.i.loopexit ], [ %.val171.pre392, %Vec_StrGrow.exit.i228 ]
  store i32 %i.li, ptr %i.le, align 4, !tbaa !84
  br label %Vec_StrFillExtra.exit

Vec_StrFillExtra.exit:                            ; preds = %bb.cp, %._crit_edge.i
  %.val171 = phi ptr [ %i.ld, %bb.cp ], [ %.val171.pre, %._crit_edge.i ]
  %i.mm = sext i32 %i.lh to i64                   ; 3 uses
  %i.mn = getelementptr inbounds i8, ptr %.val171, i64 %i.mm
  store i8 32, ptr %i.mn, align 1, !tbaa !71
  %i.mo = add i32 %i.lf, %1
  %i.mp = select i1 %.not151433, i8 49, i8 48
  %.val170 = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.mq = sext i32 %i.mo to i64
  %i.mr = getelementptr inbounds i8, ptr %.val170, i64 %i.mq
  store i8 %i.mp, ptr %i.mr, align 1, !tbaa !71
  %.val169 = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.ms = getelementptr i8, ptr %.val169, i64 %i.mm
  %i.mt = getelementptr i8, ptr %i.ms, i64 2
  store i8 10, ptr %i.mt, align 1, !tbaa !71
  %.val168 = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.mu = getelementptr i8, ptr %.val168, i64 %i.mm
  %i.mv = getelementptr i8, ptr %i.mu, i64 3
  store i8 0, ptr %i.mv, align 1, !tbaa !71
  %i.mw = load i32, ptr %i.ai, align 8, !tbaa !45
  %i.mx = icmp eq i32 %i.mw, 0
  %.pre388 = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 3 uses
  br i1 %i.mx, label %bb.da, label %Vec_IntPush.exit244

bb.da:                                            ; preds = %Vec_StrFillExtra.exit
  %.not9.i.i242 = icmp eq ptr %.pre388, null
  br i1 %.not9.i.i242, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.my = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre388, i64 noundef 64) #16
  br label %Vec_IntGrow.exit11.sink.split.i240

bb.dc:                                            ; preds = %bb.da
  %i.mz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #17
  br label %Vec_IntGrow.exit11.sink.split.i240

Vec_IntGrow.exit11.sink.split.i240:               ; preds = %bb.db, %bb.dc
  %i.na = phi ptr [ %i.my, %bb.db ], [ %i.mz, %bb.dc ] ; 2 uses
  store ptr %i.na, ptr %i.ao, align 8, !tbaa !31
  store i32 16, ptr %i.ai, align 8, !tbaa !45
  br label %Vec_IntPush.exit244

Vec_IntPush.exit244:                              ; preds = %Vec_StrFillExtra.exit, %Vec_IntGrow.exit11.sink.split.i240
  %.promoted329 = phi ptr [ %.pre388, %Vec_StrFillExtra.exit ], [ %i.na, %Vec_IntGrow.exit11.sink.split.i240 ] ; 3 uses
  store i32 1, ptr %i.aj, align 4, !tbaa !30
  store i32 %i.io, ptr %.promoted329, align 4, !tbaa !32
  %.val = load i32, ptr %i.ac, align 4, !tbaa !30 ; 2 uses
  %i.nb = icmp sgt i32 %.val, 0
  %.val164.pre = load i32, ptr %i.aj, align 4, !tbaa !30 ; 2 uses
  br i1 %i.nb, label %.lr.ph323, label %.critedge2

.lr.ph323:                                        ; preds = %Vec_IntPush.exit244
  %.val160 = load ptr, ptr %i.ah, align 8, !tbaa !31
  %.val159 = load ptr, ptr %i.aa, align 8, !tbaa !31
  %.promoted326 = load i32, ptr %i.ai, align 8, !tbaa !45
  %i.nc = sext i32 %.val164.pre to i64
  %wide.trip.count376 = zext nneg i32 %.val to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph323, %Vec_IntPush.exit252
  %indvars.iv371 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next372, %Vec_IntPush.exit252 ] ; 2 uses
  %indvars.iv369 = phi i64 [ %i.nc, %.lr.ph323 ], [ %indvars.iv.next370, %Vec_IntPush.exit252 ] ; 7 uses
  %storemerge273330 = phi ptr [ %.promoted329, %.lr.ph323 ], [ %storemerge273331, %Vec_IntPush.exit252 ] ; 3 uses
  %spec.select.sink.i249328 = phi i32 [ %.promoted326, %.lr.ph323 ], [ %spec.select.sink.i249327, %Vec_IntPush.exit252 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.val160, i64 %indvars.iv371
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !32 ; 3 uses
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %.val159, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !32 ; 2 uses
  %i.ni = xor i32 %i.nh, 1
  %i.nj = trunc nsw i64 %indvars.iv369 to i32
  %i.nk = icmp eq i32 %spec.select.sink.i249328, %i.nj
  br i1 %i.nk, label %bb.de, label %Vec_IntPush.exit252

bb.de:                                            ; preds = %bb.dd
  %i.nl = icmp slt i64 %indvars.iv369, 16
  br i1 %i.nl, label %Vec_IntPush.exit252.sink.split, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.nm = icmp samesign ult i64 %indvars.iv369, 1073741823
  %indvars.iv369.tr = trunc nsw i64 %indvars.iv369 to i32
  %i.nn = shl nsw i32 %indvars.iv369.tr, 1
  %spec.select.i245 = select i1 %i.nm, i32 %i.nn, i32 2147483647 ; 3 uses
  %i.no = sext i32 %spec.select.i245 to i64
  %.not.i9.i246 = icmp samesign ult i64 %indvars.iv369, %i.no
  br i1 %.not.i9.i246, label %bb.dg, label %Vec_IntPush.exit252

bb.dg:                                            ; preds = %bb.df
  %i.np = zext nneg i32 %spec.select.i245 to i64
  %i.nq = shl nuw nsw i64 %i.np, 2
  br label %Vec_IntPush.exit252.sink.split

Vec_IntPush.exit252.sink.split:                   ; preds = %bb.de, %bb.dg
  %.sink = phi i64 [ %i.nq, %bb.dg ], [ 64, %bb.de ]
  %spec.select.sink.i249327.ph = phi i32 [ %spec.select.i245, %bb.dg ], [ 16, %bb.de ]
  %i.nr = call ptr @realloc(ptr noundef nonnull %storemerge273330, i64 noundef %.sink) #16
  br label %Vec_IntPush.exit252

Vec_IntPush.exit252:                              ; preds = %Vec_IntPush.exit252.sink.split, %bb.dd, %bb.df
  %storemerge273331 = phi ptr [ %storemerge273330, %bb.dd ], [ %storemerge273330, %bb.df ], [ %i.nr, %Vec_IntPush.exit252.sink.split ] ; 4 uses
  %spec.select.sink.i249327 = phi i32 [ %spec.select.sink.i249328, %bb.dd ], [ %spec.select.sink.i249328, %bb.df ], [ %spec.select.sink.i249327.ph, %Vec_IntPush.exit252.sink.split ] ; 2 uses
  %indvars.iv.next370 = add nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.ns = getelementptr inbounds [4 x i8], ptr %storemerge273331, i64 %indvars.iv369
  store i32 %i.ni, ptr %i.ns, align 4, !tbaa !32
  %i.nt = add nsw i32 %i.ne, %i.lg
  %i.nu = xor i32 %i.ne, -1
  %i.nv = add i32 %i.lh, %i.nu
  %.sink446 = select i1 %.not, i32 %i.nt, i32 %i.nv
  %i.nw = trunc i32 %i.nh to i8
  %i.nx = and i8 %i.nw, 1
  %i.ny = sub nuw nsw i8 49, %i.nx
  %.val166 = load ptr, ptr %i.lc, align 8, !tbaa !64
  %i.nz = sext i32 %.sink446 to i64
  %i.oa = getelementptr inbounds i8, ptr %.val166, i64 %i.nz
  store i8 %i.ny, ptr %i.oa, align 1, !tbaa !71
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count376
  br i1 %exitcond377.not, label %..critedge2_crit_edge, label %bb.dd, !llvm.loop !183

..critedge2_crit_edge:                            ; preds = %Vec_IntPush.exit252
  %i.ob = trunc nsw i64 %indvars.iv.next370 to i32 ; 2 uses
  store i32 %i.ob, ptr %i.aj, align 4, !tbaa !30
  store i32 %spec.select.sink.i249327, ptr %i.ai, align 8
  store ptr %storemerge273331, ptr %i.ao, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %Vec_IntPush.exit244
  %.val164 = phi i32 [ %i.ob, %..critedge2_crit_edge ], [ %.val164.pre, %Vec_IntPush.exit244 ]
  %.val162 = phi ptr [ %storemerge273331, %..critedge2_crit_edge ], [ %.promoted329, %Vec_IntPush.exit244 ] ; 2 uses
  %i.oc = sext i32 %.val164 to i64
  %i.od = getelementptr inbounds [4 x i8], ptr %.val162, i64 %i.oc
  %i.oe = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %.val162, ptr noundef %i.od) #18
  %i.of = icmp eq i32 %i.oe, 0
  br i1 %i.of, label %.loopexit.sink.split, label %bb.bq

.loopexit.sink.split:                             ; preds = %.critedge2, %bb.bz
  %.4.ph = phi i64 [ %.2, %bb.bz ], [ %.3432, %.critedge2 ]
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv378
  store i32 1, ptr %i.og, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bq, %.loopexit.sink.split
  %.4 = phi i64 [ %.4.ph, %.loopexit.sink.split ], [ %.3432, %bb.bq ]
  %i.oh = load i32, ptr %i.d, align 8, !tbaa !32
  %i.oi = icmp ne i32 %i.oh, 0
  %i.oj = load i32, ptr %i.cf, align 4
  %i.ok = icmp ne i32 %i.oj, 0
  %or.cond = select i1 %i.oi, i1 true, i1 %i.ok
  br i1 %or.cond, label %.loopexit276, label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.ol = add nuw nsw i32 %.0139334, 1            ; 3 uses
  %i.om = icmp slt i32 %i.ol, %2
  %i.on = select i1 %i.gx, i1 true, i1 %i.om
  br i1 %i.on, label %.preheader, label %.loopexit276, !llvm.loop !184

.loopexit276:                                     ; preds = %.loopexit, %bb.dh, %bb.bz, %bb.co, %.loopexit281, %Vec_StrPush.exit207, %Vec_StrPush.exit207.1, %Vec_StrPush.exit
  %.1140 = phi i32 [ 0, %Vec_StrPush.exit207.1 ], [ 0, %Vec_StrPush.exit ], [ %.0139334, %bb.bz ], [ %i.fx, %Vec_StrPush.exit207 ], [ %i.bx, %.loopexit281 ], [ %.0139334, %bb.co ], [ %i.ol, %bb.dh ], [ %.0139334, %.loopexit ]
  %i.oo = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %.not.i253 = icmp eq ptr %i.oo, null
  br i1 %.not.i253, label %Vec_IntFree.exit, label %bb.di

bb.di:                                            ; preds = %.loopexit276
  call void @free(ptr noundef nonnull %i.oo) #18
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.loopexit276, %bb.di
  call void @free(ptr noundef nonnull %i.n) #18
  %i.op = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not.i254 = icmp eq ptr %i.op, null
  br i1 %.not.i254, label %Vec_IntFree.exit255, label %bb.dj

bb.dj:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.op) #18
  br label %Vec_IntFree.exit255

Vec_IntFree.exit255:                              ; preds = %Vec_IntFree.exit, %bb.dj
  call void @free(ptr noundef nonnull %i.u) #18
  %i.oq = load ptr, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %.not.i256 = icmp eq ptr %i.oq, null
  br i1 %.not.i256, label %Vec_IntFree.exit257, label %bb.dk

bb.dk:                                            ; preds = %Vec_IntFree.exit255
  call void @free(ptr noundef nonnull %i.oq) #18
  br label %Vec_IntFree.exit257

Vec_IntFree.exit257:                              ; preds = %Vec_IntFree.exit255, %bb.dk
  call void @free(ptr noundef nonnull %i.ab) #18
  %i.or = load ptr, ptr %i.ao, align 8, !tbaa !31 ; 2 uses
  %.not.i258 = icmp eq ptr %i.or, null
  br i1 %.not.i258, label %Vec_IntFree.exit259, label %bb.dl

bb.dl:                                            ; preds = %Vec_IntFree.exit257
  call void @free(ptr noundef nonnull %i.or) #18
  br label %Vec_IntFree.exit259

Vec_IntFree.exit259:                              ; preds = %Vec_IntFree.exit257, %bb.dl
  call void @free(ptr noundef nonnull %i.ai) #18
  %i.os = load i32, ptr %i.d, align 8, !tbaa !32
  %i.ot = icmp ne i32 %i.os, 0
  %i.ou = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ov = load i32, ptr %i.ou, align 4            ; 2 uses
  %i.ow = icmp ne i32 %i.ov, 0
  %or.cond7 = select i1 %i.ot, i1 true, i1 %i.ow
  br i1 %or.cond7, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %Vec_IntFree.exit259
  %i.ox = sext i32 %i.ov to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ox ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !145 ; 6 uses
  store ptr null, ptr %i.oy, align 8, !tbaa !145
  %i.pa = icmp samesign ugt i32 %.1140, 1
  br i1 %i.pa, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.pb = getelementptr i8, ptr %i.oz, i64 4
  %.val173 = load i32, ptr %i.pb, align 4, !tbaa !84
  %i.pc = add nsw i32 %1, 3
  %i.pd = sdiv i32 %.val173, %i.pc
  %i.pe = call i32 @Bmc_CollapseIrredundantFull(ptr noundef %i.oz, i32 noundef %i.pd, i32 noundef %1) ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %.not156 = icmp eq i32 %6, 0
  br i1 %.not156, label %bb.dt, label %bb.dp

.thread:                                          ; preds = %Vec_IntFree.exit259
  %.not156265 = icmp eq i32 %6, 0
  br i1 %.not156265, label %bb.dt, label %.thread268

.thread268:                                       ; preds = %.thread
  %i.pf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %1) ; 0 uses
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.pg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %1) ; 0 uses
  %i.ph = icmp eq ptr %i.oz, null
  br i1 %i.ph, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.thread268, %bb.dp
  %i.pi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %2) ; 0 uses
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.pj = getelementptr i8, ptr %i.oz, i64 4
  %.0147.val = load i32, ptr %i.pj, align 4, !tbaa !84
  %i.pk = add nsw i32 %1, 3
  %i.pl = sdiv i32 %.0147.val, %i.pk
  %i.pm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.pl) ; 0 uses
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.0147266270 = phi ptr [ %i.oz, %bb.dr ], [ null, %bb.dq ]
  %i.pn = load i64, ptr %i.c, align 16, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19)
  %i.po = sitofp i64 %i.pn to double
  %i.pp = fdiv double %i.po, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pp)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20)
  %i.ps = sitofp i64 %i.pr to double
  %i.pt = fdiv double %i.ps, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.pt)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.pv = load i64, ptr %i.pu, align 16, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21)
  %i.pw = sitofp i64 %i.pv to double
  %i.px = fdiv double %i.pw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.px)
  %i.py = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !37
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22)
  %i.qa = sitofp i64 %i.pz to double
  %i.qb = fdiv double %i.qa, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.28, double noundef %i.qb)
  br label %bb.dt

bb.dt:                                            ; preds = %.thread, %bb.ds, %bb.do
  %.0147267 = phi ptr [ null, %.thread ], [ %.0147266270, %bb.ds ], [ %i.oz, %bb.do ]
  %i.qc = load ptr, ptr %i.a, align 16, !tbaa !145 ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
end_hunk_11
