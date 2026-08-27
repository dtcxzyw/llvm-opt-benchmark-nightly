Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilMult?download=true
inline.NumInlined: 106
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Abc_BddCountNodesArray2:bb.a
.critedge:                                        ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_BddPrint_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %common.ret37
    i32 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi i32 [ %i.i, %bb.c ], [ %i.a, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %switch = icmp ult i32 %i.e, 2
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.e, 0
  %i.f = select i1 %.not, i32 45, i32 43
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.f, i32 noundef %i.g) ; 0 uses
  %.pre = load i32, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i32 [ %i.c, %.lr.ph ], [ %.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  br label %common.ret37

common.ret37:                                     ; preds = %bb.a, %._crit_edge, %bb.d
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val31 = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.m = ashr i32 %1, 1
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.val31, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !25
  %i.s = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val32 = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.t = and i32 %1, -2
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %.val32, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !25
  %i.y = and i32 %1, 1                            ; 2 uses
  %i.z = xor i32 %i.x, %i.y
  tail call void @Abc_BddPrint_rec(ptr noundef %0, i32 noundef %i.z, ptr noundef %2)
  %.val30 = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.aa = getelementptr inbounds i8, ptr %.val30, i64 %i.n
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !23
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ac
  store i32 1, ptr %i.ad, align 4, !tbaa !25
  %.val33 = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.ae = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.u
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !25
  %i.ag = xor i32 %i.af, %i.y
  tail call void @Abc_BddPrint_rec(ptr noundef %0, i32 noundef %i.ag, ptr noundef %2)
  %.val = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.val, i64 %i.n
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !23
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj
  store i32 -1, ptr %i.ak, align 4, !tbaa !25
  br label %common.ret37
}

; Function Attrs: nounwind uwtable
define void @Abc_BddPrint(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2                      ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 -1, i64 %i.c, i1 false)
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %1) ; 0 uses
  tail call void @Abc_BddPrint_rec(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %i.d)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define void @Abc_BddPrintTest(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @Abc_BddAnd(ptr noundef %0, i32 noundef 2, i32 noundef 4)
  %i.b = tail call i32 @Abc_BddAnd(ptr noundef %0, i32 noundef 6, i32 noundef 8)
  %i.c = xor i32 %i.a, 1
  %i.d = xor i32 %i.b, 1
  %i.e = tail call i32 @Abc_BddAnd(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.d)
  %i.f = xor i32 %i.e, 1                          ; 4 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !8
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #16 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.j, i8 -1, i64 %i.i, i1 false)
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.f) ; 0 uses
  tail call void @Abc_BddPrint_rec(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef %i.j)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Abc_BddPrint.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.j) #15
  br label %Abc_BddPrint.exit

Abc_BddPrint.exit:                                ; preds = %bb.a, %bb.b
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.l = tail call i32 @Abc_BddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.f)
  tail call void @Abc_BddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.f)
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.l) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_BddGiaTest2(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @Abc_BddManAlloc(i32 noundef 10, i32 noundef 100) ; 2 uses
  tail call void @Abc_BddPrintTest(ptr noundef %i.a)
  tail call void @Abc_BddManFree(ptr noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_BddGiaTest(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val63 = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.b = getelementptr i8, ptr %.val63, i64 4
  %.val63.val = load i32, ptr %i.b, align 4, !tbaa !34
  %i.c = tail call ptr @Abc_BddManAlloc(i32 noundef %.val63.val, i32 noundef 1048576) ; 6 uses
  tail call void @Gia_ManFillValue(ptr noundef %0) #15
  %i.d = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val64 = load ptr, ptr %i.d, align 8, !tbaa !58
  %.val64.fr = freeze ptr %.val64                 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val64.fr, i64 8
  store i32 0, ptr %i.e, align 4, !tbaa !59
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val62 = load i32, ptr %i.g, align 4, !tbaa !34 ; 4 uses
  %.not = icmp eq ptr %.val64.fr, null
  %i.h = icmp slt i32 %.val62, 1
  %or.cond81 = or i1 %.not, %i.h
  br i1 %or.cond81, label %.critedge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val67.val = load ptr, ptr %i.i, align 8, !tbaa !36 ; 5 uses
  %wide.trip.count = zext nneg i32 %.val62 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.j = add nsw i32 %.val62, -1
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader.new

.lr.ph.split.preheader.new:                       ; preds = %.lr.ph.split.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.split ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.3, %.lr.ph.split ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [12 x i8], ptr %.val64.fr, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 1
  %i.r = or disjoint i32 %i.q, 2
  store i32 %i.r, ptr %i.p, align 4, !tbaa !59
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv.next
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [12 x i8], ptr %.val64.fr, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.x = shl i32 %indvars.iv.tr.1, 1
  %i.y = add nuw nsw i32 %i.x, 2
  store i32 %i.y, ptr %i.w, align 4, !tbaa !59
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv.next.1
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !25
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [12 x i8], ptr %.val64.fr, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %indvars.iv.tr.2 = trunc i64 %indvars.iv.next.1 to i32
  %i.ae = shl i32 %indvars.iv.tr.2, 1
  %i.af = or disjoint i32 %i.ae, 2
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !59
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv.next.2
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !25
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [12 x i8], ptr %.val64.fr, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %indvars.iv.tr.3 = trunc i64 %indvars.iv.next.2 to i32
  %i.al = shl i32 %indvars.iv.tr.3, 1
  %i.am = add i32 %i.al, 2
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !59
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !61

.critedge.loopexit.unr-lcssa:                     ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.3, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod144 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod144)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.split.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.split.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !25
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [12 x i8], ptr %.val64.fr, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil to i32
  %i.as = shl i32 %indvars.iv.tr.epil, 1
  %i.at = add i32 %i.as, 2
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !59
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge, label %.lr.ph.split.epil, !llvm.loop !62

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph.split.epil, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !64 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4
  %.val.i = load i32, ptr %i.ay, align 4, !tbaa !34 ; 2 uses
  %i.az = add i32 %.val.i, %.val62
  %i.ba = xor i32 %i.az, -1
  %i.bb = add i32 %i.av, %i.ba                    ; 2 uses
  %i.bc = add i32 %i.bb, -1
  %or.cond.i = icmp ult i32 %i.bc, 15
  %spec.store.select.i = select i1 %or.cond.i, i32 16, i32 %i.bb ; 3 uses
  %.not.i = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i, label %Vec_IntAlloc.exit, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.bd = sext i32 %spec.store.select.i to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call noalias ptr @malloc(i64 noundef %i.be) #16
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %.critedge, %bb.b
  %i.bg = phi ptr [ %i.bf, %bb.b ], [ null, %.critedge ] ; 2 uses
  %i.bh = icmp sgt i32 %i.av, 0
  br i1 %i.bh, label %.lr.ph84, label %.critedge2

.lr.ph84:                                         ; preds = %Vec_IntAlloc.exit, %bb.e
  %i.bi = phi i32 [ %i.ch, %bb.e ], [ %i.av, %Vec_IntAlloc.exit ]
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %bb.e ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %.val65 = load ptr, ptr %i.d, align 8, !tbaa !58 ; 2 uses
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %.val65, i64 %indvars.iv95 ; 4 uses
  %.not56 = icmp eq ptr %.val65, null
  br i1 %.not56, label %.critedge2.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph84
  %.val68 = load i64, ptr %i.bj, align 4          ; 5 uses
  %i.bk = and i64 %.val68, 2147483648
  %.not.i76 = icmp ne i64 %i.bk, 0
  %i.bl = and i64 %.val68, 536870911              ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 536870911
  %narrow.i.not = or i1 %.not.i76, %i.bm
  br i1 %narrow.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = sub nsw i64 0, %i.bl
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !59
  %i.br = trunc i64 %.val68 to i32
  %i.bs = lshr i32 %i.br, 29
  %i.bt = and i32 %i.bs, 1
  %i.bu = xor i32 %i.bq, %i.bt
  %i.bv = lshr i64 %.val68, 32
  %i.bw = and i64 %i.bv, 536870911
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = getelementptr inbounds [12 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !59
  %i.cb = lshr i64 %.val68, 61
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = and i32 %i.cc, 1
  %i.ce = xor i32 %i.ca, %i.cd
  %i.cf = tail call i32 @Abc_BddAnd(ptr noundef %i.c, i32 noundef %i.bu, i32 noundef %i.ce)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !59
  %.pre = load i32, ptr %i.au, align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ch = phi i32 [ %.pre, %bb.d ], [ %i.bi, %bb.c ] ; 2 uses
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next96, %i.ci
  br i1 %i.cj, label %.lr.ph84, label %.critedge2.loopexit, !llvm.loop !66

.critedge2.loopexit:                              ; preds = %bb.e, %.lr.ph84
  %.pre107 = load ptr, ptr %i.aw, align 8, !tbaa !65 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre107, i64 4
  %.val61.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !34
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %Vec_IntAlloc.exit
  %.val89 = phi i32 [ %.val61.pre, %.critedge2.loopexit ], [ %.val.i, %Vec_IntAlloc.exit ] ; 4 uses
  %i.ck = phi ptr [ %.pre107, %.critedge2.loopexit ], [ %i.ax, %Vec_IntAlloc.exit ] ; 2 uses
  %i.cl = icmp sgt i32 %.val89, 0
  br i1 %i.cl, label %.lr.ph87, label %Abc_BddCountNodesArray2.exit

.lr.ph87:                                         ; preds = %.critedge2
  %.val74 = load ptr, ptr %i.d, align 8, !tbaa !58 ; 4 uses
  %.not57 = icmp eq ptr %.val74, null
  br i1 %.not57, label %.lr.ph91, label %.lr.ph87.split

.lr.ph87.split:                                   ; preds = %.lr.ph87
  %i.cm = getelementptr i8, ptr %i.ck, i64 8
  %.val75.val = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 3 uses
  %wide.trip.count101 = zext nneg i32 %.val89 to i64 ; 2 uses
  %xtraiter145 = and i64 %wide.trip.count101, 1
  %i.cn = icmp eq i32 %.val89, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph87.split.new

.lr.ph87.split.new:                               ; preds = %.lr.ph87.split
  %unroll_iter149 = and i64 %wide.trip.count101, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph87.split.new
  %indvars.iv98 = phi i64 [ 0, %.lr.ph87.split.new ], [ %indvars.iv.next99.1, %bb.f ] ; 3 uses
  %niter150 = phi i64 [ 0, %.lr.ph87.split.new ], [ %niter150.next.1, %bb.f ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val75.val, i64 %indvars.iv98
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [12 x i8], ptr %.val74, i64 %i.cq ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 4            ; 2 uses
  %i.ct = and i64 %i.cs, 536870911
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !59
  %i.cy = trunc i64 %i.cs to i32
  %i.cz = lshr i32 %i.cy, 29
  %i.da = and i32 %i.cz, 1
  %i.db = xor i32 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !59
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.val75.val, i64 %indvars.iv98
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !25
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [12 x i8], ptr %.val74, i64 %i.dg ; 3 uses
  %i.di = load i64, ptr %i.dh, align 4            ; 2 uses
  %i.dj = and i64 %i.di, 536870911
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr inbounds [12 x i8], ptr %i.dh, i64 %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !59
  %i.do = trunc i64 %i.di to i32
  %i.dp = lshr i32 %i.do, 29
  %i.dq = and i32 %i.dp, 1
  %i.dr = xor i32 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !59
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98, 2 ; 2 uses
  %niter150.next.1 = add i64 %niter150, 2         ; 2 uses
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %.lr.ph91.loopexit.unr-lcssa, label %bb.f, !llvm.loop !67

.lr.ph91.loopexit.unr-lcssa:                      ; preds = %bb.f
  %lcmp.mod147.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod147.not, label %.lr.ph91, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph91.loopexit.unr-lcssa, %.lr.ph87.split
  %indvars.iv98.epil.init = phi i64 [ 0, %.lr.ph87.split ], [ %indvars.iv.next99.1, %.lr.ph91.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %.val89 to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.val75.val, i64 %indvars.iv98.epil.init
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !25
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [12 x i8], ptr %.val74, i64 %i.dv ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 4            ; 2 uses
  %i.dy = and i64 %i.dx, 536870911
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !59
  %i.ed = trunc i64 %i.dx to i32
  %i.ee = lshr i32 %i.ed, 29
  %i.ef = and i32 %i.ee, 1
end_hunk_0
