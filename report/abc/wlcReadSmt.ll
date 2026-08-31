Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcReadSmt?download=true
inline.NumInlined: 370
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Smt_PrsBuildNode:bb.a
  %niter = phi i64 [ 0, %.lr.ph215.new ], [ %niter.next.1, %bb.ao ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv230
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.fo = sext i32 %i.fn to i64
  %i.fp = getelementptr inbounds [24 x i8], ptr %.val141, i64 %i.fo ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %.val146 = load i32, ptr %i.fq, align 8, !tbaa !33
  %i.fr = getelementptr i8, ptr %i.fp, i64 12
  %.val147 = load i32, ptr %i.fr, align 4, !tbaa !35
  %i.fs = sub nsw i32 %.val146, %.val147
  %i.ft = call i32 @llvm.abs.i32(i32 %i.fs, i1 true)
  %i.fu = add nuw nsw i32 %.0116214, 1
  %i.fv = add nuw nsw i32 %i.fu, %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv230
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !26
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [24 x i8], ptr %.val141, i64 %i.fz ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 8
  %.val146.1 = load i32, ptr %i.gb, align 8, !tbaa !33
  %i.gc = getelementptr i8, ptr %i.ga, i64 12
  %.val147.1 = load i32, ptr %i.gc, align 4, !tbaa !35
  %i.gd = sub nsw i32 %.val146.1, %.val147.1
  %i.ge = call i32 @llvm.abs.i32(i32 %i.gd, i1 true)
  %i.gf = add nuw nsw i32 %i.fv, 1
  %i.gg = add nuw nsw i32 %i.gf, %i.ge            ; 3 uses
  %indvars.iv.next231.1 = add nuw nsw i64 %indvars.iv230, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge7.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !36

bb.ap:                                            ; preds = %.thread180
  %i.gh = getelementptr inbounds nuw i8, ptr %.val, i64 4 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !26
  %i.gj = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !26 ; 2 uses
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !26
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !26
  %i.gl = getelementptr i8, ptr %0, i64 640
  %.val140 = load ptr, ptr %i.gl, align 8, !tbaa !32
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [24 x i8], ptr %.val140, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 8
  %.val144 = load i32, ptr %i.go, align 8, !tbaa !33
  %i.gp = getelementptr i8, ptr %i.gn, i64 12
  %.val145 = load i32, ptr %i.gp, align 4, !tbaa !35
  %i.gq = sub nsw i32 %.val144, %.val145
  %i.gr = call i32 @llvm.abs.i32(i32 %i.gq, i1 true)
  %i.gs = add nuw nsw i32 %i.gr, 1
  br label %.critedge7

bb.aq:                                            ; preds = %.thread180
  %i.gt = load i32, ptr %.val, align 4, !tbaa !26
  %i.gu = getelementptr i8, ptr %0, i64 640
  %.val139 = load ptr, ptr %i.gu, align 8, !tbaa !32
  %i.gv = sext i32 %i.gt to i64
  %i.gw = getelementptr inbounds [24 x i8], ptr %.val139, i64 %i.gv ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %.val142 = load i32, ptr %i.gx, align 8, !tbaa !33
  %i.gy = getelementptr i8, ptr %i.gw, i64 12
  %.val143 = load i32, ptr %i.gy, align 4, !tbaa !35
  %i.gz = sub nsw i32 %.val142, %.val143
  %i.ha = call i32 @llvm.abs.i32(i32 %i.gz, i1 true)
  %i.hb = add nuw nsw i32 %i.ha, 1
  br label %.critedge7

.critedge7.loopexit.unr-lcssa:                    ; preds = %bb.ao
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge7, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge7.loopexit.unr-lcssa, %.lr.ph215
  %indvars.iv230.epil.init = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next231.1, %.critedge7.loopexit.unr-lcssa ]
  %.0116214.epil.init = phi i32 [ 0, %.lr.ph215 ], [ %i.gg, %.critedge7.loopexit.unr-lcssa ]
  %lcmp.mod306 = trunc i32 %.val136 to i1
  call void @llvm.assume(i1 %lcmp.mod306)
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv230.epil.init
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !26
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds [24 x i8], ptr %.val141, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %.val146.epil = load i32, ptr %i.hg, align 8, !tbaa !33
  %i.hh = getelementptr i8, ptr %i.hf, i64 12
  %.val147.epil = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hi = sub nsw i32 %.val146.epil, %.val147.epil
  %i.hj = call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = add nuw nsw i32 %.0116214.epil.init, 1
  %i.hl = add nuw nsw i32 %i.hk, %i.hj
  br label %.critedge7

.critedge7:                                       ; preds = %.epil.preheader, %.critedge7.loopexit.unr-lcssa, %.preheader, %bb.al, %bb.an, %bb.ap, %bb.aq
  %.1117 = phi i32 [ %i.hb, %bb.aq ], [ %i.fi, %bb.an ], [ 1, %bb.al ], [ %i.gs, %bb.ap ], [ 0, %.preheader ], [ %i.gg, %.critedge7.loopexit.unr-lcssa ], [ %i.hl, %.epil.preheader ]
  %i.hm = load i32, ptr %i.b, align 4, !tbaa !26
  %i.hn = call fastcc i32 @Smt_PrsCreateNode(ptr noundef %0, i32 noundef %.1.i, i32 noundef %i.hm, i32 noundef %.1117, ptr noundef nonnull %i.dd, ptr noundef %4)
  %i.ho = load ptr, ptr %i.dg, align 8, !tbaa !25 ; 2 uses
  %.not.i171 = icmp eq ptr %i.ho, null
  br i1 %.not.i171, label %Vec_IntFree.exit172, label %bb.ar

bb.ar:                                            ; preds = %.critedge7
  call void @free(ptr noundef nonnull %i.ho) #22
  br label %Vec_IntFree.exit172

Vec_IntFree.exit172:                              ; preds = %.critedge7, %bb.ar
  call void @free(ptr noundef nonnull %i.dd) #22
  br label %bb.as

bb.as:                                            ; preds = %Vec_IntFree.exit172, %Vec_IntFree.exit162
  %.1 = phi i32 [ 0, %Vec_IntFree.exit162 ], [ %i.hn, %Vec_IntFree.exit172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.at

bb.at:                                            ; preds = %Smt_VecEntryName.exit158, %Vec_IntFree.exit, %bb.as, %bb.b, %bb.c
  %.3 = phi i32 [ %i.q, %bb.c ], [ %i.n, %bb.b ], [ %i.az, %Smt_VecEntryName.exit158 ], [ %i.bt, %Vec_IntFree.exit ], [ %.1, %bb.as ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @Abc_NamStr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Smt_PrsBuildConstant(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !28
  store i32 16, ptr %i.b, align 8, !tbaa !29
  %i.d = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !25
  %i.f = load i8, ptr %1, align 1, !tbaa !17      ; 2 uses
  %.not = icmp eq i8 %i.f, 35
  br i1 %.not, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i8 %i.f, -48
  %or.cond = icmp ult i8 %i.g, 10
  br i1 %or.cond, label %bb.c, label %bb.bm

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #23 ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 6 uses
  %i.j = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 5 uses
  %i.k = add i32 %i.i, -1
  %or.cond.i.i = icmp ult i32 %i.k, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.i ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store i32 0, ptr %i.l, align 4, !tbaa !28
  store i32 %spec.store.select.i.i, ptr %i.j, align 8, !tbaa !29
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #24
  br label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.d, %bb.c
  %.promoted128.i = phi ptr [ %i.o, %bb.d ], [ null, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %.promoted128.i, ptr %i.p, align 8, !tbaa !25
  %i.q = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %bb.n

.lr.ph.i:                                         ; preds = %Vec_IntAlloc.exit.i
  %wide.trip.count.i = and i64 %i.h, 2147483647
  br label %bb.e

bb.e:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph.i
  %indvars.iv156.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next157.i, %Vec_IntPush.exit.i ] ; 7 uses
  %storemerge123129.i = phi ptr [ %.promoted128.i, %.lr.ph.i ], [ %storemerge123130.i, %Vec_IntPush.exit.i ] ; 6 uses
  %spec.select.sink.i127.i = phi i32 [ %spec.store.select.i.i, %.lr.ph.i ], [ %spec.select.sink.i126.i, %Vec_IntPush.exit.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv156.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %i.t = sext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48
  %i.v = trunc nsw i64 %indvars.iv156.i to i32
  %i.w = icmp eq i32 %spec.select.sink.i127.i, %i.v
  br i1 %i.w, label %bb.f, label %Vec_IntPush.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = icmp samesign ult i64 %indvars.iv156.i, 16
  br i1 %i.x, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not9.i.i.i = icmp eq ptr %storemerge123129.i, null
  br i1 %.not9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge123129.i, i64 noundef 64) #25
  br label %Vec_IntPush.exit.i

bb.i:                                             ; preds = %bb.g
  %i.z = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit.i

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp samesign ult i64 %indvars.iv156.i, 1073741823
  %i.ab = shl nuw nsw i32 %spec.select.sink.i127.i, 1
  %spec.select.i.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 3 uses
  %4 = zext nneg i32 %spec.select.i.i to i64      ; 2 uses
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv156.i, %4
  br i1 %.not.i9.i.i, label %bb.k, label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.j
  %.not9.i10.i.i = icmp eq ptr %storemerge123129.i, null
  %i.ac = shl nuw nsw i64 %4, 2                   ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call ptr @realloc(ptr noundef nonnull %storemerge123129.i, i64 noundef %i.ac) #25
  br label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ac) #24
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.e
  %storemerge123130.i = phi ptr [ %storemerge123129.i, %bb.e ], [ %storemerge123129.i, %bb.j ], [ %i.z, %bb.i ], [ %i.y, %bb.h ], [ %i.ad, %bb.l ], [ %i.ae, %bb.m ] ; 4 uses
  %spec.select.sink.i126.i = phi i32 [ %spec.select.sink.i127.i, %bb.e ], [ %spec.select.sink.i127.i, %bb.j ], [ 16, %bb.i ], [ 16, %bb.h ], [ %spec.select.i.i, %bb.l ], [ %spec.select.i.i, %bb.m ] ; 2 uses
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %storemerge123130.i, i64 %indvars.iv156.i
  store i32 %i.u, ptr %i.af, align 4, !tbaa !26
  %exitcond.not.i = icmp eq i64 %indvars.iv.next157.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !37

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit.i
  %i.ag = trunc i64 %i.h to i32
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !28
  store i32 %spec.select.sink.i126.i, ptr %i.j, align 8
  store ptr %storemerge123130.i, ptr %i.p, align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i, %Vec_IntAlloc.exit.i
  %.val81.i = phi ptr [ %storemerge123130.i, %._crit_edge.i ], [ %.promoted128.i, %Vec_IntAlloc.exit.i ] ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 8 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !28
  store i32 16, ptr %i.ah, align 8, !tbaa !29
  %i.aj = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !25
  br i1 %i.q, label %.lr.ph135.i, label %._crit_edge136.i

.lr.ph135.i:                                      ; preds = %bb.n, %.backedge.i
  %i.al = phi ptr [ %i.bi, %.backedge.i ], [ %i.aj, %bb.n ] ; 9 uses
  %i.am = phi ptr [ %i.bj, %.backedge.i ], [ %i.aj, %bb.n ] ; 8 uses
  %i.an = phi ptr [ %i.bk, %.backedge.i ], [ %i.aj, %bb.n ] ; 6 uses
  %.060133.i = phi i32 [ %.060.be.i, %.backedge.i ], [ 0, %bb.n ] ; 2 uses
  %.061132.i = phi i32 [ %.061.be.i, %.backedge.i ], [ 0, %bb.n ] ; 2 uses
  %.064131.i = phi i32 [ %.064.be.i, %.backedge.i ], [ 0, %bb.n ] ; 3 uses
  %i.ao = sext i32 %.064131.i to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val81.i, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !26 ; 2 uses
  %i.ar = or i32 %i.aq, %.061132.i
  %or.cond.not.i = icmp eq i32 %i.ar, 0
  br i1 %or.cond.not.i, label %bb.o, label %bb.z

bb.o:                                             ; preds = %.lr.ph135.i
  %i.as = add nsw i32 %.064131.i, 1               ; 2 uses
  %.not.i = icmp slt i32 %i.as, %i.i
  br i1 %.not.i, label %.backedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not73.i = icmp eq i32 %.060133.i, 0
  br i1 %.not73.i, label %._crit_edge136.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !28 ; 11 uses
  %i.au = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.r, label %.backedge.sink.split.i

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp slt i32 %i.at, 16
  br i1 %i.aw, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i91.i = icmp eq ptr %i.am, null
  br i1 %.not9.i.i91.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.am, i64 noundef 64) #25
  br label %.backedge.sink.split.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.ay = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %.backedge.sink.split.sink.split.i

bb.v:                                             ; preds = %bb.r
  %i.az = icmp samesign ult i32 %i.at, 1073741823
  %i.ba = shl nuw nsw i32 %i.at, 1
  %spec.select.i86.i = select i1 %i.az, i32 %i.ba, i32 2147483647 ; 4 uses
  %.not.i9.i87.i = icmp samesign ult i32 %i.at, %spec.select.i86.i
  br i1 %.not.i9.i87.i, label %bb.w, label %.backedge.sink.split.i

bb.w:                                             ; preds = %bb.v
  %.not9.i10.i88.i = icmp eq ptr %i.am, null
  %i.bb = zext nneg i32 %spec.select.i86.i to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  br i1 %.not9.i10.i88.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = tail call ptr @realloc(ptr noundef nonnull %i.am, i64 noundef %i.bc) #25
  br label %.backedge.sink.split.sink.split.i

bb.y:                                             ; preds = %bb.w
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bc) #24
  br label %.backedge.sink.split.sink.split.i

.backedge.sink.split.sink.split.i:                ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.y, %bb.x, %bb.u, %bb.t
  %storemerge121.sink.i = phi ptr [ %i.cc, %bb.ai ], [ %i.bw, %bb.ae ], [ %i.bv, %bb.ad ], [ %i.cb, %bb.ah ], [ %i.ay, %bb.u ], [ %i.ax, %bb.t ], [ %i.bd, %bb.x ], [ %i.be, %bb.y ] ; 3 uses
  %spec.select.sink.i90.sink.i = phi i32 [ %spec.select.i94.i, %bb.ai ], [ 16, %bb.ae ], [ 16, %bb.ad ], [ %spec.select.i94.i, %bb.ah ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i86.i, %bb.x ], [ %spec.select.i86.i, %bb.y ]
  %.sink200.ph.i = phi i32 [ %i.br, %bb.ai ], [ %i.br, %bb.ae ], [ %i.br, %bb.ad ], [ %i.br, %bb.ah ], [ %i.at, %bb.u ], [ %i.at, %bb.t ], [ %i.at, %bb.x ], [ %i.at, %bb.y ]
  %.sink.ph.i = phi i32 [ %i.bo, %bb.ai ], [ %i.bo, %bb.ae ], [ %i.bo, %bb.ad ], [ %i.bo, %bb.ah ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %bb.y ]
  store ptr %storemerge121.sink.i, ptr %i.ak, align 8, !tbaa !25
  store i32 %spec.select.sink.i90.sink.i, ptr %i.ah, align 8, !tbaa !29
  br label %.backedge.sink.split.i

.backedge.sink.split.i:                           ; preds = %bb.af, %bb.aa, %.backedge.sink.split.sink.split.i, %bb.v, %bb.q
  %.sink200.i = phi i32 [ %i.at, %bb.v ], [ %i.br, %bb.aa ], [ %i.br, %bb.af ], [ %i.at, %bb.q ], [ %.sink200.ph.i, %.backedge.sink.split.sink.split.i ] ; 2 uses
  %.sink196.i = phi ptr [ %i.al, %bb.v ], [ %i.am, %bb.aa ], [ %i.am, %bb.af ], [ %i.al, %bb.q ], [ %storemerge121.sink.i, %.backedge.sink.split.sink.split.i ] ; 3 uses
  %.sink.i = phi i32 [ 0, %bb.v ], [ %i.bo, %bb.aa ], [ %i.bo, %bb.af ], [ 0, %bb.q ], [ %.sink.ph.i, %.backedge.sink.split.sink.split.i ]
  %.ph.i = phi ptr [ %i.al, %bb.v ], [ %i.al, %bb.aa ], [ %i.al, %bb.af ], [ %i.al, %bb.q ], [ %storemerge121.sink.i, %.backedge.sink.split.sink.split.i ]
  %i.bf = add nsw i32 %.sink200.i, 1
  store i32 %i.bf, ptr %i.ai, align 4, !tbaa !28
  %i.bg = sext i32 %.sink200.i to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.sink196.i, i64 %i.bg
  store i32 %.sink.i, ptr %i.bh, align 4, !tbaa !26
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.z, %.backedge.sink.split.i, %bb.o
  %i.bi = phi ptr [ %i.al, %bb.o ], [ %i.al, %bb.z ], [ %.ph.i, %.backedge.sink.split.i ] ; 2 uses
  %i.bj = phi ptr [ %i.am, %bb.o ], [ %i.am, %bb.z ], [ %.sink196.i, %.backedge.sink.split.i ]
  %i.bk = phi ptr [ %i.an, %bb.o ], [ %i.an, %bb.z ], [ %.sink196.i, %.backedge.sink.split.i ]
  %.064.be.i = phi i32 [ %i.as, %bb.o ], [ %i.bq, %bb.z ], [ 0, %.backedge.sink.split.i ] ; 2 uses
  %.061.be.i = phi i32 [ 0, %bb.o ], [ %i.bo, %bb.z ], [ 0, %.backedge.sink.split.i ]
  %.060.be.i = phi i32 [ %.060133.i, %bb.o ], [ 1, %bb.z ], [ 0, %.backedge.sink.split.i ]
  %i.bl = icmp slt i32 %.064.be.i, %i.i
  br i1 %i.bl, label %.lr.ph135.i, label %._crit_edge136.loopexit.i, !llvm.loop !38

bb.z:                                             ; preds = %.lr.ph135.i
  %i.bm = mul nsw i32 %.061132.i, 10
  %i.bn = add nsw i32 %i.aq, %i.bm                ; 2 uses
  %i.bo = srem i32 %i.bn, 2                       ; 7 uses
  %i.bp = sdiv i32 %i.bn, 2
  store i32 %i.bp, ptr %i.ap, align 4, !tbaa !26
  %i.bq = add nsw i32 %.064131.i, 1               ; 2 uses
  %.not77.i = icmp slt i32 %i.bq, %i.i
  br i1 %.not77.i, label %.backedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = load i32, ptr %i.ai, align 4, !tbaa !28 ; 11 uses
  %i.bs = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.bt = icmp eq i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.ab, label %.backedge.sink.split.i

bb.ab:                                            ; preds = %bb.aa
  %i.bu = icmp slt i32 %i.br, 16
  br i1 %i.bu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not9.i.i99.i = icmp eq ptr %i.an, null
  br i1 %.not9.i.i99.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.an, i64 noundef 64) #25
  br label %.backedge.sink.split.sink.split.i

bb.ae:                                            ; preds = %bb.ac
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %.backedge.sink.split.sink.split.i

bb.af:                                            ; preds = %bb.ab
  %i.bx = icmp samesign ult i32 %i.br, 1073741823
  %i.by = shl nuw nsw i32 %i.br, 1
  %spec.select.i94.i = select i1 %i.bx, i32 %i.by, i32 2147483647 ; 4 uses
  %.not.i9.i95.i = icmp samesign ult i32 %i.br, %spec.select.i94.i
  br i1 %.not.i9.i95.i, label %bb.ag, label %.backedge.sink.split.i

bb.ag:                                            ; preds = %bb.af
  %.not9.i10.i96.i = icmp eq ptr %i.an, null
  %i.bz = zext nneg i32 %spec.select.i94.i to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2                ; 2 uses
  br i1 %.not9.i10.i96.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %i.an, i64 noundef %i.ca) #25
  br label %.backedge.sink.split.sink.split.i

bb.ai:                                            ; preds = %bb.ag
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.ca) #24
  br label %.backedge.sink.split.sink.split.i

._crit_edge136.loopexit.i:                        ; preds = %.backedge.i, %bb.p
  %.pre172.pre.pre177.i = phi ptr [ %i.al, %bb.p ], [ %i.bi, %.backedge.i ]
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !25
  br label %._crit_edge136.i

._crit_edge136.i:                                 ; preds = %._crit_edge136.loopexit.i, %bb.n
  %.pre172.pre.pre176.i = phi ptr [ %.pre172.pre.pre177.i, %._crit_edge136.loopexit.i ], [ %i.aj, %bb.n ]
  %i.cd = phi ptr [ %.pre.i, %._crit_edge136.loopexit.i ], [ %.val81.i, %bb.n ] ; 2 uses
  %.not.i102.i = icmp eq ptr %i.cd, null
  br i1 %.not.i102.i, label %Vec_IntFree.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge136.i
  tail call void @free(ptr noundef nonnull %i.cd) #22
  %.pre172.pre.pre.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !25
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.aj, %._crit_edge136.i
  %.pre172.pre.pre.i = phi ptr [ %.pre172.pre.pre176.i, %._crit_edge136.i ], [ %.pre172.pre.pre.pre.i, %bb.aj ] ; 4 uses
  tail call void @free(ptr noundef nonnull %i.j) #22
  %.val85.i = load i32, ptr %i.ai, align 4, !tbaa !28 ; 2 uses
  %.not74.i = icmp eq i32 %.val85.i, 0
  br i1 %.not74.i, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %Vec_IntFree.exit.i
  %i.ce = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.al, label %Vec_IntPush.exit110.i

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i108.i = icmp eq ptr %.pre172.pre.pre.i, null
  br i1 %.not9.i.i108.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.pre172.pre.pre.i, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i106.i

bb.an:                                            ; preds = %bb.al
  %i.ch = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i106.i

Vec_IntGrow.exit11.sink.split.i106.i:             ; preds = %bb.an, %bb.am
  %i.ci = phi ptr [ %i.cg, %bb.am ], [ %i.ch, %bb.an ] ; 2 uses
  store ptr %i.ci, ptr %i.ak, align 8, !tbaa !25
  store i32 16, ptr %i.ah, align 8, !tbaa !29
  br label %Vec_IntPush.exit110.i

Vec_IntPush.exit110.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i106.i, %bb.ak
  %i.cj = phi ptr [ %.pre172.pre.pre.i, %bb.ak ], [ %i.ci, %Vec_IntGrow.exit11.sink.split.i106.i ] ; 2 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !28
  store i32 0, ptr %i.cj, align 4, !tbaa !26
  %.val84.pr.pre.i = load i32, ptr %i.ai, align 4, !tbaa !28
  br label %bb.ao

bb.ao:                                            ; preds = %Vec_IntPush.exit110.i, %Vec_IntFree.exit.i
  %.pre172.pre.i = phi ptr [ %i.cj, %Vec_IntPush.exit110.i ], [ %.pre172.pre.pre.i, %Vec_IntFree.exit.i ] ; 2 uses
  %.val84.pr.i = phi i32 [ %.val84.pr.pre.i, %Vec_IntPush.exit110.i ], [ %.val85.i, %Vec_IntFree.exit.i ] ; 3 uses
  %i.ck = and i32 %.val84.pr.i, 3
  %.not75138.i = icmp eq i32 %i.ck, 0
  br i1 %.not75138.i, label %bb.ay, label %.lr.ph142.i

.lr.ph142.i:                                      ; preds = %bb.ao
  %.promoted144.i = load i32, ptr %i.ah, align 8, !tbaa !29
  %i.cl = sext i32 %.val84.pr.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %Vec_IntPush.exit118.i, %.lr.ph142.i
  %indvars.iv161.i = phi i64 [ %i.cl, %.lr.ph142.i ], [ %indvars.iv.next162.i, %Vec_IntPush.exit118.i ] ; 6 uses
  %storemerge122148.i = phi ptr [ %.pre172.pre.i, %.lr.ph142.i ], [ %storemerge122149.i, %Vec_IntPush.exit118.i ] ; 6 uses
  %spec.select.sink.i115146.i = phi i32 [ %.promoted144.i, %.lr.ph142.i ], [ %spec.select.sink.i115145.i, %Vec_IntPush.exit118.i ] ; 4 uses
  %i.cm = trunc nsw i64 %indvars.iv161.i to i32
  %i.cn = icmp eq i32 %spec.select.sink.i115146.i, %i.cm
  br i1 %i.cn, label %bb.aq, label %Vec_IntPush.exit118.i

bb.aq:                                            ; preds = %bb.ap
  %i.co = icmp slt i64 %indvars.iv161.i, 16
  br i1 %i.co, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %.not9.i.i116.i = icmp eq ptr %storemerge122148.i, null
  br i1 %.not9.i.i116.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cp = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge122148.i, i64 noundef 64) #25
  br label %Vec_IntPush.exit118.i

bb.at:                                            ; preds = %bb.ar
  %i.cq = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntPush.exit118.i

bb.au:                                            ; preds = %bb.aq
  %i.cr = icmp samesign ult i64 %indvars.iv161.i, 1073741823
  %i.cs = shl nuw nsw i32 %spec.select.sink.i115146.i, 1
  %spec.select.i111.i = select i1 %i.cr, i32 %i.cs, i32 2147483647 ; 3 uses
  %5 = zext nneg i32 %spec.select.i111.i to i64   ; 2 uses
  %.not.i9.i112.i = icmp samesign ult i64 %indvars.iv161.i, %5
  br i1 %.not.i9.i112.i, label %bb.av, label %Vec_IntPush.exit118.i

bb.av:                                            ; preds = %bb.au
  %.not9.i10.i113.i = icmp eq ptr %storemerge122148.i, null
  %i.ct = shl nuw nsw i64 %5, 2                   ; 2 uses
  br i1 %.not9.i10.i113.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cu = tail call ptr @realloc(ptr noundef nonnull %storemerge122148.i, i64 noundef %i.ct) #25
  br label %Vec_IntPush.exit118.i

bb.ax:                                            ; preds = %bb.av
  %i.cv = tail call noalias ptr @malloc(i64 noundef %i.ct) #24
  br label %Vec_IntPush.exit118.i

Vec_IntPush.exit118.i:                            ; preds = %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ap
  %storemerge122149.i = phi ptr [ %storemerge122148.i, %bb.ap ], [ %storemerge122148.i, %bb.au ], [ %i.cq, %bb.at ], [ %i.cp, %bb.as ], [ %i.cu, %bb.aw ], [ %i.cv, %bb.ax ] ; 4 uses
  %spec.select.sink.i115145.i = phi i32 [ %spec.select.sink.i115146.i, %bb.ap ], [ %spec.select.sink.i115146.i, %bb.au ], [ 16, %bb.at ], [ 16, %bb.as ], [ %spec.select.i111.i, %bb.aw ], [ %spec.select.i111.i, %bb.ax ] ; 2 uses
  %indvars.iv.next162.i = add nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %storemerge122149.i, i64 %indvars.iv161.i
  store i32 0, ptr %i.cw, align 4, !tbaa !26
  %i.cx = trunc nsw i64 %indvars.iv.next162.i to i32 ; 3 uses
  %i.cy = and i32 %i.cx, 3
  %.not75.i = icmp eq i32 %i.cy, 0
  br i1 %.not75.i, label %._crit_edge143.i, label %bb.ap, !llvm.loop !39

._crit_edge143.i:                                 ; preds = %Vec_IntPush.exit118.i
  store i32 %spec.select.sink.i115145.i, ptr %i.ah, align 8
  store ptr %storemerge122149.i, ptr %i.ak, align 8
  store i32 %i.cx, ptr %i.ai, align 4, !tbaa !28
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge143.i, %bb.ao
  %.pre172.i = phi ptr [ %storemerge122149.i, %._crit_edge143.i ], [ %.pre172.pre.i, %bb.ao ] ; 3 uses
  %.val84.lcssa.i = phi i32 [ %i.cx, %._crit_edge143.i ], [ %.val84.pr.i, %bb.ao ]
  %i.cz = ashr exact i32 %.val84.lcssa.i, 2       ; 4 uses
  %i.da = add nsw i32 %i.cz, 1
  %i.db = sext i32 %i.da to i64
  %i.dc = tail call noalias ptr @malloc(i64 noundef %i.db) #24 ; 7 uses
  %i.dd = icmp sgt i32 %i.cz, 0
  br i1 %i.dd, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %bb.ay
  %i.de = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.df = getelementptr i8, ptr %i.dc, i64 %i.de  ; 2 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %.lr.ph153.i
  %indvars.iv164.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next165.i, %bb.ba ] ; 3 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv164.i, 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.pre172.i, i64 %.idx.i ; 4 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !26
  %i.dk = shl nsw i32 %i.dj, 1
  %i.dl = add nsw i32 %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !26
  %i.do = shl nsw i32 %i.dn, 2
  %i.dp = add nsw i32 %i.dl, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !26
  %i.ds = shl nsw i32 %i.dr, 3
  %i.dt = add nsw i32 %i.dp, %i.ds
  %switch.tableidx = add i32 %i.dt, -1            ; 2 uses
  %i.du = icmp ult i32 %switch.tableidx, 15
  br i1 %i.du, label %switch.lookup, label %bb.ba

switch.lookup:                                    ; preds = %bb.az
  %i.dv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Smt_PrsBuildConstant, i64 %i.dv
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %switch.lookup, %bb.az
  %.0.i = phi i8 [ 48, %bb.az ], [ %switch.load, %switch.lookup ]
  %i.dw = xor i64 %indvars.iv164.i, -1
  %i.dx = getelementptr i8, ptr %i.df, i64 %i.dw
  store i8 %.0.i, ptr %i.dx, align 1, !tbaa !17
  %indvars.iv.next165.i = add nuw nsw i64 %indvars.iv164.i, 1 ; 2 uses
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next165.i, %i.de
  br i1 %exitcond168.not.i, label %._crit_edge154.thread.i, label %bb.az, !llvm.loop !40

._crit_edge154.thread.i:                          ; preds = %bb.ba
  store i8 0, ptr %i.df, align 1, !tbaa !17
  br label %bb.bb

._crit_edge154.i:                                 ; preds = %bb.ay
  %.pre178.i = sext i32 %i.cz to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dc, i64 %.pre178.i
  store i8 0, ptr %i.dy, align 1, !tbaa !17
  %.not.i119.i = icmp eq ptr %.pre172.i, null
  br i1 %.not.i119.i, label %Smt_GetHexFromDecimalString.exit, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge154.i, %._crit_edge154.thread.i
  tail call void @free(ptr noundef nonnull %.pre172.i) #22
  br label %Smt_GetHexFromDecimalString.exit

Smt_GetHexFromDecimalString.exit:                 ; preds = %._crit_edge154.i, %bb.bb
  tail call void @free(ptr noundef nonnull %i.ah) #22
  %i.dz = icmp eq i32 %2, -1
  br i1 %i.dz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %Smt_GetHexFromDecimalString.exit
  %i.ea = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dc) #23
  %.tr60 = trunc i64 %i.ea to i32
  %i.eb = shl i32 %.tr60, 2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %Smt_GetHexFromDecimalString.exit
  %.050 = phi i32 [ %i.eb, %bb.bc ], [ %2, %Smt_GetHexFromDecimalString.exit ] ; 3 uses
  %i.ec = ashr i32 %.050, 5
  %i.ed = and i32 %.050, 31
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = add nsw i32 %i.ec, %i.ef                ; 6 uses
  %i.eh = load i32, ptr %i.b, align 8, !tbaa !29
  %.not.i.i64 = icmp slt i32 %i.eh, %i.eg
  %.val63.pre.pre = load ptr, ptr %i.e, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i.i64, label %bb.be, label %Vec_IntGrow.exit.i

bb.be:                                            ; preds = %bb.bd
  %.not9.i.i = icmp eq ptr %.val63.pre.pre, null
  %i.ei = sext i32 %i.eg to i64
  %i.ej = shl nsw i64 %i.ei, 2                    ; 2 uses
  br i1 %.not9.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ek = tail call ptr @realloc(ptr noundef nonnull %.val63.pre.pre, i64 noundef %i.ej) #25
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ej) #24
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.em = phi ptr [ %i.ek, %bb.bf ], [ %i.el, %bb.bg ] ; 2 uses
  store ptr %i.em, ptr %i.e, align 8, !tbaa !25
  store i32 %i.eg, ptr %i.b, align 8, !tbaa !29
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.bh, %bb.bd
  %.val63.pre = phi ptr [ %i.em, %bb.bh ], [ %.val63.pre.pre, %bb.bd ] ; 2 uses
  %i.en = icmp sgt i32 %i.eg, 0
  br i1 %i.en, label %.lr.ph.i66, label %Vec_IntFill.exit

.lr.ph.i66:                                       ; preds = %Vec_IntGrow.exit.i
  %wide.trip.count.i67 = zext nneg i32 %i.eg to i64
  %i.eo = shl nuw nsw i64 %wide.trip.count.i67, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.val63.pre, i8 0, i64 %i.eo, i1 false), !tbaa !26
  br label %Vec_IntFill.exit

Vec_IntFill.exit:                                 ; preds = %.lr.ph.i66, %Vec_IntGrow.exit.i
  store i32 %i.eg, ptr %i.c, align 4, !tbaa !28
  %i.ep = load i8, ptr %i.dc, align 1, !tbaa !17  ; 2 uses
  %i.eq = add i8 %i.ep, -58
  %or.cond.i16.i = icmp ult i8 %i.eq, -10
  %i.er = and i8 %i.ep, -33
  %i.es = add i8 %i.er, -71
  %i.et = icmp ult i8 %i.es, -6
  %narrow.i.not17.i = and i1 %or.cond.i16.i, %i.et
  br i1 %narrow.i.not17.i, label %Abc_TtReadHexNumber.exit, label %.lr.ph.i71

.preheader.i:                                     ; preds = %.lr.ph.i71
  %i.eu = and i64 %indvars.iv.next.i73, 4294967295 ; 2 uses
  %.not.i75 = icmp eq i64 %i.eu, 0
  br i1 %.not.i75, label %Abc_TtReadHexNumber.exit, label %.lr.ph21.preheader.i

.lr.ph21.preheader.i:                             ; preds = %.preheader.i
  %sext.i = shl i64 %indvars.iv.next.i73, 32
  %i.ev = ashr exact i64 %sext.i, 32
  %i.ew = getelementptr i8, ptr %i.dc, i64 %i.ev
  br label %.lr.ph21.i

.lr.ph.i71:                                       ; preds = %Vec_IntFill.exit, %.lr.ph.i71
  %indvars.iv.i72 = phi i64 [ %indvars.iv.next.i73, %.lr.ph.i71 ], [ 0, %Vec_IntFill.exit ]
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i72, 1 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dc, i64 %indvars.iv.next.i73
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !17  ; 2 uses
  %i.ez = add i8 %i.ey, -58
  %or.cond.i.i74 = icmp ult i8 %i.ez, -10
  %i.fa = and i8 %i.ey, -33
  %i.fb = add i8 %i.fa, -71
  %i.fc = icmp ult i8 %i.fb, -6
  %narrow.i.not.i = and i1 %or.cond.i.i74, %i.fc
  br i1 %narrow.i.not.i, label %.preheader.i, label %.lr.ph.i71, !llvm.loop !41

.lr.ph21.i:                                       ; preds = %Abc_TtReadHexDigit.exit.i, %.lr.ph21.preheader.i
  %indvars.iv25.i = phi i64 [ 0, %.lr.ph21.preheader.i ], [ %indvars.iv.next26.i, %Abc_TtReadHexDigit.exit.i ] ; 4 uses
  %i.fd = xor i64 %indvars.iv25.i, -1
  %i.fe = getelementptr i8, ptr %i.ew, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !17  ; 4 uses
  %i.fg = sext i8 %i.ff to i64                    ; 3 uses
  %i.fh = add i8 %i.ff, -48
  %or.cond.i14.i = icmp ult i8 %i.fh, 10
  br i1 %or.cond.i14.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %.lr.ph21.i
  %i.fi = add nsw i64 %i.fg, -48
  br label %Abc_TtReadHexDigit.exit.i

bb.bj:                                            ; preds = %.lr.ph21.i
  %i.fj = add i8 %i.ff, -65
  %or.cond5.i.i = icmp ult i8 %i.fj, 6
  br i1 %or.cond5.i.i, label %bb.bk, label %bb.bl
end_hunk_0
